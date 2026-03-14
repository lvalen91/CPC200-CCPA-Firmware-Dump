.class public abstract Lc/p/m;
.super Ljava/lang/Object;
.implements Ljava/lang/Cloneable;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/p/m$e;,
    Lc/p/m$d;,
    Lc/p/m$f;
  }
.end annotation

.field private final static H:[I

.field private final static I:Lc/p/g;

.field private static J:Ljava/lang/ThreadLocal;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ThreadLocal<",
      "Lc/d/a<",
      "Landroid/animation/Animator;",
      "Lc/p/m$d;",
      ">;>;"
    }
  .end annotation
.end field

.field private A:Z

.field private B:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/p/m$f;",
      ">;"
    }
  .end annotation
.end field

.field private C:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/animation/Animator;",
      ">;"
    }
  .end annotation
.end field

.field D:Lc/p/p;

.field private E:Lc/p/m$e;

.field private F:Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private G:Lc/p/g;

.field private b:Ljava/lang/String;

.field private c:J

.field d:J

.field private e:Landroid/animation/TimeInterpolator;

.field f:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field g:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private h:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private i:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/Class<",
      "*>;>;"
    }
  .end annotation
.end field

.field private j:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field private k:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private l:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/Class<",
      "*>;>;"
    }
  .end annotation
.end field

.field private m:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private n:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field private o:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private p:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/Class<",
      "*>;>;"
    }
  .end annotation
.end field

.field private q:Lc/p/t;

.field private r:Lc/p/t;

.field s:Lc/p/q;

.field private t:[I

.field private u:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/p/s;",
      ">;"
    }
  .end annotation
.end field

.field private v:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Lc/p/s;",
      ">;"
    }
  .end annotation
.end field

.field w:Z

.field x:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/animation/Animator;",
      ">;"
    }
  .end annotation
.end field

.field private y:I

.field private z:Z

