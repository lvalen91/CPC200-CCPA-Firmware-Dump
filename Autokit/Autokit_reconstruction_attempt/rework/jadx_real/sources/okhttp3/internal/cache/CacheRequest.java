package okhttp3.internal.cache;

import okio.Sink;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public interface CacheRequest {
    void abort();

    Sink body();
}
