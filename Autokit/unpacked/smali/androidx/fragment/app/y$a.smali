.class Landroidx/fragment/app/y$a;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/y;->v(Ljava/lang/Object;Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/graphics/Rect;

.method constructor <init>(Landroidx/fragment/app/y;Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/y$a;->a:Landroid/graphics/Rect;
    invoke-direct { p0 }, Landroid/transition/Transition$EpicenterCallback;-><init>()V
    return-void
.end method

.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/y$a;->a:Landroid/graphics/Rect;
    return-object p1
.end method
