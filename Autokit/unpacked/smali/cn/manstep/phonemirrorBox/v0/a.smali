.class public Lcn/manstep/phonemirrorBox/v0/a;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/v0/d;
.source "SourceFile"

.field private static i:Lcn/manstep/phonemirrorBox/v0/a;

.field private final a:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lcn/manstep/phonemirrorBox/v0/d;",
      ">;"
    }
  .end annotation
.end field

.field private final b:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/v0/b;",
      ">;"
    }
  .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.method private constructor <init>()V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->d:Z
    const-string v1, ""
  .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->e:Ljava/lang/String;
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  .line 6
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->g:Z
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->h:Z
  .line 8
    new-instance v0, Lcn/manstep/phonemirrorBox/u0/e;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/u0/e;-><init>()V
  .line 9
    new-instance v1, Lcn/manstep/phonemirrorBox/v0/c;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/v0/c;-><init>()V
  .line 10
    new-instance v2, Ljava/util/ArrayList;
    const/4 v3, 2
    invoke-direct { v2, v3 }, Ljava/util/ArrayList;-><init>(I)V
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
  .line 11
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 13
    new-instance v0, Ljava/util/LinkedList;
    invoke-direct { v0 }, Ljava/util/LinkedList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    return-void
.end method

.method public static t()Lcn/manstep/phonemirrorBox/v0/a;
  .catchall { :L0 .. :L3 } :L2
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/a;->i:Lcn/manstep/phonemirrorBox/v0/a;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/v0/a;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/v0/a;->i:Lcn/manstep/phonemirrorBox/v0/a;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/v0/a;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/v0/a;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/v0/a;->i:Lcn/manstep/phonemirrorBox/v0/a;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/a;->i:Lcn/manstep/phonemirrorBox/v0/a;
    return-object v0
.end method

.method public A()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->C()Z
    move-result v0
    if-nez v0, :L1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result v0
    if-nez v0, :L1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public B()Z
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 10
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public C()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->g:Z
    return v0
.end method

.method public D()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 15
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->p()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
    return-void
.end method

.method public E()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  :L0
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->d:Z
    return-void
.end method

.method public F(Lcn/manstep/phonemirrorBox/v0/b;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
  :L0
    return-void
.end method

.method public a()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/4 v1, 2
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->a()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/v0/a;->e:Ljava/lang/String;
    invoke-interface { v1, v2 }, Lcn/manstep/phonemirrorBox/v0/b;->d(Ljava/lang/String;)V
    goto :L3
  :L4
    return-void
.end method

.method public b()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 8
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->b()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
    const/4 v0, 1
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->h:Z
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
  .registers 6
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/4 v1, 1
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2, p1, p2 }, Lcn/manstep/phonemirrorBox/v0/d;->c(Ljava/lang/String;Z)V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
  .line 5
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/a;->e:Ljava/lang/String;
    return-void
.end method

.method public d()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 9
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->d()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->h:Z
    return-void
.end method

.method public e()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 10
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->e()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
    return-void
.end method

.method public f()V
  .registers 4
    const/4 v0, 0
  .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/4 v1, 5
    if-eq v0, v1, :L2
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 4
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->f()V
    goto :L0
  :L1
  .line 5
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 7
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->c()V
    goto :L3
  :L4
    return-void
.end method

.method public g()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/4 v1, 6
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->g()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
    const/4 v0, 1
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->d:Z
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 7
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->i()V
    goto :L3
  :L4
    return-void
.end method

.method public h()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 12
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->h()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
    const/4 v0, 1
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->g:Z
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 7
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->e()V
  .line 8
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->f()V
    goto :L3
  :L4
    return-void
.end method

.method public i()V
  .registers 4
    const/4 v0, 0
  .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/4 v1, 3
    if-eq v0, v1, :L2
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 4
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->i()V
    goto :L0
  :L1
  .line 5
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
    return-void
.end method

.method public j()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 16
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->j()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 6
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->k()V
    goto :L3
  :L4
    return-void
.end method

.method public k()V
  .registers 4
    const/4 v0, 1
  .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/4 v1, 4
    if-eq v0, v1, :L2
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 4
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->k()V
    goto :L0
  :L1
  .line 5
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 7
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->g()V
    goto :L3
  :L4
    return-void
.end method

.method public l()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 11
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->l()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
    return-void
.end method

.method public m()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/4 v1, 7
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->m()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->d:Z
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 7
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->j()V
    goto :L3
  :L4
    return-void
.end method

.method public n()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 17
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->n()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 6
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->h()V
    goto :L3
  :L4
    return-void
.end method

.method public o()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 13
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->o()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
    const/4 v0, 0
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->g:Z
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 7
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->b()V
    goto :L3
  :L4
    return-void
.end method

.method public p()V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 14
    if-eq v0, v1, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 3
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->p()V
    goto :L0
  :L1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 6
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->e()V
    goto :L3
  :L4
    return-void
.end method

.method public q(Landroid/content/Context;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/d;
  .line 2
    invoke-interface { v1, p1 }, Lcn/manstep/phonemirrorBox/v0/d;->q(Landroid/content/Context;)V
    goto :L0
  :L1
    return-void
.end method

.method public r(Lcn/manstep/phonemirrorBox/v0/b;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public s()V
  .registers 4
    const/4 v0, 2
  .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
    const/16 v1, 40
    if-eq v0, v1, :L2
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;
  .line 4
    invoke-interface { v2 }, Lcn/manstep/phonemirrorBox/v0/d;->k()V
    goto :L0
  :L1
  .line 5
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I
  :L2
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;
  .line 7
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/v0/b;->a()V
    goto :L3
  :L4
    return-void
.end method

.method public u()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->e:Ljava/lang/String;
    return-object v0
.end method

.method public v()Z
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I
    const/4 v1, 2
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public w()Z
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public x()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result v0
    if-nez v0, :L1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public y()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->d:Z
    return v0
.end method

.method public z()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->h:Z
    return v0
.end method
