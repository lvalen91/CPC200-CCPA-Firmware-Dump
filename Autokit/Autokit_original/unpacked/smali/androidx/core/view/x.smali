.class public final Landroidx/core/view/x;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/view/ViewGroup;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->isTransitionGroup()Z
    move-result p0
    return p0
  :L0
  .line 3
    sget v0, Lc/g/b;->tag_transition_group:I
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    if-nez v0, :L3
  :L1
  .line 5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L3
  .line 6
    invoke-static { p0 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object p0
    if-eqz p0, :L2
    goto :L3
  :L2
    const/4 p0, 0
    goto :L4
  :L3
    const/4 p0, 1
  :L4
    return p0
.end method
