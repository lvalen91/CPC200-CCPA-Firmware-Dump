.class public Lc/e/b/k/m/o;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/e/b/k/m/o$a;
  }
.end annotation

.field static f:I

.field a:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/e;",
      ">;"
    }
  .end annotation
.end field

.field b:I

.field c:I

.field d:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/o$a;",
      ">;"
    }
  .end annotation
.end field

.field private e:I

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method public constructor <init>(I)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/e/b/k/m/o;->a:Ljava/util/ArrayList;
    const/4 v0, -1
  .line 3
    iput v0, p0, Lc/e/b/k/m/o;->b:I
    const/4 v1, 0
  .line 4
    iput v1, p0, Lc/e/b/k/m/o;->c:I
    const/4 v1, 0
  .line 5
    iput-object v1, p0, Lc/e/b/k/m/o;->d:Ljava/util/ArrayList;
  .line 6
    iput v0, p0, Lc/e/b/k/m/o;->e:I
  .line 7
    sget v0, Lc/e/b/k/m/o;->f:I
    add-int/lit8 v1, v0, 1
    sput v1, Lc/e/b/k/m/o;->f:I
    iput v0, p0, Lc/e/b/k/m/o;->b:I
  .line 8
    iput p1, p0, Lc/e/b/k/m/o;->c:I
    return-void
.end method

.method private e()Ljava/lang/String;
  .registers 3
  .line 1
    iget v0, p0, Lc/e/b/k/m/o;->c:I
    if-nez v0, :L0
    const-string v0, "Horizontal"
    return-object v0
  :L0
    const/4 v1, 1
    if-ne v0, v1, :L1
    const-string v0, "Vertical"
    return-object v0
  :L1
    const/4 v1, 2
    if-ne v0, v1, :L2
    const-string v0, "Both"
    return-object v0
  :L2
    const-string v0, "Unknown"
    return-object v0
.end method

