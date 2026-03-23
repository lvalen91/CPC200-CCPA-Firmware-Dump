.class Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/fragment/app/x$h;,
    Landroidx/fragment/app/x$g;
  }
.end annotation

.field private final static a:[I

.field final static b:Landroidx/fragment/app/z;

.field final static c:Landroidx/fragment/app/z;

.method static constructor <clinit>()V
  .registers 2
    const/16 v0, 11
    new-array v0, v0, [I
  .line 1
    fill-array-data v0, :L2
    sput-object v0, Landroidx/fragment/app/x;->a:[I
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 3
    new-instance v0, Landroidx/fragment/app/y;
    invoke-direct { v0 }, Landroidx/fragment/app/y;-><init>()V
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 4
    sput-object v0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;
  .line 5
    invoke-static { }, Landroidx/fragment/app/x;->x()Landroidx/fragment/app/z;
    move-result-object v0
    sput-object v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;
    return-void
  :L2
  .array-data 4
    0t 0t 0t 0t
    3t 0t 0t 0t
    0t 0t 0t 0t
    1t 0t 0t 0t
    5t 0t 0t 0t
    4t 0t 0t 0t
    7t 0t 0t 0t
    6t 0t 0t 0t
    9t 0t 0t 0t
    8t 0t 0t 0t
    10t 0t 0t 0t
  .end array-data
.end method

.method private static A(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Lc/d/a;ZLandroidx/fragment/app/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/z;",
      "Ljava/lang/Object;",
      "Ljava/lang/Object;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;Z",
      "Landroidx/fragment/app/a;",
      ")V"
    }
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p5, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
    if-eqz v0, :L2
  .line 2
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :L2
    const/4 v0, 0
    if-eqz p4, :L0
  .line 3
    iget-object p4, p5, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;
    invoke-virtual { p4, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p4
    check-cast p4, Ljava/lang/String;
    goto :L1
  :L0
  .line 4
    iget-object p4, p5, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
    invoke-virtual { p4, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p4
    check-cast p4, Ljava/lang/String;
  :L1
  .line 5
    invoke-virtual { p3, p4 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Landroid/view/View;
  .line 6
    invoke-virtual { p0, p1, p3 }, Landroidx/fragment/app/z;->v(Ljava/lang/Object;Landroid/view/View;)V
    if-eqz p2, :L2
  .line 7
    invoke-virtual { p0, p2, p3 }, Landroidx/fragment/app/z;->v(Ljava/lang/Object;Landroid/view/View;)V
  :L2
    return-void
.end method

.method static B(Ljava/util/ArrayList;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;I)V"
    }
  .end annotation
  .registers 4
    if-nez p0, :L0
    return-void
  :L0
  .line 1
    invoke-virtual { p0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L1
    if-ltz v0, :L2
  .line 2
    invoke-virtual { p0, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
  .line 3
    invoke-virtual { v1, p1 }, Landroid/view/View;->setVisibility(I)V
    add-int/lit8 v0, v0, -1
    goto :L1
  :L2
    return-void
.end method

.method static C(Landroid/content/Context;Landroidx/fragment/app/g;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/x$g;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Landroidx/fragment/app/g;",
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/a;",
      ">;",
      "Ljava/util/ArrayList<",
      "Ljava/lang/Boolean;",
      ">;IIZ",
      "Landroidx/fragment/app/x$g;",
      ")V"
    }
  .end annotation
  .registers 15
  .line 1
    new-instance v0, Landroid/util/SparseArray;
    invoke-direct { v0 }, Landroid/util/SparseArray;-><init>()V
    move v1, p4
  :L0
    if-ge v1, p5, :L3
  .line 2
    invoke-virtual { p2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/a;
  .line 3
    invoke-virtual { p3, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Boolean;
    invoke-virtual { v3 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v3
    if-eqz v3, :L1
  .line 4
    invoke-static { v2, v0, p6 }, Landroidx/fragment/app/x;->e(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    goto :L2
  :L1
  .line 5
    invoke-static { v2, v0, p6 }, Landroidx/fragment/app/x;->c(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
  .line 6
    invoke-virtual { v0 }, Landroid/util/SparseArray;->size()I
    move-result v1
    if-eqz v1, :L8
  .line 7
    new-instance v1, Landroid/view/View;
    invoke-direct { v1, p0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
  .line 8
    invoke-virtual { v0 }, Landroid/util/SparseArray;->size()I
    move-result p0
    const/4 v2, 0
  :L4
    if-ge v2, p0, :L8
  .line 9
    invoke-virtual { v0, v2 }, Landroid/util/SparseArray;->keyAt(I)I
    move-result v3
  .line 10
    invoke-static { v3, p2, p3, p4, p5 }, Landroidx/fragment/app/x;->d(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lc/d/a;
    move-result-object v4
  .line 11
    invoke-virtual { v0, v2 }, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroidx/fragment/app/x$h;
  .line 12
    invoke-virtual { p1 }, Landroidx/fragment/app/g;->d()Z
    move-result v6
    if-eqz v6, :L7
  .line 13
    invoke-virtual { p1, v3 }, Landroidx/fragment/app/g;->c(I)Landroid/view/View;
    move-result-object v3
    check-cast v3, Landroid/view/ViewGroup;
    if-nez v3, :L5
    goto :L7
  :L5
    if-eqz p6, :L6
  .line 14
    invoke-static { v3, v5, v1, v4, p7 }, Landroidx/fragment/app/x;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/x$h;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$g;)V
    goto :L7
  :L6
  .line 15
    invoke-static { v3, v5, v1, v4, p7 }, Landroidx/fragment/app/x;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/x$h;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$g;)V
  :L7
    add-int/lit8 v2, v2, 1
    goto :L4
  :L8
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lc/d/a;Ljava/util/Collection;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;",
      "Ljava/util/Collection<",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p1 }, Lc/d/g;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    invoke-virtual { p1, v0 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
  .line 3
    invoke-static { v1 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v2
    invoke-interface { p2, v2 }, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L1
  .line 4
    invoke-virtual { p0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    return-void
.end method

.method private static b(Landroidx/fragment/app/a;Landroidx/fragment/app/w$a;Landroid/util/SparseArray;ZZ)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/a;",
      "Landroidx/fragment/app/w$a;",
      "Landroid/util/SparseArray<",
      "Landroidx/fragment/app/x$h;",
      ">;ZZ)V"
    }
  .end annotation
  .registers 13
  .line 1
    iget-object v0, p1, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget v1, v0, Landroidx/fragment/app/Fragment;->y:I
    if-nez v1, :L1
    return-void
  :L1
    if-eqz p3, :L2
  .line 3
    sget-object v2, Landroidx/fragment/app/x;->a:[I
    iget p1, p1, Landroidx/fragment/app/w$a;->a:I
    aget p1, v2, p1
    goto :L3
  :L2
    iget p1, p1, Landroidx/fragment/app/w$a;->a:I
  :L3
    const/4 v2, 0
    const/4 v3, 1
    if-eq p1, v3, :L15
    const/4 v4, 3
    if-eq p1, v4, :L10
    const/4 v4, 4
    if-eq p1, v4, :L7
    const/4 v4, 5
    if-eq p1, v4, :L5
    const/4 v4, 6
    if-eq p1, v4, :L10
    const/4 v4, 7
    if-eq p1, v4, :L15
    const/4 p1, 0
    const/4 v3, 0
  :L4
    const/4 v4, 0
    goto/16 :L20
  :L5
    if-eqz p4, :L6
  .line 4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->N:Z
    if-eqz p1, :L18
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z
    if-nez p1, :L18
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z
    if-eqz p1, :L18
    goto :L17
  :L6
  .line 5
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z
    goto :L19
  :L7
    if-eqz p4, :L9
  .line 6
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->N:Z
    if-eqz p1, :L12
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z
    if-eqz p1, :L12
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z
    if-eqz p1, :L12
  :L8
    goto :L11
  :L9
  .line 7
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z
    if-eqz p1, :L12
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z
    if-nez p1, :L12
    goto :L8
  :L10
    if-eqz p4, :L13
  .line 8
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z
    if-nez p1, :L12
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz p1, :L12
  .line 9
    invoke-virtual { p1 }, Landroid/view/View;->getVisibility()I
    move-result p1
    if-nez p1, :L12
    iget p1, v0, Landroidx/fragment/app/Fragment;->O:F
    const/4 v4, 0
    cmpl-float p1, p1, v4
    if-ltz p1, :L12
  :L11
    const/4 p1, 1
    goto :L14
  :L12
    const/4 p1, 0
    goto :L14
  :L13
  .line 10
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z
    if-eqz p1, :L12
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z
    if-nez p1, :L12
    goto :L11
  :L14
    move v4, p1
    const/4 p1, 1
    const/4 v3, 0
    goto :L20
  :L15
    if-eqz p4, :L16
  .line 11
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->M:Z
    goto :L19
  :L16
  .line 12
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->m:Z
    if-nez p1, :L18
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->A:Z
    if-nez p1, :L18
  :L17
    const/4 p1, 1
    goto :L19
  :L18
    const/4 p1, 0
  :L19
    move v2, p1
    const/4 p1, 0
    goto :L4
  :L20
  .line 13
    invoke-virtual { p2, v1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroidx/fragment/app/x$h;
    if-eqz v2, :L21
  .line 14
    invoke-static { v5, p2, v1 }, Landroidx/fragment/app/x;->p(Landroidx/fragment/app/x$h;Landroid/util/SparseArray;I)Landroidx/fragment/app/x$h;
    move-result-object v5
  .line 15
    iput-object v0, v5, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;
  .line 16
    iput-boolean p3, v5, Landroidx/fragment/app/x$h;->b:Z
  .line 17
    iput-object p0, v5, Landroidx/fragment/app/x$h;->c:Landroidx/fragment/app/a;
  :L21
    const/4 v2, 0
    if-nez p4, :L23
    if-eqz v3, :L23
    if-eqz v5, :L22
  .line 18
    iget-object v3, v5, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;
    if-ne v3, v0, :L22
  .line 19
    iput-object v2, v5, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;
  :L22
  .line 20
    iget-boolean v3, p0, Landroidx/fragment/app/w;->p:Z
    if-nez v3, :L23
  .line 21
    iget-object v3, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
  .line 22
    invoke-virtual { v3, v0 }, Landroidx/fragment/app/n;->v(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;
    move-result-object v6
  .line 23
    invoke-virtual { v3 }, Landroidx/fragment/app/n;->q0()Landroidx/fragment/app/v;
    move-result-object v7
    invoke-virtual { v7, v6 }, Landroidx/fragment/app/v;->p(Landroidx/fragment/app/u;)V
  .line 24
    invoke-virtual { v3, v0 }, Landroidx/fragment/app/n;->P0(Landroidx/fragment/app/Fragment;)V
  :L23
    if-eqz v4, :L25
    if-eqz v5, :L24
  .line 25
    iget-object v3, v5, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;
    if-nez v3, :L25
  :L24
  .line 26
    invoke-static { v5, p2, v1 }, Landroidx/fragment/app/x;->p(Landroidx/fragment/app/x$h;Landroid/util/SparseArray;I)Landroidx/fragment/app/x$h;
    move-result-object v5
  .line 27
    iput-object v0, v5, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;
  .line 28
    iput-boolean p3, v5, Landroidx/fragment/app/x$h;->e:Z
  .line 29
    iput-object p0, v5, Landroidx/fragment/app/x$h;->f:Landroidx/fragment/app/a;
  :L25
    if-nez p4, :L26
    if-eqz p1, :L26
    if-eqz v5, :L26
  .line 30
    iget-object p0, v5, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;
    if-ne p0, v0, :L26
  .line 31
    iput-object v2, v5, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;
  :L26
    return-void
.end method

.method public static c(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/a;",
      "Landroid/util/SparseArray<",
      "Landroidx/fragment/app/x$h;",
      ">;Z)V"
    }
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L1
  .line 2
    iget-object v3, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/w$a;
  .line 3
    invoke-static { p0, v3, p1, v1, p2 }, Landroidx/fragment/app/x;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/w$a;Landroid/util/SparseArray;ZZ)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return-void
.end method

.method private static d(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/a;",
      ">;",
      "Ljava/util/ArrayList<",
      "Ljava/lang/Boolean;",
      ">;II)",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 14
  .line 1
    new-instance v0, Lc/d/a;
    invoke-direct { v0 }, Lc/d/a;-><init>()V
    add-int/lit8 p4, p4, -1
  :L0
    if-lt p4, p3, :L8
  .line 2
    invoke-virtual { p1, p4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/a;
  .line 3
    invoke-virtual { v1, p0 }, Landroidx/fragment/app/a;->C(I)Z
    move-result v2
    if-nez v2, :L1
    goto :L7
  :L1
  .line 4
    invoke-virtual { p2, p4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Boolean;
    invoke-virtual { v2 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v2
  .line 5
    iget-object v3, v1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
    if-eqz v3, :L7
  .line 6
    invoke-virtual { v3 }, Ljava/util/ArrayList;->size()I
    move-result v3
    if-eqz v2, :L2
  .line 7
    iget-object v2, v1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
  .line 8
    iget-object v1, v1, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;
    goto :L3
  :L2
  .line 9
    iget-object v2, v1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
  .line 10
    iget-object v1, v1, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;
    move-object v8, v2
    move-object v2, v1
    move-object v1, v8
  :L3
    const/4 v4, 0
  :L4
    if-ge v4, v3, :L7
  .line 11
    invoke-virtual { v1, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/String;
  .line 12
    invoke-virtual { v2, v4 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/String;
  .line 13
    invoke-virtual { v0, v6 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/lang/String;
    if-eqz v7, :L5
  .line 14
    invoke-virtual { v0, v5, v7 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L6
  :L5
  .line 15
    invoke-virtual { v0, v5, v6 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L6
    add-int/lit8 v4, v4, 1
    goto :L4
  :L7
    add-int/lit8 p4, p4, -1
    goto :L0
  :L8
    return-object v0
.end method

.method public static e(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/a;",
      "Landroid/util/SparseArray<",
      "Landroidx/fragment/app/x$h;",
      ">;Z)V"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->n0()Landroidx/fragment/app/g;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/fragment/app/g;->d()Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
  :L1
    if-ltz v0, :L2
  .line 3
    iget-object v2, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v2, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroidx/fragment/app/w$a;
  .line 4
    invoke-static { p0, v2, p1, v1, p2 }, Landroidx/fragment/app/x;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/w$a;Landroid/util/SparseArray;ZZ)V
    add-int/lit8 v0, v0, -1
    goto :L1
  :L2
    return-void
.end method

.method static f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Z)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/Fragment;",
      "Landroidx/fragment/app/Fragment;",
      "Z",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;Z)V"
    }
  .end annotation
  .registers 8
    if-eqz p2, :L0
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->N()Landroidx/core/app/h;
    move-result-object p0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->N()Landroidx/core/app/h;
    move-result-object p0
  :L1
    if-eqz p0, :L6
  .line 3
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
  .line 4
    new-instance p2, Ljava/util/ArrayList;
    invoke-direct { p2 }, Ljava/util/ArrayList;-><init>()V
    const/4 v0, 0
    if-nez p3, :L2
    const/4 v1, 0
    goto :L3
  :L2
  .line 5
    invoke-virtual { p3 }, Lc/d/g;->size()I
    move-result v1
  :L3
    if-ge v0, v1, :L4
  .line 6
    invoke-virtual { p3, v0 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object v2
    invoke-virtual { p2, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 7
    invoke-virtual { p3, v0 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v2
    invoke-virtual { p1, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    add-int/lit8 v0, v0, 1
    goto :L3
  :L4
    const/4 p3, 0
    if-eqz p4, :L5
  .line 8
    invoke-virtual { p0, p2, p1, p3 }, Landroidx/core/app/h;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    goto :L6
  :L5
  .line 9
    invoke-virtual { p0, p2, p1, p3 }, Landroidx/core/app/h;->e(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
  :L6
    return-void
.end method

.method private static g(Landroidx/fragment/app/z;Ljava/util/List;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/z;",
      "Ljava/util/List<",
      "Ljava/lang/Object;",
      ">;)Z"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    invoke-interface { p1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    invoke-virtual { p0, v3 }, Landroidx/fragment/app/z;->e(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L1
    return v1
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    const/4 p0, 1
    return p0
.end method

.method static h(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;)Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/z;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;",
      "Ljava/lang/Object;",
      "Landroidx/fragment/app/x$h;",
      ")",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p3, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object v1
  .line 3
    invoke-virtual { p1 }, Lc/d/g;->isEmpty()Z
    move-result v2
    if-nez v2, :L9
    if-eqz p2, :L9
    if-nez v1, :L0
    goto :L9
  :L0
  .line 4
    new-instance p2, Lc/d/a;
    invoke-direct { p2 }, Lc/d/a;-><init>()V
  .line 5
    invoke-virtual { p0, p2, v1 }, Landroidx/fragment/app/z;->j(Ljava/util/Map;Landroid/view/View;)V
  .line 6
    iget-object p0, p3, Landroidx/fragment/app/x$h;->c:Landroidx/fragment/app/a;
  .line 7
    iget-boolean p3, p3, Landroidx/fragment/app/x$h;->b:Z
    if-eqz p3, :L1
  .line 8
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->Q()Landroidx/core/app/h;
    move-result-object p3
  .line 9
    iget-object p0, p0, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
    goto :L2
  :L1
  .line 10
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->N()Landroidx/core/app/h;
    move-result-object p3
  .line 11
    iget-object p0, p0, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;
  :L2
    if-eqz p0, :L3
  .line 12
    invoke-virtual { p2, p0 }, Lc/d/a;->o(Ljava/util/Collection;)Z
  .line 13
    invoke-virtual { p1 }, Lc/d/a;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-virtual { p2, v0 }, Lc/d/a;->o(Ljava/util/Collection;)Z
  :L3
    if-eqz p3, :L7
  .line 14
    invoke-virtual { p3, p0, p2 }, Landroidx/core/app/h;->c(Ljava/util/List;Ljava/util/Map;)V
  .line 15
    invoke-virtual { p0 }, Ljava/util/ArrayList;->size()I
    move-result p3
    add-int/lit8 p3, p3, -1
  :L4
    if-ltz p3, :L8
  .line 16
    invoke-virtual { p0, p3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 17
    invoke-virtual { p2, v0 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
    if-nez v1, :L5
  .line 18
    invoke-static { p1, v0 }, Landroidx/fragment/app/x;->q(Lc/d/a;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L6
  .line 19
    invoke-virtual { p1, v0 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    goto :L6
  :L5
  .line 20
    invoke-static { v1 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L6
  .line 21
    invoke-static { p1, v0 }, Landroidx/fragment/app/x;->q(Lc/d/a;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L6
  .line 22
    invoke-static { v1 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p1, v0, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L6
    add-int/lit8 p3, p3, -1
    goto :L4
  :L7
  .line 23
    invoke-static { p1, p2 }, Landroidx/fragment/app/x;->y(Lc/d/a;Lc/d/a;)V
  :L8
    return-object p2
  :L9
  .line 24
    invoke-virtual { p1 }, Lc/d/g;->clear()V
    const/4 p0, 0
    return-object p0
.end method

.method private static i(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;)Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/z;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;",
      "Ljava/lang/Object;",
      "Landroidx/fragment/app/x$h;",
      ")",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-virtual { p1 }, Lc/d/g;->isEmpty()Z
    move-result v0
    if-nez v0, :L9
    if-nez p2, :L0
    goto :L9
  :L0
  .line 2
    iget-object p2, p3, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;
  .line 3
    new-instance v0, Lc/d/a;
    invoke-direct { v0 }, Lc/d/a;-><init>()V
  .line 4
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->L1()Landroid/view/View;
    move-result-object v1
    invoke-virtual { p0, v0, v1 }, Landroidx/fragment/app/z;->j(Ljava/util/Map;Landroid/view/View;)V
  .line 5
    iget-object p0, p3, Landroidx/fragment/app/x$h;->f:Landroidx/fragment/app/a;
  .line 6
    iget-boolean p3, p3, Landroidx/fragment/app/x$h;->e:Z
    if-eqz p3, :L1
  .line 7
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->N()Landroidx/core/app/h;
    move-result-object p2
  .line 8
    iget-object p0, p0, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;
    goto :L2
  :L1
  .line 9
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->Q()Landroidx/core/app/h;
    move-result-object p2
  .line 10
    iget-object p0, p0, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
  :L2
    if-eqz p0, :L3
  .line 11
    invoke-virtual { v0, p0 }, Lc/d/a;->o(Ljava/util/Collection;)Z
  :L3
    if-eqz p2, :L7
  .line 12
    invoke-virtual { p2, p0, v0 }, Landroidx/core/app/h;->c(Ljava/util/List;Ljava/util/Map;)V
  .line 13
    invoke-virtual { p0 }, Ljava/util/ArrayList;->size()I
    move-result p2
    add-int/lit8 p2, p2, -1
  :L4
    if-ltz p2, :L8
  .line 14
    invoke-virtual { p0, p2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Ljava/lang/String;
  .line 15
    invoke-virtual { v0, p3 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
    if-nez v1, :L5
  .line 16
    invoke-virtual { p1, p3 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    goto :L6
  :L5
  .line 17
    invoke-static { v1 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { p3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L6
  .line 18
    invoke-virtual { p1, p3 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Ljava/lang/String;
  .line 19
    invoke-static { v1 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p1, v1, p3 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L6
    add-int/lit8 p2, p2, -1
    goto :L4
  :L7
  .line 20
    invoke-virtual { v0 }, Lc/d/a;->keySet()Ljava/util/Set;
    move-result-object p0
    invoke-virtual { p1, p0 }, Lc/d/a;->o(Ljava/util/Collection;)Z
  :L8
    return-object v0
  :L9
  .line 21
    invoke-virtual { p1 }, Lc/d/g;->clear()V
    const/4 p0, 0
    return-object p0
.end method

.method private static j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;
  .registers 4
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    if-eqz p0, :L2
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L0
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->e0()Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :L1
  .line 5
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
  .line 6
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->g0()Ljava/lang/Object;
    move-result-object p0
    if-eqz p0, :L2
  .line 7
    invoke-virtual { v0, p0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L2
    if-eqz p1, :L5
  .line 8
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->M()Ljava/lang/Object;
    move-result-object p0
    if-eqz p0, :L3
  .line 9
    invoke-virtual { v0, p0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L3
  .line 10
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->c0()Ljava/lang/Object;
    move-result-object p0
    if-eqz p0, :L4
  .line 11
    invoke-virtual { v0, p0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L4
  .line 12
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->f0()Ljava/lang/Object;
    move-result-object p0
    if-eqz p0, :L5
  .line 13
    invoke-virtual { v0, p0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L5
  .line 14
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result p0
    const/4 p1, 0
    if-eqz p0, :L6
    return-object p1
  :L6
  .line 15
    sget-object p0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;
    if-eqz p0, :L7
    invoke-static { p0, v0 }, Landroidx/fragment/app/x;->g(Landroidx/fragment/app/z;Ljava/util/List;)Z
    move-result p0
    if-eqz p0, :L7
  .line 16
    sget-object p0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;
    return-object p0
  :L7
  .line 17
    sget-object p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;
    if-eqz p0, :L8
    invoke-static { p0, v0 }, Landroidx/fragment/app/x;->g(Landroidx/fragment/app/z;Ljava/util/List;)Z
    move-result p0
    if-eqz p0, :L8
  .line 18
    sget-object p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;
    return-object p0
  :L8
  .line 19
    sget-object p0, Landroidx/fragment/app/x;->b:Landroidx/fragment/app/z;
    if-nez p0, :L9
    sget-object p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/z;
    if-nez p0, :L9
    return-object p1
  :L9
  .line 20
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "Invalid Transition types"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method static k(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/z;",
      "Ljava/lang/Object;",
      "Landroidx/fragment/app/Fragment;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Landroid/view/View;",
      ")",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
  .registers 6
    if-eqz p1, :L2
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object p2
    if-eqz p2, :L0
  .line 3
    invoke-virtual { p0, v0, p2 }, Landroidx/fragment/app/z;->f(Ljava/util/ArrayList;Landroid/view/View;)V
  :L0
    if-eqz p3, :L1
  .line 4
    invoke-virtual { v0, p3 }, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
  :L1
  .line 5
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result p2
    if-nez p2, :L3
  .line 6
    invoke-virtual { v0, p4 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 7
    invoke-virtual { p0, p1, v0 }, Landroidx/fragment/app/z;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return-object v0
.end method

.method private static l(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/z;",
      "Landroid/view/ViewGroup;",
      "Landroid/view/View;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;",
      "Landroidx/fragment/app/x$h;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/lang/Object;",
      "Ljava/lang/Object;",
      ")",
      "Ljava/lang/Object;"
    }
  .end annotation
  .registers 26
    move-object/from16 v6, p0
    move-object/from16 v7, p4
    move-object/from16 v10, p5
    move-object/from16 v11, p7
  .line 1
    iget-object v8, v7, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;
  .line 2
    iget-object v9, v7, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;
    const/4 v0, 0
    if-eqz v8, :L8
    if-nez v9, :L0
    goto/16 :L8
  :L0
  .line 3
    iget-boolean v12, v7, Landroidx/fragment/app/x$h;->b:Z
  .line 4
    invoke-virtual/range { p3 .. p3 }, Lc/d/g;->isEmpty()Z
    move-result v1
    if-eqz v1, :L1
    move-object/from16 v13, p3
    move-object v1, v0
    goto :L2
  :L1
  .line 5
    invoke-static { v6, v8, v9, v12 }, Landroidx/fragment/app/x;->u(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    move-result-object v1
    move-object/from16 v13, p3
  :L2
  .line 6
    invoke-static { v6, v13, v1, v7 }, Landroidx/fragment/app/x;->i(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;)Lc/d/a;
    move-result-object v3
  .line 7
    invoke-virtual/range { p3 .. p3 }, Lc/d/g;->isEmpty()Z
    move-result v2
    if-eqz v2, :L3
    move-object v14, v0
    goto :L4
  :L3
  .line 8
    invoke-virtual { v3 }, Lc/d/a;->values()Ljava/util/Collection;
    move-result-object v2
    invoke-virtual { v10, v2 }, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    move-object v14, v1
  :L4
    if-nez v11, :L5
    if-nez p8, :L5
    if-nez v14, :L5
    return-object v0
  :L5
    const/4 v1, 1
  .line 9
    invoke-static { v8, v9, v12, v3, v1 }, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Z)V
    if-eqz v14, :L6
  .line 10
    new-instance v15, Landroid/graphics/Rect;
    invoke-direct { v15 }, Landroid/graphics/Rect;-><init>()V
    move-object/from16 v5, p2
  .line 11
    invoke-virtual { v6, v14, v5, v10 }, Landroidx/fragment/app/z;->z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
  .line 12
    iget-boolean v4, v7, Landroidx/fragment/app/x$h;->e:Z
  .line 13
    iget-object v2, v7, Landroidx/fragment/app/x$h;->f:Landroidx/fragment/app/a;
    move-object/from16 v0, p0
    move-object v1, v14
    move-object/from16 v16, v2
    move-object/from16 v2, p8
    move-object/from16 v5, v16
  .line 14
    invoke-static/range { v0 .. v5 }, Landroidx/fragment/app/x;->A(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Lc/d/a;ZLandroidx/fragment/app/a;)V
    if-eqz v11, :L7
  .line 15
    invoke-virtual { v6, v11, v15 }, Landroidx/fragment/app/z;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V
    goto :L7
  :L6
    move-object v15, v0
  :L7
  .line 16
    new-instance v5, Landroidx/fragment/app/x$f;
    move-object v0, v5
    move-object/from16 v1, p0
    move-object/from16 v2, p3
    move-object v3, v14
    move-object/from16 v4, p4
    move-object v13, v5
    move-object/from16 v5, p6
    move-object/from16 v6, p2
    move-object v7, v8
    move-object v8, v9
    move v9, v12
    move-object/from16 v10, p5
    move-object/from16 v11, p7
    move-object v12, v15
    invoke-direct/range { v0 .. v12 }, Landroidx/fragment/app/x$f;-><init>(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    move-object/from16 v0, p1
    invoke-static { v0, v13 }, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
    return-object v14
  :L8
    return-object v0
.end method

.method private static m(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/z;",
      "Landroid/view/ViewGroup;",
      "Landroid/view/View;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;",
      "Landroidx/fragment/app/x$h;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/lang/Object;",
      "Ljava/lang/Object;",
      ")",
      "Ljava/lang/Object;"
    }
  .end annotation
  .registers 24
    move-object v6, p0
    move-object/from16 v0, p2
    move-object/from16 v1, p3
    move-object/from16 v7, p4
    move-object/from16 v2, p5
    move-object/from16 v3, p6
    move-object/from16 v8, p7
  .line 1
    iget-object v9, v7, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;
  .line 2
    iget-object v10, v7, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;
    if-eqz v9, :L0
  .line 3
    invoke-virtual { v9 }, Landroidx/fragment/app/Fragment;->L1()Landroid/view/View;
    move-result-object v4
    const/4 v5, 0
    invoke-virtual { v4, v5 }, Landroid/view/View;->setVisibility(I)V
  :L0
    const/4 v4, 0
    if-eqz v9, :L12
    if-nez v10, :L1
    goto/16 :L12
  :L1
  .line 4
    iget-boolean v11, v7, Landroidx/fragment/app/x$h;->b:Z
  .line 5
    invoke-virtual/range { p3 .. p3 }, Lc/d/g;->isEmpty()Z
    move-result v5
    if-eqz v5, :L2
    move-object v5, v4
    goto :L3
  :L2
  .line 6
    invoke-static { p0, v9, v10, v11 }, Landroidx/fragment/app/x;->u(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    move-result-object v5
  :L3
  .line 7
    invoke-static { p0, v1, v5, v7 }, Landroidx/fragment/app/x;->i(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;)Lc/d/a;
    move-result-object v12
  .line 8
    invoke-static { p0, v1, v5, v7 }, Landroidx/fragment/app/x;->h(Landroidx/fragment/app/z;Lc/d/a;Ljava/lang/Object;Landroidx/fragment/app/x$h;)Lc/d/a;
    move-result-object v13
  .line 9
    invoke-virtual/range { p3 .. p3 }, Lc/d/g;->isEmpty()Z
    move-result v14
    if-eqz v14, :L6
    if-eqz v12, :L4
  .line 10
    invoke-virtual { v12 }, Lc/d/g;->clear()V
  :L4
    if-eqz v13, :L5
  .line 11
    invoke-virtual { v13 }, Lc/d/g;->clear()V
  :L5
    move-object v14, v4
    goto :L7
  :L6
  .line 12
    invoke-virtual/range { p3 .. p3 }, Lc/d/a;->keySet()Ljava/util/Set;
    move-result-object v14
  .line 13
    invoke-static { v2, v12, v14 }, Landroidx/fragment/app/x;->a(Ljava/util/ArrayList;Lc/d/a;Ljava/util/Collection;)V
  .line 14
    invoke-virtual/range { p3 .. p3 }, Lc/d/a;->values()Ljava/util/Collection;
    move-result-object v1
  .line 15
    invoke-static { v3, v13, v1 }, Landroidx/fragment/app/x;->a(Ljava/util/ArrayList;Lc/d/a;Ljava/util/Collection;)V
    move-object v14, v5
  :L7
    if-nez v8, :L8
    if-nez p8, :L8
    if-nez v14, :L8
    return-object v4
  :L8
    const/4 v1, 1
  .line 16
    invoke-static { v9, v10, v11, v12, v1 }, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Z)V
    if-eqz v14, :L10
  .line 17
    invoke-virtual { v3, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 18
    invoke-virtual { p0, v14, v0, v2 }, Landroidx/fragment/app/z;->z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
  .line 19
    iget-boolean v4, v7, Landroidx/fragment/app/x$h;->e:Z
  .line 20
    iget-object v5, v7, Landroidx/fragment/app/x$h;->f:Landroidx/fragment/app/a;
    move-object v0, p0
    move-object v1, v14
    move-object/from16 v2, p8
    move-object v3, v12
  .line 21
    invoke-static/range { v0 .. v5 }, Landroidx/fragment/app/x;->A(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Lc/d/a;ZLandroidx/fragment/app/a;)V
  .line 22
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
  .line 23
    invoke-static { v13, v7, v8, v11 }, Landroidx/fragment/app/x;->t(Lc/d/a;Landroidx/fragment/app/x$h;Ljava/lang/Object;Z)Landroid/view/View;
    move-result-object v1
    if-eqz v1, :L9
  .line 24
    invoke-virtual { p0, v8, v0 }, Landroidx/fragment/app/z;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V
  :L9
    move-object v7, v0
    move-object v5, v1
    goto :L11
  :L10
    move-object v5, v4
    move-object v7, v5
  :L11
  .line 25
    new-instance v8, Landroidx/fragment/app/x$e;
    move-object v0, v8
    move-object v1, v9
    move-object v2, v10
    move v3, v11
    move-object v4, v13
    move-object v6, p0
    invoke-direct/range { v0 .. v7 }, Landroidx/fragment/app/x$e;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Landroid/view/View;Landroidx/fragment/app/z;Landroid/graphics/Rect;)V
    move-object/from16 v0, p1
    invoke-static { v0, v8 }, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
    return-object v14
  :L12
    return-object v4
.end method

.method private static n(Landroid/view/ViewGroup;Landroidx/fragment/app/x$h;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$g;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/ViewGroup;",
      "Landroidx/fragment/app/x$h;",
      "Landroid/view/View;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;",
      "Landroidx/fragment/app/x$g;",
      ")V"
    }
  .end annotation
  .registers 25
    move-object/from16 v9, p0
    move-object/from16 v10, p1
    move-object/from16 v11, p2
    move-object/from16 v12, p3
    move-object/from16 v13, p4
  .line 1
    iget-object v14, v10, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;
  .line 2
    iget-object v15, v10, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;
  .line 3
    invoke-static { v15, v14 }, Landroidx/fragment/app/x;->j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;
    move-result-object v8
    if-nez v8, :L0
    return-void
  :L0
  .line 4
    iget-boolean v0, v10, Landroidx/fragment/app/x$h;->b:Z
  .line 5
    iget-boolean v1, v10, Landroidx/fragment/app/x$h;->e:Z
  .line 6
    invoke-static { v8, v14, v0 }, Landroidx/fragment/app/x;->r(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    move-result-object v7
  .line 7
    invoke-static { v8, v15, v1 }, Landroidx/fragment/app/x;->s(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    move-result-object v6
  .line 8
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct { v5 }, Ljava/util/ArrayList;-><init>()V
  .line 9
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct { v4 }, Ljava/util/ArrayList;-><init>()V
    move-object v0, v8
    move-object/from16 v1, p0
    move-object/from16 v2, p2
    move-object/from16 v3, p3
    move-object/from16 v16, v4
    move-object/from16 v4, p1
    move-object/from16 v17, v5
    move-object/from16 v18, v6
    move-object/from16 v6, v16
    move-object/from16 v19, v7
    move-object v9, v8
    move-object/from16 v8, v18
  .line 10
    invoke-static/range { v0 .. v8 }, Landroidx/fragment/app/x;->l(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    move-object/from16 v8, v19
    if-nez v8, :L1
    if-nez v6, :L1
    move-object/from16 v0, v18
    if-nez v0, :L2
    return-void
  :L1
    move-object/from16 v0, v18
  :L2
    move-object/from16 v7, v17
  .line 11
    invoke-static { v9, v0, v15, v7, v11 }, Landroidx/fragment/app/x;->k(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    move-result-object v17
    if-eqz v17, :L3
  .line 12
    invoke-virtual/range { v17 .. v17 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-eqz v1, :L4
  :L3
    const/4 v0, 0
  :L4
    move-object/from16 v18, v0
  .line 13
    invoke-virtual { v9, v8, v11 }, Landroidx/fragment/app/z;->a(Ljava/lang/Object;Landroid/view/View;)V
  .line 14
    iget-boolean v5, v10, Landroidx/fragment/app/x$h;->b:Z
    move-object v0, v9
    move-object v1, v8
    move-object/from16 v2, v18
    move-object v3, v6
    move-object v4, v14
    invoke-static/range { v0 .. v5 }, Landroidx/fragment/app/x;->v(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    move-result-object v10
    if-eqz v15, :L6
    if-eqz v17, :L6
  .line 15
    invoke-virtual/range { v17 .. v17 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-gtz v0, :L5
    invoke-virtual { v7 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L6
  :L5
  .line 16
    new-instance v0, Lc/g/g/b;
    invoke-direct { v0 }, Lc/g/g/b;-><init>()V
  .line 17
    invoke-interface { v13, v15, v0 }, Landroidx/fragment/app/x$g;->b(Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
  .line 18
    new-instance v1, Landroidx/fragment/app/x$c;
    invoke-direct { v1, v13, v15, v0 }, Landroidx/fragment/app/x$c;-><init>(Landroidx/fragment/app/x$g;Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
    invoke-virtual { v9, v15, v10, v0, v1 }, Landroidx/fragment/app/z;->w(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lc/g/g/b;Ljava/lang/Runnable;)V
  :L6
    if-eqz v10, :L7
  .line 19
    new-instance v13, Ljava/util/ArrayList;
    invoke-direct { v13 }, Ljava/util/ArrayList;-><init>()V
    move-object v0, v9
    move-object v1, v10
    move-object v2, v8
    move-object v3, v13
    move-object/from16 v4, v18
    move-object/from16 v5, v17
    move-object/from16 v7, v16
  .line 20
    invoke-virtual/range { v0 .. v7 }, Landroidx/fragment/app/z;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    move-object/from16 v1, p0
    move-object v2, v14
    move-object/from16 v3, p2
    move-object/from16 v4, v16
    move-object v5, v8
    move-object v6, v13
    move-object/from16 v7, v18
    move-object/from16 v8, v17
  .line 21
    invoke-static/range { v0 .. v8 }, Landroidx/fragment/app/x;->z(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    move-object/from16 v0, p0
    move-object v1, v9
    move-object/from16 v2, v16
  .line 22
    invoke-virtual { v1, v0, v2, v12 }, Landroidx/fragment/app/z;->x(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
  .line 23
    invoke-virtual { v1, v0, v10 }, Landroidx/fragment/app/z;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
  .line 24
    invoke-virtual { v1, v0, v2, v12 }, Landroidx/fragment/app/z;->s(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
  :L7
    return-void
.end method

.method private static o(Landroid/view/ViewGroup;Landroidx/fragment/app/x$h;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$g;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/ViewGroup;",
      "Landroidx/fragment/app/x$h;",
      "Landroid/view/View;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;",
      "Landroidx/fragment/app/x$g;",
      ")V"
    }
  .end annotation
  .registers 22
    move-object/from16 v4, p1
    move-object/from16 v9, p2
    move-object/from16 v10, p4
  .line 1
    iget-object v11, v4, Landroidx/fragment/app/x$h;->a:Landroidx/fragment/app/Fragment;
  .line 2
    iget-object v12, v4, Landroidx/fragment/app/x$h;->d:Landroidx/fragment/app/Fragment;
  .line 3
    invoke-static { v12, v11 }, Landroidx/fragment/app/x;->j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;
    move-result-object v13
    if-nez v13, :L0
    return-void
  :L0
  .line 4
    iget-boolean v14, v4, Landroidx/fragment/app/x$h;->b:Z
  .line 5
    iget-boolean v0, v4, Landroidx/fragment/app/x$h;->e:Z
  .line 6
    new-instance v15, Ljava/util/ArrayList;
    invoke-direct { v15 }, Ljava/util/ArrayList;-><init>()V
  .line 7
    new-instance v8, Ljava/util/ArrayList;
    invoke-direct { v8 }, Ljava/util/ArrayList;-><init>()V
  .line 8
    invoke-static { v13, v11, v14 }, Landroidx/fragment/app/x;->r(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    move-result-object v7
  .line 9
    invoke-static { v13, v12, v0 }, Landroidx/fragment/app/x;->s(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    move-result-object v6
    move-object v0, v13
    move-object/from16 v1, p0
    move-object/from16 v2, p2
    move-object/from16 v3, p3
    move-object/from16 v4, p1
    move-object v5, v8
    move-object/from16 p1, v6
    move-object v6, v15
    move-object/from16 v16, v7
    move-object v10, v8
    move-object/from16 v8, p1
  .line 10
    invoke-static/range { v0 .. v8 }, Landroidx/fragment/app/x;->m(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroid/view/View;Lc/d/a;Landroidx/fragment/app/x$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v8
    move-object/from16 v6, v16
    if-nez v6, :L1
    if-nez v8, :L1
    move-object/from16 v7, p1
    if-nez v7, :L2
    return-void
  :L1
    move-object/from16 v7, p1
  :L2
  .line 11
    invoke-static { v13, v7, v12, v10, v9 }, Landroidx/fragment/app/x;->k(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    move-result-object v5
  .line 12
    invoke-static { v13, v6, v11, v15, v9 }, Landroidx/fragment/app/x;->k(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    move-result-object v9
    const/4 v0, 4
  .line 13
    invoke-static { v9, v0 }, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;I)V
    move-object v0, v13
    move-object v1, v6
    move-object v2, v7
    move-object v3, v8
    move-object v4, v11
    move-object v11, v5
    move v5, v14
  .line 14
    invoke-static/range { v0 .. v5 }, Landroidx/fragment/app/x;->v(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    move-result-object v14
    if-eqz v12, :L4
    if-eqz v11, :L4
  .line 15
    invoke-virtual { v11 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-gtz v0, :L3
    invoke-virtual { v10 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L4
  :L3
  .line 16
    new-instance v0, Lc/g/g/b;
    invoke-direct { v0 }, Lc/g/g/b;-><init>()V
    move-object/from16 v1, p4
  .line 17
    invoke-interface { v1, v12, v0 }, Landroidx/fragment/app/x$g;->b(Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
  .line 18
    new-instance v2, Landroidx/fragment/app/x$a;
    invoke-direct { v2, v1, v12, v0 }, Landroidx/fragment/app/x$a;-><init>(Landroidx/fragment/app/x$g;Landroidx/fragment/app/Fragment;Lc/g/g/b;)V
    invoke-virtual { v13, v12, v14, v0, v2 }, Landroidx/fragment/app/z;->w(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lc/g/g/b;Ljava/lang/Runnable;)V
  :L4
    if-eqz v14, :L5
  .line 19
    invoke-static { v13, v7, v12, v11 }, Landroidx/fragment/app/x;->w(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
  .line 20
    invoke-virtual { v13, v15 }, Landroidx/fragment/app/z;->o(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    move-result-object v12
    move-object v0, v13
    move-object v1, v14
    move-object v2, v6
    move-object v3, v9
    move-object v4, v7
    move-object v5, v11
    move-object v6, v8
    move-object v7, v15
  .line 21
    invoke-virtual/range { v0 .. v7 }, Landroidx/fragment/app/z;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    move-object/from16 v1, p0
  .line 22
    invoke-virtual { v13, v1, v14 }, Landroidx/fragment/app/z;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    move-object v2, v10
    move-object v3, v15
    move-object v4, v12
    move-object/from16 v5, p3
  .line 23
    invoke-virtual/range { v0 .. v5 }, Landroidx/fragment/app/z;->y(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    const/4 v0, 0
  .line 24
    invoke-static { v9, v0 }, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;I)V
  .line 25
    invoke-virtual { v13, v8, v10, v15 }, Landroidx/fragment/app/z;->A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  :L5
    return-void
.end method

.method private static p(Landroidx/fragment/app/x$h;Landroid/util/SparseArray;I)Landroidx/fragment/app/x$h;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/x$h;",
      "Landroid/util/SparseArray<",
      "Landroidx/fragment/app/x$h;",
      ">;I)",
      "Landroidx/fragment/app/x$h;"
    }
  .end annotation
  .registers 3
    if-nez p0, :L0
  .line 1
    new-instance p0, Landroidx/fragment/app/x$h;
    invoke-direct { p0 }, Landroidx/fragment/app/x$h;-><init>()V
  .line 2
    invoke-virtual { p1, p2, p0 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
  :L0
    return-object p0
.end method

.method static q(Lc/d/a;Ljava/lang/String;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;",
      "Ljava/lang/String;",
      ")",
      "Ljava/lang/String;"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lc/d/g;->size()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L2
  .line 2
    invoke-virtual { p0, v1 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v2
    invoke-virtual { p1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L1
  .line 3
    invoke-virtual { p0, v1 }, Lc/d/g;->i(I)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/String;
    return-object p0
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    const/4 p0, 0
    return-object p0
.end method

.method private static r(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
  .registers 3
    if-nez p1, :L0
    const/4 p0, 0
    return-object p0
  :L0
    if-eqz p2, :L1
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->c0()Ljava/lang/Object;
    move-result-object p1
    goto :L2
  :L1
  .line 2
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->M()Ljava/lang/Object;
    move-result-object p1
  :L2
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/z;->g(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    return-object p0
.end method

.method private static s(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
  .registers 3
    if-nez p1, :L0
    const/4 p0, 0
    return-object p0
  :L0
    if-eqz p2, :L1
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->e0()Ljava/lang/Object;
    move-result-object p1
    goto :L2
  :L1
  .line 2
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;
    move-result-object p1
  :L2
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/z;->g(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    return-object p0
.end method

.method static t(Lc/d/a;Landroidx/fragment/app/x$h;Ljava/lang/Object;Z)Landroid/view/View;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;",
      "Landroidx/fragment/app/x$h;",
      "Ljava/lang/Object;",
      "Z)",
      "Landroid/view/View;"
    }
  .end annotation
  .registers 4
  .line 1
    iget-object p1, p1, Landroidx/fragment/app/x$h;->c:Landroidx/fragment/app/a;
    if-eqz p2, :L2
    if-eqz p0, :L2
  .line 2
    iget-object p2, p1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
    if-eqz p2, :L2
  .line 3
    invoke-virtual { p2 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result p2
    if-nez p2, :L2
    const/4 p2, 0
    if-eqz p3, :L0
  .line 4
    iget-object p1, p1, Landroidx/fragment/app/w;->n:Ljava/util/ArrayList;
    invoke-virtual { p1, p2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/String;
    goto :L1
  :L0
  .line 5
    iget-object p1, p1, Landroidx/fragment/app/w;->o:Ljava/util/ArrayList;
    invoke-virtual { p1, p2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/String;
  :L1
  .line 6
    invoke-virtual { p0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/view/View;
    return-object p0
  :L2
    const/4 p0, 0
    return-object p0
.end method

.method private static u(Landroidx/fragment/app/z;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
  .registers 4
    if-eqz p1, :L3
    if-nez p2, :L0
    goto :L3
  :L0
    if-eqz p3, :L1
  .line 1
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->g0()Ljava/lang/Object;
    move-result-object p1
    goto :L2
  :L1
  .line 2
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->f0()Ljava/lang/Object;
    move-result-object p1
  :L2
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/z;->g(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/z;->B(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    return-object p0
  :L3
    const/4 p0, 0
    return-object p0
.end method

.method private static v(Landroidx/fragment/app/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
  .registers 6
    if-eqz p1, :L1
    if-eqz p2, :L1
    if-eqz p4, :L1
    if-eqz p5, :L0
  .line 1
    invoke-virtual { p4 }, Landroidx/fragment/app/Fragment;->F()Z
    move-result p4
    goto :L2
  :L0
  .line 2
    invoke-virtual { p4 }, Landroidx/fragment/app/Fragment;->E()Z
    move-result p4
    goto :L2
  :L1
    const/4 p4, 1
  :L2
    if-eqz p4, :L3
  .line 3
    invoke-virtual { p0, p2, p1, p3 }, Landroidx/fragment/app/z;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    goto :L4
  :L3
  .line 4
    invoke-virtual { p0, p2, p1, p3 }, Landroidx/fragment/app/z;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
  :L4
    return-object p0
.end method

.method private static w(Landroidx/fragment/app/z;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/z;",
      "Ljava/lang/Object;",
      "Landroidx/fragment/app/Fragment;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
  .registers 5
    if-eqz p2, :L0
    if-eqz p1, :L0
  .line 1
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->m:Z
    if-eqz v0, :L0
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->A:Z
    if-eqz v0, :L0
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->N:Z
    if-eqz v0, :L0
    const/4 v0, 1
  .line 2
    invoke-virtual { p2, v0 }, Landroidx/fragment/app/Fragment;->U1(Z)V
  .line 3
    invoke-virtual { p2 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object v0
  .line 4
    invoke-virtual { p0, p1, v0, p3 }, Landroidx/fragment/app/z;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
  .line 5
    iget-object p0, p2, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
  .line 6
    new-instance p1, Landroidx/fragment/app/x$b;
    invoke-direct { p1, p3 }, Landroidx/fragment/app/x$b;-><init>(Ljava/util/ArrayList;)V
    invoke-static { p0, p1 }, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
  :L0
    return-void
.end method

.method private static x()Landroidx/fragment/app/z;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  :L0
    const-string v0, "c.p.e"
  .line 1
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    const/4 v1, 0
    new-array v2, v1, [Ljava/lang/Class;
  .line 2
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v0
    new-array v1, v1, [Ljava/lang/Object;
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/z;
  :L1
    return-object v0
  :L2
    const/4 v0, 0
    return-object v0
.end method

.method static y(Lc/d/a;Lc/d/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lc/d/g;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    invoke-virtual { p0, v0 }, Lc/d/g;->m(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
  .line 3
    invoke-virtual { p1, v1 }, Lc/d/g;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L1
  .line 4
    invoke-virtual { p0, v0 }, Lc/d/g;->k(I)Ljava/lang/Object;
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    return-void
.end method

.method private static z(Landroidx/fragment/app/z;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/fragment/app/z;",
      "Landroid/view/ViewGroup;",
      "Landroidx/fragment/app/Fragment;",
      "Landroid/view/View;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/lang/Object;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Ljava/lang/Object;",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;)V"
    }
  .end annotation
  .registers 19
  .line 1
    new-instance v9, Landroidx/fragment/app/x$d;
    move-object v0, v9
    move-object v1, p5
    move-object v2, p0
    move-object v3, p3
    move-object v4, p2
    move-object v5, p4
    move-object/from16 v6, p6
    move-object/from16 v7, p8
    move-object/from16 v8, p7
    invoke-direct/range { v0 .. v8 }, Landroidx/fragment/app/x$d;-><init>(Ljava/lang/Object;Landroidx/fragment/app/z;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    move-object v0, p1
    invoke-static { p1, v9 }, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
    return-void
.end method
