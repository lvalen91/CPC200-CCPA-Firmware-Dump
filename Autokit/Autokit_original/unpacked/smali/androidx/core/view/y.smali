.class public final Landroidx/core/view/y;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
  .catch Ljava/lang/AbstractMethodError; { :L0 .. :L1 } :L2
  .registers 7
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L3
  :L0
  .line 2
    invoke-interface { p0, p1, p2, p3, p4 }, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z
    move-result p0
  :L1
    return p0
  :L2
  .line 3
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "ViewParent "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p0, " does not implement interface method onNestedFling"
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L4
  :L3
  .line 4
    instance-of v0, p0, Landroidx/core/view/o;
    if-eqz v0, :L4
  .line 5
    check-cast p0, Landroidx/core/view/o;
    invoke-interface { p0, p1, p2, p3, p4 }, Landroidx/core/view/o;->onNestedFling(Landroid/view/View;FFZ)Z
    move-result p0
    return p0
  :L4
    const/4 p0, 0
    return p0
.end method

.method public static b(Landroid/view/ViewParent;Landroid/view/View;FF)Z
  .catch Ljava/lang/AbstractMethodError; { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L3
  :L0
  .line 2
    invoke-interface { p0, p1, p2, p3 }, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z
    move-result p0
  :L1
    return p0
  :L2
  .line 3
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "ViewParent "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p0, " does not implement interface method onNestedPreFling"
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L4
  :L3
  .line 4
    instance-of v0, p0, Landroidx/core/view/o;
    if-eqz v0, :L4
  .line 5
    check-cast p0, Landroidx/core/view/o;
    invoke-interface { p0, p1, p2, p3 }, Landroidx/core/view/o;->onNestedPreFling(Landroid/view/View;FF)Z
    move-result p0
    return p0
  :L4
    const/4 p0, 0
    return p0
.end method

.method public static c(Landroid/view/ViewParent;Landroid/view/View;II[II)V
  .catch Ljava/lang/AbstractMethodError; { :L1 .. :L2 } :L3
  .registers 13
  .line 1
    instance-of v0, p0, Landroidx/core/view/m;
    if-eqz v0, :L0
  .line 2
    move-object v1, p0
    check-cast v1, Landroidx/core/view/m;
    move-object v2, p1
    move v3, p2
    move v4, p3
    move-object v5, p4
    move v6, p5
    invoke-interface/range { v1 .. v6 }, Landroidx/core/view/m;->j(Landroid/view/View;II[II)V
    goto :L5
  :L0
    if-nez p5, :L5
  .line 3
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    if-lt p5, v0, :L4
  :L1
  .line 4
    invoke-interface { p0, p1, p2, p3, p4 }, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
  :L2
    goto :L5
  :L3
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "ViewParent "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p0, " does not implement interface method onNestedPreScroll"
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L5
  :L4
  .line 6
    instance-of p5, p0, Landroidx/core/view/o;
    if-eqz p5, :L5
  .line 7
    check-cast p0, Landroidx/core/view/o;
    invoke-interface { p0, p1, p2, p3, p4 }, Landroidx/core/view/o;->onNestedPreScroll(Landroid/view/View;II[I)V
  :L5
    return-void
.end method

.method public static d(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
  .catch Ljava/lang/AbstractMethodError; { :L2 .. :L3 } :L4
  .registers 18
    move-object v0, p0
  .line 1
    instance-of v1, v0, Landroidx/core/view/n;
    if-eqz v1, :L0
  .line 2
    check-cast v0, Landroidx/core/view/n;
    move-object v1, p1
    move v2, p2
    move v3, p3
    move v4, p4
    move v5, p5
    move/from16 v6, p6
    move-object/from16 v7, p7
    invoke-interface/range { v0 .. v7 }, Landroidx/core/view/n;->m(Landroid/view/View;IIIII[I)V
    goto :L6
  :L0
    const/4 v1, 0
  .line 3
    aget v2, p7, v1
    add-int/2addr v2, p4
    aput v2, p7, v1
    const/4 v1, 1
  .line 4
    aget v2, p7, v1
    add-int/2addr v2, p5
    aput v2, p7, v1
  .line 5
    instance-of v1, v0, Landroidx/core/view/m;
    if-eqz v1, :L1
  .line 6
    move-object v3, v0
    check-cast v3, Landroidx/core/view/m;
    move-object v4, p1
    move v5, p2
    move v6, p3
    move v7, p4
    move v8, p5
    move/from16 v9, p6
    invoke-interface/range { v3 .. v9 }, Landroidx/core/view/m;->n(Landroid/view/View;IIIII)V
    goto :L6
  :L1
    if-nez p6, :L6
  .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    if-lt v1, v2, :L5
  :L2
  .line 8
    invoke-interface/range { p0 .. p5 }, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
  :L3
    goto :L6
  :L4
  .line 9
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "ViewParent "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, " does not implement interface method onNestedScroll"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L6
  :L5
  .line 10
    instance-of v1, v0, Landroidx/core/view/o;
    if-eqz v1, :L6
  .line 11
    move-object v3, v0
    check-cast v3, Landroidx/core/view/o;
    move-object v4, p1
    move v5, p2
    move v6, p3
    move v7, p4
    move v8, p5
    invoke-interface/range { v3 .. v8 }, Landroidx/core/view/o;->onNestedScroll(Landroid/view/View;IIII)V
  :L6
    return-void
.end method

.method public static e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
  .catch Ljava/lang/AbstractMethodError; { :L1 .. :L2 } :L3
  .registers 6
  .line 1
    instance-of v0, p0, Landroidx/core/view/m;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Landroidx/core/view/m;
    invoke-interface { p0, p1, p2, p3, p4 }, Landroidx/core/view/m;->h(Landroid/view/View;Landroid/view/View;II)V
    goto :L5
  :L0
    if-nez p4, :L5
  .line 3
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    if-lt p4, v0, :L4
  :L1
  .line 4
    invoke-interface { p0, p1, p2, p3 }, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
  :L2
    goto :L5
  :L3
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "ViewParent "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p0, " does not implement interface method onNestedScrollAccepted"
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L5
  :L4
  .line 6
    instance-of p4, p0, Landroidx/core/view/o;
    if-eqz p4, :L5
  .line 7
    check-cast p0, Landroidx/core/view/o;
    invoke-interface { p0, p1, p2, p3 }, Landroidx/core/view/o;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
  :L5
    return-void
.end method

.method public static f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
  .catch Ljava/lang/AbstractMethodError; { :L1 .. :L2 } :L3
  .registers 6
  .line 1
    instance-of v0, p0, Landroidx/core/view/m;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Landroidx/core/view/m;
    invoke-interface { p0, p1, p2, p3, p4 }, Landroidx/core/view/m;->o(Landroid/view/View;Landroid/view/View;II)Z
    move-result p0
    return p0
  :L0
    if-nez p4, :L5
  .line 3
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    if-lt p4, v0, :L4
  :L1
  .line 4
    invoke-interface { p0, p1, p2, p3 }, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    move-result p0
  :L2
    return p0
  :L3
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "ViewParent "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p0, " does not implement interface method onStartNestedScroll"
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L5
  :L4
  .line 6
    instance-of p4, p0, Landroidx/core/view/o;
    if-eqz p4, :L5
  .line 7
    check-cast p0, Landroidx/core/view/o;
    invoke-interface { p0, p1, p2, p3 }, Landroidx/core/view/o;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    move-result p0
    return p0
  :L5
    const/4 p0, 0
    return p0
.end method

.method public static g(Landroid/view/ViewParent;Landroid/view/View;I)V
  .catch Ljava/lang/AbstractMethodError; { :L1 .. :L2 } :L3
  .registers 4
  .line 1
    instance-of v0, p0, Landroidx/core/view/m;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Landroidx/core/view/m;
    invoke-interface { p0, p1, p2 }, Landroidx/core/view/m;->i(Landroid/view/View;I)V
    goto :L5
  :L0
    if-nez p2, :L5
  .line 3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    if-lt p2, v0, :L4
  :L1
  .line 4
    invoke-interface { p0, p1 }, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
  :L2
    goto :L5
  :L3
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "ViewParent "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p0, " does not implement interface method onStopNestedScroll"
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L5
  :L4
  .line 6
    instance-of p2, p0, Landroidx/core/view/o;
    if-eqz p2, :L5
  .line 7
    check-cast p0, Landroidx/core/view/o;
    invoke-interface { p0, p1 }, Landroidx/core/view/o;->onStopNestedScroll(Landroid/view/View;)V
  :L5
    return-void
.end method

.method public static h(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    invoke-interface { p0, p1, p2 }, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    move-result p0
    return p0
.end method
