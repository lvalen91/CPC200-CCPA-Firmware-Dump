.class public Lcn/manstep/phonemirrorBox/util/JniTools;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string v0, "tools2.1"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_24

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    .line 2
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JniTools: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native amplifyPcmData([BIII)V
.end method

.method public static native box(Ljava/lang/String;)Z
.end method

.method public static native check()I
.end method

.method public static native checkSignature(Ljava/lang/String;)Z
.end method

.method public static native mono2Stereo([BII[B)V
.end method

.method public static native open(Ljava/lang/String;)Z
.end method

.method public static native test()V
.end method
