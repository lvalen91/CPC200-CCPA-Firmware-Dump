.class Lc/e/b/d$b;
.super Lc/e/b/b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/e/b/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "b"
.end annotation

.method public constructor <init>(Lc/e/b/d;Lc/e/b/c;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lc/e/b/b;-><init>()V
  .line 2
    new-instance p1, Lc/e/b/j;
    invoke-direct { p1, p0, p2 }, Lc/e/b/j;-><init>(Lc/e/b/b;Lc/e/b/c;)V
    iput-object p1, p0, Lc/e/b/b;->e:Lc/e/b/b$a;
    return-void
.end method
