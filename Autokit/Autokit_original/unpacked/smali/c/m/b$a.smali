.class Lc/m/b$a;
.super Ljava/lang/Object;
.implements Ljava/io/FileFilter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/m/b;->a()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>(Lc/m/b;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public accept(Ljava/io/File;)Z
  .registers 3
  .line 1
    invoke-virtual { p1 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object p1
    const-string v0, "MultiDex.lock"
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    xor-int/lit8 p1, p1, 1
    return p1
.end method
