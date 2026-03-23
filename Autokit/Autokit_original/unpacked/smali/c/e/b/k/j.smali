.class public Lc/e/b/k/j;
.super Ljava/lang/Object;
.source "SourceFile"

.field static a:[Z

.method static constructor <clinit>()V
  .registers 2
    const/4 v0, 3
    new-array v0, v0, [Z
  .line 1
    sput-object v0, Lc/e/b/k/j;->a:[Z
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(Lc/e/b/k/f;Lc/e/b/d;Lc/e/b/k/e;)V
  .registers 8
    const/4 v0, -1
  .line 1
    iput v0, p2, Lc/e/b/k/e;->l:I
  .line 2
    iput v0, p2, Lc/e/b/k/e;->m:I
  .line 3
    iget-object v0, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v1, 0
    aget-object v0, v0, v1
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    const/4 v3, 2
    if-eq v0, v2, :L0
    iget-object v0, p2, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v0, v0, v1
    sget-object v1, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne v0, v1, :L0
  .line 4
    iget-object v0, p2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget v0, v0, Lc/e/b/k/d;->g:I
  .line 5
    invoke-virtual { p0 }, Lc/e/b/k/e;->R()I
    move-result v1
    iget-object v2, p2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget v2, v2, Lc/e/b/k/d;->g:I
    sub-int/2addr v1, v2
  .line 6
    iget-object v2, p2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    invoke-virtual { p1, v2 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v4
    iput-object v4, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 7
    iget-object v2, p2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    invoke-virtual { p1, v2 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v4
    iput-object v4, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 8
    iget-object v2, p2, Lc/e/b/k/e;->F:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, v2, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 9
    iget-object v2, p2, Lc/e/b/k/e;->H:Lc/e/b/k/d;
    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, v2, v1 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 10
    iput v3, p2, Lc/e/b/k/e;->l:I
  .line 11
    invoke-virtual { p2, v0, v1 }, Lc/e/b/k/e;->y0(II)V
  :L0
  .line 12
    iget-object v0, p0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    const/4 v1, 1
    aget-object v0, v0, v1
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-eq v0, v2, :L3
    iget-object v0, p2, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;
    aget-object v0, v0, v1
    sget-object v1, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    if-ne v0, v1, :L3
  .line 13
    iget-object v0, p2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget v0, v0, Lc/e/b/k/d;->g:I
  .line 14
    invoke-virtual { p0 }, Lc/e/b/k/e;->v()I
    move-result p0
    iget-object v1, p2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget v1, v1, Lc/e/b/k/d;->g:I
    sub-int/2addr p0, v1
  .line 15
    iget-object v1, p2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    invoke-virtual { p1, v1 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v2
    iput-object v2, v1, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 16
    iget-object v1, p2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    invoke-virtual { p1, v1 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v2
    iput-object v2, v1, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 17
    iget-object v1, p2, Lc/e/b/k/e;->G:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, v1, v0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 18
    iget-object v1, p2, Lc/e/b/k/e;->I:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->i:Lc/e/b/i;
    invoke-virtual { p1, v1, p0 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  .line 19
    iget v1, p2, Lc/e/b/k/e;->Y:I
    if-gtz v1, :L1
    invoke-virtual { p2 }, Lc/e/b/k/e;->Q()I
    move-result v1
    const/16 v2, 8
    if-ne v1, v2, :L2
  :L1
  .line 20
    iget-object v1, p2, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    invoke-virtual { p1, v1 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v2
    iput-object v2, v1, Lc/e/b/k/d;->i:Lc/e/b/i;
  .line 21
    iget-object v1, p2, Lc/e/b/k/e;->J:Lc/e/b/k/d;
    iget-object v1, v1, Lc/e/b/k/d;->i:Lc/e/b/i;
    iget v2, p2, Lc/e/b/k/e;->Y:I
    add-int/2addr v2, v0
    invoke-virtual { p1, v1, v2 }, Lc/e/b/d;->f(Lc/e/b/i;I)V
  :L2
  .line 22
    iput v3, p2, Lc/e/b/k/e;->m:I
  .line 23
    invoke-virtual { p2, v0, p0 }, Lc/e/b/k/e;->P0(II)V
  :L3
    return-void
.end method

.method public final static b(II)Z
  .registers 2
    and-int/2addr p0, p1
    if-ne p0, p1, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method
