import 'dart:convert';

import 'package:fasterlzu/app_config.dart';
import 'package:fasterlzu/core/app/providers/update_provider.dart';
import 'package:fasterlzu/core/logger/logger.dart';
import 'package:fasterlzu/core/schedule/models/schedule_model.dart';
import 'package:fasterlzu/core/schedule/providers/schedule_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:home_widget/home_widget.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(updateProvider.notifier).checkForUpdates(context);
    });
  }
  final List<String> weekdays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final List<String> monthNames = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  void updateWidgetData(List<CourseInfo> courses) async {
    final jsonData = courses
        .map((c) => {
              'name': c.kcmc ?? '',
              'time': _jcToTime(c.jc ?? ''),
              'classroom': c.skjsl ?? '',
              'teacher': c.jsxm ?? ''
            })
        .toList();



    await HomeWidget.saveWidgetData<String>(
      'courseData',
      jsonEncode(jsonData),
    );
    HomeWidget.updateWidget(
        androidName: 'HomeScreenAppWidget',
        qualifiedAndroidName: 'com.fallensigh.fasterlzu.HomeScreenAppWidget');
  }

  @override
  Widget build(BuildContext context) {
    final scheduleState = ref.watch(scheduleProvider);
    final todayCourses = (scheduleState.scheduleCurrentWeek ?? [])
        .where((c) => int.parse(c.skxql ?? '0') == DateTime.now().weekday);

    final onGoingCourses = todayCourses.where((c) {
      DateTime now = DateTime.now();
      final classTime = _jcToEndTime(c.jc ?? '') ?? '';

      DateTime targetTime = DateTime(
          now.year,
          now.month,
          now.day,
          int.parse(classTime.split(":")[0]),
          int.parse(classTime.split(":")[1]));

      return !targetTime.isBefore(now);
    }).toList();

    onGoingCourses.sort((CourseInfo a, CourseInfo b) {
      return b.jc!.compareTo(a.jc!);
    });

    updateWidgetData(onGoingCourses.toList());

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${weekdays[DateTime.now().weekday - 1]} ${DateTime.now().day} ${monthNames[DateTime.now().month - 1]}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    _seeAllHeader("TODAY CLASSES", onGoingCourses.length, () {
                      context.push('/schedule');
                    }),
                    const SizedBox(height: 10),
                    ...onGoingCourses.map((course) => _courseItem(course)),
                    if (onGoingCourses.isEmpty) Text('今天没课了~'),
                    const SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _seeAllHeader(String title, int number, GestureTapCallback onTap) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "($number)",
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Material(
          child: InkWell(
            onTap: onTap,
            child: Text(
              "See all",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 15,
              ),
            ),
          ),
        )
      ],
    );
  }

  String? _jcToTime(String jc) {
    if (jc == "00000000000000") return "00:00\n00:00";
    if (jc.length < 14) return null;
    int start = jc.indexOf('1');
    int end = jc.lastIndexOf('1');
    if (start == -1 || end == -1) return null;
    return '${AppConfig.classStartTimes[start]}\n${AppConfig.classEndTimes[end]}';
  }

  String? _jcToEndTime(String jc) {
    if (jc == "00000000000000") return "00:00";
    if (jc.length < 14) return null;
    int end = jc.lastIndexOf('1');
    if (end == -1) return null;
    return end != -1 ? AppConfig.classEndTimes[end] : '';
  }

  Widget _courseItem(CourseInfo courseInfo) {
    // if (classInfo.jc == '00000000000000') return SizedBox.shrink();
    // DateTime now = DateTime.now();
    // final classTime = _jcToEndTime(classInfo.jc ?? '') ?? '';
    //
    // DateTime targetTime = DateTime(now.year, now.month, now.day,
    //     int.parse(classTime.split(":")[0]), int.parse(classTime.split(":")[1]));
    //
    // if (targetTime.isBefore(now)) {
    //   return SizedBox.shrink();
    // }

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 110,
      decoration: BoxDecoration(
        color: const Color(0xFFf9f9fc),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                courseInfo.sksj ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                _jcToTime(courseInfo.jc ?? '') ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Container(
            width: 1,
            color: Colors.grey.withValues(alpha: 0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Text(
                    courseInfo.kcmc ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Text(
                        courseInfo.skjsl ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.grey[300],
                      child:
                          Icon(Icons.person, size: 16, color: Colors.grey[600]),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      courseInfo.jsxm ?? '',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
