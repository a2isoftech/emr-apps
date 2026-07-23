package com.emrgroup.emrone.nativeshell

import android.content.Context
// import android.media.AudioManager
// import android.media.ToneGenerator
import androidx.work.Data
import androidx.work.Worker
import androidx.work.WorkerParameters
import androidx.work.workDataOf
import org.json.JSONObject
import java.io.File
import java.io.FileInputStream
import java.io.OutputStream
import java.io.OutputStreamWriter
import java.io.PrintWriter
import java.net.HttpURLConnection
import java.net.URL

class UploadWorker(
        context: Context,
        private val params: WorkerParameters
) : Worker(context, params) {

    override fun doWork(): Result {
        // val tg = ToneGenerator(AudioManager.STREAM_NOTIFICATION, 100)
        // tg.startTone(ToneGenerator.TONE_PROP_BEEP)

        // Deserialise the defaultHeaders JSON into a Map<String, String>.
        val defaultHeadersJson = inputData.getString("defaultHeaders")
        val defaultHeaders: Map<String, String> = if (defaultHeadersJson != null) {
            val jsonObject = JSONObject(defaultHeadersJson)
            jsonObject.keys().asSequence().associateWith { jsonObject.getString(it) }
        } else {
            emptyMap()
        }

        val source = inputData.getString("source")
        val destinationUrl = inputData.getString("destinationUrl")

        setProgressAsync(workDataOf("progress" to 0))

        try {
            val sourceFile = File(source
                    ?: throw IllegalArgumentException("source cannot be null."))

            if (!sourceFile.exists()) {
                return Result.failure(result("failure", source, destinationUrl, 0, "Source file does not exist."))
            }

            val statusCode = uploadFile(
                    sourceFile,
                    destinationUrl
                            ?: throw IllegalArgumentException("destinationUrl cannot be null."),
                    defaultHeaders ?: throw IllegalArgumentException("defaultHeaders cannot be null."),

                    object : ProgressListener {
                        override fun onProgress(bytesWritten: Long, totalBytes: Long) {
                            val progress = (bytesWritten * 100 / totalBytes).toInt()
                            setProgressAsync(workDataOf("progress" to progress))
                        }
                    }
            )

            // tg.startTone(ToneGenerator.TONE_PROP_ACK)

            setProgressAsync(workDataOf("progress" to 100))

            return Result.success(result("success", source, destinationUrl, statusCode, null))
        } catch (e: Exception) {
            // tg.startTone(ToneGenerator.TONE_CDMA_ALERT_NETWORK_LITE)

            return Result.failure(result("failure", source, destinationUrl, 0, e.message))
        }
    }

    private fun uploadFile(file: File, targetUrl: String, defaultHeaders: Map<String, String>, listener: ProgressListener): Int {
        val boundary = "Boundary-${System.currentTimeMillis()}"
        val lineFeed = "\r\n"
        val charset = "UTF-8"

        val contentHeader = buildString {
            append("--$boundary").append(lineFeed)
            append("Content-Disposition: form-data; name=\"formFile\"; filename=\"${file.name}\"").append(lineFeed)
            append("Content-Type: application/octet-stream").append(lineFeed)
            append(lineFeed)
        }

        val contentFooter = "$lineFeed--$boundary--$lineFeed"

        val totalBytes = contentHeader.toByteArray().size + file.length() + contentFooter.toByteArray().size
        val url = URL(targetUrl)
        val connection = url.openConnection() as HttpURLConnection
        connection.doOutput = true
        connection.useCaches = false
        connection.requestMethod = "POST"

        for ((key, value) in defaultHeaders) {
            connection.setRequestProperty(key, value)
        }

        connection.setRequestProperty("Accept", "*/*")
        connection.setRequestProperty("Cache-Control", "no-cache")
        connection.setRequestProperty("Accept-Encoding", "gzip, deflate")
        connection.setRequestProperty("Content-Type", "multipart/form-data; boundary=$boundary")
        connection.setFixedLengthStreamingMode(totalBytes)

        val outputStream: OutputStream = ProgressOutputStream(connection.outputStream, totalBytes, listener)

        val writer = PrintWriter(OutputStreamWriter(outputStream, charset), true)
        writer.append(contentHeader).flush()

        FileInputStream(file).use { input ->
            input.copyTo(outputStream)
        }

        outputStream.flush()

        writer.append(contentFooter).flush()
        writer.close()

        return connection.responseCode
    }

    private fun result(result: String, source: String?, destinationUrl: String?, statusCode: Int, message: String?): Data {
        return workDataOf(
                "result" to result,
                "source" to source,
                "destinationUrl" to destinationUrl,
                "statusCode" to statusCode,
                "message" to message
        )
    }

    interface ProgressListener {
        fun onProgress(bytesWritten: Long, totalBytes: Long)
    }

    class ProgressOutputStream(
            private val out: OutputStream,
            private val totalBytes: Long,
            private val listener: ProgressListener
    ) : OutputStream() {

        private var bytesWritten = 0L

        // Useful for slowing down uploads. MUST ALWAYS BE 0L FOR LIVE!
        private var throttle = 0L

        override fun write(b: Int) {
            out.write(b)
            bytesWritten++
            listener.onProgress(bytesWritten, totalBytes)

            Thread.sleep(throttle);
        }

        override fun write(b: ByteArray, off: Int, len: Int) {
            out.write(b, off, len)
            bytesWritten += len
            listener.onProgress(bytesWritten, totalBytes)

            Thread.sleep(throttle);
        }

        override fun flush() = out.flush()

        override fun close() = out.close()
    }
}
