import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/auth/providers/auth_provider.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:fasterlzu/core/schedule/models/schedule_model.dart';
import 'package:fasterlzu/core/schedule/providers/schedule_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SchedulePage extends ConsumerStatefulWidget {
  const SchedulePage({super.key});

  @override
  ConsumerState<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends ConsumerState<SchedulePage> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);

    Future.microtask(() async {
      final state = ref.read(scheduleProvider);
      final newPage = state.currentWeek - 1;

      if (newPage != _currentPage) {
        setState(() {
          _currentPage = newPage;
          _pageController.jumpToPage(_currentPage); // 直接跳转，不创建新 PageController
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });

    ref.read(scheduleProvider.notifier).loadSchedule(page + 1);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authStateProvider, (previous, next) {
      ref.read(scheduleProvider.notifier).init();
    });

    // 监听状态变化
    ref.listen<ScheduleState>(scheduleProvider, (previous, current) {
      if (current.error != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(current.error!)));
        ref.read(scheduleProvider.notifier).clearMessage();
      }

      if (current.successMessage != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(current.successMessage!)));
        ref.read(scheduleProvider.notifier).clearMessage();
      }
    });

    final state = ref.watch(scheduleProvider);
    final totalWeeks = int.parse(state.xlxx?.zzx ?? '20');

    if (state.isLoading && state.schedule == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (state.error != null) {
      return Scaffold(
        body: Center(child: Text('错误: ${state.error}')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _formatCurrentDate(),
            ),
            Text(
              '第${_currentPage + 1}周',
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () => _showAddClassDialog(context),
              icon: Icon(Icons.add)),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => _refreshSchedule(),
          ),
        ],
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        itemCount: totalWeeks,
        itemBuilder: (context, index) {
          return Column(
            children: [
              _buildWeekHeader(),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 1.1,
                    child: _buildScheduleGrid(state.schedule ?? []),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _showAddClassDialog(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    String kcmc = ''; // 课程名称
    String jsxm = ''; // 教师姓名
    String xf = '1'; // 学分
    String skjsl = ''; // 教室
    String skxql = '1'; // 周几
    String week = ''; // 周次
    String jc = ''; // 节次
    int startSection = 1;
    int endSection = 2;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('添加课程'),
        content: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: '课程名称'),
                  validator: (value) =>
                      value?.isEmpty ?? true ? '请输入课程名称' : null,
                  onSaved: (value) => kcmc = value ?? '',
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: '教师姓名'),
                  validator: (value) =>
                      value?.isEmpty ?? true ? '请输入教师姓名' : null,
                  onSaved: (value) => jsxm = value ?? '',
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: '学分'),
                  initialValue: '1',
                  validator: (value) => value?.isEmpty ?? true ? '请输入学分' : null,
                  onSaved: (value) => xf = value ?? '1',
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: '教室'),
                  validator: (value) => value?.isEmpty ?? true ? '请输入教室' : null,
                  onSaved: (value) => skjsl = value ?? '',
                ),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(labelText: '星期'),
                  value: '1',
                  items: List.generate(
                      7,
                      (index) => DropdownMenuItem(
                            value: '${index + 1}',
                            child: Text('周${[
                              '一',
                              '二',
                              '三',
                              '四',
                              '五',
                              '六',
                              '日'
                            ][index]}'),
                          )),
                  onChanged: (value) => skxql = value ?? '1',
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: '周次 (例如: 1,3,5,7-16)',
                      hintText: '输入单周或用逗号分隔的周次范围'),
                  validator: (value) => value?.isEmpty ?? true ? '请输入周次' : null,
                  onSaved: (value) => week = value ?? '',
                ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<int>(
                        decoration: const InputDecoration(labelText: '开始节次'),
                        value: 1,
                        items: List.generate(
                            14,
                            (index) => DropdownMenuItem(
                                  value: index + 1,
                                  child: Text([
                                    '1',
                                    '2',
                                    '3',
                                    '4',
                                    '中1',
                                    '中2',
                                    '5',
                                    '6',
                                    '7',
                                    '8',
                                    '9',
                                    '10',
                                    '11',
                                    '12'
                                  ][index]),
                                )),
                        onChanged: (value) => startSection = value ?? 1,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: DropdownButtonFormField<int>(
                        decoration: const InputDecoration(labelText: '结束节次'),
                        value: 2,
                        items: List.generate(
                            14,
                            (index) => DropdownMenuItem(
                                  value: index + 1,
                                  child: Text([
                                    '1',
                                    '2',
                                    '3',
                                    '4',
                                    '中1',
                                    '中2',
                                    '5',
                                    '6',
                                    '7',
                                    '8',
                                    '9',
                                    '10',
                                    '11',
                                    '12'
                                  ][index]),
                                )),
                        onChanged: (value) => endSection = value ?? 2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () async {
              if (formKey.currentState?.validate() ?? false) {
                formKey.currentState?.save();

                // 生成jc字符串
                List<String> jcList = List.filled(14, '0');
                for (int i = startSection - 1; i < endSection; i++) {
                  // 将UI节次转换为实际的jc字符串索引
                  int actualIndex;
                  if (i < 4) {
                    actualIndex = i;
                  } else if (i < 6) {
                    // 中午1、2节
                    actualIndex = 3 + (i - 4);
                  } else {
                    // 第5节及以后
                    actualIndex = i - 3;
                  }
                  jcList[actualIndex] = '1';
                }
                jc = jcList.join();

                // 构建请求数据
                final scheduleData = AddScheduleData(
                    kcmc: kcmc,
                    jsxm: jsxm,
                    xf: xf,
                    color: 'rgb(148,255,166,0.74)',
                    xkjsl: skjsl,
                    skxql: skxql,
                    week: week,
                    week_fb: week,
                    jc: jc,
                    bs: '1',
                    skjc: '周${[
                      '一',
                      '二',
                      '三',
                      '四',
                      '五',
                      '六',
                      '日'
                    ][int.parse(skxql) - 1]}，第$startSection节 - 第$endSection节');

                await ref
                    .read(scheduleProvider.notifier)
                    .addSchedule(scheduleData);
                if (!mounted) return;
                context.pop();
              }
            },
            child: const Text('添加'),
          ),
        ],
      ),
    );
  }

  Future<void> _refreshSchedule() async => await ref
      .read(scheduleProvider.notifier)
      .refreshSchedule(_currentPage + 1);

  // 计算本周的日期
  List<String> _getWeekDates() {
    final state = ref.read(scheduleProvider);
    final xlxx = state.xlxx;
    if (xlxx == null) return List.filled(7, '--');

    try {
      // 解析学期开始日期
      final startDate = DateTime.parse(xlxx.ksrq ?? '');
      // 计算当前周的第一天（周一）
      final weekStart =
          startDate.add(Duration(days: 7 * (state.currentWeek - 1)));

      // 生成这一周的日期
      return List.generate(7, (index) {
        final date = weekStart.add(Duration(days: index));
        return '${date.month}/${date.day}';
      });
    } catch (e) {
      log.w('计算日期失败', e);
      return List.filled(7, '--');
    }
  }

  Widget _buildWeekHeader() {
    final weekdays = ['周一', '周二', '周三', '周四', '周五', '周六', '周日'];
    final dates = _getWeekDates();
    final now = DateTime.now();
    final today = '${now.month}/${now.day}';

    return Container(
      height: 60, // 增加高度以容纳日期
      color: Colors.grey[100],
      child: Row(
        children: [
          _buildTimeColumn(isHeader: true),
          ...List.generate(
              7,
              (index) => Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          weekdays[index],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: (dates[index] == today)
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          dates[index],
                          style: TextStyle(
                              fontSize: 11,
                              color: dates[index] == today
                                  ? Colors.black
                                  : Colors.grey[600],
                              fontWeight: dates[index] == today
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                      ],
                    ),
                  )),
        ],
      ),
    );
  }

  Widget _buildScheduleGrid(List<CourseInfo> schedule) {
    final weekdays = [1, 2, 3, 4, 5, 6, 7];
    return Row(
      children: [
        _buildTimeColumn(),
        ...List.generate(
            7, (index) => _buildDayColumn(weekdays[index], schedule)),
      ],
    );
  }

  Widget _buildTimeColumn({bool isHeader = false}) {
    final times = AppConfig.formattedClassTimes();

    return SizedBox(
      width: 30,
      child: isHeader
          ? const Center(child: Text('节次', style: TextStyle(fontSize: 12)))
          : Column(
              children: times
                  .map((time) => Expanded(
                        child: Center(
                            child: Text(time,
                                style: const TextStyle(fontSize: 11))),
                      ))
                  .toList(),
            ),
    );
  }

  Widget _buildDayColumn(int weekday, List<CourseInfo> schedule) {
    final dayClasses =
        schedule.where((c) => int.parse(c.skxql ?? '0') == weekday).toList();

    return Expanded(
      child: Column(
        children: List.generate(14, (index) {
          final classesInSlot = _getClassesForTimeSlot(dayClasses, index + 1);

          if (classesInSlot.isEmpty) {
            return _buildEmptySlot();
          }

          final currentClass = classesInSlot.first;
          final slotSpan = _calculateSlotSpan(currentClass.jc ?? '');

          if (index > 0) {
            final prevClasses = _getClassesForTimeSlot(dayClasses, index);
            if (prevClasses.isNotEmpty &&
                prevClasses.first.kch == currentClass.kch &&
                prevClasses.first.jc == currentClass.jc) {
              return Container();
            }
          }

          return _buildClassSlot(currentClass, slotSpan);
        }),
      ),
    );
  }

  List<CourseInfo> _getClassesForTimeSlot(List<CourseInfo> classes, int slot) {
    return classes.where((c) {
      final jc = c.jc ?? '';
      if (jc.length < 14) return false;

      // 将UI显示的节次映射到实际的jc字符串索引
      return jc[slot - 1] == '1';
    }).toList();
  }

  int _calculateSlotSpan(String jc) {
    int span = 0;
    int start = -1;

    // 遍历jc字符串
    for (int i = 0; i < jc.length; i++) {
      if (jc[i] == '1') {
        if (start == -1) start = i; // 记录开始位置
        span++; // 累加连续的1的个数
      } else if (start != -1) {
        break; // 遇到0就停止计数
      }
    }

    // 返回连续的1的个数，这就是课程占用的格子数
    return span;
  }

  Widget _buildEmptySlot() {
    return const Expanded(child: SizedBox());
  }

  Widget _buildClassSlot(CourseInfo courseInfo, int span) {
    return Expanded(
      flex: span,
      child: GestureDetector(
        onTap: () => _showClassDetail(context, courseInfo),
        child: Container(
          margin: const EdgeInsets.all(1),
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: _getClassColor(courseInfo.kch ?? ''),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: ListView(
            children: [
              Text(
                courseInfo.kcmc ?? '',
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 1),
              Text(
                '${courseInfo.jsxm ?? ''}\n${courseInfo.skjsl ?? ''}',
                style: const TextStyle(fontSize: 9),
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showClassDetail(BuildContext context, CourseInfo courseInfo) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      courseInfo.kcmc ?? '未知课程',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
              const Divider(height: 24),
              _buildDetailItem('教师', courseInfo.jsxm ?? '未知'),
              _buildDetailItem('教室', courseInfo.skjsl ?? '未知'),
              _buildDetailItem('周次', '第${courseInfo.week ?? '?'}周'),
              _buildDetailItem('节次', _formatJc(courseInfo.jc ?? '')),
              _buildDetailItem('课程号', courseInfo.kch ?? '未知'),
              _buildDetailItem('学分', courseInfo.xf ?? '未知'),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('关闭'),
                    ),
                    if (courseInfo.status == 1) ...[
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(context);
                          await ref
                              .read(scheduleProvider.notifier)
                              .deleteSchedule(courseInfo.kch!);
                        },
                        child: Text(
                          '删除',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.error),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 70,
            child: Text(
              label,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatJc(String jc) {
    List<String> sections = [];
    int start = -1;

    for (int i = 0; i < jc.length; i++) {
      if (jc[i] == '1') {
        if (start == -1) start = i + 1;
      } else if (start != -1) {
        sections.add(start == i ? '$start' : '$start-$i');
        start = -1;
      }
    }

    if (start != -1) {
      sections.add(start == jc.length ? '$start' : '$start-${jc.length}');
    }

    return '第${sections.join(", ")}节';
  }

  final Map<String, Color> _classColorMap = {};

  Color _getClassColor(String kch) {
    if (_classColorMap.containsKey(kch)) {
      return _classColorMap[kch]!;
    }
    // 颜色池（>20个）
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.pink,
      Colors.teal,
      Colors.amber,
      Colors.indigo,
      Colors.red,
      Colors.brown,
      Colors.cyan,
      Colors.lime,
      Colors.lightBlue,
      Colors.deepOrange,
      Colors.deepPurple,
      Colors.yellow,
      Colors.grey,
      Colors.blueGrey,
      Colors.lightGreen,
      Colors.indigoAccent,
    ].map((c) => c[200]!).toList();

    // 按已有数量取颜色
    _classColorMap[kch] = colors[_classColorMap.length % colors.length];
    return _classColorMap[kch]!;
  }


  String _formatCurrentDate() {
    final now = DateTime.now();
    return '${now.year}年${now.month}月${now.day}日';
  }
}
