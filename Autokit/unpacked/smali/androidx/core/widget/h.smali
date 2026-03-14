.class public final Landroidx/core/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z

.method public static a(Landroid/widget/PopupWindow;Z)V
  .catch Ljava/lang/NoSuchFieldException; { :L1 .. :L2 } :L2
  .catch Ljava/lang/IllegalAccessException; { :L4 .. :L5 } :L5
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V
    goto :L5
  :L0
    const/16 v1, 21
    if-lt v0, v1, :L5
  .line 3
    sget-boolean v0, Landroidx/core/widget/h;->d:Z
    if-nez v0, :L3
    const/4 v0, 1
  :L1
  .line 4
    const-class v1, Landroid/widget/PopupWindow;
    const-string v2, "mOverlapAnchor"
    invoke-virtual { v1, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v1
    sput-object v1, Landroidx/core/widget/h;->c:Ljava/lang/reflect/Field;
  .line 5
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L2
  .line 6
    sput-boolean v0, Landroidx/core/widget/h;->d:Z
  :L3
  .line 7
    sget-object v0, Landroidx/core/widget/h;->c:Ljava/lang/reflect/Field;
    if-eqz v0, :L5
  :L4
  .line 8
    invoke-static { p1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p1
    invoke-virtual { v0, p0, p1 }, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
  :L5
    return-void
.end method

.method public static b(Landroid/widget/PopupWindow;I)V
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L2
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L5
  .registers 8
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V
    return-void
  :L0
  .line 3
    sget-boolean v0, Landroidx/core/widget/h;->b:Z
    const/4 v1, 0
    const/4 v2, 1
    if-nez v0, :L3
  :L1
  .line 4
    const-class v0, Landroid/widget/PopupWindow;
    const-string v3, "setWindowLayoutType"
    new-array v4, v2, [Ljava/lang/Class;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v5, v4, v1
    invoke-virtual { v0, v3, v4 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Landroidx/core/widget/h;->a:Ljava/lang/reflect/Method;
  .line 5
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L2
  .line 6
    sput-boolean v2, Landroidx/core/widget/h;->b:Z
  :L3
  .line 7
    sget-object v0, Landroidx/core/widget/h;->a:Ljava/lang/reflect/Method;
    if-eqz v0, :L5
  :L4
    new-array v2, v2, [Ljava/lang/Object;
  .line 8
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v2, v1
    invoke-virtual { v0, p0, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L5
    return-void
.end method

.method public static c(Landroid/widget/PopupWindow;Landroid/view/View;III)V
  .registers 7
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3, p4 }, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V
    goto :L2
  :L0
  .line 3
    invoke-static { p1 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
  .line 4
    invoke-static { p4, v0 }, Landroidx/core/view/e;->b(II)I
    move-result p4
    and-int/lit8 p4, p4, 7
    const/4 v0, 5
    if-ne p4, v0, :L1
  .line 5
    invoke-virtual { p0 }, Landroid/widget/PopupWindow;->getWidth()I
    move-result p4
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result v0
    sub-int/2addr p4, v0
    sub-int/2addr p2, p4
  :L1
  .line 6
    invoke-virtual { p0, p1, p2, p3 }, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
  :L2
    return-void
.end method
