package com.emrgroup.emrone.nativeshell;

import androidx.annotation.Keep;
import java.util.Map;

@Keep
public interface WorkManagerCallback {
    void onComplete(String id, Map<String, Object> data);

    void onProgress(String id, int progress);
}
