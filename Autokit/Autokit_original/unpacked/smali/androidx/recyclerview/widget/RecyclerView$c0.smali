.class public abstract Landroidx/recyclerview/widget/RecyclerView$c0;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "c0"
.end annotation

.field private final static s:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field public final a:Landroid/view/View;

.field b:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroidx/recyclerview/widget/RecyclerView;",
      ">;"
    }
  .end annotation
.end field

.field c:I

.field d:I

.field e:J

.field f:I

.field g:I

.field h:Landroidx/recyclerview/widget/RecyclerView$c0;

.field i:Landroidx/recyclerview/widget/RecyclerView$c0;

.field j:I

.field k:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field l:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field private m:I

.field n:Landroidx/recyclerview/widget/RecyclerView$u;

.field o:Z

.field private p:I

.field q:I

.field r:Landroidx/recyclerview/widget/RecyclerView;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object v0
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$c0;->s:Ljava/util/List;
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->d:I
    const-wide/16 v1, -1
  .line 4
    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->e:J
  .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->f:I
  .line 6
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
    const/4 v1, 0
  .line 7
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->h:Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 8
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->i:Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 9
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->k:Ljava/util/List;
  .line 10
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->l:Ljava/util/List;
    const/4 v2, 0
  .line 11
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->m:I
  .line 12
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->n:Landroidx/recyclerview/widget/RecyclerView$u;
  .line 13
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->o:Z
  .line 14
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->p:I
  .line 15
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->q:I
    if-eqz p1, :L0
  .line 16
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    return-void
  :L0
  .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "itemView may not be null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private g()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->k:Ljava/util/List;
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->k:Ljava/util/List;
  .line 3
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object v0
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->l:Ljava/util/List;
  :L0
    return-void
.end method

.method A(IZ)V
  .registers 5
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->d:I
    const/4 v1, -1
    if-ne v0, v1, :L0
  .line 2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->d:I
  :L0
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
    if-ne v0, v1, :L1
  .line 4
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
  :L1
    if-eqz p2, :L2
  .line 5
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
    add-int/2addr p2, p1
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
  :L2
  .line 6
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    add-int/2addr p2, p1
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
  .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    if-eqz p1, :L3
  .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;
    const/4 p2, 1
    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$o;->c:Z
  :L3
    return-void
.end method

