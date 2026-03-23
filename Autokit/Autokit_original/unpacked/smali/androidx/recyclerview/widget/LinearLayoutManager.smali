.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.implements Landroidx/recyclerview/widget/RecyclerView$y$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/LinearLayoutManager$b;,
    Landroidx/recyclerview/widget/LinearLayoutManager$a;,
    Landroidx/recyclerview/widget/LinearLayoutManager$d;,
    Landroidx/recyclerview/widget/LinearLayoutManager$c;
  }
.end annotation

.field A:I

.field B:I

.field private C:Z

.field D:Landroidx/recyclerview/widget/LinearLayoutManager$d;

.field final E:Landroidx/recyclerview/widget/LinearLayoutManager$a;

.field private final F:Landroidx/recyclerview/widget/LinearLayoutManager$b;

.field private G:I

.field private H:[I

.field s:I

.field private t:Landroidx/recyclerview/widget/LinearLayoutManager$c;

.field u:Landroidx/recyclerview/widget/i;

.field private v:Z

.field private w:Z

.field x:Z

.field private y:Z

.field private z:Z

.method public constructor <init>(Landroid/content/Context;)V
  .registers 4
    const/4 v0, 1
    const/4 v1, 0
  .line 1
    invoke-direct { p0, p1, v0, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
  .registers 5
  .line 2
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V
    const/4 p1, 1
  .line 3
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z
  .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
  .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z
  .line 7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    const/4 p1, -1
  .line 8
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    const/high16 p1, -32768
  .line 9
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
    const/4 p1, 0
  .line 10
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
  .line 11
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;
    invoke-direct { p1 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
  .line 12
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$b;
    invoke-direct { p1 }, Landroidx/recyclerview/widget/LinearLayoutManager$b;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->F:Landroidx/recyclerview/widget/LinearLayoutManager$b;
    const/4 p1, 2
  .line 13
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->G:I
    new-array p1, p1, [I
  .line 14
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->H:[I
  .line 15
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->C2(I)V
  .line 16
    invoke-virtual { p0, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->D2(Z)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
  .registers 7
  .line 17
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V
    const/4 v0, 1
  .line 18
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v1, 0
  .line 19
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z
  .line 20
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
  .line 21
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z
  .line 22
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    const/4 v0, -1
  .line 23
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    const/high16 v0, -32768
  .line 24
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
    const/4 v0, 0
  .line 25
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
  .line 26
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
  .line 27
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$b;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$b;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->F:Landroidx/recyclerview/widget/LinearLayoutManager$b;
    const/4 v0, 2
  .line 28
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->G:I
    new-array v0, v0, [I
  .line 29
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->H:[I
  .line 30
    invoke-static { p1, p2, p3, p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->i0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$n$d;
    move-result-object p1
  .line 31
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$n$d;->a:I
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->C2(I)V
  .line 32
    iget-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$n$d;->c:Z
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->D2(Z)V
  .line 33
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$n$d;->d:Z
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->E2(Z)V
    return-void
.end method

.method private A2()V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v1, 1
    if-eq v0, v1, :L1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->q2()Z
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z
    xor-int/2addr v0, v1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    goto :L2
  :L1
  .line 3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
  :L2
    return-void
.end method

.method private F2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->V()Landroid/view/View;
    move-result-object v0
    const/4 v2, 1
    if-eqz v0, :L1
  .line 3
    invoke-virtual { p3, v0, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$z;)Z
    move-result v3
    if-eqz v3, :L1
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p1
    invoke-virtual { p3, v0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c(Landroid/view/View;I)V
    return v2
  :L1
  .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z
    if-eq v0, v3, :L2
    return v1
  :L2
  .line 6
    iget-boolean v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    if-eqz v0, :L3
  .line 7
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->i2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
    move-result-object p1
    goto :L4
  :L3
  .line 8
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->j2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
    move-result-object p1
  :L4
    if-eqz p1, :L10
  .line 9
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v0
    invoke-virtual { p3, p1, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b(Landroid/view/View;I)V
  .line 10
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result p2
    if-nez p2, :L9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->L1()Z
    move-result p2
    if-eqz p2, :L9
  .line 11
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 12
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 13
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    if-ge p2, v0, :L5
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 14
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p1
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 15
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p2
    if-ge p1, p2, :L6
  :L5
    const/4 v1, 1
  :L6
    if-eqz v1, :L9
  .line 16
    iget-boolean p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    if-eqz p1, :L7
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 17
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result p1
    goto :L8
  :L7
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 18
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p1
  :L8
    iput p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
  :L9
    return v2
  :L10
    return v1
.end method

.method private G2(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L20
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    const/4 v2, -1
    if-ne v0, v2, :L0
    goto/16 :L20
  :L0
    const/high16 v3, -32768
    if-ltz v0, :L19
  .line 2
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    if-lt v0, p1, :L1
    goto/16 :L19
  :L1
  .line 3
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    const/4 v0, 1
    if-eqz p1, :L4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/LinearLayoutManager$d;->j()Z
    move-result p1
    if-eqz p1, :L4
  .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    iget-boolean p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->d:Z
    iput-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    if-eqz p1, :L2
  .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result p1
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:I
    sub-int/2addr p1, v1
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    goto :L3
  :L2
  .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p1
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:I
    add-int/2addr p1, v1
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
  :L3
    return v0
  :L4
  .line 8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
    if-ne p1, v3, :L16
  .line 9
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->C(I)Landroid/view/View;
    move-result-object p1
    if-eqz p1, :L10
  .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v2
  .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/i;->n()I
    move-result v3
    if-le v2, v3, :L5
  .line 12
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V
    return v0
  :L5
  .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v2
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 14
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v3
    sub-int/2addr v2, v3
    if-gez v2, :L6
  .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p1
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
  .line 16
    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    return v0
  :L6
  .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v1
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 18
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v2
    sub-int/2addr v1, v2
    if-gez v1, :L7
  .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result p1
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
  .line 20
    iput-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    return v0
  :L7
  .line 21
    iget-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    if-eqz v1, :L8
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 22
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p1
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 23
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->o()I
    move-result v1
    add-int/2addr p1, v1
    goto :L9
  :L8
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 24
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p1
  :L9
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    goto :L15
  :L10
  .line 25
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result p1
    if-lez p1, :L14
  .line 26
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result p1
  .line 27
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    if-ge v2, p1, :L11
    const/4 p1, 1
    goto :L12
  :L11
    const/4 p1, 0
  :L12
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-ne p1, v2, :L13
    const/4 v1, 1
  :L13
    iput-boolean v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
  :L14
  .line 28
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V
  :L15
    return v0
  :L16
  .line 29
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    iput-boolean p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    if-eqz p1, :L17
  .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result p1
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
    sub-int/2addr p1, v1
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    goto :L18
  :L17
  .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p1
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
    add-int/2addr p1, v1
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
  :L18
    return v0
  :L19
  .line 32
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
  .line 33
    iput v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
  :L20
    return v1
.end method

.method private H2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
  .registers 5
  .line 1
    invoke-direct { p0, p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->G2(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->F2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;)Z
    move-result p1
    if-eqz p1, :L1
    return-void
  :L1
  .line 3
    invoke-virtual { p3 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V
  .line 4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z
    if-eqz p1, :L2
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    add-int/lit8 p1, p1, -1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    iput p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
    return-void
.end method

.method private I2(IIZLandroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->z2()Z
    move-result v1
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->H:[I
    const/4 v1, 0
    aput v1, v0, v1
    const/4 v2, 1
  .line 4
    aput v1, v0, v2
  .line 5
    invoke-virtual { p0, p4, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->M1(Landroidx/recyclerview/widget/RecyclerView$z;[I)V
  .line 6
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->H:[I
    aget p4, p4, v1
    invoke-static { v1, p4 }, Ljava/lang/Math;->max(II)I
    move-result p4
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->H:[I
    aget v0, v0, v2
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    if-ne p1, v2, :L0
    const/4 v1, 1
  :L0
  .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    if-eqz v1, :L1
    move v3, v0
    goto :L2
  :L1
    move v3, p4
  :L2
    iput v3, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    if-eqz v1, :L3
    goto :L4
  :L3
    move p4, v0
  :L4
    iput p4, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I
    const/4 p1, -1
    if-eqz v1, :L6
  .line 10
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->j()I
    move-result v1
    add-int/2addr v0, v1
    iput v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 11
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->m2()Landroid/view/View;
    move-result-object p4
  .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v1, :L5
    const/4 v2, -1
  :L5
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
  .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    invoke-virtual { p0, p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v0
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
    add-int/2addr v0, v2
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  .line 14
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1, p4 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p1
    iput p1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1, p4 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p1
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 16
    invoke-virtual { p4 }, Landroidx/recyclerview/widget/i;->i()I
    move-result p4
    sub-int/2addr p1, p4
    goto :L9
  :L6
  .line 17
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->n2()Landroid/view/View;
    move-result-object p4
  .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v3
    add-int/2addr v1, v3
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v1, :L7
    goto :L8
  :L7
    const/4 v2, -1
  :L8
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
  .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    invoke-virtual { p0, p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v0
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
    add-int/2addr v0, v2
    iput v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1, p4 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p1
    iput p1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1, p4 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p1
    neg-int p1, p1
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 23
    invoke-virtual { p4 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p4
    add-int/2addr p1, p4
  :L9
  .line 24
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
    if-eqz p3, :L10
    sub-int/2addr p2, p1
  .line 25
    iput p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
  :L10
  .line 26
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
    return-void
.end method

.method private J2(II)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v1
    sub-int/2addr v1, p2
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    const/4 v2, 1
    if-eqz v1, :L0
    const/4 v1, -1
    goto :L1
  :L0
    const/4 v1, 1
  :L1
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  .line 4
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
  .line 5
    iput p2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
    const/high16 p1, -32768
  .line 6
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
    return-void
.end method

.method private K2(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
  .registers 3
  .line 1
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    invoke-direct { p0, v0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->J2(II)V
    return-void
.end method

.method private L2(II)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v1
    sub-int v1, p2, v1
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  .line 3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    const/4 v1, -1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, -1
  :L1
    iput p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
  .line 5
    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
    const/high16 p2, -32768
  .line 6
    iput p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
    return-void
.end method

.method private M2(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
  .registers 3
  .line 1
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I
    invoke-direct { p0, v0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->L2(II)V
    return-void
.end method

.method private O1(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    const/4 v2, 1
    xor-int/2addr v0, v2
  .line 4
    invoke-virtual { p0, v0, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->Y1(ZZ)Landroid/view/View;
    move-result-object v3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    xor-int/2addr v0, v2
  .line 5
    invoke-virtual { p0, v0, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->X1(ZZ)Landroid/view/View;
    move-result-object v4
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    move-object v0, p1
    move-object v2, v3
    move-object v3, v4
    move-object v4, p0
  .line 6
    invoke-static/range { v0 .. v5 }, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;Z)I
    move-result p1
    return p1
.end method

.method private P1(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    const/4 v2, 1
    xor-int/2addr v0, v2
  .line 4
    invoke-virtual { p0, v0, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->Y1(ZZ)Landroid/view/View;
    move-result-object v3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    xor-int/2addr v0, v2
  .line 5
    invoke-virtual { p0, v0, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->X1(ZZ)Landroid/view/View;
    move-result-object v4
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    move-object v0, p1
    move-object v2, v3
    move-object v3, v4
    move-object v4, p0
  .line 6
    invoke-static/range { v0 .. v6 }, Landroidx/recyclerview/widget/l;->b(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;ZZ)I
    move-result p1
    return p1
.end method

.method private Q1(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    const/4 v2, 1
    xor-int/2addr v0, v2
  .line 4
    invoke-virtual { p0, v0, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->Y1(ZZ)Landroid/view/View;
    move-result-object v3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    xor-int/2addr v0, v2
  .line 5
    invoke-virtual { p0, v0, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->X1(ZZ)Landroid/view/View;
    move-result-object v4
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    move-object v0, p1
    move-object v2, v3
    move-object v3, v4
    move-object v4, p0
  .line 6
    invoke-static/range { v0 .. v5 }, Landroidx/recyclerview/widget/l;->c(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;Z)I
    move-result p1
    return p1
.end method

.method private V1()Landroid/view/View;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    invoke-virtual { p0, v1, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->d2(II)Landroid/view/View;
    move-result-object v0
    return-object v0
.end method

.method private W1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v4
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v5
    const/4 v3, 0
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    invoke-virtual/range { v0 .. v5 }, Landroidx/recyclerview/widget/LinearLayoutManager;->h2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;III)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method private a2()Landroid/view/View;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    add-int/lit8 v0, v0, -1
    const/4 v1, -1
    invoke-virtual { p0, v0, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->d2(II)Landroid/view/View;
    move-result-object v0
    return-object v0
.end method

.method private b2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    add-int/lit8 v4, v0, -1
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v6
    const/4 v5, -1
    move-object v1, p0
    move-object v2, p1
    move-object v3, p2
    invoke-virtual/range { v1 .. v6 }, Landroidx/recyclerview/widget/LinearLayoutManager;->h2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;III)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method private f2()Landroid/view/View;
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v0, :L0
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->V1()Landroid/view/View;
    move-result-object v0
    goto :L1
  :L0
  .line 2
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->a2()Landroid/view/View;
    move-result-object v0
  :L1
    return-object v0
.end method

.method private g2()Landroid/view/View;
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v0, :L0
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->a2()Landroid/view/View;
    move-result-object v0
    goto :L1
  :L0
  .line 2
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->V1()Landroid/view/View;
    move-result-object v0
  :L1
    return-object v0
.end method

.method private i2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v0, :L0
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->W1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
    move-result-object p1
    goto :L1
  :L0
  .line 2
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->b2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
    move-result-object p1
  :L1
    return-object p1
.end method

.method private j2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v0, :L0
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->b2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
    move-result-object p1
    goto :L1
  :L0
  .line 2
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->W1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
    move-result-object p1
  :L1
    return-object p1
.end method

.method private k2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    sub-int/2addr v0, p1
    if-lez v0, :L1
    neg-int v0, v0
  .line 2
    invoke-virtual { p0, v0, p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->B2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p2
    neg-int p2, p2
    add-int/2addr p1, p2
    if-eqz p4, :L0
  .line 3
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p3 }, Landroidx/recyclerview/widget/i;->i()I
    move-result p3
    sub-int/2addr p3, p1
    if-lez p3, :L0
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1, p3 }, Landroidx/recyclerview/widget/i;->r(I)V
    add-int/2addr p3, p2
    return p3
  :L0
    return p2
  :L1
    const/4 p1, 0
    return p1
.end method

.method private l2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
    sub-int v0, p1, v0
    if-lez v0, :L1
  .line 2
    invoke-virtual { p0, v0, p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->B2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p2
    neg-int p2, p2
    add-int/2addr p1, p2
    if-eqz p4, :L0
  .line 3
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p3 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p3
    sub-int/2addr p1, p3
    if-lez p1, :L0
  .line 4
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    neg-int p4, p1
    invoke-virtual { p3, p4 }, Landroidx/recyclerview/widget/i;->r(I)V
    sub-int/2addr p2, p1
  :L0
    return p2
  :L1
    const/4 p1, 0
    return p1
.end method

.method private m2()Landroid/view/View;
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L1
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v0
    return-object v0
.end method

.method private n2()Landroid/view/View;
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    add-int/lit8 v0, v0, -1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v0
    return-object v0
.end method

.method private t2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;II)V
  .registers 20
    move-object v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p2
  .line 1
    invoke-virtual/range { p2 .. p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->g()Z
    move-result v3
    if-eqz v3, :L11
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v3
    if-eqz v3, :L11
    invoke-virtual/range { p2 .. p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v3
    if-nez v3, :L11
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->L1()Z
    move-result v3
    if-nez v3, :L0
    goto/16 :L11
  :L0
  .line 3
    invoke-virtual/range { p1 .. p1 }, Landroidx/recyclerview/widget/RecyclerView$u;->k()Ljava/util/List;
    move-result-object v3
  .line 4
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v4
    const/4 v5, 0
  .line 5
    invoke-virtual { p0, v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v6
    invoke-virtual { p0, v6 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v6
    const/4 v7, 0
    const/4 v8, 0
    const/4 v9, 0
  :L1
    if-ge v7, v4, :L8
  .line 6
    invoke-interface { v3, v7 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 7
    invoke-virtual { v10 }, Landroidx/recyclerview/widget/RecyclerView$c0;->v()Z
    move-result v11
    if-eqz v11, :L2
    goto :L7
  :L2
  .line 8
    invoke-virtual { v10 }, Landroidx/recyclerview/widget/RecyclerView$c0;->m()I
    move-result v11
    const/4 v12, 1
    if-ge v11, v6, :L3
    const/4 v11, 1
    goto :L4
  :L3
    const/4 v11, 0
  :L4
  .line 9
    iget-boolean v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    const/4 v14, -1
    if-eq v11, v13, :L5
    const/4 v12, -1
  :L5
    if-ne v12, v14, :L6
  .line 10
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v11, v10 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v10
    add-int/2addr v8, v10
    goto :L7
  :L6
  .line 11
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v11, v10 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v10
    add-int/2addr v9, v10
  :L7
    add-int/lit8 v7, v7, 1
    goto :L1
  :L8
  .line 12
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput-object v3, v4, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
    if-lez v8, :L9
  .line 13
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->n2()Landroid/view/View;
    move-result-object v3
  .line 14
    invoke-virtual { p0, v3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v3
    move/from16 v4, p3
    invoke-direct { p0, v3, v4 }, Landroidx/recyclerview/widget/LinearLayoutManager;->L2(II)V
  .line 15
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput v8, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 16
    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
  .line 17
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a()V
  .line 18
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    invoke-virtual { p0, v1, v3, v2, v5 }, Landroidx/recyclerview/widget/LinearLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  :L9
    if-lez v9, :L10
  .line 19
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->m2()Landroid/view/View;
    move-result-object v3
  .line 20
    invoke-virtual { p0, v3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v3
    move/from16 v4, p4
    invoke-direct { p0, v3, v4 }, Landroidx/recyclerview/widget/LinearLayoutManager;->J2(II)V
  .line 21
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput v9, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 22
    iput v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
  .line 23
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a()V
  .line 24
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    invoke-virtual { p0, v1, v3, v2, v5 }, Landroidx/recyclerview/widget/LinearLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  :L10
  .line 25
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    const/4 v2, 0
    iput-object v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
  :L11
    return-void
.end method

.method private v2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V
  .registers 6
  .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z
    if-eqz v0, :L2
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z
    if-eqz v0, :L0
    goto :L2
  :L0
  .line 2
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
  .line 3
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I
  .line 4
    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
    const/4 v2, -1
    if-ne p2, v2, :L1
  .line 5
    invoke-direct { p0, p1, v0, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->x2(Landroidx/recyclerview/widget/RecyclerView$u;II)V
    goto :L2
  :L1
  .line 6
    invoke-direct { p0, p1, v0, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->y2(Landroidx/recyclerview/widget/RecyclerView$u;II)V
  :L2
    return-void
.end method

.method private w2(Landroidx/recyclerview/widget/RecyclerView$u;II)V
  .registers 4
    if-ne p2, p3, :L0
    return-void
  :L0
    if-le p3, p2, :L2
    add-int/lit8 p3, p3, -1
  :L1
    if-lt p3, p2, :L3
  .line 1
    invoke-virtual { p0, p3, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->n1(ILandroidx/recyclerview/widget/RecyclerView$u;)V
    add-int/lit8 p3, p3, -1
    goto :L1
  :L2
    if-le p2, p3, :L3
  .line 2
    invoke-virtual { p0, p2, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->n1(ILandroidx/recyclerview/widget/RecyclerView$u;)V
    add-int/lit8 p2, p2, -1
    goto :L2
  :L3
    return-void
.end method

.method private x2(Landroidx/recyclerview/widget/RecyclerView$u;II)V
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-gez p2, :L0
    return-void
  :L0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->h()I
    move-result v1
    sub-int/2addr v1, p2
    add-int/2addr v1, p3
  .line 3
    iget-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz p2, :L4
    const/4 p2, 0
    const/4 p3, 0
  :L1
    if-ge p3, v0, :L8
  .line 4
    invoke-virtual { p0, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v2
  .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3, v2 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v3
    if-lt v3, v1, :L3
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 6
    invoke-virtual { v3, v2 }, Landroidx/recyclerview/widget/i;->q(Landroid/view/View;)I
    move-result v2
    if-ge v2, v1, :L2
    goto :L3
  :L2
    add-int/lit8 p3, p3, 1
    goto :L1
  :L3
  .line 7
    invoke-direct { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->w2(Landroidx/recyclerview/widget/RecyclerView$u;II)V
    return-void
  :L4
    add-int/lit8 v0, v0, -1
    move p2, v0
  :L5
    if-ltz p2, :L8
  .line 8
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object p3
  .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, p3 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v2
    if-lt v2, v1, :L7
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 10
    invoke-virtual { v2, p3 }, Landroidx/recyclerview/widget/i;->q(Landroid/view/View;)I
    move-result p3
    if-ge p3, v1, :L6
    goto :L7
  :L6
    add-int/lit8 p2, p2, -1
    goto :L5
  :L7
  .line 11
    invoke-direct { p0, p1, v0, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->w2(Landroidx/recyclerview/widget/RecyclerView$u;II)V
  :L8
    return-void
.end method

.method private y2(Landroidx/recyclerview/widget/RecyclerView$u;II)V
  .registers 8
    if-gez p2, :L0
    return-void
  :L0
    sub-int/2addr p2, p3
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result p3
  .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v0, :L4
    add-int/lit8 p3, p3, -1
    move v0, p3
  :L1
    if-ltz v0, :L8
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v1
  .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v2
    if-gt v2, p2, :L3
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 5
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/i;->p(Landroid/view/View;)I
    move-result v1
    if-le v1, p2, :L2
    goto :L3
  :L2
    add-int/lit8 v0, v0, -1
    goto :L1
  :L3
  .line 6
    invoke-direct { p0, p1, p3, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->w2(Landroidx/recyclerview/widget/RecyclerView$u;II)V
    return-void
  :L4
    const/4 v0, 0
    const/4 v1, 0
  :L5
    if-ge v1, p3, :L8
  .line 7
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v2
  .line 8
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3, v2 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v3
    if-gt v3, p2, :L7
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 9
    invoke-virtual { v3, v2 }, Landroidx/recyclerview/widget/i;->p(Landroid/view/View;)I
    move-result v2
    if-le v2, p2, :L6
    goto :L7
  :L6
    add-int/lit8 v1, v1, 1
    goto :L5
  :L7
  .line 10
    invoke-direct { p0, p1, v0, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->w2(Landroidx/recyclerview/widget/RecyclerView$u;II)V
  :L8
    return-void
.end method

.method B2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L5
    if-nez p1, :L0
    goto :L5
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    const/4 v2, 1
    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z
    if-lez p1, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, -1
  :L2
  .line 4
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result v3
  .line 5
    invoke-direct { p0, v0, v3, v2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->I2(IIZLandroidx/recyclerview/widget/RecyclerView$z;)V
  .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
  .line 7
    invoke-virtual { p0, p2, v2, p3, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
    move-result p2
    add-int/2addr v4, p2
    if-gez v4, :L3
    return v1
  :L3
    if-le v3, v4, :L4
    mul-int p1, v0, v4
  :L4
  .line 8
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    neg-int p3, p1
    invoke-virtual { p2, p3 }, Landroidx/recyclerview/widget/i;->r(I)V
  .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:I
    return p1
  :L5
    return v1
.end method

.method public C(I)Landroid/view/View;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return-object p1
  :L0
    const/4 v1, 0
  .line 2
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v1
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v1
    sub-int v1, p1, v1
    if-ltz v1, :L1
    if-ge v1, v0, :L1
  .line 3
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v0
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v1
    if-ne v1, p1, :L1
    return-object v0
  :L1
  .line 5
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->C(I)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public C2(I)V
  .registers 5
    if-eqz p1, :L1
    const/4 v0, 1
    if-ne p1, v0, :L0
    goto :L1
  :L0
  .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "invalid orientation:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->g(Ljava/lang/String;)V
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-ne p1, v0, :L2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    if-nez v0, :L3
  :L2
  .line 4
    invoke-static { p0, p1 }, Landroidx/recyclerview/widget/i;->b(Landroidx/recyclerview/widget/RecyclerView$n;I)Landroidx/recyclerview/widget/i;
    move-result-object v0
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    iput-object v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/i;
  .line 6
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
  .line 7
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
  :L3
    return-void
.end method

.method public D()Landroidx/recyclerview/widget/RecyclerView$o;
  .registers 3
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;
    const/4 v1, -2
    invoke-direct { v0, v1, v1 }, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(II)V
    return-object v0
.end method

.method public D2(Z)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->g(Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return-void
.end method

.method public E2(Z)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->g(Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z
    if-ne v0, p1, :L0
    return-void
  :L0
  .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return-void
.end method

.method G1()Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->X()I
    move-result v0
    const/high16 v1, 16384
    if-eq v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->p0()I
    move-result v0
    if-eq v0, v1, :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->q0()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public I0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->I0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
  .line 2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:Z
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->k1(Landroidx/recyclerview/widget/RecyclerView$u;)V
  .line 4
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$u;->c()V
  :L0
    return-void
.end method

.method public I1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;I)V
  .registers 4
  .line 1
    new-instance p2, Landroidx/recyclerview/widget/g;
  .line 2
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-direct { p2, p1 }, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V
  .line 3
    invoke-virtual { p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$y;->p(I)V
  .line 4
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->J1(Landroidx/recyclerview/widget/RecyclerView$y;)V
    return-void
.end method

.method public J0(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
  .registers 8
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->A2()V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result p1
    const/4 v0, 0
    if-nez p1, :L0
    return-object v0
  :L0
  .line 3
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->R1(I)I
    move-result p1
    const/high16 p2, -32768
    if-ne p1, p2, :L1
    return-object v0
  :L1
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
    const v1, 1051372203
  .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->n()I
    move-result v2
    int-to-float v2, v2
    mul-float v2, v2, v1
    float-to-int v1, v2
    const/4 v2, 0
  .line 6
    invoke-direct { p0, p1, v1, v2, p4 }, Landroidx/recyclerview/widget/LinearLayoutManager;->I2(IIZLandroidx/recyclerview/widget/RecyclerView$z;)V
  .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput p2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
  .line 8
    iput-boolean v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z
    const/4 p2, 1
  .line 9
    invoke-virtual { p0, p3, v1, p4, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
    const/4 p2, -1
    if-ne p1, p2, :L2
  .line 10
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->g2()Landroid/view/View;
    move-result-object p3
    goto :L3
  :L2
  .line 11
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->f2()Landroid/view/View;
    move-result-object p3
  :L3
    if-ne p1, p2, :L4
  .line 12
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->n2()Landroid/view/View;
    move-result-object p1
    goto :L5
  :L4
  .line 13
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->m2()Landroid/view/View;
    move-result-object p1
  :L5
  .line 14
    invoke-virtual { p1 }, Landroid/view/View;->hasFocusable()Z
    move-result p2
    if-eqz p2, :L7
    if-nez p3, :L6
    return-object v0
  :L6
    return-object p1
  :L7
    return-object p3
.end method

.method public K0(Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->K0(Landroid/view/accessibility/AccessibilityEvent;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-lez v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->Z1()I
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->c2()I
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V
  :L0
    return-void
.end method

.method public L1()Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    if-nez v0, :L0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method protected M1(Landroidx/recyclerview/widget/RecyclerView$z;[I)V
  .registers 6
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->o2(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
    const/4 v1, 0
    const/4 v2, -1
    if-ne v0, v2, :L0
    const/4 v0, 0
    goto :L1
  :L0
    move v0, p1
    const/4 p1, 0
  :L1
  .line 3
    aput p1, p2, v1
    const/4 p1, 1
  .line 4
    aput v0, p2, p1
    return-void
.end method

.method N1(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$n$c;)V
  .registers 5
  .line 1
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    if-ltz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    if-ge v0, p1, :L0
    const/4 p1, 0
  .line 3
    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
    invoke-static { p1, p2 }, Ljava/lang/Math;->max(II)I
    move-result p1
    invoke-interface { p3, v0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n$c;->a(II)V
  :L0
    return-void
.end method

.method R1(I)I
  .registers 6
    const/4 v0, -1
    const/4 v1, 1
    if-eq p1, v1, :L15
    const/4 v2, 2
    if-eq p1, v2, :L12
    const/16 v2, 17
    const/high16 v3, -32768
    if-eq p1, v2, :L9
    const/16 v2, 33
    if-eq p1, v2, :L6
    const/16 v0, 66
    if-eq p1, v0, :L3
    const/16 v0, 130
    if-eq p1, v0, :L0
    return v3
  :L0
  .line 1
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-ne p1, v1, :L1
    goto :L2
  :L1
    const/high16 v1, -32768
  :L2
    return v1
  :L3
  .line 2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-nez p1, :L4
    goto :L5
  :L4
    const/high16 v1, -32768
  :L5
    return v1
  :L6
  .line 3
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-ne p1, v1, :L7
    goto :L8
  :L7
    const/high16 v0, -32768
  :L8
    return v0
  :L9
  .line 4
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-nez p1, :L10
    goto :L11
  :L10
    const/high16 v0, -32768
  :L11
    return v0
  :L12
  .line 5
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-ne p1, v1, :L13
    return v1
  :L13
  .line 6
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->q2()Z
    move-result p1
    if-eqz p1, :L14
    return v0
  :L14
    return v1
  :L15
  .line 7
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-ne p1, v1, :L16
    return v0
  :L16
  .line 8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->q2()Z
    move-result p1
    if-eqz p1, :L17
    return v1
  :L17
    return v0
.end method

.method S1()Landroidx/recyclerview/widget/LinearLayoutManager$c;
  .registers 2
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;-><init>()V
    return-object v0
.end method

.method T1()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->S1()Landroidx/recyclerview/widget/LinearLayoutManager$c;
    move-result-object v0
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
  :L0
    return-void
.end method

.method U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  .registers 12
  .line 1
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
  .line 2
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
    const/high16 v2, -32768
    if-eq v1, v2, :L1
    if-gez v0, :L0
    add-int/2addr v1, v0
  .line 3
    iput v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
  :L0
  .line 4
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->v2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V
  :L1
  .line 5
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
    add-int/2addr v1, v3
  .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->F:Landroidx/recyclerview/widget/LinearLayoutManager$b;
  :L2
  .line 7
    iget-boolean v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z
    if-nez v4, :L3
    if-lez v1, :L9
  :L3
    invoke-virtual { p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c(Landroidx/recyclerview/widget/RecyclerView$z;)Z
    move-result v4
    if-eqz v4, :L9
  .line 8
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a()V
  .line 9
    invoke-virtual { p0, p1, p3, p2, v3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->s2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
  .line 10
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z
    if-eqz v4, :L4
    goto :L9
  :L4
  .line 11
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I
    iget v6, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
    mul-int v5, v5, v6
    add-int/2addr v4, v5
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 12
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z
    if-eqz v4, :L5
    iget-object v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
    if-nez v4, :L5
  .line 13
    invoke-virtual { p3 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v4
    if-nez v4, :L6
  :L5
  .line 14
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I
    sub-int/2addr v4, v5
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
    sub-int/2addr v1, v5
  :L6
  .line 15
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
    if-eq v4, v2, :L8
  .line 16
    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I
    add-int/2addr v4, v5
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
  .line 17
    iget v5, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
    if-gez v5, :L7
    add-int/2addr v4, v5
  .line 18
    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
  :L7
  .line 19
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->v2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V
  :L8
    if-eqz p4, :L2
  .line 20
    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z
    if-eqz v4, :L2
  :L9
  .line 21
    iget p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
    sub-int/2addr v0, p1
    return v0
.end method

.method public X0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 11
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    const/4 v1, -1
    if-nez v0, :L0
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    if-eq v0, v1, :L1
  :L0
  .line 2
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    if-nez v0, :L1
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->k1(Landroidx/recyclerview/widget/RecyclerView$u;)V
    return-void
  :L1
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    if-eqz v0, :L2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$d;->j()Z
    move-result v0
    if-eqz v0, :L2
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
  :L2
  .line 6
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    const/4 v2, 0
    iput-boolean v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z
  .line 8
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->A2()V
  .line 9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->V()Landroid/view/View;
    move-result-object v0
  .line 10
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    iget-boolean v3, v3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z
    const/4 v4, 1
    if-eqz v3, :L5
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    if-ne v3, v1, :L5
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    if-eqz v3, :L3
    goto :L5
  :L3
    if-eqz v0, :L6
  .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3, v0 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v3
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 12
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v5
    if-ge v3, v5, :L4
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 13
    invoke-virtual { v3, v0 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v3
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 14
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v5
    if-gt v3, v5, :L6
  :L4
  .line 15
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v5
    invoke-virtual { v3, v0, v5 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c(Landroid/view/View;I)V
    goto :L6
  :L5
  .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e()V
  .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z
    xor-int/2addr v3, v5
    iput-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
  .line 18
    invoke-direct { p0, p1, p2, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->H2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
  .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    iput-boolean v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z
  :L6
  .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->k:I
    if-ltz v3, :L7
    const/4 v3, 1
    goto :L8
  :L7
    const/4 v3, -1
  :L8
    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
  .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->H:[I
    aput v2, v0, v2
  .line 22
    aput v2, v0, v4
  .line 23
    invoke-virtual { p0, p2, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->M1(Landroidx/recyclerview/widget/RecyclerView$z;[I)V
  .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->H:[I
    aget v0, v0, v2
    invoke-static { v2, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 25
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v3
    add-int/2addr v0, v3
  .line 26
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->H:[I
    aget v3, v3, v4
    invoke-static { v2, v3 }, Ljava/lang/Math;->max(II)I
    move-result v3
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 27
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/i;->j()I
    move-result v5
    add-int/2addr v3, v5
  .line 28
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v5
    if-eqz v5, :L12
    iget v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    if-eq v5, v1, :L12
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
    const/high16 v7, -32768
    if-eq v6, v7, :L12
  .line 29
    invoke-virtual { p0, v5 }, Landroidx/recyclerview/widget/LinearLayoutManager;->C(I)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :L12
  .line 30
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v6, :L9
  .line 31
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v6 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v6
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 32
    invoke-virtual { v7, v5 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v5
    sub-int/2addr v6, v5
  .line 33
    iget v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
    goto :L10
  :L9
  .line 34
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v6, v5 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v5
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 35
    invoke-virtual { v6 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v6
    sub-int/2addr v5, v6
  .line 36
    iget v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
  :L10
    sub-int/2addr v6, v5
    if-lez v6, :L11
    add-int/2addr v0, v6
    goto :L12
  :L11
    sub-int/2addr v3, v6
  :L12
  .line 37
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    iget-boolean v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    if-eqz v5, :L14
  .line 38
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v5, :L15
  :L13
    const/4 v1, 1
    goto :L15
  :L14
  .line 39
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v5, :L13
  :L15
  .line 40
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    invoke-virtual { p0, p1, p2, v5, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->u2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
  .line 41
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->w(Landroidx/recyclerview/widget/RecyclerView$u;)V
  .line 42
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->z2()Z
    move-result v5
    iput-boolean v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z
  .line 43
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v5
    iput-boolean v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->j:Z
  .line 44
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I
  .line 45
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    iget-boolean v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z
    if-eqz v5, :L17
  .line 46
    invoke-direct { p0, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->M2(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
  .line 47
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 48
    invoke-virtual { p0, p1, v1, p2, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  .line 49
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 50
    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  .line 51
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
    if-lez v0, :L16
    add-int/2addr v3, v0
  :L16
  .line 52
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->K2(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
  .line 53
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 54
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
    add-int/2addr v3, v6
    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  .line 55
    invoke-virtual { p0, p1, v0, p2, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  .line 56
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 57
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
    if-lez v0, :L19
  .line 58
    invoke-direct { p0, v5, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->L2(II)V
  .line 59
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 60
    invoke-virtual { p0, p1, v1, p2, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  .line 61
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
    goto :L19
  :L17
  .line 62
    invoke-direct { p0, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->K2(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
  .line 63
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 64
    invoke-virtual { p0, p1, v1, p2, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  .line 65
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 66
    iget v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  .line 67
    iget v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
    if-lez v1, :L18
    add-int/2addr v0, v1
  :L18
  .line 68
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    invoke-direct { p0, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->M2(Landroidx/recyclerview/widget/LinearLayoutManager$a;)V
  .line 69
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 70
    iget v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    iget v6, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
    add-int/2addr v0, v6
    iput v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  .line 71
    invoke-virtual { p0, p1, v1, p2, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 73
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I
    if-lez v0, :L19
  .line 74
    invoke-direct { p0, v5, v3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->J2(II)V
  .line 75
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iput v0, v3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I
  .line 76
    invoke-virtual { p0, p1, v3, p2, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
  .line 77
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  :L19
  .line 78
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-lez v0, :L22
  .line 79
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z
    xor-int/2addr v0, v5
    if-eqz v0, :L20
  .line 80
    invoke-direct { p0, v3, p1, p2, v4 }, Landroidx/recyclerview/widget/LinearLayoutManager;->k2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
    move-result v0
    add-int/2addr v1, v0
    add-int/2addr v3, v0
  .line 81
    invoke-direct { p0, v1, p1, p2, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->l2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
    move-result v0
    goto :L21
  :L20
  .line 82
    invoke-direct { p0, v1, p1, p2, v4 }, Landroidx/recyclerview/widget/LinearLayoutManager;->l2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
    move-result v0
    add-int/2addr v1, v0
    add-int/2addr v3, v0
  .line 83
    invoke-direct { p0, v3, p1, p2, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->k2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
    move-result v0
  :L21
    add-int/2addr v1, v0
    add-int/2addr v3, v0
  :L22
  .line 84
    invoke-direct { p0, p1, p2, v1, v3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->t2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;II)V
  .line 85
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result p1
    if-nez p1, :L23
  .line 86
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->s()V
    goto :L24
  :L23
  .line 87
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e()V
  :L24
  .line 88
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z
    return-void
.end method

.method X1(ZZ)Landroid/view/View;
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v1
    invoke-virtual { p0, v0, v1, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->e2(IIZZ)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    add-int/lit8 v0, v0, -1
    const/4 v1, -1
    invoke-virtual { p0, v0, v1, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->e2(IIZZ)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public Y0(Landroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->Y0(Landroidx/recyclerview/widget/RecyclerView$z;)V
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    const/4 p1, -1
  .line 3
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    const/high16 p1, -32768
  .line 4
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
  .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->E:Landroidx/recyclerview/widget/LinearLayoutManager$a;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e()V
    return-void
.end method

.method Y1(ZZ)Landroid/view/View;
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    add-int/lit8 v0, v0, -1
    const/4 v1, -1
    invoke-virtual { p0, v0, v1, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->e2(IIZZ)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L0
    const/4 v0, 0
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v1
    invoke-virtual { p0, v0, v1, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->e2(IIZZ)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public Z1()I
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    invoke-virtual { p0, v1, v0, v1, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->e2(IIZZ)Landroid/view/View;
    move-result-object v0
    if-nez v0, :L0
    const/4 v0, -1
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v0
  :L1
    return v0
.end method

.method public a(I)Landroid/graphics/PointF;
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return-object p1
  :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v1
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v1
    const/4 v2, 1
    if-ge p1, v1, :L1
    const/4 v0, 1
  :L1
  .line 3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eq v0, p1, :L2
    const/4 v2, -1
  :L2
  .line 4
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v0, 0
    if-nez p1, :L3
  .line 5
    new-instance p1, Landroid/graphics/PointF;
    int-to-float v1, v2
    invoke-direct { p1, v1, v0 }, Landroid/graphics/PointF;-><init>(FF)V
    return-object p1
  :L3
  .line 6
    new-instance p1, Landroid/graphics/PointF;
    int-to-float v1, v2
    invoke-direct { p1, v0, v1 }, Landroid/graphics/PointF;-><init>(FF)V
    return-object p1
.end method

.method public c1(Landroid/os/Parcelable;)V
  .registers 3
  .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;
    if-eqz v0, :L0
  .line 2
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager$d;
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
  :L0
    return-void
.end method

.method public c2()I
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
    const/4 v2, -1
    const/4 v3, 0
    invoke-virtual { p0, v0, v2, v3, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->e2(IIZZ)Landroid/view/View;
    move-result-object v0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v2
  :L1
    return v2
.end method

.method public d1()Landroid/os/Parcelable;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    invoke-direct { v0, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager$d;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager$d;)V
    return-object v0
  :L0
  .line 3
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$d;-><init>()V
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v1
    if-lez v1, :L2
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
  .line 6
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    xor-int/2addr v1, v2
  .line 7
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->d:Z
    if-eqz v1, :L1
  .line 8
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->m2()Landroid/view/View;
    move-result-object v1
  .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v2
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 10
    invoke-virtual { v3, v1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v3
    sub-int/2addr v2, v3
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:I
  .line 11
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v1
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I
    goto :L3
  :L1
  .line 12
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->n2()Landroid/view/View;
    move-result-object v1
  .line 13
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v2
    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I
  .line 14
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v1
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 15
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v2
    sub-int/2addr v1, v2
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->c:I
    goto :L3
  :L2
  .line 16
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$d;->k()V
  :L3
    return-object v0
.end method

.method d2(II)Landroid/view/View;
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
    if-le p2, p1, :L0
    const/4 v0, 1
    goto :L2
  :L0
    if-ge p2, p1, :L1
    const/4 v0, -1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    if-nez v0, :L3
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L3
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v0
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 4
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v1
    if-ge v0, v1, :L4
    const/16 v0, 16644
    const/16 v1, 16388
    goto :L5
  :L4
    const/16 v0, 4161
    const/16 v1, 4097
  :L5
  .line 5
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-nez v2, :L6
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$n;->e:Landroidx/recyclerview/widget/o;
  .line 6
    invoke-virtual { v2, p1, p2, v0, v1 }, Landroidx/recyclerview/widget/o;->a(IIII)Landroid/view/View;
    move-result-object p1
    goto :L7
  :L6
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$n;->f:Landroidx/recyclerview/widget/o;
  .line 7
    invoke-virtual { v2, p1, p2, v0, v1 }, Landroidx/recyclerview/widget/o;->a(IIII)Landroid/view/View;
    move-result-object p1
  :L7
    return-object p1
.end method

.method e2(IIZZ)Landroid/view/View;
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
    const/16 v0, 320
    if-eqz p3, :L0
    const/16 p3, 24579
    goto :L1
  :L0
    const/16 p3, 320
  :L1
    if-eqz p4, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
  .line 2
    iget p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-nez p4, :L4
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$n;->e:Landroidx/recyclerview/widget/o;
  .line 3
    invoke-virtual { p4, p1, p2, p3, v0 }, Landroidx/recyclerview/widget/o;->a(IIII)Landroid/view/View;
    move-result-object p1
    goto :L5
  :L4
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$n;->f:Landroidx/recyclerview/widget/o;
  .line 4
    invoke-virtual { p4, p1, p2, p3, v0 }, Landroidx/recyclerview/widget/o;->a(IIII)Landroid/view/View;
    move-result-object p1
  :L5
    return-object p1
.end method

.method public g(Ljava/lang/String;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->g(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method h2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;III)Landroid/view/View;
  .registers 11
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p1
  .line 3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/i;->i()I
    move-result p2
    if-le p4, p3, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, -1
  :L1
    const/4 v1, 0
    move-object v2, v1
  :L2
    if-eq p3, p4, :L7
  .line 4
    invoke-virtual { p0, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v3
  .line 5
    invoke-virtual { p0, v3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v4
    if-ltz v4, :L6
    if-ge v4, p5, :L6
  .line 6
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$o;
    invoke-virtual { v4 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result v4
    if-eqz v4, :L3
    if-nez v2, :L6
    move-object v2, v3
    goto :L6
  :L3
  .line 7
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v4, v3 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v4
    if-ge v4, p2, :L5
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 8
    invoke-virtual { v4, v3 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v4
    if-ge v4, p1, :L4
    goto :L5
  :L4
    return-object v3
  :L5
    if-nez v1, :L6
    move-object v1, v3
  :L6
    add-int/2addr p3, v0
    goto :L2
  :L7
    if-eqz v1, :L8
    goto :L9
  :L8
    move-object v1, v2
  :L9
    return-object v1
.end method

.method public k()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public l()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public o(IILandroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$n$c;)V
  .registers 6
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-nez v0, :L0
    goto :L1
  :L0
    move p1, p2
  :L1
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result p2
    if-eqz p2, :L5
    if-nez p1, :L2
    goto :L5
  :L2
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
    const/4 p2, 1
    if-lez p1, :L3
    const/4 v0, 1
    goto :L4
  :L3
    const/4 v0, -1
  :L4
  .line 4
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result p1
  .line 5
    invoke-direct { p0, v0, p1, p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->I2(IIZLandroidx/recyclerview/widget/RecyclerView$z;)V
  .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Landroidx/recyclerview/widget/LinearLayoutManager$c;
    invoke-virtual { p0, p3, p1, p4 }, Landroidx/recyclerview/widget/LinearLayoutManager;->N1(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$n$c;)V
  :L5
    return-void
.end method

.method protected o2(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->d()Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->n()I
    move-result p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public p(ILandroidx/recyclerview/widget/RecyclerView$n$c;)V
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    const/4 v1, -1
    const/4 v2, 0
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$d;->j()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->d:Z
  .line 3
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager$d;->b:I
    goto :L2
  :L0
  .line 4
    invoke-direct { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->A2()V
  .line 5
    iget-boolean v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
  .line 6
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    if-ne v0, v1, :L2
    if-eqz v3, :L1
    add-int/lit8 v0, p1, -1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    if-eqz v3, :L3
    goto :L4
  :L3
    const/4 v1, 1
  :L4
    const/4 v3, 0
  :L5
  .line 7
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->G:I
    if-ge v3, v4, :L6
    if-ltz v0, :L6
    if-ge v0, p1, :L6
  .line 8
    invoke-interface { p2, v0, v2 }, Landroidx/recyclerview/widget/RecyclerView$n$c;->a(II)V
    add-int/2addr v0, v1
    add-int/lit8 v3, v3, 1
    goto :L5
  :L6
    return-void
.end method

.method public p2()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    return v0
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->O1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method protected q2()Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->Z()I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->P1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public r2()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Z
    return v0
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->Q1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public s0()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method s2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
  .registers 12
  .line 1
    invoke-virtual { p3, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    move-result-object p1
    const/4 p2, 1
    if-nez p1, :L0
  .line 2
    iput-boolean p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z
    return-void
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    move-object v6, v0
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$o;
  .line 4
    iget-object v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
    const/4 v1, -1
    const/4 v2, 0
    if-nez v0, :L4
  .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
    if-ne v3, v1, :L1
    const/4 v3, 1
    goto :L2
  :L1
    const/4 v3, 0
  :L2
    if-ne v0, v3, :L3
  .line 6
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->d(Landroid/view/View;)V
    goto :L8
  :L3
  .line 7
    invoke-virtual { p0, p1, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->e(Landroid/view/View;I)V
    goto :L8
  :L4
  .line 8
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
    if-ne v3, v1, :L5
    const/4 v3, 1
    goto :L6
  :L5
    const/4 v3, 0
  :L6
    if-ne v0, v3, :L7
  .line 9
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->b(Landroid/view/View;)V
    goto :L8
  :L7
  .line 10
    invoke-virtual { p0, p1, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->c(Landroid/view/View;I)V
  :L8
  .line 11
    invoke-virtual { p0, p1, v2, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->A0(Landroid/view/View;II)V
  .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v0
    iput v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I
  .line 13
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-ne v0, p2, :L12
  .line 14
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->q2()Z
    move-result v0
    if-eqz v0, :L9
  .line 15
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->o0()I
    move-result v0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result v2
    sub-int/2addr v0, v2
  .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I
    move-result v2
    sub-int v2, v0, v2
    goto :L10
  :L9
  .line 17
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v2
  .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I
    move-result v0
    add-int/2addr v0, v2
  :L10
  .line 19
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
    if-ne v3, v1, :L11
  .line 20
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 21
    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I
    sub-int v1, p3, v1
    move v5, p3
    move v4, v0
    move v3, v1
    goto :L14
  :L11
  .line 22
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 23
    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I
    add-int/2addr v1, p3
    move v3, p3
    move v4, v0
    move v5, v1
    goto :L14
  :L12
  .line 24
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v0
  .line 25
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I
    move-result v2
    add-int/2addr v2, v0
  .line 26
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
    if-ne v3, v1, :L13
  .line 27
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 28
    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I
    sub-int v1, p3, v1
    move v4, p3
    move v3, v0
    move v5, v2
    move v2, v1
    goto :L14
  :L13
  .line 29
    iget p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
  .line 30
    iget v1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I
    add-int/2addr v1, p3
    move v3, v0
    move v4, v1
    move v5, v2
    move v2, p3
  :L14
    move-object v0, p0
    move-object v1, p1
  .line 31
    invoke-virtual/range { v0 .. v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->z0(Landroid/view/View;IIII)V
  .line 32
    invoke-virtual { v6 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result p3
    if-nez p3, :L15
    invoke-virtual { v6 }, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z
    move-result p3
    if-eqz p3, :L16
  :L15
  .line 33
    iput-boolean p2, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z
  :L16
  .line 34
    invoke-virtual { p1 }, Landroid/view/View;->hasFocusable()Z
    move-result p1
    iput-boolean p1, p4, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z
    return-void
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->O1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public u(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->P1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method u2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
  .registers 5
    return-void
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->Q1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public w1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 6
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->B2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public x1(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:I
    const/high16 p1, -32768
  .line 2
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:I
  .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    if-eqz p1, :L0
  .line 4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/LinearLayoutManager$d;->k()V
  :L0
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return-void
.end method

.method public y1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 5
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->B2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method z2()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->k()I
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->h()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method
