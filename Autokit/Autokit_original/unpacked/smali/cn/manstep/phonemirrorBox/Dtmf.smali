.class public Lcn/manstep/phonemirrorBox/Dtmf;
.super Ljava/lang/Object;
.source "SourceFile"

.method static constructor <clinit>()V
  .catch Ljava/lang/UnsatisfiedLinkError; { :L0 .. :L1 } :L2
  .registers 3
  :L0
    const-string v0, "dtmf"
  .line 1
    invoke-static { v0 }, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V
    const-string v1, "dtmf.so load failed!"
  .line 3
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public native dtmfDoAec([B)I
.end method
