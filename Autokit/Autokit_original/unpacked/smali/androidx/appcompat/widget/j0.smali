.class public Landroidx/appcompat/widget/j0;
.super Landroidx/appcompat/widget/h0;
.implements Landroidx/appcompat/widget/i0;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/j0$a;
  }
.end annotation

.field private static K:Ljava/lang/reflect/Method;

.field private J:Landroidx/appcompat/widget/i0;

.method static constructor <clinit>()V
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L1
  .registers 5
  :L0
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-gt v0, v1, :L1
  .line 2
    const-class v0, Landroid/widget/PopupWindow;
    const-string v1, "setTouchModal"
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Class;
    const/4 v3, 0
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    aput-object v4, v2, v3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Landroidx/appcompat/widget/j0;->K:Ljava/lang/reflect/Method;
  :L1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
  .registers 5
  .line 1
    invoke-direct { p0, p1, p2, p3, p4 }, Landroidx/appcompat/widget/h0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    return-void
.end method

.method public R(Ljava/lang/Object;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;
    check-cast p1, Landroid/transition/Transition;
    invoke-virtual { v0, p1 }, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V
  :L0
    return-void
.end method

.method public S(Ljava/lang/Object;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;
    check-cast p1, Landroid/transition/Transition;
    invoke-virtual { v0, p1 }, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V
  :L0
    return-void
.end method

.method public T(Landroidx/appcompat/widget/i0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/j0;->J:Landroidx/appcompat/widget/i0;
    return-void
.end method

.method public U(Z)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-gt v0, v1, :L2
  .line 2
    sget-object v0, Landroidx/appcompat/widget/j0;->K:Ljava/lang/reflect/Method;
    if-eqz v0, :L3
  :L0
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    invoke-static { p1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p1
    aput-object p1, v2, v3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    goto :L3
  :L2
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;
    invoke-virtual { v0, p1 }, Landroid/widget/PopupWindow;->setTouchModal(Z)V
  :L3
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->J:Landroidx/appcompat/widget/i0;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2 }, Landroidx/appcompat/widget/i0;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
  :L0
    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j0;->J:Landroidx/appcompat/widget/i0;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2 }, Landroidx/appcompat/widget/i0;->i(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
  :L0
    return-void
.end method

.method s(Landroid/content/Context;Z)Landroidx/appcompat/widget/d0;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/j0$a;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/j0$a;-><init>(Landroid/content/Context;Z)V
  .line 2
    invoke-virtual { v0, p0 }, Landroidx/appcompat/widget/j0$a;->setHoverListener(Landroidx/appcompat/widget/i0;)V
    return-object v0
.end method
