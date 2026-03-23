.class Lc/e/b/k/m/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/e/b/k/m/o;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "a"
.end annotation

.method public constructor <init>(Lc/e/b/k/m/o;Lc/e/b/k/e;Lc/e/b/d;I)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;
    invoke-direct { p1, p2 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
  .line 3
    iget-object p1, p2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { p3, p1 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
  .line 4
    iget-object p1, p2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { p3, p1 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
  .line 5
    iget-object p1, p2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { p3, p1 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
  .line 6
    iget-object p1, p2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { p3, p1 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
  .line 7
    iget-object p1, p2, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { p3, p1 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
    return-void
.end method
