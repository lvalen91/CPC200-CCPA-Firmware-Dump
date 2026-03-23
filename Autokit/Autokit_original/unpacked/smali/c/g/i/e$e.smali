.class Lc/g/i/e$e;
.super Lc/g/i/e$d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/i/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "e"
.end annotation

.field private final b:Z

.method constructor <init>(Lc/g/i/e$c;Z)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lc/g/i/e$d;-><init>(Lc/g/i/e$c;)V
  .line 2
    iput-boolean p2, p0, Lc/g/i/e$e;->b:Z
    return-void
.end method

.method protected b()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/g/i/e$e;->b:Z
    return v0
.end method
