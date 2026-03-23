.class public Landroidx/core/view/d0;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/view/d0$a;,
    Landroidx/core/view/d0$m;,
    Landroidx/core/view/d0$e;,
    Landroidx/core/view/d0$d;,
    Landroidx/core/view/d0$c;,
    Landroidx/core/view/d0$f;,
    Landroidx/core/view/d0$b;,
    Landroidx/core/view/d0$k;,
    Landroidx/core/view/d0$j;,
    Landroidx/core/view/d0$i;,
    Landroidx/core/view/d0$h;,
    Landroidx/core/view/d0$g;,
    Landroidx/core/view/d0$l;
  }
.end annotation

.field public final static b:Landroidx/core/view/d0;

.field private final a:Landroidx/core/view/d0$l;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 30
    if-lt v0, v1, :L0
  .line 2
    sget-object v0, Landroidx/core/view/d0$k;->o:Landroidx/core/view/d0;
    sput-object v0, Landroidx/core/view/d0;->b:Landroidx/core/view/d0;
    goto :L1
  :L0
  .line 3
    sget-object v0, Landroidx/core/view/d0$l;->b:Landroidx/core/view/d0;
    sput-object v0, Landroidx/core/view/d0;->b:Landroidx/core/view/d0;
  :L1
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 30
    if-lt v0, v1, :L0
  .line 3
    new-instance v0, Landroidx/core/view/d0$k;
    invoke-direct { v0, p0, p1 }, Landroidx/core/view/d0$k;-><init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    goto :L5
  :L0
    const/16 v1, 29
    if-lt v0, v1, :L1
  .line 4
    new-instance v0, Landroidx/core/view/d0$j;
    invoke-direct { v0, p0, p1 }, Landroidx/core/view/d0$j;-><init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    goto :L5
  :L1
    const/16 v1, 28
    if-lt v0, v1, :L2
  .line 5
    new-instance v0, Landroidx/core/view/d0$i;
    invoke-direct { v0, p0, p1 }, Landroidx/core/view/d0$i;-><init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    goto :L5
  :L2
    const/16 v1, 21
    if-lt v0, v1, :L3
  .line 6
    new-instance v0, Landroidx/core/view/d0$h;
    invoke-direct { v0, p0, p1 }, Landroidx/core/view/d0$h;-><init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    goto :L5
  :L3
    const/16 v1, 20
    if-lt v0, v1, :L4
  .line 7
    new-instance v0, Landroidx/core/view/d0$g;
    invoke-direct { v0, p0, p1 }, Landroidx/core/view/d0$g;-><init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    goto :L5
  :L4
  .line 8
    new-instance p1, Landroidx/core/view/d0$l;
    invoke-direct { p1, p0 }, Landroidx/core/view/d0$l;-><init>(Landroidx/core/view/d0;)V
    iput-object p1, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
  :L5
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/d0;)V
  .registers 4
  .line 9
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-eqz p1, :L6
  .line 10
    iget-object p1, p1, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
  .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 30
    if-lt v0, v1, :L0
    instance-of v0, p1, Landroidx/core/view/d0$k;
    if-eqz v0, :L0
  .line 12
    new-instance v0, Landroidx/core/view/d0$k;
    move-object v1, p1
    check-cast v1, Landroidx/core/view/d0$k;
    invoke-direct { v0, p0, v1 }, Landroidx/core/view/d0$k;-><init>(Landroidx/core/view/d0;Landroidx/core/view/d0$k;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    goto :L5
  :L0
  .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L1
    instance-of v0, p1, Landroidx/core/view/d0$j;
    if-eqz v0, :L1
  .line 14
    new-instance v0, Landroidx/core/view/d0$j;
    move-object v1, p1
    check-cast v1, Landroidx/core/view/d0$j;
    invoke-direct { v0, p0, v1 }, Landroidx/core/view/d0$j;-><init>(Landroidx/core/view/d0;Landroidx/core/view/d0$j;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    goto :L5
  :L1
  .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L2
    instance-of v0, p1, Landroidx/core/view/d0$i;
    if-eqz v0, :L2
  .line 16
    new-instance v0, Landroidx/core/view/d0$i;
    move-object v1, p1
    check-cast v1, Landroidx/core/view/d0$i;
    invoke-direct { v0, p0, v1 }, Landroidx/core/view/d0$i;-><init>(Landroidx/core/view/d0;Landroidx/core/view/d0$i;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    goto :L5
  :L2
  .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L3
    instance-of v0, p1, Landroidx/core/view/d0$h;
    if-eqz v0, :L3
  .line 18
    new-instance v0, Landroidx/core/view/d0$h;
    move-object v1, p1
    check-cast v1, Landroidx/core/view/d0$h;
    invoke-direct { v0, p0, v1 }, Landroidx/core/view/d0$h;-><init>(Landroidx/core/view/d0;Landroidx/core/view/d0$h;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    goto :L5
  :L3
  .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 20
    if-lt v0, v1, :L4
    instance-of v0, p1, Landroidx/core/view/d0$g;
    if-eqz v0, :L4
  .line 20
    new-instance v0, Landroidx/core/view/d0$g;
    move-object v1, p1
    check-cast v1, Landroidx/core/view/d0$g;
    invoke-direct { v0, p0, v1 }, Landroidx/core/view/d0$g;-><init>(Landroidx/core/view/d0;Landroidx/core/view/d0$g;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    goto :L5
  :L4
  .line 21
    new-instance v0, Landroidx/core/view/d0$l;
    invoke-direct { v0, p0 }, Landroidx/core/view/d0$l;-><init>(Landroidx/core/view/d0;)V
    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
  :L5
  .line 22
    invoke-virtual { p1, p0 }, Landroidx/core/view/d0$l;->e(Landroidx/core/view/d0;)V
    goto :L7
  :L6
  .line 23
    new-instance p1, Landroidx/core/view/d0$l;
    invoke-direct { p1, p0 }, Landroidx/core/view/d0$l;-><init>(Landroidx/core/view/d0;)V
    iput-object p1, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
  :L7
    return-void
.end method

.method static k(Lc/g/d/b;IIII)Lc/g/d/b;
  .registers 10
  .line 1
    iget v0, p0, Lc/g/d/b;->a:I
    sub-int/2addr v0, p1
    const/4 v1, 0
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 2
    iget v2, p0, Lc/g/d/b;->b:I
    sub-int/2addr v2, p2
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v2
  .line 3
    iget v3, p0, Lc/g/d/b;->c:I
    sub-int/2addr v3, p3
    invoke-static { v1, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
  .line 4
    iget v4, p0, Lc/g/d/b;->d:I
    sub-int/2addr v4, p4
    invoke-static { v1, v4 }, Ljava/lang/Math;->max(II)I
    move-result v1
    if-ne v0, p1, :L0
    if-ne v2, p2, :L0
    if-ne v3, p3, :L0
    if-ne v1, p4, :L0
    return-object p0
  :L0
  .line 5
    invoke-static { v0, v2, v3, v1 }, Lc/g/d/b;->b(IIII)Lc/g/d/b;
    move-result-object p0
    return-object p0
.end method

.method public static s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-static { p0, v0 }, Landroidx/core/view/d0;->t(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/d0;
    move-result-object p0
    return-object p0
.end method

.method public static t(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/d0;
  .registers 3
  .line 1
    new-instance v0, Landroidx/core/view/d0;
    invoke-static { p0 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast p0, Landroid/view/WindowInsets;
    invoke-direct { v0, p0 }, Landroidx/core/view/d0;-><init>(Landroid/view/WindowInsets;)V
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->isAttachedToWindow()Z
    move-result p0
    if-eqz p0, :L0
  .line 3
    invoke-static { p1 }, Landroidx/core/view/v;->J(Landroid/view/View;)Landroidx/core/view/d0;
    move-result-object p0
    invoke-virtual { v0, p0 }, Landroidx/core/view/d0;->p(Landroidx/core/view/d0;)V
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getRootView()Landroid/view/View;
    move-result-object p0
    invoke-virtual { v0, p0 }, Landroidx/core/view/d0;->d(Landroid/view/View;)V
  :L0
    return-object v0
.end method

.method public a()Landroidx/core/view/d0;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0 }, Landroidx/core/view/d0$l;->a()Landroidx/core/view/d0;
    move-result-object v0
    return-object v0
.end method

.method public b()Landroidx/core/view/d0;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0 }, Landroidx/core/view/d0$l;->b()Landroidx/core/view/d0;
    move-result-object v0
    return-object v0
.end method

.method public c()Landroidx/core/view/d0;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0 }, Landroidx/core/view/d0$l;->c()Landroidx/core/view/d0;
    move-result-object v0
    return-object v0
.end method

.method d(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0, p1 }, Landroidx/core/view/d0$l;->d(Landroid/view/View;)V
    return-void
.end method

.method public e()Lc/g/d/b;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0 }, Landroidx/core/view/d0$l;->g()Lc/g/d/b;
    move-result-object v0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 3
    if-ne p0, p1, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 1
    instance-of v0, p1, Landroidx/core/view/d0;
    if-nez v0, :L1
    const/4 p1, 0
    return p1
  :L1
  .line 2
    check-cast p1, Landroidx/core/view/d0;
  .line 3
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    iget-object p1, p1, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-static { v0, p1 }, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public f()I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0 }, Landroidx/core/view/d0$l;->i()Lc/g/d/b;
    move-result-object v0
    iget v0, v0, Lc/g/d/b;->d:I
    return v0
.end method

.method public g()I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0 }, Landroidx/core/view/d0$l;->i()Lc/g/d/b;
    move-result-object v0
    iget v0, v0, Lc/g/d/b;->a:I
    return v0
.end method

.method public h()I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0 }, Landroidx/core/view/d0$l;->i()Lc/g/d/b;
    move-result-object v0
    iget v0, v0, Lc/g/d/b;->c:I
    return v0
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { v0 }, Landroidx/core/view/d0$l;->hashCode()I
    move-result v0
  :L1
    return v0
.end method

.method public i()I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0 }, Landroidx/core/view/d0$l;->i()Lc/g/d/b;
    move-result-object v0
    iget v0, v0, Lc/g/d/b;->b:I
    return v0
.end method

.method public j(IIII)Landroidx/core/view/d0;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroidx/core/view/d0$l;->j(IIII)Landroidx/core/view/d0;
    move-result-object p1
    return-object p1
.end method

.method public l()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0 }, Landroidx/core/view/d0$l;->k()Z
    move-result v0
    return v0