.method private j(Lc/e/b/d;Ljava/util/ArrayList;I)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/e/b/d;",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/e;",
      ">;I)I"
    }
  .end annotation
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .registers 8
    const/4 v0, 0
  .line 1
    invoke-virtual { p2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/e;
    invoke-virtual { v1 }, Lc/e/b/k/e;->I()Lc/e/b/k/e;
    move-result-object v1
    check-cast v1, Lc/e/b/k/f;
  .line 2
    invoke-virtual { p1 }, Lc/e/b/d;->D()V
  .line 3
    invoke-virtual { v1, p1, v0 }, Lc/e/b/k/e;->g(Lc/e/b/d;Z)V
    const/4 v2, 0
  :L0
  .line 4
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result v3
    if-ge v2, v3, :L1
  .line 5
    invoke-virtual { p2, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/e/b/k/e;
  .line 6
    invoke-virtual { v3, p1, v0 }, Lc/e/b/k/e;->g(Lc/e/b/d;Z)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    if-nez p3, :L2
  .line 7
    iget v2, v1, Lc/e/b/k/f;->y0:I
    if-lez v2, :L2
  .line 8
    invoke-static { v1, p1, p2, v0 }, Lc/e/b/k/b;->b(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/ArrayList;I)V
  :L2
    const/4 v2, 1
    if-ne p3, v2, :L3
  .line 9
    iget v3, v1, Lc/e/b/k/f;->z0:I
    if-lez v3, :L3
  .line 10
    invoke-static { v1, p1, p2, v2 }, Lc/e/b/k/b;->b(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/ArrayList;I)V
  :L3
  .line 11
    invoke-virtual { p1 }, Lc/e/b/d;->z()V
  :L4
    goto :L6
  :L5
    move-exception v2
  .line 12
    invoke-virtual { v2 }, Ljava/lang/Exception;->printStackTrace()V
  :L6
  .line 13
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct { v2 }, Ljava/util/ArrayList;-><init>()V
    iput-object v2, p0, Lc/e/b/k/m/o;->d:Ljava/util/ArrayList;
  :L7
  .line 14
    invoke-virtual { p2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v0, v2, :L8
  .line 15
    invoke-virtual { p2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/e;
  .line 16
    new-instance v3, Lc/e/b/k/m/o$a;
    invoke-direct { v3, p0, v2, p1, p3 }, Lc/e/b/k/m/o$a;-><init>(Lc/e/b/k/m/o;Lc/e/b/k/e;Lc/e/b/d;I)V
  .line 17
    iget-object v2, p0, Lc/e/b/k/m/o;->d:Ljava/util/ArrayList;
    invoke-virtual { v2, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v0, v0, 1
    goto :L7
  :L8
    if-nez p3, :L10
  .line 18
    iget-object p2, v1, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { p1, p2 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
    move-result p2
  .line 19
    iget-object p3, v1, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { p1, p3 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
    move-result p3
  .line 20
    invoke-virtual { p1 }, Lc/e/b/d;->D()V
  :L9
    sub-int/2addr p3, p2
    return p3
  :L10
  .line 21
    iget-object p2, v1, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { p1, p2 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
    move-result p2
  .line 22
    iget-object p3, v1, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { p1, p3 }, Lc/e/b/d;->x(Ljava/lang/Object;)I
    move-result p3
  .line 23
    invoke-virtual { p1 }, Lc/e/b/d;->D()V
    goto :L9
.end method

.method public a(Lc/e/b/k/e;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/o;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    iget-object v0, p0, Lc/e/b/k/m/o;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const/4 p1, 1
    return p1
.end method

.method public b(Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Lc/e/b/k/m/o;",
      ">;)V"
    }
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/o;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
  .line 2
    iget v1, p0, Lc/e/b/k/m/o;->e:I
    const/4 v2, -1
    if-eq v1, v2, :L2
    if-lez v0, :L2
    const/4 v1, 0
  :L0
  .line 3
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v1, v2, :L2
  .line 4
    invoke-virtual { p1, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/m/o;
  .line 5
    iget v3, p0, Lc/e/b/k/m/o;->e:I
    iget v4, v2, Lc/e/b/k/m/o;->b:I
    if-ne v3, v4, :L1
  .line 6
    iget v3, p0, Lc/e/b/k/m/o;->c:I
    invoke-virtual { p0, v3, v2 }, Lc/e/b/k/m/o;->g(ILc/e/b/k/m/o;)V
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    if-nez v0, :L3
  .line 7
    invoke-virtual { p1, p0 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  :L3
    return-void
.end method

.method public c()I
  .registers 2
  .line 1
    iget v0, p0, Lc/e/b/k/m/o;->b:I
    return v0
.end method

.method public d()I
  .registers 2
  .line 1
    iget v0, p0, Lc/e/b/k/m/o;->c:I
    return v0
.end method

.method public f(Lc/e/b/d;I)I
  .registers 4
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/o;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    iget-object v0, p0, Lc/e/b/k/m/o;->a:Ljava/util/ArrayList;
    invoke-direct { p0, p1, v0, p2 }, Lc/e/b/k/m/o;->j(Lc/e/b/d;Ljava/util/ArrayList;I)I
    move-result p1
    return p1
.end method

.method public g(ILc/e/b/k/m/o;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/o;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/e;
  .line 2
    invoke-virtual { p2, v1 }, Lc/e/b/k/m/o;->a(Lc/e/b/k/e;)Z
    if-nez p1, :L1
  .line 3
    invoke-virtual { p2 }, Lc/e/b/k/m/o;->c()I
    move-result v2
    iput v2, v1, Lc/e/b/k/e;->m0:I
    goto :L0
  :L1
  .line 4
    invoke-virtual { p2 }, Lc/e/b/k/m/o;->c()I
    move-result v2
    iput v2, v1, Lc/e/b/k/e;->n0:I
    goto :L0
  :L2
  .line 5
    iget p1, p2, Lc/e/b/k/m/o;->b:I
    iput p1, p0, Lc/e/b/k/m/o;->e:I
    return-void
.end method

.method public h(Z)V
  .registers 2
    return-void
.end method

.method public i(I)V
  .registers 2
  .line 1
    iput p1, p0, Lc/e/b/k/m/o;->c:I
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-direct { p0 }, Lc/e/b/k/m/o;->e()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " ["
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lc/e/b/k/m/o;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "] <"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lc/e/b/k/m/o;->a:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/e;
  .line 3
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " "
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Lc/e/b/k/e;->r()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L0
  :L1
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " >"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
