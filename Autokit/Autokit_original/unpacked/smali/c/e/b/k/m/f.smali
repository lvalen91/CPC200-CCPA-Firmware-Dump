.class public Lc/e/b/k/m/f;
.super Ljava/lang/Object;
.implements Lc/e/b/k/m/d;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/e/b/k/m/f$a;
  }
.end annotation

.field public a:Lc/e/b/k/m/d;

.field public b:Z

.field public c:Z

.field d:Lc/e/b/k/m/p;

.field e:Lc/e/b/k/m/f$a;

.field f:I

.field public g:I

.field h:I

.field i:Lc/e/b/k/m/g;

.field public j:Z

.field k:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lc/e/b/k/m/d;",
      ">;"
    }
  .end annotation
.end field

.field l:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lc/e/b/k/m/f;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Lc/e/b/k/m/p;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
    const/4 v1, 0
  .line 3
    iput-boolean v1, p0, Lc/e/b/k/m/f;->b:Z
  .line 4
    iput-boolean v1, p0, Lc/e/b/k/m/f;->c:Z
  .line 5
    sget-object v2, Lc/e/b/k/m/f$a;->b:Lc/e/b/k/m/f$a;
    iput-object v2, p0, Lc/e/b/k/m/f;->e:Lc/e/b/k/m/f$a;
    const/4 v2, 1
  .line 6
    iput v2, p0, Lc/e/b/k/m/f;->h:I
  .line 7
    iput-object v0, p0, Lc/e/b/k/m/f;->i:Lc/e/b/k/m/g;
  .line 8
    iput-boolean v1, p0, Lc/e/b/k/m/f;->j:Z
  .line 9
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/e/b/k/m/f;->k:Ljava/util/List;
  .line 10
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/e/b/k/m/f;->l:Ljava/util/List;
  .line 11
    iput-object p1, p0, Lc/e/b/k/m/f;->d:Lc/e/b/k/m/p;
    return-void
.end method

.method public a(Lc/e/b/k/m/d;)V
  .registers 7
  .line 1
    iget-object p1, p0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/f;
  .line 2
    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z
    if-nez v0, :L0
    return-void
  :L1
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lc/e/b/k/m/f;->c:Z
  .line 4
    iget-object v0, p0, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
    if-eqz v0, :L2
  .line 5
    invoke-interface { v0, p0 }, Lc/e/b/k/m/d;->a(Lc/e/b/k/m/d;)V
  :L2
  .line 6
    iget-boolean v0, p0, Lc/e/b/k/m/f;->b:Z
    if-eqz v0, :L3
  .line 7
    iget-object p1, p0, Lc/e/b/k/m/f;->d:Lc/e/b/k/m/p;
    invoke-virtual { p1, p0 }, Lc/e/b/k/m/p;->a(Lc/e/b/k/m/d;)V
    return-void
  :L3
    const/4 v0, 0
    const/4 v1, 0
  .line 8
    iget-object v2, p0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v2 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L4
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L6
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/e/b/k/m/f;
  .line 9
    instance-of v4, v3, Lc/e/b/k/m/g;
    if-eqz v4, :L5
    goto :L4
  :L5
    add-int/lit8 v1, v1, 1
    move-object v0, v3
    goto :L4
  :L6
    if-eqz v0, :L9
    if-ne v1, p1, :L9
  .line 10
    iget-boolean p1, v0, Lc/e/b/k/m/f;->j:Z
    if-eqz p1, :L9
  .line 11
    iget-object p1, p0, Lc/e/b/k/m/f;->i:Lc/e/b/k/m/g;
    if-eqz p1, :L8
  .line 12
    iget-boolean v1, p1, Lc/e/b/k/m/f;->j:Z
    if-eqz v1, :L7
  .line 13
    iget v1, p0, Lc/e/b/k/m/f;->h:I
    iget p1, p1, Lc/e/b/k/m/f;->g:I
    mul-int v1, v1, p1
    iput v1, p0, Lc/e/b/k/m/f;->f:I
    goto :L8
  :L7
    return-void
  :L8
  .line 14
    iget p1, v0, Lc/e/b/k/m/f;->g:I
    iget v0, p0, Lc/e/b/k/m/f;->f:I
    add-int/2addr p1, v0
    invoke-virtual { p0, p1 }, Lc/e/b/k/m/f;->d(I)V
  :L9
  .line 15
    iget-object p1, p0, Lc/e/b/k/m/f;->a:Lc/e/b/k/m/d;
    if-eqz p1, :L10
  .line 16
    invoke-interface { p1, p0 }, Lc/e/b/k/m/d;->a(Lc/e/b/k/m/d;)V
  :L10
    return-void
.end method

.method public b(Lc/e/b/k/m/d;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 2
    iget-boolean v0, p0, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L0
  .line 3
    invoke-interface { p1, p1 }, Lc/e/b/k/m/d;->a(Lc/e/b/k/m/d;)V
  :L0
    return-void
.end method

.method public c()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 2
    iget-object v0, p0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lc/e/b/k/m/f;->j:Z
  .line 4
    iput v0, p0, Lc/e/b/k/m/f;->g:I
  .line 5
    iput-boolean v0, p0, Lc/e/b/k/m/f;->c:Z
  .line 6
    iput-boolean v0, p0, Lc/e/b/k/m/f;->b:Z
    return-void
.end method

.method public d(I)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Lc/e/b/k/m/f;->j:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lc/e/b/k/m/f;->j:Z
  .line 3
    iput p1, p0, Lc/e/b/k/m/f;->g:I
  .line 4
    iget-object p1, p0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L1
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L2
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/k/m/d;
  .line 5
    invoke-interface { v0, v0 }, Lc/e/b/k/m/d;->a(Lc/e/b/k/m/d;)V
    goto :L1
  :L2
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v1, p0, Lc/e/b/k/m/f;->d:Lc/e/b/k/m/p;
    iget-object v1, v1, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;
    invoke-virtual { v1 }, Lc/e/b/k/e;->r()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/k/m/f;->e:Lc/e/b/k/m/f$a;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lc/e/b/k/m/f;->j:Z
    if-eqz v1, :L0
    iget v1, p0, Lc/e/b/k/m/f;->g:I
  .line 2
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    goto :L1
  :L0
    const-string v1, "unresolved"
  :L1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ") <t="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/k/m/f;->l:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ":d="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc/e/b/k/m/f;->k:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ">"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
