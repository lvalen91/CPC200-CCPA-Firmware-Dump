.class public interface abstract Lokio/Sink;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.source "SourceFile"

.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public abstract timeout()Lokio/Timeout;
.end method

.method public abstract write(Lokio/Buffer;J)V
.end method
