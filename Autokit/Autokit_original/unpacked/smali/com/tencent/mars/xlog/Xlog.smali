.class public Lcom/tencent/mars/xlog/Xlog;
.super Ljava/lang/Object;
.implements Lcom/tencent/mars/xlog/Log$LogImp;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/tencent/mars/xlog/Xlog$XLogConfig;,
    Lcom/tencent/mars/xlog/Xlog$XLoggerInfo;
  }
.end annotation

.field public final static AppednerModeAsync:I = 0

.field public final static AppednerModeSync:I = 1

.field public final static COMPRESS_LEVEL1:I = 1

.field public final static COMPRESS_LEVEL2:I = 2

.field public final static COMPRESS_LEVEL3:I = 3

.field public final static COMPRESS_LEVEL4:I = 4

.field public final static COMPRESS_LEVEL5:I = 5

.field public final static COMPRESS_LEVEL6:I = 6

.field public final static COMPRESS_LEVEL7:I = 7

.field public final static COMPRESS_LEVEL8:I = 8

.field public final static COMPRESS_LEVEL9:I = 9

.field public final static LEVEL_ALL:I = 0

.field public final static LEVEL_DEBUG:I = 1

.field public final static LEVEL_ERROR:I = 4

.field public final static LEVEL_FATAL:I = 5

.field public final static LEVEL_INFO:I = 2

.field public final static LEVEL_NONE:I = 6

.field public final static LEVEL_VERBOSE:I = 0

.field public final static LEVEL_WARNING:I = 3

.field public final static ZLIB_MODE:I = 0

.field public final static ZSTD_MODE:I = 1

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static native appenderOpen(Lcom/tencent/mars/xlog/Xlog$XLogConfig;)V
.end method

.method private static decryptTag(Ljava/lang/String;)Ljava/lang/String;
  .registers 1
    return-object p0
.end method

.method public static native logWrite(Lcom/tencent/mars/xlog/Xlog$XLoggerInfo;Ljava/lang/String;)V
.end method

