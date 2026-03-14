.class public interface abstract Lcom/tencent/mars/xlog/Log$LogImp;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/tencent/mars/xlog/Log;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1545
  name = "LogImp"
.end annotation

.method public abstract appenderClose()V
.end method

.method public abstract appenderFlush(JZ)V
.end method

.method public abstract appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract getLogLevel(J)I
.end method

.method public abstract getXlogInstance(Ljava/lang/String;)J
.end method

.method public abstract logD(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
.end method

.method public abstract logE(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
.end method

.method public abstract logF(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
.end method

.method public abstract logI(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
.end method

.method public abstract logV(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
.end method

.method public abstract logW(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
.end method

.method public abstract openLogInstance(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
.end method

.method public abstract releaseXlogInstance(Ljava/lang/String;)V
.end method

.method public abstract setAppenderMode(JI)V
.end method

.method public abstract setConsoleLogOpen(JZ)V
.end method

.method public abstract setMaxAliveTime(JJ)V
.end method

.method public abstract setMaxFileSize(JJ)V
.end method
