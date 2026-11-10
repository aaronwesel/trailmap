package com.trailmap.app

import android.app.Application
import com.trailmap.app.config.ApiConfig
import com.trailmap.app.push.AlertReceivedHandler

class TrailmapApp : Application() {
    override fun onCreate() {
        super.onCreate()
        android.util.Log.i(TAG, "API base URL = ${ApiConfig.BASE_URL}")
        AlertReceivedHandler.ensureChannel(this)
    }

    companion object {
        private const val TAG = "TrailmapApp"
    }
}
