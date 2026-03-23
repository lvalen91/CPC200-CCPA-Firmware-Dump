.class Lc/a/l/a/d;
.super Lc/a/l/a/b;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "RestrictedAPI"
  }
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/a/l/a/d$a;
  }
.end annotation

.field private n:Lc/a/l/a/d$a;

.field private o:Z

.method constructor <init>(Lc/a/l/a/d$a;)V
  .registers 2
  .line 5
    invoke-direct { p0 }, Lc/a/l/a/b;-><init>()V
    if-eqz p1, :L0
  .line 6
    invoke-virtual { p0, p1 }, Lc/a/l/a/d;->h(Lc/a/l/a/b$d;)V
  :L0
    return-void
.end method

.method constructor <init>(Lc/a/l/a/d$a;Landroid/content/res/Resources;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Lc/a/l/a/b;-><init>()V
  .line 2
    new-instance v0, Lc/a/l/a/d$a;
    invoke-direct { v0, p1, p0, p2 }, Lc/a/l/a/d$a;-><init>(Lc/a/l/a/d$a;Lc/a/l/a/d;Landroid/content/res/Resources;)V
  .line 3
    invoke-virtual { p0, v0 }, Lc/a/l/a/d;->h(Lc/a/l/a/b$d;)V
  .line 4
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object p1
    invoke-virtual { p0, p1 }, Lc/a/l/a/d;->onStateChange([I)Z
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Lc/a/l/a/b;->applyTheme(Landroid/content/res/Resources$Theme;)V
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object p1
    invoke-virtual { p0, p1 }, Lc/a/l/a/d;->onStateChange([I)Z
    return-void
.end method

.method bridge synthetic b()Lc/a/l/a/b$d;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lc/a/l/a/d;->j()Lc/a/l/a/d$a;
    move-result-object v0
    return-object v0
.end method

.method h(Lc/a/l/a/b$d;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Lc/a/l/a/b;->h(Lc/a/l/a/b$d;)V
  .line 2
    instance-of v0, p1, Lc/a/l/a/d$a;
    if-eqz v0, :L0
  .line 3
    check-cast p1, Lc/a/l/a/d$a;
    iput-object p1, p0, Lc/a/l/a/d;->n:Lc/a/l/a/d$a;
  :L0
    return-void
.end method

.method public isStateful()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method j()Lc/a/l/a/d$a;
  .registers 4
  .line 1
    new-instance v0, Lc/a/l/a/d$a;
    iget-object v1, p0, Lc/a/l/a/d;->n:Lc/a/l/a/d$a;
    const/4 v2, 0
    invoke-direct { v0, v1, p0, v2 }, Lc/a/l/a/d$a;-><init>(Lc/a/l/a/d$a;Lc/a/l/a/d;Landroid/content/res/Resources;)V
    return-object v0
.end method

.method k(Landroid/util/AttributeSet;)[I
  .registers 10
  .line 1
    invoke-interface { p1 }, Landroid/util/AttributeSet;->getAttributeCount()I
    move-result v0
  .line 2
    new-array v1, v0, [I
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v3, v0, :L4
  .line 3
    invoke-interface { p1, v3 }, Landroid/util/AttributeSet;->getAttributeNameResource(I)I
    move-result v5
    if-eqz v5, :L3
    const v6, 16842960
    if-eq v5, v6, :L3
    const v6, 16843161
    if-eq v5, v6, :L3
    add-int/lit8 v6, v4, 1
  .line 4
    invoke-interface { p1, v3, v2 }, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z
    move-result v7
    if-eqz v7, :L1
    goto :L2
  :L1
    neg-int v5, v5
  :L2
  .line 5
    aput v5, v1, v4
    move v4, v6
  :L3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L4
  .line 6
    invoke-static { v1, v4 }, Landroid/util/StateSet;->trimStateSet([II)[I
    move-result-object p1
    return-object p1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/a/l/a/d;->o:Z
    if-nez v0, :L0
    invoke-super { p0 }, Lc/a/l/a/b;->mutate()Landroid/graphics/drawable/Drawable;
  .line 2
    iget-object v0, p0, Lc/a/l/a/d;->n:Lc/a/l/a/d$a;
    invoke-virtual { v0 }, Lc/a/l/a/d$a;->r()V
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lc/a/l/a/d;->o:Z
  :L0
    return-object p0
.end method

.method protected onStateChange([I)Z
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Lc/a/l/a/b;->onStateChange([I)Z
    move-result v0
  .line 2
    iget-object v1, p0, Lc/a/l/a/d;->n:Lc/a/l/a/d$a;
    invoke-virtual { v1, p1 }, Lc/a/l/a/d$a;->A([I)I
    move-result p1
    if-gez p1, :L0
  .line 3
    iget-object p1, p0, Lc/a/l/a/d;->n:Lc/a/l/a/d$a;
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I
    invoke-virtual { p1, v1 }, Lc/a/l/a/d$a;->A([I)I
    move-result p1
  :L0
  .line 4
    invoke-virtual { p0, p1 }, Lc/a/l/a/b;->g(I)Z
    move-result p1
    if-nez p1, :L2
    if-eqz v0, :L1
    goto :L2
  :L1
    const/4 p1, 0
    goto :L3
  :L2
    const/4 p1, 1
  :L3
    return p1
.end method
