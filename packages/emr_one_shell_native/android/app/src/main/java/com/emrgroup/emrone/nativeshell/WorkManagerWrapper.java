package com.emrgroup.emrone.nativeshell;

// As jnigen only works on Java files, we use this wrapper to call into Kotlin code.
// We must not refer to other packages in this file, otherwise jnigen will fail.
// NOTE: You must comment out the 'Keep' import and attribute below, and in WorkManagerCallback.java, before running jnigen!

import androidx.annotation.Keep;
import java.util.Map;

@Keep
public class WorkManagerWrapper {
    public void setCallback(WorkManagerCallback callback) {
        WorkManagerHelper
                .Companion
                .getInstance()
                .setCallback(callback);
    }

    public void startObserving() {
        WorkManagerHelper
                .Companion
                .getInstance()
                .startObserving();
    }

    public void stopObserving() {
        WorkManagerHelper
                .Companion
                .getInstance()
                .stopObserving();
    }

    public String upload(Map<String, String> defaultHeaders, String source, String destinationUrl) {
        return WorkManagerHelper
                .Companion
                .getInstance()
                .upload(defaultHeaders, source, destinationUrl);
    }

    public void clear() {
        WorkManagerHelper
                .Companion
                .getInstance()
                .clear();
    }
}