.end method

.method public m(IIII)Landroidx/core/view/d0;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 6
  .line 1
    new-instance v0, Landroidx/core/view/d0$b;
    invoke-direct { v0, p0 }, Landroidx/core/view/d0$b;-><init>(Landroidx/core/view/d0;)V
  .line 2
    invoke-static { p1, p2, p3, p4 }, Lc/g/d/b;->b(IIII)Lc/g/d/b;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroidx/core/view/d0$b;->c(Lc/g/d/b;)Landroidx/core/view/d0$b;
  .line 3
    invoke-virtual { v0 }, Landroidx/core/view/d0$b;->a()Landroidx/core/view/d0;
    move-result-object p1
    return-object p1
.end method

.method n([Lc/g/d/b;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0, p1 }, Landroidx/core/view/d0$l;->m([Lc/g/d/b;)V
    return-void
.end method

.method o(Lc/g/d/b;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0, p1 }, Landroidx/core/view/d0$l;->n(Lc/g/d/b;)V
    return-void
.end method

.method p(Landroidx/core/view/d0;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0, p1 }, Landroidx/core/view/d0$l;->o(Landroidx/core/view/d0;)V
    return-void
.end method

.method q(Lc/g/d/b;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    invoke-virtual { v0, p1 }, Landroidx/core/view/d0$l;->p(Lc/g/d/b;)V
    return-void
.end method

.method public r()Landroid/view/WindowInsets;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0;->a:Landroidx/core/view/d0$l;
    instance-of v1, v0, Landroidx/core/view/d0$g;
    if-eqz v1, :L0
    check-cast v0, Landroidx/core/view/d0$g;
    iget-object v0, v0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method
