.class public Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
.super Ljava/lang/Object;
.source "SourceFile"

.method static constructor <clinit>()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .catch Ljava/lang/Error; { :L0 .. :L1 } :L2
  .registers 5
  :L0
    const-string v0, "connection"
  .line 1
    invoke-static { v0 }, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
  :L1
    goto :L5
  :L2
    move-exception v0
    goto :L4
  :L3
    move-exception v0
  :L4
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "JniTools: \n"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->init()I
    return-void
.end method

.method public static native getError(I)Ljava/lang/String;
.end method

.method public static getVidPid(Ljava/lang/String;)[I
  .registers 4
    const/4 v0, 2
    new-array v1, v0, [I
  .line 1
    fill-array-data v1, :L1
  .line 2
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :L0
    const-string v2, ","
  .line 3
    invoke-virtual { p0, v2 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p0
  .line 4
    array-length v2, p0
    if-ne v2, v0, :L0
    const/4 v0, 0
  .line 5
    aget-object v2, p0, v0
    invoke-static { v2 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v2
    aput v2, v1, v0
    const/4 v0, 1
  .line 6
    aget-object p0, p0, v0
    invoke-static { p0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result p0
    aput p0, v1, v0
  :L0
    return-object v1
  :L1
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 0t
  .end array-data
.end method

.method public native bulkTransferIn([BII)I
.end method

.method public native bulkTransferOut([BII)I
.end method

.method public native getDeviceList([Ljava/lang/String;)I
.end method

.method public native init()I
.end method

.method public native openDevice(II)I
.end method

.method public reinit()I
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->release()V
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->init()I
    move-result v0
    return v0
.end method

.method public native release()V
.end method
