.class Lc/a/l/a/d$a;
.super Lc/a/l/a/b$d;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/a/l/a/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field J:[[I

.method constructor <init>(Lc/a/l/a/d$a;Lc/a/l/a/d;Landroid/content/res/Resources;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Lc/a/l/a/b$d;-><init>(Lc/a/l/a/b$d;Lc/a/l/a/b;Landroid/content/res/Resources;)V
    if-eqz p1, :L0
  .line 2
    iget-object p1, p1, Lc/a/l/a/d$a;->J:[[I
    iput-object p1, p0, Lc/a/l/a/d$a;->J:[[I
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Lc/a/l/a/b$d;->f()I
    move-result p1
    new-array p1, p1, [[I
    iput-object p1, p0, Lc/a/l/a/d$a;->J:[[I
  :L1
    return-void
.end method

.method A([I)I
  .registers 6
  .line 1
    iget-object v0, p0, Lc/a/l/a/d$a;->J:[[I
  .line 2
    invoke-virtual { p0 }, Lc/a/l/a/b$d;->h()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L2
  .line 3
    aget-object v3, v0, v2
    invoke-static { v3, p1 }, Landroid/util/StateSet;->stateSetMatches([I[I)Z
    move-result v3
    if-eqz v3, :L1
    return v2
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    const/4 p1, -1
    return p1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
  .registers 3
  .line 1
    new-instance v0, Lc/a/l/a/d;
    const/4 v1, 0
    invoke-direct { v0, p0, v1 }, Lc/a/l/a/d;-><init>(Lc/a/l/a/d$a;Landroid/content/res/Resources;)V
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
  .registers 3
  .line 2
    new-instance v0, Lc/a/l/a/d;
    invoke-direct { v0, p0, p1 }, Lc/a/l/a/d;-><init>(Lc/a/l/a/d$a;Landroid/content/res/Resources;)V
    return-object v0
.end method

.method public o(II)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Lc/a/l/a/b$d;->o(II)V
  .line 2
    new-array p2, p2, [[I
  .line 3
    iget-object v0, p0, Lc/a/l/a/d$a;->J:[[I
    const/4 v1, 0
    invoke-static { v0, v1, p2, v1, p1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 4
    iput-object p2, p0, Lc/a/l/a/d$a;->J:[[I
    return-void
.end method

.method r()V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/a/l/a/d$a;->J:[[I
    array-length v1, v0
    new-array v1, v1, [[I
  .line 2
    array-length v0, v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L3
  .line 3
    iget-object v2, p0, Lc/a/l/a/d$a;->J:[[I
    aget-object v3, v2, v0
    if-eqz v3, :L1
    aget-object v2, v2, v0
    invoke-virtual { v2 }, [I->clone()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, [I
    goto :L2
  :L1
    const/4 v2, 0
  :L2
    aput-object v2, v1, v0
    add-int/lit8 v0, v0, -1
    goto :L0
  :L3
  .line 4
    iput-object v1, p0, Lc/a/l/a/d$a;->J:[[I
    return-void
.end method

.method z([ILandroid/graphics/drawable/Drawable;)I
  .registers 4
  .line 1
    invoke-virtual { p0, p2 }, Lc/a/l/a/b$d;->a(Landroid/graphics/drawable/Drawable;)I
    move-result p2
  .line 2
    iget-object v0, p0, Lc/a/l/a/d$a;->J:[[I
    aput-object p1, v0, p2
    return p2
.end method
