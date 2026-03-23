.class Lc/e/b/h$a;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/e/b/h;->F(Lc/e/b/i;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Comparator<",
    "Lc/e/b/i;",
    ">;"
  }
.end annotation

.method constructor <init>(Lc/e/b/h;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Lc/e/b/i;Lc/e/b/i;)I
  .registers 3
  .line 1
    iget p1, p1, Lc/e/b/i;->c:I
    iget p2, p2, Lc/e/b/i;->c:I
    sub-int/2addr p1, p2
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
  .registers 3
  .line 1
    check-cast p1, Lc/e/b/i;
    check-cast p2, Lc/e/b/i;
    invoke-virtual { p0, p1, p2 }, Lc/e/b/h$a;->a(Lc/e/b/i;Lc/e/b/i;)I
    move-result p1
    return p1
.end method
