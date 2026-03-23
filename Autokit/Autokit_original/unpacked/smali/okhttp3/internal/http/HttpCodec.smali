.class public interface abstract Lokhttp3/internal/http/HttpCodec;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static DISCARD_STREAM_TIMEOUT_MILLIS:I = 100

.method public abstract cancel()V
.end method

.method public abstract createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
.end method

.method public abstract finishRequest()V
.end method

.method public abstract flushRequest()V
.end method

.method public abstract openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
.end method

.method public abstract readResponseHeaders(Z)Lokhttp3/Response$Builder;
.end method

.method public abstract writeRequestHeaders(Lokhttp3/Request;)V
.end method
