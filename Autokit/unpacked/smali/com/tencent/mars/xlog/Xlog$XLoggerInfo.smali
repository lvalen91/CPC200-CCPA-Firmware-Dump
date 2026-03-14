.class Lcom/tencent/mars/xlog/Xlog$XLoggerInfo;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/tencent/mars/xlog/Xlog;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "XLoggerInfo"
.end annotation

.field public filename:Ljava/lang/String;

.field public funcname:Ljava/lang/String;

.field public level:I

.field public line:I

.field public maintid:J

.field public pid:J

.field public tag:Ljava/lang/String;

.field public tid:J

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method
