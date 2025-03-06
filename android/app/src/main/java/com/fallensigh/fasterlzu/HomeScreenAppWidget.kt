package com.fallensigh.fasterlzu

import android.content.Context
import androidx.glance.appwidget.GlanceAppWidget
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.appwidget.provideContent
import androidx.glance.background
import androidx.glance.currentState
import androidx.glance.layout.Column
import androidx.glance.layout.padding
import androidx.glance.state.GlanceStateDefinition
import androidx.glance.text.Text
import androidx.glance.text.TextStyle
import android.content.ComponentName
import android.content.Intent
import androidx.compose.ui.unit.sp
import androidx.glance.action.clickable
import androidx.glance.layout.Box
import androidx.glance.layout.Row
import androidx.glance.layout.Spacer
import androidx.glance.layout.fillMaxWidth
import androidx.glance.text.FontWeight
import androidx.glance.unit.ColorProvider
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import HomeWidgetGlanceState
import HomeWidgetGlanceStateDefinition
import HomeWidgetGlanceWidgetReceiver

data class Course (
    val name: String,
    val time: String,
    val classroom: String,
    val teacher: String
);

class HomeScreenAppWidget : GlanceAppWidget() {

    override val stateDefinition: GlanceStateDefinition<*>?
        get() = HomeWidgetGlanceStateDefinition()

    override suspend fun provideGlance(context: Context, id: GlanceId) {
        provideContent {
            GlanceContent(context, currentState())
        }
    }

    @Composable
    private fun GlanceContent(context: Context, currentState: HomeWidgetGlanceState) {
        val prefs = currentState.preferences
        val json = prefs.getString("courseData", "[]");
        val courses = parseCourses(json ?: "[]");

        Box (

        ) {
            Column(
                modifier = GlanceModifier
                    .background(Color.White)
                    .padding(8.dp)
                    .fillMaxWidth()
            ) {
                Text(
                    text = "TODAY COURSES",
                    style = TextStyle(
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold,
                        color = ColorProvider(Color.Black)
                    )
                )

                Spacer(modifier = GlanceModifier.padding(4.dp))

                if (courses.isEmpty()) {
                    Text(
                        text = "今天已经没有课程了",
                        style = TextStyle(
                            color = ColorProvider(Color.Gray),
                            fontSize = 14.sp
                        )
                    )
                } else {
                    courses.forEach { course ->
                        CourseItem(course)
                        Spacer(modifier = GlanceModifier.padding(4.dp))
                    }
                }
            }
        }
    }

    @Composable
    private fun CourseItem(course: Course) {
        Column(
            modifier = GlanceModifier.fillMaxWidth()
        ) {
            Text(
                text = course.name,
                style = TextStyle(
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Medium,
                    color = ColorProvider(Color.Black)
                )
            )
            Row {
                Text(
                    text = course.time,
                    style = TextStyle(
                        fontSize = 12.sp,
                        color = ColorProvider(Color.DarkGray)
                    )
                )
                Text(
                    text = " | ",
                    style = TextStyle(
                        fontSize = 12.sp,
                        color = ColorProvider(Color.LightGray)
                    )
                )
                Text(
                    text = course.classroom,
                    style = TextStyle(
                        fontSize = 12.sp,
                        color = ColorProvider(Color.DarkGray)
                    )
                )
            }
        }
    }

    class CourseListTypeToken : TypeToken<List<Course>>()

    private fun parseCourses(json: String) : List<Course> {
        return try {
            Gson().fromJson(json, CourseListTypeToken().type) ?: emptyList();
        } catch (e: Exception) {
            emptyList();
        }
    }
}

class HomeWidgetReceiver : HomeWidgetGlanceWidgetReceiver<HomeScreenAppWidget>() {
    override val glanceAppWidget = HomeScreenAppWidget()
}