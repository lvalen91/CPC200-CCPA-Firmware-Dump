.class Landroidx/appcompat/widget/w$a;
.super Landroidx/core/content/c/f$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/w;->C(Landroid/content/Context;Landroidx/appcompat/widget/u0;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/ref/WeakReference;

.field final synthetic d:Landroidx/appcompat/widget/w;

.method constructor <init>(Landroidx/appcompat/widget/w;IILjava/lang/ref/WeakReference;)V
  .registers 5
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/w$a;->d:Landroidx/appcompat/widget/w;
    iput p2, p0, Landroidx/appcompat/widget/w$a;->a:I
    iput p3, p0, Landroidx/appcompat/widget/w$a;->b:I
    iput-object p4, p0, Landroidx/appcompat/widget/w$a;->c:Ljava/lang/ref/WeakReference;
    invoke-direct { p0 }, Landroidx/core/content/c/f$a;-><init>()V
    return-void
.end method

.method public d(I)V
  .registers 2
    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L2
  .line 2
    iget v0, p0, Landroidx/appcompat/widget/w$a;->a:I
    const/4 v1, -1
    if-eq v0, v1, :L2
  .line 3
    iget v1, p0, Landroidx/appcompat/widget/w$a;->b:I
    and-int/lit8 v1, v1, 2
    if-eqz v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    invoke-static { p1, v0, v1 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    move-result-object p1
  :L2
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/w$a;->d:Landroidx/appcompat/widget/w;
    iget-object v1, p0, Landroidx/appcompat/widget/w$a;->c:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0, v1, p1 }, Landroidx/appcompat/widget/w;->n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    return-void
.end method
