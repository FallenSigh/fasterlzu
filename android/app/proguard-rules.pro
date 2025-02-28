# 保留 HomeScreenAppWidget 类及其父类
-keep class com.fallensigh.fasterlzu.HomeScreenAppWidget { *; }
-keep public class * extends android.appwidget.AppWidgetProvider

# 保留 Course 类及其字段名称
-keep class com.fallensigh.fasterlzu.Course { *; }
# 保留 Gson 相关类及泛型类型信息
-keep class com.google.gson.** { *; }
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.reflect.TypeToken { *; }

# 保留 TypeToken 的匿名子类
-keep class * extends com.google.gson.reflect.TypeToken { *; }
