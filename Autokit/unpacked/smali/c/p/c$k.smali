.class Lc/p/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/p/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "k"
.end annotation

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.method constructor <init>(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lc/p/c$k;->e:Landroid/view/View;
    return-void
.end method

.method private b()V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/p/c$k;->e:Landroid/view/View;
    iget v1, p0, Lc/p/c$k;->a:I
    iget v2, p0, Lc/p/c$k;->b:I
    iget v3, p0, Lc/p/c$k;->c:I
    iget v4, p0, Lc/p/c$k;->d:I
    invoke-static { v0, v1, v2, v3, v4 }, Lc/p/c0;->f(Landroid/view/View;IIII)V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lc/p/c$k;->f:I
  .line 3
    iput v0, p0, Lc/p/c$k;->g:I
    return-void
.end method

.method a(Landroid/graphics/PointF;)V
  .registers 3
  .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
    iput v0, p0, Lc/p/c$k;->c:I
  .line 2
    iget p1, p1, Landroid/graphics/PointF;->y:F
    invoke-static { p1 }, Ljava/lang/Math;->round(F)I
    move-result p1
    iput p1, p0, Lc/p/c$k;->d:I
  .line 3
    iget p1, p0, Lc/p/c$k;->g:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lc/p/c$k;->g:I
  .line 4
    iget v0, p0, Lc/p/c$k;->f:I
    if-ne v0, p1, :L0
  .line 5
    invoke-direct { p0 }, Lc/p/c$k;->b()V
  :L0
    return-void
.end method

.method c(Landroid/graphics/PointF;)V
  .registers 3
  .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
    iput v0, p0, Lc/p/c$k;->a:I
  .line 2
    iget p1, p1, Landroid/graphics/PointF;->y:F
    invoke-static { p1 }, Ljava/lang/Math;->round(F)I
    move-result p1
    iput p1, p0, Lc/p/c$k;->b:I
  .line 3
    iget p1, p0, Lc/p/c$k;->f:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lc/p/c$k;->f:I
  .line 4
    iget v0, p0, Lc/p/c$k;->g:I
    if-ne p1, v0, :L0
  .line 5
    invoke-direct { p0 }, Lc/p/c$k;->b()V
  :L0
    return-void
.end method
