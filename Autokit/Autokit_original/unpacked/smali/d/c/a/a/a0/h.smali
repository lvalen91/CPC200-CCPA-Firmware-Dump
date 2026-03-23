.class public Ld/c/a/a/a0/h;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(I)Ld/c/a/a/a0/d;
  .registers 2
    if-eqz p0, :L1
    const/4 v0, 1
    if-eq p0, v0, :L0
  .line 1
    invoke-static { }, Ld/c/a/a/a0/h;->b()Ld/c/a/a/a0/d;
    move-result-object p0
    return-object p0
  :L0
  .line 2
    new-instance p0, Ld/c/a/a/a0/e;
    invoke-direct { p0 }, Ld/c/a/a/a0/e;-><init>()V
    return-object p0
  :L1
  .line 3
    new-instance p0, Ld/c/a/a/a0/j;
    invoke-direct { p0 }, Ld/c/a/a/a0/j;-><init>()V
    return-object p0
.end method

.method static b()Ld/c/a/a/a0/d;
  .registers 2
  .line 1
    new-instance v0, Ld/c/a/a/a0/j;
    invoke-direct { v0 }, Ld/c/a/a/a0/j;-><init>()V
    return-object v0
.end method

.method static c()Ld/c/a/a/a0/f;
  .registers 3
  .line 1
    new-instance v0, Ld/c/a/a/a0/f;
    invoke-direct { v0 }, Ld/c/a/a/a0/f;-><init>()V
    return-object v0
.end method

.method public static d(Landroid/view/View;F)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object p0
  .line 2
    instance-of v0, p0, Ld/c/a/a/a0/g;
    if-eqz v0, :L0
  .line 3
    check-cast p0, Ld/c/a/a/a0/g;
    invoke-virtual { p0, p1 }, Ld/c/a/a/a0/g;->V(F)V
  :L0
    return-void
.end method

.method public static e(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 2
    instance-of v1, v0, Ld/c/a/a/a0/g;
    if-eqz v1, :L0
  .line 3
    check-cast v0, Ld/c/a/a/a0/g;
    invoke-static { p0, v0 }, Ld/c/a/a/a0/h;->f(Landroid/view/View;Ld/c/a/a/a0/g;)V
  :L0
    return-void
.end method

.method public static f(Landroid/view/View;Ld/c/a/a/a0/g;)V
  .registers 3
  .line 1
    invoke-virtual { p1 }, Ld/c/a/a/a0/g;->O()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { p0 }, Lcom/google/android/material/internal/l;->c(Landroid/view/View;)F
    move-result p0
    invoke-virtual { p1, p0 }, Ld/c/a/a/a0/g;->Z(F)V
  :L0
    return-void
.end method