.method B(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->q:I
    const/4 v1, -1
    if-eq v0, v1, :L0
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->p:I
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
  .line 4
    invoke-static { v0 }, Landroidx/core/view/v;->A(Landroid/view/View;)I
    move-result v0
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->p:I
  :L1
    const/4 v0, 4
  .line 5
    invoke-virtual { p1, p0, v0 }, Landroidx/recyclerview/widget/RecyclerView;->i1(Landroidx/recyclerview/widget/RecyclerView$c0;I)Z
    return-void
.end method

.method C(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->p:I
    invoke-virtual { p1, p0, v0 }, Landroidx/recyclerview/widget/RecyclerView;->i1(Landroidx/recyclerview/widget/RecyclerView$c0;I)Z
    const/4 p1, 0
  .line 2
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->p:I
    return-void
.end method

.method D()V
  .registers 5
    const/4 v0, 0
  .line 1
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    const/4 v1, -1
  .line 2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
  .line 3
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->d:I
    const-wide/16 v2, -1
  .line 4
    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->e:J
  .line 5
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
  .line 6
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->m:I
    const/4 v2, 0
  .line 7
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->h:Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 8
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->i:Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->d()V
  .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->p:I
  .line 11
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->q:I
  .line 12
    invoke-static { p0 }, Landroidx/recyclerview/widget/RecyclerView;->r(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    return-void
.end method

.method E()V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->d:I
    const/4 v1, -1
    if-ne v0, v1, :L0
  .line 2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->d:I
  :L0
    return-void
.end method

.method F(II)V
  .registers 5
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    xor-int/lit8 v1, p2, -1
    and-int/2addr v0, v1
    and-int/2addr p1, p2
    or-int/2addr p1, v0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    return-void
.end method

.method public final G(Z)V
  .registers 4
    const/4 v0, 1
  .line 1
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->m:I
    if-eqz p1, :L0
    sub-int/2addr v1, v0
    goto :L1
  :L0
    add-int/2addr v1, v0
  :L1
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->m:I
    if-gez v1, :L2
    const/4 p1, 0
  .line 2
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->m:I
  .line 3
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L4
  :L2
    if-nez p1, :L3
    if-ne v1, v0, :L3
  .line 4
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    or-int/lit8 p1, p1, 16
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    goto :L4
  :L3
    if-eqz p1, :L4
  .line 5
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->m:I
    if-nez p1, :L4
  .line 6
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 p1, p1, -17
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
  :L4
    return-void
.end method

.method H(Landroidx/recyclerview/widget/RecyclerView$u;Z)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->n:Landroidx/recyclerview/widget/RecyclerView$u;
  .line 2
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->o:Z
    return-void
.end method

.method I()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 v0, v0, 16
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method J()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit16 v0, v0, 128
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method K()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->n:Landroidx/recyclerview/widget/RecyclerView$u;
    invoke-virtual { v0, p0 }, Landroidx/recyclerview/widget/RecyclerView$u;->J(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    return-void
.end method

.method L()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 v0, v0, 32
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method a(Ljava/lang/Object;)V
  .registers 4
    const/16 v0, 1024
    if-nez p1, :L0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
    goto :L1
  :L0
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/2addr v0, v1
    if-nez v0, :L1
  .line 3
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->g()V
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->k:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
    return-void
.end method

.method b(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    or-int/2addr p1, v0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    return-void
.end method

.method c()V
  .registers 2
    const/4 v0, -1
  .line 1
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->d:I
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
    return-void
.end method

.method d()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->k:Ljava/util/List;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  :L0
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit16 v0, v0, -1025
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    return-void
.end method

.method e()V
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 v0, v0, -33
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    return-void
.end method

.method f()V
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit16 v0, v0, -257
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    return-void
.end method

.method h()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 v0, v0, 16
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-static { v0 }, Landroidx/core/view/v;->Q(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method i(IIZ)V
  .registers 5
    const/16 v0, 8
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->b(I)V
  .line 2
    invoke-virtual { p0, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$c0;->A(IZ)V
  .line 3
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    return-void
.end method

.method public final j()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->r:Landroidx/recyclerview/widget/RecyclerView;
    if-nez v0, :L0
    const/4 v0, -1
    return v0
  :L0
  .line 2
    invoke-virtual { v0, p0 }, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroidx/recyclerview/widget/RecyclerView$c0;)I
    move-result v0
    return v0
.end method

.method public final k()J
  .registers 3
  .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->e:J
    return-wide v0
.end method

.method public final l()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->f:I
    return v0
.end method

.method public final m()I
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
    const/4 v1, -1
    if-ne v0, v1, :L0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
  :L0
    return v0
.end method

.method public final n()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->d:I
    return v0
.end method

.method o()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit16 v0, v0, 1024
    if-nez v0, :L2
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->k:Ljava/util/List;
    if-eqz v0, :L1
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->l:Ljava/util/List;
    return-object v0
  :L1
  .line 4
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$c0;->s:Ljava/util/List;
    return-object v0
  :L2
  .line 5
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$c0;->s:Ljava/util/List;
    return-object v0
.end method

.method p(I)Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/2addr p1, v0
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method q()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit16 v0, v0, 512
    if-nez v0, :L1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
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

.method r()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->r:Landroidx/recyclerview/widget/RecyclerView;
    if-eq v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method s()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    const/4 v1, 1
    and-int/2addr v0, v1
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method t()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 v0, v0, 4
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 6
  .line 1
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->isAnonymousClass()Z
    move-result v0
    if-eqz v0, :L0
    const-string v0, "ViewHolder"
    goto :L1
  :L0
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v0
  :L1
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "{"
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-virtual { p0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, " position="
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->c:I
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, " id="
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v3, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->e:J
    invoke-virtual { v2, v3, v4 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v0, ", oldPos="
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->d:I
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ", pLpos:"
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->g:I
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->w()Z
    move-result v0
    if-eqz v0, :L4
    const-string v0, " scrap "
  .line 5
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->o:Z
    if-eqz v0, :L2
    const-string v0, "[changeScrap]"
    goto :L3
  :L2
    const-string v0, "[attachedScrap]"
  :L3
  .line 6
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L4
  .line 7
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->t()Z
    move-result v0
    if-eqz v0, :L5
    const-string v0, " invalid"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L5
  .line 8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->s()Z
    move-result v0
    if-nez v0, :L6
    const-string v0, " unbound"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L6
  .line 9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->z()Z
    move-result v0
    if-eqz v0, :L7
    const-string v0, " update"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L7
  .line 10
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result v0
    if-eqz v0, :L8
    const-string v0, " removed"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L8
  .line 11
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->J()Z
    move-result v0
    if-eqz v0, :L9
    const-string v0, " ignored"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L9
  .line 12
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->x()Z
    move-result v0
    if-eqz v0, :L10
    const-string v0, " tmpDetached"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L10
  .line 13
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->u()Z
    move-result v0
    if-nez v0, :L11
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, " not recyclable("
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->m:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ")"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L11
  .line 14
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->q()Z
    move-result v0
    if-eqz v0, :L12
    const-string v0, " undefined adapter position"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L12
  .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-nez v0, :L13
    const-string v0, " no parent"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L13
    const-string v0, "}"
  .line 16
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 17
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public final u()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 v0, v0, 16
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
  .line 2
    invoke-static { v0 }, Landroidx/core/view/v;->Q(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method v()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 v0, v0, 8
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method w()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->n:Landroidx/recyclerview/widget/RecyclerView$u;
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method x()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit16 v0, v0, 256
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method y()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 v0, v0, 2
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method z()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->j:I
    and-int/lit8 v0, v0, 2
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method
