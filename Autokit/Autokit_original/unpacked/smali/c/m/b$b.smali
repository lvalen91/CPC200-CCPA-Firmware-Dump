.class Lc/m/b$b;
.super Ljava/io/File;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/m/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
.end annotation

.field public b:J

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const-wide/16 p1, -1
  .line 2
    iput-wide p1, p0, Lc/m/b$b;->b:J
    return-void
.end method