.method static constructor <clinit>()V
  .registers 1
    const/4 v0, 4
    new-array v0, v0, [I
  .line 1
    fill-array-data v0, :L0
    sput-object v0, Lc/p/m;->H:[I
  .line 2
    new-instance v0, Lc/p/m$a;
    invoke-direct { v0 }, Lc/p/m$a;-><init>()V
    sput-object v0, Lc/p/m;->I:Lc/p/g;
  .line 3
    new-instance v0, Ljava/lang/ThreadLocal;
    invoke-direct { v0 }, Ljava/lang/ThreadLocal;-><init>()V
    sput-object v0, Lc/p/m;->J:Ljava/lang/ThreadLocal;
    return-void
  :L0
  .array-data 4
    2t 0t 0t 0t
    1t 0t 0t 0t
    3t 0t 0t 0t
    4t 0t 0t 0t
  .end array-data
.end method

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lc/p/m;->b:Ljava/lang/String;
    const-wide/16 v0, -1
  .line 3
    iput-wide v0, p0, Lc/p/m;->c:J
  .line 4
    iput-wide v0, p0, Lc/p/m;->d:J
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Lc/p/m;->e:Landroid/animation/TimeInterpolator;
  .line 6
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    iput-object v1, p0, Lc/p/m;->f:Ljava/util/ArrayList;
  .line 7
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    iput-object v1, p0, Lc/p/m;->g:Ljava/util/ArrayList;
  .line 8
    iput-object v0, p0, Lc/p/m;->h:Ljava/util/ArrayList;
  .line 9
    iput-object v0, p0, Lc/p/m;->i:Ljava/util/ArrayList;
  .line 10
    iput-object v0, p0, Lc/p/m;->j:Ljava/util/ArrayList;
  .line 11
    iput-object v0, p0, Lc/p/m;->k:Ljava/util/ArrayList;
  .line 12
    iput-object v0, p0, Lc/p/m;->l:Ljava/util/ArrayList;
  .line 13
    iput-object v0, p0, Lc/p/m;->m:Ljava/util/ArrayList;
  .line 14
    iput-object v0, p0, Lc/p/m;->n:Ljava/util/ArrayList;
  .line 15
    iput-object v0, p0, Lc/p/m;->o:Ljava/util/ArrayList;
  .line 16
    iput-object v0, p0, Lc/p/m;->p:Ljava/util/ArrayList;
  .line 17
    new-instance v1, Lc/p/t;
    invoke-direct { v1 }, Lc/p/t;-><init>()V
    iput-object v1, p0, Lc/p/m;->q:Lc/p/t;
  .line 18
    new-instance v1, Lc/p/t;
    invoke-direct { v1 }, Lc/p/t;-><init>()V
    iput-object v1, p0, Lc/p/m;->r:Lc/p/t;
  .line 19
    iput-object v0, p0, Lc/p/m;->s:Lc/p/q;
  .line 20
    sget-object v1, Lc/p/m;->H:[I
    iput-object v1, p0, Lc/p/m;->t:[I
    const/4 v1, 0
  .line 21
    iput-boolean v1, p0, Lc/p/m;->w:Z
  .line 22
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct { v2 }, Ljava/util/ArrayList;-><init>()V
    iput-object v2, p0, Lc/p/m;->x:Ljava/util/ArrayList;
  .line 23
    iput v1, p0, Lc/p/m;->y:I
  .line 24
    iput-boolean v1, p0, Lc/p/m;->z:Z
  .line 25
    iput-boolean v1, p0, Lc/p/m;->A:Z
  .line 26
    iput-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
  .line 27
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/p/m;->C:Ljava/util/ArrayList;
  .line 28
    sget-object v0, Lc/p/m;->I:Lc/p/g;
    iput-object v0, p0, Lc/p/m;->G:Lc/p/g;
    return-void
.end method

.method private static G(Lc/p/s;Lc/p/s;Ljava/lang/String;)Z
  .registers 3
  .line 1
    iget-object p0, p0, Lc/p/s;->a:Ljava/util/Map;
    invoke-interface { p0, p2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
  .line 2
    iget-object p1, p1, Lc/p/s;->a:Ljava/util/Map;
    invoke-interface { p1, p2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    const/4 p2, 1
    if-nez p0, :L0
    if-nez p1, :L0
    const/4 p2, 0
    goto :L2
  :L0
    if-eqz p0, :L2
    if-nez p1, :L1
    goto :L2
  :L1
  .line 3
    invoke-virtual { p0, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p0
    xor-int/2addr p2, p0
  :L2
    return p2
.end method

.method private H(Lc/d/a;Lc/d/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;",
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;",
      "Landroid/util/SparseArray<",
      "Landroid/view/View;",
      ">;",
      "Landroid/util/SparseArray<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
  .registers 12
  .line 1
    invoke-virtual { p3 }, Landroid/util/SparseArray;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    invoke-virtual { p3, v1 }, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
    if-eqz v2, :L1
  .line 3
    invoke-virtual { p0, v2 }, Lc/p/m;->F(Landroid/view/View;)Z
    move-result v3
    if-eqz v3, :L1
  .line 4
    invoke-virtual { p3, v1 }, Landroid/util/SparseArray;->keyAt(I)I
    move-result v3
    invoke-virtual { p4, v3 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/View;
    if-eqz v3, :L1
  .line 5
    invoke-virtual { p0, v3 }, Lc/p/m;->F(Landroid/view/View;)Z
    move-result v4
    if-eqz v4, :L1
  .line 6
    invoke-virtual { p1, v2 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/p/s;
  .line 7
    invoke-virtual { p2, v3 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/p/s;
    if-eqz v4, :L1
    if-eqz v5, :L1
  .line 8
    iget-object v6, p0, Lc/p/m;->u:Ljava/util/ArrayList;
    invoke-virtual { v6, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 9
    iget-object v4, p0, Lc/p/m;->v:Ljava/util/ArrayList;
    invoke-virtual { v4, v5 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 10
    invoke-virtual { p1, v2 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    invoke-virtual { p2, v3 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method private I(Lc/d/a;Lc/d/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;",
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;)V"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-virtual { p1 }, Lc/d/g;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    invoke-virtual { p1, v0 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
    if-eqz v1, :L1
  .line 3
    invoke-virtual { p0, v1 }, Lc/p/m;->F(Landroid/view/View;)Z
    move-result v2
    if-eqz v2, :L1
  .line 4
    invoke-virtual { p2, v1 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/p/s;
    if-eqz v1, :L1
  .line 5
    iget-object v2, v1, Lc/p/s;->b:Landroid/view/View;
    invoke-virtual { p0, v2 }, Lc/p/m;->F(Landroid/view/View;)Z
    move-result v2
    if-eqz v2, :L1
  .line 6
    invoke-virtual { p1, v0 }, Lc/d/g;->k(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/p/s;
  .line 7
    iget-object v3, p0, Lc/p/m;->u:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 8
    iget-object v2, p0, Lc/p/m;->v:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    return-void
.end method

.method private J(Lc/d/a;Lc/d/a;Lc/d/d;Lc/d/d;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;",
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;",
      "Lc/d/d<",
      "Landroid/view/View;",
      ">;",
      "Lc/d/d<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
  .registers 12
  .line 1
    invoke-virtual { p3 }, Lc/d/d;->l()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    invoke-virtual { p3, v1 }, Lc/d/d;->m(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
    if-eqz v2, :L1
  .line 3
    invoke-virtual { p0, v2 }, Lc/p/m;->F(Landroid/view/View;)Z
    move-result v3
    if-eqz v3, :L1
  .line 4
    invoke-virtual { p3, v1 }, Lc/d/d;->h(I)J
    move-result-wide v3
    invoke-virtual { p4, v3, v4 }, Lc/d/d;->e(J)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/View;
    if-eqz v3, :L1
  .line 5
    invoke-virtual { p0, v3 }, Lc/p/m;->F(Landroid/view/View;)Z
    move-result v4
    if-eqz v4, :L1
  .line 6
    invoke-virtual { p1, v2 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/p/s;
  .line 7
    invoke-virtual { p2, v3 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/p/s;
    if-eqz v4, :L1
    if-eqz v5, :L1
  .line 8
    iget-object v6, p0, Lc/p/m;->u:Ljava/util/ArrayList;
    invoke-virtual { v6, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 9
    iget-object v4, p0, Lc/p/m;->v:Ljava/util/ArrayList;
    invoke-virtual { v4, v5 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 10
    invoke-virtual { p1, v2 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    invoke-virtual { p2, v3 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method private K(Lc/d/a;Lc/d/a;Lc/d/a;Lc/d/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;",
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
  .registers 12
  .line 1
    invoke-virtual { p3 }, Lc/d/g;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    invoke-virtual { p3, v1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
    if-eqz v2, :L1
  .line 3
    invoke-virtual { p0, v2 }, Lc/p/m;->F(Landroid/view/View;)Z
    move-result v3
    if-eqz v3, :L1
  .line 4
    invoke-virtual { p3, v1 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v3
    invoke-virtual { p4, v3 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/View;
    if-eqz v3, :L1
  .line 5
    invoke-virtual { p0, v3 }, Lc/p/m;->F(Landroid/view/View;)Z
    move-result v4
    if-eqz v4, :L1
  .line 6
    invoke-virtual { p1, v2 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/p/s;
  .line 7
    invoke-virtual { p2, v3 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/p/s;
    if-eqz v4, :L1
    if-eqz v5, :L1
  .line 8
    iget-object v6, p0, Lc/p/m;->u:Ljava/util/ArrayList;
    invoke-virtual { v6, v4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 9
    iget-object v4, p0, Lc/p/m;->v:Ljava/util/ArrayList;
    invoke-virtual { v4, v5 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 10
    invoke-virtual { p1, v2 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    invoke-virtual { p2, v3 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return-void
.end method

.method private L(Lc/p/t;Lc/p/t;)V
  .registers 8
  .line 1
    new-instance v0, Lc/d/a;
    iget-object v1, p1, Lc/p/t;->a:Lc/d/a;
    invoke-direct { v0, v1 }, Lc/d/a;-><init>(Lc/d/g;)V
  .line 2
    new-instance v1, Lc/d/a;
    iget-object v2, p2, Lc/p/t;->a:Lc/d/a;
    invoke-direct { v1, v2 }, Lc/d/a;-><init>(Lc/d/g;)V
    const/4 v2, 0
  :L0
  .line 3
    iget-object v3, p0, Lc/p/m;->t:[I
    array-length v4, v3
    if-ge v2, v4, :L6
  .line 4
    aget v3, v3, v2
    const/4 v4, 1
    if-eq v3, v4, :L4
    const/4 v4, 2
    if-eq v3, v4, :L3
    const/4 v4, 3
    if-eq v3, v4, :L2
    const/4 v4, 4
    if-eq v3, v4, :L1
    goto :L5
  :L1
  .line 5
    iget-object v3, p1, Lc/p/t;->c:Lc/d/d;
    iget-object v4, p2, Lc/p/t;->c:Lc/d/d;
    invoke-direct { p0, v0, v1, v3, v4 }, Lc/p/m;->J(Lc/d/a;Lc/d/a;Lc/d/d;Lc/d/d;)V
    goto :L5
  :L2
  .line 6
    iget-object v3, p1, Lc/p/t;->b:Landroid/util/SparseArray;
    iget-object v4, p2, Lc/p/t;->b:Landroid/util/SparseArray;
    invoke-direct { p0, v0, v1, v3, v4 }, Lc/p/m;->H(Lc/d/a;Lc/d/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    goto :L5
  :L3
  .line 7
    iget-object v3, p1, Lc/p/t;->d:Lc/d/a;
    iget-object v4, p2, Lc/p/t;->d:Lc/d/a;
    invoke-direct { p0, v0, v1, v3, v4 }, Lc/p/m;->K(Lc/d/a;Lc/d/a;Lc/d/a;Lc/d/a;)V
    goto :L5
  :L4
  .line 8
    invoke-direct { p0, v0, v1 }, Lc/p/m;->I(Lc/d/a;Lc/d/a;)V
  :L5
    add-int/lit8 v2, v2, 1
    goto :L0
  :L6
  .line 9
    invoke-direct { p0, v0, v1 }, Lc/p/m;->c(Lc/d/a;Lc/d/a;)V
    return-void
.end method

.method private R(Landroid/animation/Animator;Lc/d/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/animation/Animator;",
      "Lc/d/a<",
      "Landroid/animation/Animator;",
      "Lc/p/m$d;",
      ">;)V"
    }
  .end annotation
  .registers 4
    if-eqz p1, :L0
  .line 1
    new-instance v0, Lc/p/m$b;
    invoke-direct { v0, p0, p2 }, Lc/p/m$b;-><init>(Lc/p/m;Lc/d/a;)V
    invoke-virtual { p1, v0 }, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
  .line 2
    invoke-virtual { p0, p1 }, Lc/p/m;->e(Landroid/animation/Animator;)V
  :L0
    return-void
.end method

.method private c(Lc/d/a;Lc/d/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;",
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;)V"
    }
  .end annotation
  .registers 8
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    invoke-virtual { p1 }, Lc/d/g;->size()I
    move-result v2
    const/4 v3, 0
    if-ge v1, v2, :L2
  .line 2
    invoke-virtual { p1, v1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/p/s;
  .line 3
    iget-object v4, v2, Lc/p/s;->b:Landroid/view/View;
    invoke-virtual { p0, v4 }, Lc/p/m;->F(Landroid/view/View;)Z
    move-result v4
    if-eqz v4, :L1
  .line 4
    iget-object v4, p0, Lc/p/m;->u:Ljava/util/ArrayList;
    invoke-virtual { v4, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 5
    iget-object v2, p0, Lc/p/m;->v:Ljava/util/ArrayList;
    invoke-virtual { v2, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
  .line 6
    invoke-virtual { p2 }, Lc/d/g;->size()I
    move-result p1
    if-ge v0, p1, :L4
  .line 7
    invoke-virtual { p2, v0 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lc/p/s;
  .line 8
    iget-object v1, p1, Lc/p/s;->b:Landroid/view/View;
    invoke-virtual { p0, v1 }, Lc/p/m;->F(Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :L3
  .line 9
    iget-object v1, p0, Lc/p/m;->v:Ljava/util/ArrayList;
    invoke-virtual { v1, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 10
    iget-object p1, p0, Lc/p/m;->u:Ljava/util/ArrayList;
    invoke-virtual { p1, v3 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L3
    add-int/lit8 v0, v0, 1
    goto :L2
  :L4
    return-void
.end method

.method private static d(Lc/p/t;Landroid/view/View;Lc/p/s;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/p/t;->a:Lc/d/a;
    invoke-virtual { v0, p1, p2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result p2
    const/4 v0, 0
    if-ltz p2, :L1
  .line 3
    iget-object v1, p0, Lc/p/t;->b:Landroid/util/SparseArray;
    invoke-virtual { v1, p2 }, Landroid/util/SparseArray;->indexOfKey(I)I
    move-result v1
    if-ltz v1, :L0
  .line 4
    iget-object v1, p0, Lc/p/t;->b:Landroid/util/SparseArray;
    invoke-virtual { v1, p2, v0 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    goto :L1
  :L0
  .line 5
    iget-object v1, p0, Lc/p/t;->b:Landroid/util/SparseArray;
    invoke-virtual { v1, p2, p1 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
  :L1
  .line 6
    invoke-static { p1 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object p2
    if-eqz p2, :L3
  .line 7
    iget-object v1, p0, Lc/p/t;->d:Lc/d/a;
    invoke-virtual { v1, p2 }, Lc/d/g;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
  .line 8
    iget-object v1, p0, Lc/p/t;->d:Lc/d/a;
    invoke-virtual { v1, p2, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L3
  :L2
  .line 9
    iget-object v1, p0, Lc/p/t;->d:Lc/d/a;
    invoke-virtual { v1, p2, p1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L3
  .line 10
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p2
    instance-of p2, p2, Landroid/widget/ListView;
    if-eqz p2, :L5
  .line 11
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p2
    check-cast p2, Landroid/widget/ListView;
  .line 12
    invoke-virtual { p2 }, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
    move-result-object v1
    invoke-interface { v1 }, Landroid/widget/ListAdapter;->hasStableIds()Z
    move-result v1
    if-eqz v1, :L5
  .line 13
    invoke-virtual { p2, p1 }, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I
    move-result v1
  .line 14
    invoke-virtual { p2, v1 }, Landroid/widget/ListView;->getItemIdAtPosition(I)J
    move-result-wide v1
  .line 15
    iget-object p2, p0, Lc/p/t;->c:Lc/d/d;
    invoke-virtual { p2, v1, v2 }, Lc/d/d;->g(J)I
    move-result p2
    if-ltz p2, :L4
  .line 16
    iget-object p1, p0, Lc/p/t;->c:Lc/d/d;
    invoke-virtual { p1, v1, v2 }, Lc/d/d;->e(J)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/View;
    if-eqz p1, :L5
    const/4 p2, 0
  .line 17
    invoke-static { p1, p2 }, Landroidx/core/view/v;->w0(Landroid/view/View;Z)V
  .line 18
    iget-object p0, p0, Lc/p/t;->c:Lc/d/d;
    invoke-virtual { p0, v1, v2, v0 }, Lc/d/d;->i(JLjava/lang/Object;)V
    goto :L5
  :L4
    const/4 p2, 1
  .line 19
    invoke-static { p1, p2 }, Landroidx/core/view/v;->w0(Landroid/view/View;Z)V
  .line 20
    iget-object p0, p0, Lc/p/t;->c:Lc/d/d;
    invoke-virtual { p0, v1, v2, p1 }, Lc/d/d;->i(JLjava/lang/Object;)V
  :L5
    return-void
.end method

.method private g(Landroid/view/View;Z)V
  .registers 8
    if-nez p1, :L0
    return-void
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result v0
  .line 2
    iget-object v1, p0, Lc/p/m;->j:Ljava/util/ArrayList;
    if-eqz v1, :L1
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
    return-void
  :L1
  .line 3
    iget-object v1, p0, Lc/p/m;->k:Ljava/util/ArrayList;
    if-eqz v1, :L2
    invoke-virtual { v1, p1 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
    return-void
  :L2
  .line 4
    iget-object v1, p0, Lc/p/m;->l:Ljava/util/ArrayList;
    const/4 v2, 0
    if-eqz v1, :L5
  .line 5
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v3, 0
  :L3
    if-ge v3, v1, :L5
  .line 6
    iget-object v4, p0, Lc/p/m;->l:Ljava/util/ArrayList;
    invoke-virtual { v4, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Class;
    invoke-virtual { v4, p1 }, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L4
    return-void
  :L4
    add-int/lit8 v3, v3, 1
    goto :L3
  :L5
  .line 7
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v1
    instance-of v1, v1, Landroid/view/ViewGroup;
    if-eqz v1, :L9
  .line 8
    new-instance v1, Lc/p/s;
    invoke-direct { v1, p1 }, Lc/p/s;-><init>(Landroid/view/View;)V
    if-eqz p2, :L6
  .line 9
    invoke-virtual { p0, v1 }, Lc/p/m;->i(Lc/p/s;)V
    goto :L7
  :L6
  .line 10
    invoke-virtual { p0, v1 }, Lc/p/m;->f(Lc/p/s;)V
  :L7
  .line 11
    iget-object v3, v1, Lc/p/s;->c:Ljava/util/ArrayList;
    invoke-virtual { v3, p0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 12
    invoke-virtual { p0, v1 }, Lc/p/m;->h(Lc/p/s;)V
    if-eqz p2, :L8
  .line 13
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;
    invoke-static { v3, p1, v1 }, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V
    goto :L9
  :L8
  .line 14
    iget-object v3, p0, Lc/p/m;->r:Lc/p/t;
    invoke-static { v3, p1, v1 }, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V
  :L9
  .line 15
    instance-of v1, p1, Landroid/view/ViewGroup;
    if-eqz v1, :L16
  .line 16
    iget-object v1, p0, Lc/p/m;->n:Ljava/util/ArrayList;
    if-eqz v1, :L10
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L10
    return-void
  :L10
  .line 17
    iget-object v0, p0, Lc/p/m;->o:Ljava/util/ArrayList;
    if-eqz v0, :L11
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L11
    return-void
  :L11
  .line 18
    iget-object v0, p0, Lc/p/m;->p:Ljava/util/ArrayList;
    if-eqz v0, :L14
  .line 19
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L12
    if-ge v1, v0, :L14
  .line 20
    iget-object v3, p0, Lc/p/m;->p:Ljava/util/ArrayList;
    invoke-virtual { v3, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Class;
    invoke-virtual { v3, p1 }, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L13
    return-void
  :L13
    add-int/lit8 v1, v1, 1
    goto :L12
  :L14
  .line 21
    check-cast p1, Landroid/view/ViewGroup;
  :L15
  .line 22
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    if-ge v2, v0, :L16
  .line 23
    invoke-virtual { p1, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v0
    invoke-direct { p0, v0, p2 }, Lc/p/m;->g(Landroid/view/View;Z)V
    add-int/lit8 v2, v2, 1
    goto :L15
  :L16
    return-void
.end method

.method private static w()Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Lc/d/a<",
      "Landroid/animation/Animator;",
      "Lc/p/m$d;",
      ">;"
    }
  .end annotation
  .registers 4
  .line 1
    sget-object v0, Lc/p/m;->J:Ljava/lang/ThreadLocal;
    invoke-virtual { v0 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/d/a;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/d/a;
    invoke-direct { v0 }, Lc/d/a;-><init>()V
  .line 3
    sget-object v1, Lc/p/m;->J:Ljava/lang/ThreadLocal;
    invoke-virtual { v1, v0 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
  :L0
    return-object v0
.end method

.method public A()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/lang/Class<",
      "*>;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/m;->i:Ljava/util/ArrayList;
    return-object v0
.end method

.method public B()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    return-object v0
.end method

.method public C()[Ljava/lang/String;
  .registers 2
    const/4 v0, 0
    return-object v0
.end method

.method public D(Landroid/view/View;Z)Lc/p/s;
  .registers 4
  .line 1
    iget-object v0, p0, Lc/p/m;->s:Lc/p/q;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Lc/p/m;->D(Landroid/view/View;Z)Lc/p/s;
    move-result-object p1
    return-object p1
  :L0
    if-eqz p2, :L1
  .line 3
    iget-object p2, p0, Lc/p/m;->q:Lc/p/t;
    goto :L2
  :L1
    iget-object p2, p0, Lc/p/m;->r:Lc/p/t;
  :L2
  .line 4
    iget-object p2, p2, Lc/p/t;->a:Lc/d/a;
    invoke-virtual { p2, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lc/p/s;
    return-object p1
.end method

.method public E(Lc/p/s;Lc/p/s;)Z
  .registers 9
    const/4 v0, 0
    const/4 v1, 1
    if-eqz p1, :L5
    if-eqz p2, :L5
  .line 1
    invoke-virtual { p0 }, Lc/p/m;->C()[Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :L2
  .line 2
    array-length v3, v2
    const/4 v4, 0
  :L0
    if-ge v4, v3, :L5
    aget-object v5, v2, v4
  .line 3
    invoke-static { p1, p2, v5 }, Lc/p/m;->G(Lc/p/s;Lc/p/s;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L1
    goto :L4
  :L1
    add-int/lit8 v4, v4, 1
    goto :L0
  :L2
  .line 4
    iget-object v2, p1, Lc/p/s;->a:Ljava/util/Map;
    invoke-interface { v2 }, Ljava/util/Map;->keySet()Ljava/util/Set;
    move-result-object v2
    invoke-interface { v2 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L3
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L5
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
  .line 5
    invoke-static { p1, p2, v3 }, Lc/p/m;->G(Lc/p/s;Lc/p/s;Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L3
  :L4
    const/4 v0, 1
  :L5
    return v0
.end method

.method F(Landroid/view/View;)Z
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result v0
  .line 2
    iget-object v1, p0, Lc/p/m;->j:Ljava/util/ArrayList;
    const/4 v2, 0
    if-eqz v1, :L0
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual { v1, v3 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
    return v2
  :L0
  .line 3
    iget-object v1, p0, Lc/p/m;->k:Ljava/util/ArrayList;
    if-eqz v1, :L1
    invoke-virtual { v1, p1 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
    return v2
  :L1
  .line 4
    iget-object v1, p0, Lc/p/m;->l:Ljava/util/ArrayList;
    if-eqz v1, :L4
  .line 5
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v3, 0
  :L2
    if-ge v3, v1, :L4
  .line 6
    iget-object v4, p0, Lc/p/m;->l:Ljava/util/ArrayList;
    invoke-virtual { v4, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Class;
  .line 7
    invoke-virtual { v4, p1 }, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L3
    return v2
  :L3
    add-int/lit8 v3, v3, 1
    goto :L2
  :L4
  .line 8
    iget-object v1, p0, Lc/p/m;->m:Ljava/util/ArrayList;
    if-eqz v1, :L5
    invoke-static { p1 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L5
  .line 9
    iget-object v1, p0, Lc/p/m;->m:Ljava/util/ArrayList;
    invoke-static { p1 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, v3 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L5
    return v2
  :L5
  .line 10
    iget-object v1, p0, Lc/p/m;->f:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v3, 1
    if-nez v1, :L8
    iget-object v1, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-nez v1, :L8
    iget-object v1, p0, Lc/p/m;->i:Ljava/util/ArrayList;
    if-eqz v1, :L6
  .line 11
    invoke-virtual { v1 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-eqz v1, :L8
  :L6
    iget-object v1, p0, Lc/p/m;->h:Ljava/util/ArrayList;
    if-eqz v1, :L7
  .line 12
    invoke-virtual { v1 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-eqz v1, :L8
  :L7
    return v3
  :L8
  .line 13
    iget-object v1, p0, Lc/p/m;->f:Ljava/util/ArrayList;
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L14
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    goto :L14
  :L9
  .line 14
    iget-object v0, p0, Lc/p/m;->h:Ljava/util/ArrayList;
    if-eqz v0, :L10
    invoke-static { p1 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L10
    return v3
  :L10
  .line 15
    iget-object v0, p0, Lc/p/m;->i:Ljava/util/ArrayList;
    if-eqz v0, :L13
    const/4 v0, 0
  :L11
  .line 16
    iget-object v1, p0, Lc/p/m;->i:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge v0, v1, :L13
  .line 17
    iget-object v1, p0, Lc/p/m;->i:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Class;
    invoke-virtual { v1, p1 }, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L12
    return v3
  :L12
    add-int/lit8 v0, v0, 1
    goto :L11
  :L13
    return v2
  :L14
    return v3
.end method

.method public M(Landroid/view/View;)V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lc/p/m;->A:Z
    if-nez v0, :L5
  .line 2
    invoke-static { }, Lc/p/m;->w()Lc/d/a;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Lc/d/g;->size()I
    move-result v1
  .line 4
    invoke-static { p1 }, Lc/p/c0;->d(Landroid/view/View;)Lc/p/m0;
    move-result-object p1
    const/4 v2, 1
    sub-int/2addr v1, v2
  :L0
    if-ltz v1, :L2
  .line 5
    invoke-virtual { v0, v1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/p/m$d;
  .line 6
    iget-object v4, v3, Lc/p/m$d;->a:Landroid/view/View;
    if-eqz v4, :L1
    iget-object v3, v3, Lc/p/m$d;->d:Lc/p/m0;
    invoke-virtual { p1, v3 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L1
  .line 7
    invoke-virtual { v0, v1 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/animation/Animator;
  .line 8
    invoke-static { v3 }, Lc/p/a;->b(Landroid/animation/Animator;)V
  :L1
    add-int/lit8 v1, v1, -1
    goto :L0
  :L2
  .line 9
    iget-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;
    if-eqz p1, :L4
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result p1
    if-lez p1, :L4
  .line 10
    iget-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;
  .line 11
    invoke-virtual { p1 }, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/util/ArrayList;
  .line 12
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
  :L3
    if-ge v1, v0, :L4
  .line 13
    invoke-virtual { p1, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/p/m$f;
    invoke-interface { v3, p0 }, Lc/p/m$f;->a(Lc/p/m;)V
    add-int/lit8 v1, v1, 1
    goto :L3
  :L4
  .line 14
    iput-boolean v2, p0, Lc/p/m;->z:Z
  :L5
    return-void
.end method

.method N(Landroid/view/ViewGroup;)V
  .registers 12
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/p/m;->u:Ljava/util/ArrayList;
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/p/m;->v:Ljava/util/ArrayList;
  .line 3
    iget-object v0, p0, Lc/p/m;->q:Lc/p/t;
    iget-object v1, p0, Lc/p/m;->r:Lc/p/t;
    invoke-direct { p0, v0, v1 }, Lc/p/m;->L(Lc/p/t;Lc/p/t;)V
  .line 4
    invoke-static { }, Lc/p/m;->w()Lc/d/a;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Lc/d/g;->size()I
    move-result v1
  .line 6
    invoke-static { p1 }, Lc/p/c0;->d(Landroid/view/View;)Lc/p/m0;
    move-result-object v2
    const/4 v3, 1
    sub-int/2addr v1, v3
  :L0
    if-ltz v1, :L8
  .line 7
    invoke-virtual { v0, v1 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/animation/Animator;
    if-eqz v4, :L7
  .line 8
    invoke-virtual { v0, v4 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/p/m$d;
    if-eqz v5, :L7
  .line 9
    iget-object v6, v5, Lc/p/m$d;->a:Landroid/view/View;
    if-eqz v6, :L7
    iget-object v6, v5, Lc/p/m$d;->d:Lc/p/m0;
  .line 10
    invoke-virtual { v2, v6 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L7
  .line 11
    iget-object v6, v5, Lc/p/m$d;->c:Lc/p/s;
  .line 12
    iget-object v7, v5, Lc/p/m$d;->a:Landroid/view/View;
  .line 13
    invoke-virtual { p0, v7, v3 }, Lc/p/m;->D(Landroid/view/View;Z)Lc/p/s;
    move-result-object v8
  .line 14
    invoke-virtual { p0, v7, v3 }, Lc/p/m;->s(Landroid/view/View;Z)Lc/p/s;
    move-result-object v9
    if-nez v8, :L1
    if-nez v9, :L1
  .line 15
    iget-object v9, p0, Lc/p/m;->r:Lc/p/t;
    iget-object v9, v9, Lc/p/t;->a:Lc/d/a;
    invoke-virtual { v9, v7 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v7
    move-object v9, v7
    check-cast v9, Lc/p/s;
  :L1
    if-nez v8, :L2
    if-eqz v9, :L3
  :L2
  .line 16
    iget-object v5, v5, Lc/p/m$d;->e:Lc/p/m;
  .line 17
    invoke-virtual { v5, v6, v9 }, Lc/p/m;->E(Lc/p/s;Lc/p/s;)Z
    move-result v5
    if-eqz v5, :L3
    const/4 v5, 1
    goto :L4
  :L3
    const/4 v5, 0
  :L4
    if-eqz v5, :L7
  .line 18
    invoke-virtual { v4 }, Landroid/animation/Animator;->isRunning()Z
    move-result v5
    if-nez v5, :L6
    invoke-virtual { v4 }, Landroid/animation/Animator;->isStarted()Z
    move-result v5
    if-eqz v5, :L5
    goto :L6
  :L5
  .line 19
    invoke-virtual { v0, v4 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    goto :L7
  :L6
  .line 20
    invoke-virtual { v4 }, Landroid/animation/Animator;->cancel()V
  :L7
    add-int/lit8 v1, v1, -1
    goto :L0
  :L8
  .line 21
    iget-object v6, p0, Lc/p/m;->q:Lc/p/t;
    iget-object v7, p0, Lc/p/m;->r:Lc/p/t;
    iget-object v8, p0, Lc/p/m;->u:Ljava/util/ArrayList;
    iget-object v9, p0, Lc/p/m;->v:Ljava/util/ArrayList;
    move-object v4, p0
    move-object v5, p1
    invoke-virtual/range { v4 .. v9 }, Lc/p/m;->n(Landroid/view/ViewGroup;Lc/p/t;Lc/p/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  .line 22
    invoke-virtual { p0 }, Lc/p/m;->S()V
    return-void
.end method

.method public O(Lc/p/m$f;)Lc/p/m;
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
    if-nez v0, :L0
    return-object p0
  :L0
  .line 2
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
  .line 3
    iget-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result p1
    if-nez p1, :L1
    const/4 p1, 0
  .line 4
    iput-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;
  :L1
    return-object p0
.end method

.method public P(Landroid/view/View;)Lc/p/m;
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    return-object p0
.end method

.method public Q(Landroid/view/View;)V
  .registers 7
  .line 1
    iget-boolean v0, p0, Lc/p/m;->z:Z
    if-eqz v0, :L5
  .line 2
    iget-boolean v0, p0, Lc/p/m;->A:Z
    const/4 v1, 0
    if-nez v0, :L4
  .line 3
    invoke-static { }, Lc/p/m;->w()Lc/d/a;
    move-result-object v0
  .line 4
    invoke-virtual { v0 }, Lc/d/g;->size()I
    move-result v2
  .line 5
    invoke-static { p1 }, Lc/p/c0;->d(Landroid/view/View;)Lc/p/m0;
    move-result-object p1
    add-int/lit8 v2, v2, -1
  :L0
    if-ltz v2, :L2
  .line 6
    invoke-virtual { v0, v2 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/p/m$d;
  .line 7
    iget-object v4, v3, Lc/p/m$d;->a:Landroid/view/View;
    if-eqz v4, :L1
    iget-object v3, v3, Lc/p/m$d;->d:Lc/p/m0;
    invoke-virtual { p1, v3 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L1
  .line 8
    invoke-virtual { v0, v2 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/animation/Animator;
  .line 9
    invoke-static { v3 }, Lc/p/a;->c(Landroid/animation/Animator;)V
  :L1
    add-int/lit8 v2, v2, -1
    goto :L0
  :L2
  .line 10
    iget-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;
    if-eqz p1, :L4
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result p1
    if-lez p1, :L4
  .line 11
    iget-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;
  .line 12
    invoke-virtual { p1 }, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/util/ArrayList;
  .line 13
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v2, 0
  :L3
    if-ge v2, v0, :L4
  .line 14
    invoke-virtual { p1, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/p/m$f;
    invoke-interface { v3, p0 }, Lc/p/m$f;->b(Lc/p/m;)V
    add-int/lit8 v2, v2, 1
    goto :L3
  :L4
  .line 15
    iput-boolean v1, p0, Lc/p/m;->z:Z
  :L5
    return-void
.end method

.method protected S()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lc/p/m;->Z()V
  .line 2
    invoke-static { }, Lc/p/m;->w()Lc/d/a;
    move-result-object v0
  .line 3
    iget-object v1, p0, Lc/p/m;->C:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/animation/Animator;
  .line 4
    invoke-virtual { v0, v2 }, Lc/d/g;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L0
  .line 5
    invoke-virtual { p0 }, Lc/p/m;->Z()V
  .line 6
    invoke-direct { p0, v2, v0 }, Lc/p/m;->R(Landroid/animation/Animator;Lc/d/a;)V
    goto :L0
  :L1
  .line 7
    iget-object v0, p0, Lc/p/m;->C:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
  .line 8
    invoke-virtual { p0 }, Lc/p/m;->o()V
    return-void
.end method

.method public T(J)Lc/p/m;
  .registers 3
  .line 1
    iput-wide p1, p0, Lc/p/m;->d:J
    return-object p0
.end method

.method public U(Lc/p/m$e;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/p/m;->E:Lc/p/m$e;
    return-void
.end method

.method public V(Landroid/animation/TimeInterpolator;)Lc/p/m;
  .registers 2
  .line 1
    iput-object p1, p0, Lc/p/m;->e:Landroid/animation/TimeInterpolator;
    return-object p0
.end method

.method public W(Lc/p/g;)V
  .registers 2
    if-nez p1, :L0
  .line 1
    sget-object p1, Lc/p/m;->I:Lc/p/g;
    iput-object p1, p0, Lc/p/m;->G:Lc/p/g;
    goto :L1
  :L0
  .line 2
    iput-object p1, p0, Lc/p/m;->G:Lc/p/g;
  :L1
    return-void
.end method

.method public X(Lc/p/p;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/p/m;->D:Lc/p/p;
    return-void
.end method

.method public Y(J)Lc/p/m;
  .registers 3
  .line 1
    iput-wide p1, p0, Lc/p/m;->c:J
    return-object p0
.end method

.method protected Z()V
  .registers 6
  .line 1
    iget v0, p0, Lc/p/m;->y:I
    if-nez v0, :L2
  .line 2
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
    const/4 v1, 0
    if-eqz v0, :L1
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L1
  .line 3
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
  .line 4
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
  .line 5
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v3, 0
  :L0
    if-ge v3, v2, :L1
  .line 6
    invoke-virtual { v0, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/p/m$f;
    invoke-interface { v4, p0 }, Lc/p/m$f;->c(Lc/p/m;)V
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
  .line 7
    iput-boolean v1, p0, Lc/p/m;->A:Z
  :L2
  .line 8
    iget v0, p0, Lc/p/m;->y:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lc/p/m;->y:I
    return-void
.end method

.method public a(Lc/p/m$f;)Lc/p/m;
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
  :L0
  .line 3
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-object p0
.end method

.method a0(Ljava/lang/String;)Ljava/lang/String;
  .registers 9
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "@"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->hashCode()I
    move-result p1
    invoke-static { p1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ": "
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 3
    iget-wide v0, p0, Lc/p/m;->d:J
    const-wide/16 v2, -1
    const-string v4, ") "
    cmp-long v5, v0, v2
    if-eqz v5, :L0
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "dur("
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v5, p0, Lc/p/m;->d:J
    invoke-virtual { v0, v5, v6 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L0
  .line 5
    iget-wide v0, p0, Lc/p/m;->c:J
    cmp-long v5, v0, v2
    if-eqz v5, :L1
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "dly("
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lc/p/m;->c:J
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L1
  .line 7
    iget-object v0, p0, Lc/p/m;->e:Landroid/animation/TimeInterpolator;
    if-eqz v0, :L2
  .line 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "interp("
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Lc/p/m;->e:Landroid/animation/TimeInterpolator;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L2
  .line 9
    iget-object v0, p0, Lc/p/m;->f:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-gtz v0, :L3
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L10
  :L3
  .line 10
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "tgts("
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 11
    iget-object v0, p0, Lc/p/m;->f:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const-string v1, ", "
    const/4 v2, 0
    if-lez v0, :L6
    const/4 v0, 0
  :L4
  .line 12
    iget-object v3, p0, Lc/p/m;->f:Ljava/util/ArrayList;
    invoke-virtual { v3 }, Ljava/util/ArrayList;->size()I
    move-result v3
    if-ge v0, v3, :L6
    if-lez v0, :L5
  .line 13
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L5
  .line 14
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Lc/p/m;->f:Ljava/util/ArrayList;
    invoke-virtual { p1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p1
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    add-int/lit8 v0, v0, 1
    goto :L4
  :L6
  .line 15
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L9
  :L7
  .line 16
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-ge v2, v0, :L9
    if-lez v2, :L8
  .line 17
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L8
  .line 18
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p1, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { p1, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    add-int/lit8 v2, v2, 1
    goto :L7
  :L9
  .line 19
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ")"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L10
    return-object p1
.end method

.method public b(Landroid/view/View;)Lc/p/m;
  .registers 3
  .line 1
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-object p0
.end method

.method protected cancel()V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/p/m;->x:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L1
  .line 2
    iget-object v1, p0, Lc/p/m;->x:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/animation/Animator;
  .line 3
    invoke-virtual { v1 }, Landroid/animation/Animator;->cancel()V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L1
  .line 4
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
    if-eqz v0, :L3
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L3
  .line 5
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
  .line 6
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
  .line 7
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v2, 0
  :L2
    if-ge v2, v1, :L3
  .line 8
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/p/m$f;
    invoke-interface { v3, p0 }, Lc/p/m$f;->d(Lc/p/m;)V
    add-int/lit8 v2, v2, 1
    goto :L2
  :L3
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lc/p/m;->l()Lc/p/m;
    move-result-object v0
    return-object v0
.end method

.method protected e(Landroid/animation/Animator;)V
  .registers 7
    if-nez p1, :L0
  .line 1
    invoke-virtual { p0 }, Lc/p/m;->o()V
    goto :L4
  :L0
  .line 2
    invoke-virtual { p0 }, Lc/p/m;->p()J
    move-result-wide v0
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-ltz v4, :L1
  .line 3
    invoke-virtual { p0 }, Lc/p/m;->p()J
    move-result-wide v0
    invoke-virtual { p1, v0, v1 }, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;
  :L1
  .line 4
    invoke-virtual { p0 }, Lc/p/m;->x()J
    move-result-wide v0
    cmp-long v4, v0, v2
    if-ltz v4, :L2
  .line 5
    invoke-virtual { p0 }, Lc/p/m;->x()J
    move-result-wide v0
    invoke-virtual { p1 }, Landroid/animation/Animator;->getStartDelay()J
    move-result-wide v2
    add-long/2addr v0, v2
    invoke-virtual { p1, v0, v1 }, Landroid/animation/Animator;->setStartDelay(J)V
  :L2
  .line 6
    invoke-virtual { p0 }, Lc/p/m;->r()Landroid/animation/TimeInterpolator;
    move-result-object v0
    if-eqz v0, :L3
  .line 7
    invoke-virtual { p0 }, Lc/p/m;->r()Landroid/animation/TimeInterpolator;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  :L3
  .line 8
    new-instance v0, Lc/p/m$c;
    invoke-direct { v0, p0 }, Lc/p/m$c;-><init>(Lc/p/m;)V
    invoke-virtual { p1, v0 }, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
  .line 9
    invoke-virtual { p1 }, Landroid/animation/Animator;->start()V
  :L4
    return-void
.end method

.method public abstract f(Lc/p/s;)V
.end method

.method h(Lc/p/s;)V
  .registers 7
  .line 1
    iget-object v0, p0, Lc/p/m;->D:Lc/p/p;
    if-eqz v0, :L5
    iget-object v0, p1, Lc/p/s;->a:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->isEmpty()Z
    move-result v0
    if-nez v0, :L5
  .line 2
    iget-object v0, p0, Lc/p/m;->D:Lc/p/p;
    invoke-virtual { v0 }, Lc/p/p;->b()[Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L0
    return-void
  :L0
    const/4 v1, 0
    const/4 v2, 0
  :L1
  .line 3
    array-length v3, v0
    if-ge v2, v3, :L3
  .line 4
    iget-object v3, p1, Lc/p/s;->a:Ljava/util/Map;
    aget-object v4, v0, v2
    invoke-interface { v3, v4 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L2
    goto :L4
  :L2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L3
    const/4 v1, 1
  :L4
    if-nez v1, :L5
  .line 5
    iget-object v0, p0, Lc/p/m;->D:Lc/p/p;
    invoke-virtual { v0, p1 }, Lc/p/p;->a(Lc/p/s;)V
  :L5
    return-void
.end method

.method public abstract i(Lc/p/s;)V
.end method

.method j(Landroid/view/ViewGroup;Z)V
  .registers 8
  .line 1
    invoke-virtual { p0, p2 }, Lc/p/m;->k(Z)V
  .line 2
    iget-object v0, p0, Lc/p/m;->f:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    if-gtz v0, :L0
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L2
  :L0
    iget-object v0, p0, Lc/p/m;->h:Ljava/util/ArrayList;
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-eqz v0, :L2
  :L1
    iget-object v0, p0, Lc/p/m;->i:Ljava/util/ArrayList;
    if-eqz v0, :L3
  .line 4
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-eqz v0, :L2
    goto :L3
  :L2
  .line 5
    invoke-direct { p0, p1, p2 }, Lc/p/m;->g(Landroid/view/View;Z)V
    goto/16 :L15
  :L3
    const/4 v0, 0
  :L4
  .line 6
    iget-object v2, p0, Lc/p/m;->f:Ljava/util/ArrayList;
    invoke-virtual { v2 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v0, v2, :L9
  .line 7
    iget-object v2, p0, Lc/p/m;->f:Ljava/util/ArrayList;
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
  .line 8
    invoke-virtual { p1, v2 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v2
    if-eqz v2, :L8
  .line 9
    new-instance v3, Lc/p/s;
    invoke-direct { v3, v2 }, Lc/p/s;-><init>(Landroid/view/View;)V
    if-eqz p2, :L5
  .line 10
    invoke-virtual { p0, v3 }, Lc/p/m;->i(Lc/p/s;)V
    goto :L6
  :L5
  .line 11
    invoke-virtual { p0, v3 }, Lc/p/m;->f(Lc/p/s;)V
  :L6
  .line 12
    iget-object v4, v3, Lc/p/s;->c:Ljava/util/ArrayList;
    invoke-virtual { v4, p0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 13
    invoke-virtual { p0, v3 }, Lc/p/m;->h(Lc/p/s;)V
    if-eqz p2, :L7
  .line 14
    iget-object v4, p0, Lc/p/m;->q:Lc/p/t;
    invoke-static { v4, v2, v3 }, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V
    goto :L8
  :L7
  .line 15
    iget-object v4, p0, Lc/p/m;->r:Lc/p/t;
    invoke-static { v4, v2, v3 }, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V
  :L8
    add-int/lit8 v0, v0, 1
    goto :L4
  :L9
    const/4 p1, 0
  :L10
  .line 16
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-ge p1, v0, :L15
  .line 17
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
  .line 18
    new-instance v2, Lc/p/s;
    invoke-direct { v2, v0 }, Lc/p/s;-><init>(Landroid/view/View;)V
    if-eqz p2, :L11
  .line 19
    invoke-virtual { p0, v2 }, Lc/p/m;->i(Lc/p/s;)V
    goto :L12
  :L11
  .line 20
    invoke-virtual { p0, v2 }, Lc/p/m;->f(Lc/p/s;)V
  :L12
  .line 21
    iget-object v3, v2, Lc/p/s;->c:Ljava/util/ArrayList;
    invoke-virtual { v3, p0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 22
    invoke-virtual { p0, v2 }, Lc/p/m;->h(Lc/p/s;)V
    if-eqz p2, :L13
  .line 23
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;
    invoke-static { v3, v0, v2 }, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V
    goto :L14
  :L13
  .line 24
    iget-object v3, p0, Lc/p/m;->r:Lc/p/t;
    invoke-static { v3, v0, v2 }, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V
  :L14
    add-int/lit8 p1, p1, 1
    goto :L10
  :L15
    if-nez p2, :L19
  .line 25
    iget-object p1, p0, Lc/p/m;->F:Lc/d/a;
    if-eqz p1, :L19
  .line 26
    invoke-virtual { p1 }, Lc/d/g;->size()I
    move-result p1
  .line 27
    new-instance p2, Ljava/util/ArrayList;
    invoke-direct { p2, p1 }, Ljava/util/ArrayList;-><init>(I)V
    const/4 v0, 0
  :L16
    if-ge v0, p1, :L17
  .line 28
    iget-object v2, p0, Lc/p/m;->F:Lc/d/a;
    invoke-virtual { v2, v0 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
  .line 29
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;
    iget-object v3, v3, Lc/p/t;->d:Lc/d/a;
    invoke-virtual { v3, v2 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    invoke-virtual { p2, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v0, v0, 1
    goto :L16
  :L17
    if-ge v1, p1, :L19
  .line 30
    invoke-virtual { p2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    if-eqz v0, :L18
  .line 31
    iget-object v2, p0, Lc/p/m;->F:Lc/d/a;
    invoke-virtual { v2, v1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
  .line 32
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;
    iget-object v3, v3, Lc/p/t;->d:Lc/d/a;
    invoke-virtual { v3, v2, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L18
    add-int/lit8 v1, v1, 1
    goto :L17
  :L19
    return-void
.end method

.method k(Z)V
  .registers 2
    if-eqz p1, :L0
  .line 1
    iget-object p1, p0, Lc/p/m;->q:Lc/p/t;
    iget-object p1, p1, Lc/p/t;->a:Lc/d/a;
    invoke-virtual { p1 }, Lc/d/g;->clear()V
  .line 2
    iget-object p1, p0, Lc/p/m;->q:Lc/p/t;
    iget-object p1, p1, Lc/p/t;->b:Landroid/util/SparseArray;
    invoke-virtual { p1 }, Landroid/util/SparseArray;->clear()V
  .line 3
    iget-object p1, p0, Lc/p/m;->q:Lc/p/t;
    iget-object p1, p1, Lc/p/t;->c:Lc/d/d;
    invoke-virtual { p1 }, Lc/d/d;->b()V
    goto :L1
  :L0
  .line 4
    iget-object p1, p0, Lc/p/m;->r:Lc/p/t;
    iget-object p1, p1, Lc/p/t;->a:Lc/d/a;
    invoke-virtual { p1 }, Lc/d/g;->clear()V
  .line 5
    iget-object p1, p0, Lc/p/m;->r:Lc/p/t;
    iget-object p1, p1, Lc/p/t;->b:Landroid/util/SparseArray;
    invoke-virtual { p1 }, Landroid/util/SparseArray;->clear()V
  .line 6
    iget-object p1, p0, Lc/p/m;->r:Lc/p/t;
    iget-object p1, p1, Lc/p/t;->c:Lc/d/d;
    invoke-virtual { p1 }, Lc/d/d;->b()V
  :L1
    return-void
.end method

.method public l()Lc/p/m;
  .catch Ljava/lang/CloneNotSupportedException; { :L0 .. :L1 } :L2
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    invoke-super { p0 }, Ljava/lang/Object;->clone()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/p/m;
  .line 2
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct { v2 }, Ljava/util/ArrayList;-><init>()V
    iput-object v2, v1, Lc/p/m;->C:Ljava/util/ArrayList;
  .line 3
    new-instance v2, Lc/p/t;
    invoke-direct { v2 }, Lc/p/t;-><init>()V
    iput-object v2, v1, Lc/p/m;->q:Lc/p/t;
  .line 4
    new-instance v2, Lc/p/t;
    invoke-direct { v2 }, Lc/p/t;-><init>()V
    iput-object v2, v1, Lc/p/m;->r:Lc/p/t;
  .line 5
    iput-object v0, v1, Lc/p/m;->u:Ljava/util/ArrayList;
  .line 6
    iput-object v0, v1, Lc/p/m;->v:Ljava/util/ArrayList;
  :L1
    return-object v1
  :L2
    return-object v0
.end method

.method public m(Landroid/view/ViewGroup;Lc/p/s;Lc/p/s;)Landroid/animation/Animator;
  .registers 4
    const/4 p1, 0
    return-object p1
.end method

.method protected n(Landroid/view/ViewGroup;Lc/p/t;Lc/p/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/ViewGroup;",
      "Lc/p/t;",
      "Lc/p/t;",
      "Ljava/util/ArrayList<",
      "Lc/p/s;",
      ">;",
      "Ljava/util/ArrayList<",
      "Lc/p/s;",
      ">;)V"
    }
  .end annotation
  .registers 26
    move-object/from16 v6, p0
    move-object/from16 v7, p1
  .line 1
    invoke-static { }, Lc/p/m;->w()Lc/d/a;
    move-result-object v8
  .line 2
    new-instance v9, Landroid/util/SparseIntArray;
    invoke-direct { v9 }, Landroid/util/SparseIntArray;-><init>()V
  .line 3
    invoke-virtual/range { p4 .. p4 }, Ljava/util/ArrayList;->size()I
    move-result v10
    const-wide v0, 9223372036854775807L
    const/4 v12, 0
  :L0
    if-ge v12, v10, :L19
    move-object/from16 v13, p4
  .line 4
    invoke-virtual { v13, v12 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/p/s;
    move-object/from16 v14, p5
  .line 5
    invoke-virtual { v14, v12 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lc/p/s;
    if-eqz v2, :L1
  .line 6
    iget-object v5, v2, Lc/p/s;->c:Ljava/util/ArrayList;
    invoke-virtual { v5, v6 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :L1
    const/4 v2, 0
  :L1
    if-eqz v3, :L2
  .line 7
    iget-object v5, v3, Lc/p/s;->c:Ljava/util/ArrayList;
    invoke-virtual { v5, v6 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :L2
    const/4 v3, 0
  :L2
    if-nez v2, :L4
    if-nez v3, :L4
  :L3
    move/from16 v16, v10
    move/from16 v18, v12
    goto/16 :L18
  :L4
    if-eqz v2, :L6
    if-eqz v3, :L6
  .line 8
    invoke-virtual { v6, v2, v3 }, Lc/p/m;->E(Lc/p/s;Lc/p/s;)Z
    move-result v5
    if-eqz v5, :L5
    goto :L6
  :L5
    const/4 v5, 0
    goto :L7
  :L6
    const/4 v5, 1
  :L7
    if-eqz v5, :L3
  .line 9
    invoke-virtual { v6, v7, v2, v3 }, Lc/p/m;->m(Landroid/view/ViewGroup;Lc/p/s;Lc/p/s;)Landroid/animation/Animator;
    move-result-object v5
    if-eqz v5, :L3
    if-eqz v3, :L15
  .line 10
    iget-object v15, v3, Lc/p/s;->b:Landroid/view/View;
  .line 11
    invoke-virtual/range { p0 .. p0 }, Lc/p/m;->C()[Ljava/lang/String;
    move-result-object v4
    if-eqz v4, :L13
  .line 12
    array-length v11, v4
    if-lez v11, :L13
  .line 13
    new-instance v11, Lc/p/s;
    invoke-direct { v11, v15 }, Lc/p/s;-><init>(Landroid/view/View;)V
    move-object/from16 v17, v5
    move/from16 v16, v10
    move-object/from16 v10, p3
  .line 14
    iget-object v5, v10, Lc/p/t;->a:Lc/d/a;
    invoke-virtual { v5, v15 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/p/s;
    if-eqz v5, :L9
    const/4 v10, 0
  :L8
  .line 15
    array-length v13, v4
    if-ge v10, v13, :L9
  .line 16
    iget-object v13, v11, Lc/p/s;->a:Ljava/util/Map;
    aget-object v14, v4, v10
    move/from16 v18, v12
    iget-object v12, v5, Lc/p/s;->a:Ljava/util/Map;
    move-object/from16 v19, v5
    aget-object v5, v4, v10
  .line 17
    invoke-interface { v12, v5 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
  .line 18
    invoke-interface { v13, v14, v5 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    add-int/lit8 v10, v10, 1
    move-object/from16 v14, p5
    move/from16 v12, v18
    move-object/from16 v5, v19
    goto :L8
  :L9
    move/from16 v18, v12
  .line 19
    invoke-virtual { v8 }, Lc/d/g;->size()I
    move-result v4
    const/4 v5, 0
  :L10
    if-ge v5, v4, :L12
  .line 20
    invoke-virtual { v8, v5 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Landroid/animation/Animator;
  .line 21
    invoke-virtual { v8, v10 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Lc/p/m$d;
  .line 22
    iget-object v12, v10, Lc/p/m$d;->c:Lc/p/s;
    if-eqz v12, :L11
    iget-object v12, v10, Lc/p/m$d;->a:Landroid/view/View;
    if-ne v12, v15, :L11
    iget-object v12, v10, Lc/p/m$d;->b:Ljava/lang/String;
  .line 23
    invoke-virtual/range { p0 .. p0 }, Lc/p/m;->t()Ljava/lang/String;
    move-result-object v13
    invoke-virtual { v12, v13 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v12
    if-eqz v12, :L11
  .line 24
    iget-object v10, v10, Lc/p/m$d;->c:Lc/p/s;
    invoke-virtual { v10, v11 }, Lc/p/s;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L11
    const/4 v4, 0
    goto :L14
  :L11
    add-int/lit8 v5, v5, 1
    goto :L10
  :L12
    move-object/from16 v4, v17
    goto :L14
  :L13
    move-object/from16 v17, v5
    move/from16 v16, v10
    move/from16 v18, v12
    move-object/from16 v4, v17
    const/4 v11, 0
  :L14
    move-object v10, v4
    move-object v5, v11
    goto :L16
  :L15
    move-object/from16 v17, v5
    move/from16 v16, v10
    move/from16 v18, v12
  .line 25
    iget-object v4, v2, Lc/p/s;->b:Landroid/view/View;
    move-object v15, v4
    move-object/from16 v10, v17
    const/4 v5, 0
  :L16
    if-eqz v10, :L18
  .line 26
    iget-object v4, v6, Lc/p/m;->D:Lc/p/p;
    if-eqz v4, :L17
  .line 27
    invoke-virtual { v4, v7, v6, v2, v3 }, Lc/p/p;->c(Landroid/view/ViewGroup;Lc/p/m;Lc/p/s;Lc/p/s;)J
    move-result-wide v2
  .line 28
    iget-object v4, v6, Lc/p/m;->C:Ljava/util/ArrayList;
    invoke-virtual { v4 }, Ljava/util/ArrayList;->size()I
    move-result v4
    long-to-int v11, v2
    invoke-virtual { v9, v4, v11 }, Landroid/util/SparseIntArray;->put(II)V
  .line 29
    invoke-static { v2, v3, v0, v1 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v0
  :L17
    move-wide v11, v0
  .line 30
    new-instance v13, Lc/p/m$d;
    invoke-virtual/range { p0 .. p0 }, Lc/p/m;->t()Ljava/lang/String;
    move-result-object v2
  .line 31
    invoke-static/range { p1 .. p1 }, Lc/p/c0;->d(Landroid/view/View;)Lc/p/m0;
    move-result-object v4
    move-object v0, v13
    move-object v1, v15
    move-object/from16 v3, p0
    invoke-direct/range { v0 .. v5 }, Lc/p/m$d;-><init>(Landroid/view/View;Ljava/lang/String;Lc/p/m;Lc/p/m0;Lc/p/s;)V
  .line 32
    invoke-virtual { v8, v10, v13 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 33
    iget-object v0, v6, Lc/p/m;->C:Ljava/util/ArrayList;
    invoke-virtual { v0, v10 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-wide v0, v11
  :L18
    add-int/lit8 v12, v18, 1
    move/from16 v10, v16
    goto/16 :L0
  :L19
  .line 34
    invoke-virtual { v9 }, Landroid/util/SparseIntArray;->size()I
    move-result v2
    if-eqz v2, :L21
    const/4 v11, 0
  :L20
  .line 35
    invoke-virtual { v9 }, Landroid/util/SparseIntArray;->size()I
    move-result v2
    if-ge v11, v2, :L21
  .line 36
    invoke-virtual { v9, v11 }, Landroid/util/SparseIntArray;->keyAt(I)I
    move-result v2
  .line 37
    iget-object v3, v6, Lc/p/m;->C:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/animation/Animator;
  .line 38
    invoke-virtual { v9, v11 }, Landroid/util/SparseIntArray;->valueAt(I)I
    move-result v3
    int-to-long v3, v3
    sub-long/2addr v3, v0
    invoke-virtual { v2 }, Landroid/animation/Animator;->getStartDelay()J
    move-result-wide v7
    add-long/2addr v3, v7
  .line 39
    invoke-virtual { v2, v3, v4 }, Landroid/animation/Animator;->setStartDelay(J)V
    add-int/lit8 v11, v11, 1
    goto :L20
  :L21
    return-void
.end method

.method protected o()V
  .registers 7
  .line 1
    iget v0, p0, Lc/p/m;->y:I
    const/4 v1, 1
    sub-int/2addr v0, v1
    iput v0, p0, Lc/p/m;->y:I
    if-nez v0, :L8
  .line 2
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
    const/4 v2, 0
    if-eqz v0, :L1
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L1
  .line 3
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;
  .line 4
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
  .line 5
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v4, 0
  :L0
    if-ge v4, v3, :L1
  .line 6
    invoke-virtual { v0, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/p/m$f;
    invoke-interface { v5, p0 }, Lc/p/m$f;->e(Lc/p/m;)V
    add-int/lit8 v4, v4, 1
    goto :L0
  :L1
    const/4 v0, 0
  :L2
  .line 7
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;
    iget-object v3, v3, Lc/p/t;->c:Lc/d/d;
    invoke-virtual { v3 }, Lc/d/d;->l()I
    move-result v3
    if-ge v0, v3, :L4
  .line 8
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;
    iget-object v3, v3, Lc/p/t;->c:Lc/d/d;
    invoke-virtual { v3, v0 }, Lc/d/d;->m(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/View;
    if-eqz v3, :L3
  .line 9
    invoke-static { v3, v2 }, Landroidx/core/view/v;->w0(Landroid/view/View;Z)V
  :L3
    add-int/lit8 v0, v0, 1
    goto :L2
  :L4
    const/4 v0, 0
  :L5
  .line 10
    iget-object v3, p0, Lc/p/m;->r:Lc/p/t;
    iget-object v3, v3, Lc/p/t;->c:Lc/d/d;
    invoke-virtual { v3 }, Lc/d/d;->l()I
    move-result v3
    if-ge v0, v3, :L7
  .line 11
    iget-object v3, p0, Lc/p/m;->r:Lc/p/t;
    iget-object v3, v3, Lc/p/t;->c:Lc/d/d;
    invoke-virtual { v3, v0 }, Lc/d/d;->m(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/view/View;
    if-eqz v3, :L6
  .line 12
    invoke-static { v3, v2 }, Landroidx/core/view/v;->w0(Landroid/view/View;Z)V
  :L6
    add-int/lit8 v0, v0, 1
    goto :L5
  :L7
  .line 13
    iput-boolean v1, p0, Lc/p/m;->A:Z
  :L8
    return-void
.end method

.method public p()J
  .registers 3
  .line 1
    iget-wide v0, p0, Lc/p/m;->d:J
    return-wide v0
.end method

.method public q()Lc/p/m$e;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/m;->E:Lc/p/m$e;
    return-object v0
.end method

.method public r()Landroid/animation/TimeInterpolator;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/m;->e:Landroid/animation/TimeInterpolator;
    return-object v0
.end method

.method s(Landroid/view/View;Z)Lc/p/s;
  .registers 9
  .line 1
    iget-object v0, p0, Lc/p/m;->s:Lc/p/q;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Lc/p/m;->s(Landroid/view/View;Z)Lc/p/s;
    move-result-object p1
    return-object p1
  :L0
    if-eqz p2, :L1
  .line 3
    iget-object v0, p0, Lc/p/m;->u:Ljava/util/ArrayList;
    goto :L2
  :L1
    iget-object v0, p0, Lc/p/m;->v:Ljava/util/ArrayList;
  :L2
    const/4 v1, 0
    if-nez v0, :L3
    return-object v1
  :L3
  .line 4
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v2
    const/4 v3, -1
    const/4 v4, 0
  :L4
    if-ge v4, v2, :L7
  .line 5
    invoke-virtual { v0, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lc/p/s;
    if-nez v5, :L5
    return-object v1
  :L5
  .line 6
    iget-object v5, v5, Lc/p/s;->b:Landroid/view/View;
    if-ne v5, p1, :L6
    move v3, v4
    goto :L7
  :L6
    add-int/lit8 v4, v4, 1
    goto :L4
  :L7
    if-ltz v3, :L10
    if-eqz p2, :L8
  .line 7
    iget-object p1, p0, Lc/p/m;->v:Ljava/util/ArrayList;
    goto :L9
  :L8
    iget-object p1, p0, Lc/p/m;->u:Ljava/util/ArrayList;
  :L9
  .line 8
    invoke-virtual { p1, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p1
    move-object v1, p1
    check-cast v1, Lc/p/s;
  :L10
    return-object v1
.end method

.method public t()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/m;->b:Ljava/lang/String;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 2
    const-string v0, ""
  .line 1
    invoke-virtual { p0, v0 }, Lc/p/m;->a0(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public u()Lc/p/g;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/m;->G:Lc/p/g;
    return-object v0
.end method

.method public v()Lc/p/p;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/m;->D:Lc/p/p;
    return-object v0
.end method

.method public x()J
  .registers 3
  .line 1
    iget-wide v0, p0, Lc/p/m;->c:J
    return-wide v0
.end method

.method public y()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/m;->f:Ljava/util/ArrayList;
    return-object v0
.end method

.method public z()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/m;->h:Ljava/util/ArrayList;
    return-object v0
.end method