.method public static logWrite2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
  .registers 24
    const-wide/16 v0, 0
    move v2, p0
    move-object v3, p1
    move-object v4, p2
    move-object/from16 v5, p3
    move/from16 v6, p4
    move/from16 v7, p5
    move-wide/from16 v8, p6
    move-wide/from16 v10, p8
    move-object/from16 v12, p10
  .line 1
    invoke-static/range { v0 .. v12 }, Lcom/tencent/mars/xlog/Xlog;->logWrite2(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    return-void
.end method

.method public static native logWrite2(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
.end method

.method public static open(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
  .registers 7
    if-eqz p0, :L0
    const-string p0, "util"
  .line 1
    invoke-static { p0 }, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
  :L0
  .line 2
    new-instance p0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;
    invoke-direct { p0 }, Lcom/tencent/mars/xlog/Xlog$XLogConfig;-><init>()V
  .line 3
    iput p1, p0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->level:I
  .line 4
    iput p2, p0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->mode:I
  .line 5
    iput-object p4, p0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->logdir:Ljava/lang/String;
  .line 6
    iput-object p5, p0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->nameprefix:Ljava/lang/String;
  .line 7
    iput-object p6, p0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->pubkey:Ljava/lang/String;
    const/4 p1, 0
  .line 8
    iput p1, p0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->compressmode:I
  .line 9
    iput p1, p0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->compresslevel:I
  .line 10
    iput-object p3, p0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->cachedir:Ljava/lang/String;
  .line 11
    iput p1, p0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->cachedays:I
  .line 12
    invoke-static { p0 }, Lcom/tencent/mars/xlog/Xlog;->appenderOpen(Lcom/tencent/mars/xlog/Xlog$XLogConfig;)V
    return-void
.end method

.method public native appenderClose()V
.end method

.method public native appenderFlush(JZ)V
.end method

.method public appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
  .registers 8
  .line 1
    new-instance v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;
    invoke-direct { v0 }, Lcom/tencent/mars/xlog/Xlog$XLogConfig;-><init>()V
  .line 2
    iput p1, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->level:I
  .line 3
    iput p2, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->mode:I
  .line 4
    iput-object p4, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->logdir:Ljava/lang/String;
  .line 5
    iput-object p5, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->nameprefix:Ljava/lang/String;
    const/4 p1, 0
  .line 6
    iput p1, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->compressmode:I
    const-string p1, ""
  .line 7
    iput-object p1, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->pubkey:Ljava/lang/String;
  .line 8
    iput-object p3, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->cachedir:Ljava/lang/String;
  .line 9
    iput p6, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->cachedays:I
  .line 10
    invoke-static { v0 }, Lcom/tencent/mars/xlog/Xlog;->appenderOpen(Lcom/tencent/mars/xlog/Xlog$XLogConfig;)V
    return-void
.end method

.method public appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
  .registers 9
  .line 11
    new-instance v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;
    invoke-direct { v0 }, Lcom/tencent/mars/xlog/Xlog$XLogConfig;-><init>()V
  .line 12
    iput p1, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->level:I
  .line 13
    iput p2, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->mode:I
  .line 14
    iput-object p4, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->logdir:Ljava/lang/String;
  .line 15
    iput-object p5, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->nameprefix:Ljava/lang/String;
    const/4 p1, 0
  .line 16
    iput p1, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->compressmode:I
  .line 17
    iput-object p7, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->pubkey:Ljava/lang/String;
  .line 18
    iput-object p3, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->cachedir:Ljava/lang/String;
  .line 19
    iput p6, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->cachedays:I
  .line 20
    invoke-static { v0 }, Lcom/tencent/mars/xlog/Xlog;->appenderOpen(Lcom/tencent/mars/xlog/Xlog$XLogConfig;)V
    return-void
.end method

.method public native getLogLevel(J)I
.end method

.method public native getXlogInstance(Ljava/lang/String;)J
.end method

.method public logD(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
  .registers 26
  .line 1
    invoke-static/range { p3 .. p3 }, Lcom/tencent/mars/xlog/Xlog;->decryptTag(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const/4 v2, 1
    move-wide v0, p1
    move-object/from16 v4, p4
    move-object/from16 v5, p5
    move/from16 v6, p6
    move/from16 v7, p7
    move-wide/from16 v8, p8
    move-wide/from16 v10, p10
    move-object/from16 v12, p12
    invoke-static/range { v0 .. v12 }, Lcom/tencent/mars/xlog/Xlog;->logWrite2(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    return-void
.end method

.method public logE(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
  .registers 26
  .line 1
    invoke-static/range { p3 .. p3 }, Lcom/tencent/mars/xlog/Xlog;->decryptTag(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const/4 v2, 4
    move-wide v0, p1
    move-object/from16 v4, p4
    move-object/from16 v5, p5
    move/from16 v6, p6
    move/from16 v7, p7
    move-wide/from16 v8, p8
    move-wide/from16 v10, p10
    move-object/from16 v12, p12
    invoke-static/range { v0 .. v12 }, Lcom/tencent/mars/xlog/Xlog;->logWrite2(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    return-void
.end method

.method public logF(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
  .registers 26
  .line 1
    invoke-static/range { p3 .. p3 }, Lcom/tencent/mars/xlog/Xlog;->decryptTag(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const/4 v2, 5
    move-wide v0, p1
    move-object/from16 v4, p4
    move-object/from16 v5, p5
    move/from16 v6, p6
    move/from16 v7, p7
    move-wide/from16 v8, p8
    move-wide/from16 v10, p10
    move-object/from16 v12, p12
    invoke-static/range { v0 .. v12 }, Lcom/tencent/mars/xlog/Xlog;->logWrite2(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    return-void
.end method

.method public logI(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
  .registers 26
  .line 1
    invoke-static/range { p3 .. p3 }, Lcom/tencent/mars/xlog/Xlog;->decryptTag(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const/4 v2, 2
    move-wide v0, p1
    move-object/from16 v4, p4
    move-object/from16 v5, p5
    move/from16 v6, p6
    move/from16 v7, p7
    move-wide/from16 v8, p8
    move-wide/from16 v10, p10
    move-object/from16 v12, p12
    invoke-static/range { v0 .. v12 }, Lcom/tencent/mars/xlog/Xlog;->logWrite2(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    return-void
.end method

.method public logV(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
  .registers 26
  .line 1
    invoke-static/range { p3 .. p3 }, Lcom/tencent/mars/xlog/Xlog;->decryptTag(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const/4 v2, 0
    move-wide v0, p1
    move-object/from16 v4, p4
    move-object/from16 v5, p5
    move/from16 v6, p6
    move/from16 v7, p7
    move-wide/from16 v8, p8
    move-wide/from16 v10, p10
    move-object/from16 v12, p12
    invoke-static/range { v0 .. v12 }, Lcom/tencent/mars/xlog/Xlog;->logWrite2(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    return-void
.end method

.method public logW(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
  .registers 26
  .line 1
    invoke-static/range { p3 .. p3 }, Lcom/tencent/mars/xlog/Xlog;->decryptTag(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const/4 v2, 3
    move-wide v0, p1
    move-object/from16 v4, p4
    move-object/from16 v5, p5
    move/from16 v6, p6
    move/from16 v7, p7
    move-wide/from16 v8, p8
    move-wide/from16 v10, p10
    move-object/from16 v12, p12
    invoke-static/range { v0 .. v12 }, Lcom/tencent/mars/xlog/Xlog;->logWrite2(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    return-void
.end method

.method public native newXlogInstance(Lcom/tencent/mars/xlog/Xlog$XLogConfig;)J
.end method

.method public openLogInstance(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
  .registers 8
  .line 1
    new-instance v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;
    invoke-direct { v0 }, Lcom/tencent/mars/xlog/Xlog$XLogConfig;-><init>()V
  .line 2
    iput p1, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->level:I
  .line 3
    iput p2, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->mode:I
  .line 4
    iput-object p4, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->logdir:Ljava/lang/String;
  .line 5
    iput-object p5, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->nameprefix:Ljava/lang/String;
    const/4 p1, 0
  .line 6
    iput p1, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->compressmode:I
    const-string p1, ""
  .line 7
    iput-object p1, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->pubkey:Ljava/lang/String;
  .line 8
    iput-object p3, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->cachedir:Ljava/lang/String;
  .line 9
    iput p6, v0, Lcom/tencent/mars/xlog/Xlog$XLogConfig;->cachedays:I
  .line 10
    invoke-virtual { p0, v0 }, Lcom/tencent/mars/xlog/Xlog;->newXlogInstance(Lcom/tencent/mars/xlog/Xlog$XLogConfig;)J
    move-result-wide p1
    return-wide p1
.end method

.method public native releaseXlogInstance(Ljava/lang/String;)V
.end method

.method public native setAppenderMode(JI)V
.end method

.method public native setConsoleLogOpen(JZ)V
.end method

.method public native setMaxAliveTime(JJ)V
.end method

.method public native setMaxFileSize(JJ)V
.end method
