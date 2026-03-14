.class Landroidx/fragment/app/y$e;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/y;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/graphics/Rect;

.method constructor <init>(Landroidx/fragment/app/y;Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/y$e;->a:Landroid/graphics/Rect;
    invoke-direct { p0 }, Landroid/transition/Transition$EpicenterCallback;-><init>()V
    return-void
.end method

.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/y$e;->a:Landroid/graphics/Rect;
    if-eqz p1, :L1
    invoke-virtual { p1 }, Landroid/graphics/Rect;->isEmpty()Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/y$e;->a:Landroid/graphics/Rect;
    return-object p1
  :L1
    const/4 p1, 0
    return-object p1
.end method
