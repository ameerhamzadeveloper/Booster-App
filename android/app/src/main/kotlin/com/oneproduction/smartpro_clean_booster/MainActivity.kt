package com.oneproduction.smartpro_clean_booster

import android.app.Activity
import android.app.ActivityManager
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.IOException
import java.io.RandomAccessFile
import java.text.DecimalFormat

class MainActivity: FlutterActivity() {
    private val CHANNEL = "booster_channel"
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if(call.method.equals("clean_cache")){
                result.success("Cache Cleaned")

            }else if(call.method.equals("get_used_ram")){

                val twoDecimalForm = DecimalFormat("#.##")
                val mi = ActivityManager.MemoryInfo()
                val activityManager: ActivityManager = getSystemService(ACTIVITY_SERVICE) as ActivityManager
                activityManager.getMemoryInfo(mi)
                val percentAvail: Int = mi.totalMem.toInt() - mi.availMem.toInt()
                result.success(percentAvail)

            }else if(call.method.equals("get_cpu_usage")){
                readUsage()
            }else if(call.method.equals("clear_background_services")){
                val pm: PackageManager = packageManager
                val packages: List<ApplicationInfo> = pm.getInstalledApplications(PackageManager.GET_META_DATA)
                for (packageInfo in packages) {
                    val am = getSystemService(Activity.ACTIVITY_SERVICE) as ActivityManager
                    am.killBackgroundProcesses(packageInfo.packageName)
                }
                result.success("Background Process Completed")
            }
        }
    }

    private fun readUsage(): Float {
        try {
            val reader = RandomAccessFile("/proc/stat", "r")
            var load: String = reader.readLine()
            var toks = load.split(" +".toRegex()).toTypedArray() // Split on one or more spaces
            val idle1 = toks[4].toLong()
            val cpu1 = toks[2].toLong() + toks[3].toLong() + toks[5].toLong() + toks[6].toLong() + toks[7].toLong() + toks[8].toLong()
            try {
                Thread.sleep(360)
            } catch (e: Exception) {
            }
            reader.seek(0)
            load = reader.readLine()
            reader.close()
            toks = load.split(" +".toRegex()).toTypedArray()
            val idle2 = toks[4].toLong()
            val cpu2 = toks[2].toLong() + toks[3].toLong() + toks[5].toLong() + toks[6].toLong() + toks[7].toLong() + toks[8].toLong()
            return (cpu2 - cpu1).toFloat() / (cpu2 + idle2 - (cpu1 + idle1))
        } catch (ex: IOException) {
            ex.printStackTrace()
        }
        return 0f
    }
}
