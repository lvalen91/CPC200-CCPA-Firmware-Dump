.class public final Landroidx/core/view/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    .line 2
    :try_start_6
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/AbstractMethodError; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    .line 3
    :catch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ViewParent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedFling"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2c

    .line 4
    :cond_21
    instance-of v0, p0, Landroidx/core/view/o;

    if-eqz v0, :cond_2c

    .line 5
    check-cast p0, Landroidx/core/view/o;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/o;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p0

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    .line 2
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/AbstractMethodError; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    .line 3
    :catch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ViewParent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedPreFling"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2c

    .line 4
    :cond_21
    instance-of v0, p0, Landroidx/core/view/o;

    if-eqz v0, :cond_2c

    .line 5
    check-cast p0, Landroidx/core/view/o;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/view/o;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p0

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .registers 13

    .line 1
    instance-of v0, p0, Landroidx/core/view/m;

    if-eqz v0, :cond_10

    .line 2
    move-object v1, p0

    check-cast v1, Landroidx/core/view/m;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroidx/core/view/m;->j(Landroid/view/View;II[II)V

    goto :goto_3b

    :cond_10
    if-nez p5, :cond_3b

    .line 3
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p5, v0, :cond_32

    .line 4
    :try_start_18
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_1b
    .catch Ljava/lang/AbstractMethodError; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_3b

    .line 5
    :catch_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ViewParent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedPreScroll"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3b

    .line 6
    :cond_32
    instance-of p5, p0, Landroidx/core/view/o;

    if-eqz p5, :cond_3b

    .line 7
    check-cast p0, Landroidx/core/view/o;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/o;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static d(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
    .registers 18

    move-object v0, p0

    .line 1
    instance-of v1, v0, Landroidx/core/view/n;

    if-eqz v1, :cond_14

    .line 2
    check-cast v0, Landroidx/core/view/n;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroidx/core/view/n;->m(Landroid/view/View;IIIII[I)V

    goto :goto_63

    :cond_14
    const/4 v1, 0x0

    .line 3
    aget v2, p7, v1

    add-int/2addr v2, p4

    aput v2, p7, v1

    const/4 v1, 0x1

    .line 4
    aget v2, p7, v1

    add-int/2addr v2, p5

    aput v2, p7, v1

    .line 5
    instance-of v1, v0, Landroidx/core/view/m;

    if-eqz v1, :cond_32

    .line 6
    move-object v3, v0

    check-cast v3, Landroidx/core/view/m;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroidx/core/view/m;->n(Landroid/view/View;IIIII)V

    goto :goto_63

    :cond_32
    if-nez p6, :cond_63

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_54

    .line 8
    :try_start_3a
    invoke-interface/range {p0 .. p5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_3d
    .catch Ljava/lang/AbstractMethodError; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_63

    .line 9
    :catch_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewParent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedScroll"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_63

    .line 10
    :cond_54
    instance-of v1, v0, Landroidx/core/view/o;

    if-eqz v1, :cond_63

    .line 11
    move-object v3, v0

    check-cast v3, Landroidx/core/view/o;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroidx/core/view/o;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_63
    :goto_63
    return-void
.end method

.method public static e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    .line 1
    instance-of v0, p0, Landroidx/core/view/m;

    if-eqz v0, :cond_a

    .line 2
    check-cast p0, Landroidx/core/view/m;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/m;->h(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_35

    :cond_a
    if-nez p4, :cond_35

    .line 3
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_2c

    .line 4
    :try_start_12
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_35

    .line 5
    :catch_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ViewParent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_35

    .line 6
    :cond_2c
    instance-of p4, p0, Landroidx/core/view/o;

    if-eqz p4, :cond_35

    .line 7
    check-cast p0, Landroidx/core/view/o;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/view/o;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_35
    :goto_35
    return-void
.end method

.method public static f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    .line 1
    instance-of v0, p0, Landroidx/core/view/m;

    if-eqz v0, :cond_b

    .line 2
    check-cast p0, Landroidx/core/view/m;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/m;->o(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0

    :cond_b
    if-nez p4, :cond_39

    .line 3
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_2e

    .line 4
    :try_start_13
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0
    :try_end_17
    .catch Ljava/lang/AbstractMethodError; {:try_start_13 .. :try_end_17} :catch_18

    return p0

    .line 5
    :catch_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ViewParent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onStartNestedScroll"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_39

    .line 6
    :cond_2e
    instance-of p4, p0, Landroidx/core/view/o;

    if-eqz p4, :cond_39

    .line 7
    check-cast p0, Landroidx/core/view/o;

    invoke-interface {p0, p1, p2, p3}, Landroidx/core/view/o;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_39
    :goto_39
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/view/ViewParent;Landroid/view/View;I)V
    .registers 4

    .line 1
    instance-of v0, p0, Landroidx/core/view/m;

    if-eqz v0, :cond_a

    .line 2
    check-cast p0, Landroidx/core/view/m;

    invoke-interface {p0, p1, p2}, Landroidx/core/view/m;->i(Landroid/view/View;I)V

    goto :goto_35

    :cond_a
    if-nez p2, :cond_35

    .line 3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2c

    .line 4
    :try_start_12
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_35

    .line 5
    :catch_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ViewParent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement interface method onStopNestedScroll"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_35

    .line 6
    :cond_2c
    instance-of p2, p0, Landroidx/core/view/o;

    if-eqz p2, :cond_35

    .line 7
    check-cast p0, Landroidx/core/view/o;

    invoke-interface {p0, p1}, Landroidx/core/view/o;->onStopNestedScroll(Landroid/view/View;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public static h(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
