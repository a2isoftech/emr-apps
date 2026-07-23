package com.emrgroup.emrone.nativeshell

import android.content.Context
import android.os.Handler
import android.os.Looper
import androidx.lifecycle.Observer
import androidx.work.Constraints
import androidx.work.Data
import androidx.work.NetworkType
import androidx.work.OneTimeWorkRequestBuilder
import androidx.work.WorkInfo
import androidx.work.WorkManager
import org.json.JSONObject
import java.lang.ref.WeakReference

class WorkManagerHelper(context: WeakReference<Context>?) {
    // Make WorkManagerHelper a singleton that we access using getInstance().
    companion object {
        private lateinit var instance: WorkManagerHelper

        fun init(context: Context) {
            instance = WorkManagerHelper(WeakReference(context.applicationContext))
        }

        fun getInstance(): WorkManagerHelper {
            check(::instance.isInitialized) { "Call init(context) before using getInstance()" }
            return instance
        }
    }

    private val workManager: WorkManager by lazy {
        context?.get()?.let { WorkManager.getInstance(it) }
                ?: throw IllegalStateException("Context is null - unable to get an instance of WorkManager")
    }

    private val tag: String by lazy {
        context?.get()?.let { it.packageName }
                ?: throw IllegalStateException("Context is null - unable to get the packageName")
    }

    private val workObserver = Observer<List<WorkInfo>> { workInfos ->
        workInfos.forEach { workInfo ->
            if (workInfo.state == WorkInfo.State.SUCCEEDED || workInfo.state == WorkInfo.State.FAILED) {
                callback?.onComplete(workInfo.id.toString(), workInfo.outputData.keyValueMap)
            } else if (workInfo.state == WorkInfo.State.RUNNING) {
                val progress = workInfo.progress.getInt("progress", 0)
                callback?.onProgress(workInfo.id.toString(), progress)
            }
        }
    }

    var callback: WorkManagerCallback? = null

    fun startObserving() {
        // observeForever can only be called on the main thread.
        Handler(Looper.getMainLooper()).post {
            val workLiveData = workManager.getWorkInfosByTagLiveData(tag)

            workLiveData.observeForever(workObserver)
        }
    }

    fun stopObserving() {
        workManager
                .getWorkInfosByTagLiveData(tag)
                .removeObserver(workObserver)
    }

    fun upload(defaultHeaders: Map<String, String>, source: String, destinationUrl: String): String {
        // val constraints = Constraints.Builder()
        //         .setRequiredNetworkType(NetworkType.UNMETERED) // Require Wi-Fi.
        //         .build()

        val inputData: Data = Data.Builder()
                .putString("defaultHeaders", JSONObject(defaultHeaders).toString())
                .putString("source", source)
                .putString("destinationUrl", destinationUrl)
                .build()

        val uploadRequest = OneTimeWorkRequestBuilder<UploadWorker>()
                .addTag(tag)
                .setInputData(inputData)
                // .setConstraints(constraints)
                .build()

        workManager.enqueue(uploadRequest)

        return uploadRequest.id.toString()
    }

    fun clear() {
        workManager.pruneWork()
    }
}
