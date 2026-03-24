.class public Lc/e/b/k/f;
.super Lc/e/b/k/l;
.source "SourceFile"


# instance fields
.field A0:[Lc/e/b/k/c;

.field B0:[Lc/e/b/k/c;

.field private C0:I

.field private D0:Z

.field private E0:Z

.field private F0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/e/b/k/d;",
            ">;"
        }
    .end annotation
.end field

.field private G0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/e/b/k/d;",
            ">;"
        }
    .end annotation
.end field

.field private H0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/e/b/k/d;",
            ">;"
        }
    .end annotation
.end field

.field private I0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/e/b/k/d;",
            ">;"
        }
    .end annotation
.end field

.field public J0:Lc/e/b/k/m/b$a;

.field q0:Lc/e/b/k/m/b;

.field public r0:Lc/e/b/k/m/e;

.field protected s0:Lc/e/b/k/m/b$b;

.field private t0:Z

.field public u0:Lc/e/b/e;

.field protected v0:Lc/e/b/d;

.field w0:I

.field x0:I

.field public y0:I

.field public z0:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lc/e/b/k/l;-><init>()V

    .line 2
    new-instance v0, Lc/e/b/k/m/b;

    invoke-direct {v0, p0}, Lc/e/b/k/m/b;-><init>(Lc/e/b/k/f;)V

    iput-object v0, p0, Lc/e/b/k/f;->q0:Lc/e/b/k/m/b;

    .line 3
    new-instance v0, Lc/e/b/k/m/e;

    invoke-direct {v0, p0}, Lc/e/b/k/m/e;-><init>(Lc/e/b/k/f;)V

    iput-object v0, p0, Lc/e/b/k/f;->r0:Lc/e/b/k/m/e;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/e/b/k/f;->s0:Lc/e/b/k/m/b$b;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lc/e/b/k/f;->t0:Z

    .line 6
    new-instance v2, Lc/e/b/d;

    invoke-direct {v2}, Lc/e/b/d;-><init>()V

    iput-object v2, p0, Lc/e/b/k/f;->v0:Lc/e/b/d;

    .line 7
    iput v1, p0, Lc/e/b/k/f;->y0:I

    .line 8
    iput v1, p0, Lc/e/b/k/f;->z0:I

    const/4 v2, 0x4

    new-array v3, v2, [Lc/e/b/k/c;

    .line 9
    iput-object v3, p0, Lc/e/b/k/f;->A0:[Lc/e/b/k/c;

    new-array v2, v2, [Lc/e/b/k/c;

    .line 10
    iput-object v2, p0, Lc/e/b/k/f;->B0:[Lc/e/b/k/c;

    const/16 v2, 0x101

    .line 11
    iput v2, p0, Lc/e/b/k/f;->C0:I

    .line 12
    iput-boolean v1, p0, Lc/e/b/k/f;->D0:Z

    .line 13
    iput-boolean v1, p0, Lc/e/b/k/f;->E0:Z

    .line 14
    iput-object v0, p0, Lc/e/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    .line 15
    iput-object v0, p0, Lc/e/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    .line 16
    iput-object v0, p0, Lc/e/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    .line 17
    iput-object v0, p0, Lc/e/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance v0, Lc/e/b/k/m/b$a;

    invoke-direct {v0}, Lc/e/b/k/m/b$a;-><init>()V

    iput-object v0, p0, Lc/e/b/k/f;->J0:Lc/e/b/k/m/b$a;

    return-void
.end method

.method public static A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v1

    iput-object v1, p2, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    .line 2
    invoke-virtual {p0}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v1

    iput-object v1, p2, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    .line 3
    invoke-virtual {p0}, Lc/e/b/k/e;->R()I

    move-result v1

    iput v1, p2, Lc/e/b/k/m/b$a;->c:I

    .line 4
    invoke-virtual {p0}, Lc/e/b/k/e;->v()I

    move-result v1

    iput v1, p2, Lc/e/b/k/m/b$a;->d:I

    .line 5
    iput-boolean v0, p2, Lc/e/b/k/m/b$a;->i:Z

    .line 6
    iput p3, p2, Lc/e/b/k/m/b$a;->j:I

    .line 7
    iget-object p3, p2, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_29

    const/4 p3, 0x1

    goto :goto_2a

    :cond_29
    const/4 p3, 0x0

    .line 8
    :goto_2a
    iget-object v1, p2, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v1, v3, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    const/4 v3, 0x0

    if-eqz p3, :cond_3e

    .line 9
    iget v4, p0, Lc/e/b/k/e;->U:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_3e

    const/4 v4, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v4, 0x0

    :goto_3f
    if-eqz v1, :cond_49

    .line 10
    iget v5, p0, Lc/e/b/k/e;->U:F

    cmpl-float v3, v5, v3

    if-lez v3, :cond_49

    const/4 v3, 0x1

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    if-eqz p3, :cond_67

    .line 11
    invoke-virtual {p0, v0}, Lc/e/b/k/e;->V(I)Z

    move-result v5

    if-eqz v5, :cond_67

    iget v5, p0, Lc/e/b/k/e;->n:I

    if-nez v5, :cond_67

    if-nez v4, :cond_67

    .line 12
    sget-object p3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    iput-object p3, p2, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    if-eqz v1, :cond_66

    .line 13
    iget p3, p0, Lc/e/b/k/e;->o:I

    if-nez p3, :cond_66

    .line 14
    sget-object p3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iput-object p3, p2, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    :cond_66
    const/4 p3, 0x0

    :cond_67
    if-eqz v1, :cond_84

    .line 15
    invoke-virtual {p0, v2}, Lc/e/b/k/e;->V(I)Z

    move-result v5

    if-eqz v5, :cond_84

    iget v5, p0, Lc/e/b/k/e;->o:I

    if-nez v5, :cond_84

    if-nez v3, :cond_84

    .line 16
    sget-object v1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    iput-object v1, p2, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    if-eqz p3, :cond_83

    .line 17
    iget v1, p0, Lc/e/b/k/e;->n:I

    if-nez v1, :cond_83

    .line 18
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iput-object v1, p2, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    :cond_83
    const/4 v1, 0x0

    .line 19
    :cond_84
    invoke-virtual {p0}, Lc/e/b/k/e;->e0()Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 20
    sget-object p3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iput-object p3, p2, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    const/4 p3, 0x0

    .line 21
    :cond_8f
    invoke-virtual {p0}, Lc/e/b/k/e;->f0()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 22
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iput-object v1, p2, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    const/4 v1, 0x0

    :cond_9a
    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eqz v4, :cond_dc

    .line 23
    iget-object v4, p0, Lc/e/b/k/e;->p:[I

    aget v0, v4, v0

    if-ne v0, v6, :cond_a9

    .line 24
    sget-object v0, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iput-object v0, p2, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    goto :goto_dc

    :cond_a9
    if-nez v1, :cond_dc

    .line 25
    iget-object v0, p2, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne v0, v1, :cond_b4

    .line 26
    iget v0, p2, Lc/e/b/k/m/b$a;->d:I

    goto :goto_bd

    .line 27
    :cond_b4
    sget-object v0, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    iput-object v0, p2, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    .line 28
    invoke-interface {p1, p0, p2}, Lc/e/b/k/m/b$b;->a(Lc/e/b/k/e;Lc/e/b/k/m/b$a;)V

    .line 29
    iget v0, p2, Lc/e/b/k/m/b$a;->f:I

    .line 30
    :goto_bd
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iput-object v1, p2, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    .line 31
    iget v1, p0, Lc/e/b/k/e;->V:I

    if-eqz v1, :cond_d2

    if-ne v1, v5, :cond_c8

    goto :goto_d2

    .line 32
    :cond_c8
    invoke-virtual {p0}, Lc/e/b/k/e;->t()F

    move-result v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p2, Lc/e/b/k/m/b$a;->c:I

    goto :goto_dc

    .line 33
    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Lc/e/b/k/e;->t()F

    move-result v1

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p2, Lc/e/b/k/m/b$a;->c:I

    :cond_dc
    :goto_dc
    if-eqz v3, :cond_11c

    .line 34
    iget-object v0, p0, Lc/e/b/k/e;->p:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_e9

    .line 35
    sget-object p3, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iput-object p3, p2, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    goto :goto_11c

    :cond_e9
    if-nez p3, :cond_11c

    .line 36
    iget-object p3, p2, Lc/e/b/k/m/b$a;->a:Lc/e/b/k/e$b;

    sget-object v0, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    if-ne p3, v0, :cond_f4

    .line 37
    iget p3, p2, Lc/e/b/k/m/b$a;->c:I

    goto :goto_fd

    .line 38
    :cond_f4
    sget-object p3, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    iput-object p3, p2, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    .line 39
    invoke-interface {p1, p0, p2}, Lc/e/b/k/m/b$b;->a(Lc/e/b/k/e;Lc/e/b/k/m/b$a;)V

    .line 40
    iget p3, p2, Lc/e/b/k/m/b$a;->e:I

    .line 41
    :goto_fd
    sget-object v0, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    iput-object v0, p2, Lc/e/b/k/m/b$a;->b:Lc/e/b/k/e$b;

    .line 42
    iget v0, p0, Lc/e/b/k/e;->V:I

    if-eqz v0, :cond_113

    if-ne v0, v5, :cond_108

    goto :goto_113

    :cond_108
    int-to-float p3, p3

    .line 43
    invoke-virtual {p0}, Lc/e/b/k/e;->t()F

    move-result v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    iput p3, p2, Lc/e/b/k/m/b$a;->d:I

    goto :goto_11c

    :cond_113
    :goto_113
    int-to-float p3, p3

    .line 44
    invoke-virtual {p0}, Lc/e/b/k/e;->t()F

    move-result v0

    div-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p2, Lc/e/b/k/m/b$a;->d:I

    .line 45
    :cond_11c
    :goto_11c
    invoke-interface {p1, p0, p2}, Lc/e/b/k/m/b$b;->a(Lc/e/b/k/e;Lc/e/b/k/m/b$a;)V

    .line 46
    iget p1, p2, Lc/e/b/k/m/b$a;->e:I

    invoke-virtual {p0, p1}, Lc/e/b/k/e;->U0(I)V

    .line 47
    iget p1, p2, Lc/e/b/k/m/b$a;->f:I

    invoke-virtual {p0, p1}, Lc/e/b/k/e;->v0(I)V

    .line 48
    iget-boolean p1, p2, Lc/e/b/k/m/b$a;->h:Z

    invoke-virtual {p0, p1}, Lc/e/b/k/e;->u0(Z)V

    .line 49
    iget p1, p2, Lc/e/b/k/m/b$a;->g:I

    invoke-virtual {p0, p1}, Lc/e/b/k/e;->k0(I)V

    .line 50
    sget p0, Lc/e/b/k/m/b$a;->k:I

    iput p0, p2, Lc/e/b/k/m/b$a;->j:I

    .line 51
    iget-boolean p0, p2, Lc/e/b/k/m/b$a;->i:Z

    return p0
.end method

.method private C1()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/b/k/f;->y0:I

    .line 2
    iput v0, p0, Lc/e/b/k/f;->z0:I

    return-void
.end method

.method private g1(Lc/e/b/k/e;)V
    .registers 7

    .line 1
    iget v0, p0, Lc/e/b/k/f;->y0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/e/b/k/f;->B0:[Lc/e/b/k/c;

    array-length v2, v1

    if-lt v0, v2, :cond_14

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/b/k/c;

    iput-object v0, p0, Lc/e/b/k/f;->B0:[Lc/e/b/k/c;

    .line 4
    :cond_14
    iget-object v0, p0, Lc/e/b/k/f;->B0:[Lc/e/b/k/c;

    iget v1, p0, Lc/e/b/k/f;->y0:I

    new-instance v2, Lc/e/b/k/c;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lc/e/b/k/f;->x1()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lc/e/b/k/c;-><init>(Lc/e/b/k/e;IZ)V

    aput-object v2, v0, v1

    .line 5
    iget p1, p0, Lc/e/b/k/f;->y0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/b/k/f;->y0:I

    return-void
.end method

.method private j1(Lc/e/b/k/d;Lc/e/b/i;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v0, p1}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lc/e/b/k/f;->v0:Lc/e/b/d;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p2, p1, v1, v2}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    return-void
.end method

.method private k1(Lc/e/b/k/d;Lc/e/b/i;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v0, p1}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lc/e/b/k/f;->v0:Lc/e/b/d;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p1, p2, v1, v2}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    return-void
.end method

.method private l1(Lc/e/b/k/e;)V
    .registers 7

    .line 1
    iget v0, p0, Lc/e/b/k/f;->z0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lc/e/b/k/f;->A0:[Lc/e/b/k/c;

    array-length v3, v2

    if-lt v0, v3, :cond_14

    .line 2
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    .line 3
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/b/k/c;

    iput-object v0, p0, Lc/e/b/k/f;->A0:[Lc/e/b/k/c;

    .line 4
    :cond_14
    iget-object v0, p0, Lc/e/b/k/f;->A0:[Lc/e/b/k/c;

    iget v2, p0, Lc/e/b/k/f;->z0:I

    new-instance v3, Lc/e/b/k/c;

    invoke-virtual {p0}, Lc/e/b/k/f;->x1()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Lc/e/b/k/c;-><init>(Lc/e/b/k/e;IZ)V

    aput-object v3, v0, v2

    .line 5
    iget p1, p0, Lc/e/b/k/f;->z0:I

    add-int/2addr p1, v1

    iput p1, p0, Lc/e/b/k/f;->z0:I

    return-void
.end method


# virtual methods
.method public B1(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lc/e/b/k/f;->C0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public D1(Lc/e/b/k/m/b$b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lc/e/b/k/f;->s0:Lc/e/b/k/m/b$b;

    .line 2
    iget-object v0, p0, Lc/e/b/k/f;->r0:Lc/e/b/k/m/e;

    invoke-virtual {v0, p1}, Lc/e/b/k/m/e;->n(Lc/e/b/k/m/b$b;)V

    return-void
.end method

.method public E1(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc/e/b/k/f;->C0:I

    const/16 p1, 0x200

    .line 2
    invoke-virtual {p0, p1}, Lc/e/b/k/f;->B1(I)Z

    move-result p1

    sput-boolean p1, Lc/e/b/d;->r:Z

    return-void
.end method

.method public F1(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lc/e/b/k/f;->t0:Z

    return-void
.end method

.method public G1(Lc/e/b/d;[Z)V
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    aput-boolean v1, p2, v0

    const/16 p2, 0x40

    .line 2
    invoke-virtual {p0, p2}, Lc/e/b/k/f;->B1(I)Z

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/e/b/k/e;->Z0(Lc/e/b/d;Z)V

    .line 4
    iget-object v0, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_13
    if-ge v1, v0, :cond_23

    .line 5
    iget-object v2, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/b/k/e;

    .line 6
    invoke-virtual {v2, p1, p2}, Lc/e/b/k/e;->Z0(Lc/e/b/d;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_23
    return-void
.end method

.method public H1()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->q0:Lc/e/b/k/m/b;

    invoke-virtual {v0, p0}, Lc/e/b/k/m/b;->e(Lc/e/b/k/f;)V

    return-void
.end method

.method public Y0(ZZ)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lc/e/b/k/e;->Y0(ZZ)V

    .line 2
    iget-object v0, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 3
    iget-object v2, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/b/k/e;

    .line 4
    invoke-virtual {v2, p1, p2}, Lc/e/b/k/e;->Y0(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public b1()V
    .registers 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1
    iput v2, v1, Lc/e/b/k/e;->W:I

    .line 2
    iput v2, v1, Lc/e/b/k/e;->X:I

    .line 3
    iput-boolean v2, v1, Lc/e/b/k/f;->D0:Z

    .line 4
    iput-boolean v2, v1, Lc/e/b/k/f;->E0:Z

    .line 5
    iget-object v0, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->R()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->v()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 8
    iget-object v5, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    .line 9
    aget-object v5, v5, v2

    .line 10
    iget-object v8, v1, Lc/e/b/k/f;->u0:Lc/e/b/e;

    if-eqz v8, :cond_33

    .line 11
    iget-wide v9, v8, Lc/e/b/e;->z:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Lc/e/b/e;->z:J

    .line 12
    :cond_33
    iget v8, v1, Lc/e/b/k/f;->C0:I

    invoke-static {v8, v6}, Lc/e/b/k/j;->b(II)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 13
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/f;->r1()Lc/e/b/k/m/b$b;

    move-result-object v8

    invoke-static {v1, v8}, Lc/e/b/k/m/h;->h(Lc/e/b/k/f;Lc/e/b/k/m/b$b;)V

    const/4 v8, 0x0

    :goto_43
    if-ge v8, v3, :cond_8f

    .line 14
    iget-object v9, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/e/b/k/e;

    .line 15
    invoke-virtual {v9}, Lc/e/b/k/e;->d0()Z

    move-result v10

    if-eqz v10, :cond_8c

    instance-of v10, v9, Lc/e/b/k/g;

    if-nez v10, :cond_8c

    instance-of v10, v9, Lc/e/b/k/a;

    if-nez v10, :cond_8c

    instance-of v10, v9, Lc/e/b/k/k;

    if-nez v10, :cond_8c

    .line 16
    invoke-virtual {v9}, Lc/e/b/k/e;->c0()Z

    move-result v10

    if-nez v10, :cond_8c

    .line 17
    invoke-virtual {v9, v2}, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;

    move-result-object v10

    .line 18
    invoke-virtual {v9, v6}, Lc/e/b/k/e;->s(I)Lc/e/b/k/e$b;

    move-result-object v11

    .line 19
    sget-object v12, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v10, v12, :cond_7d

    iget v10, v9, Lc/e/b/k/e;->n:I

    if-eq v10, v6, :cond_7d

    if-ne v11, v12, :cond_7d

    iget v10, v9, Lc/e/b/k/e;->o:I

    if-eq v10, v6, :cond_7d

    const/4 v10, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v10, 0x0

    :goto_7e
    if-nez v10, :cond_8c

    .line 20
    new-instance v10, Lc/e/b/k/m/b$a;

    invoke-direct {v10}, Lc/e/b/k/m/b$a;-><init>()V

    .line 21
    iget-object v11, v1, Lc/e/b/k/f;->s0:Lc/e/b/k/m/b$b;

    sget v12, Lc/e/b/k/m/b$a;->k:I

    invoke-static {v9, v11, v10, v12}, Lc/e/b/k/f;->A1(Lc/e/b/k/e;Lc/e/b/k/m/b$b;Lc/e/b/k/m/b$a;I)Z

    :cond_8c
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    :cond_8f
    const/4 v8, 0x2

    if-le v3, v8, :cond_dc

    .line 22
    sget-object v9, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v5, v9, :cond_98

    if-ne v7, v9, :cond_dc

    :cond_98
    iget v9, v1, Lc/e/b/k/f;->C0:I

    const/16 v10, 0x400

    .line 23
    invoke-static {v9, v10}, Lc/e/b/k/j;->b(II)Z

    move-result v9

    if-eqz v9, :cond_dc

    .line 24
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/f;->r1()Lc/e/b/k/m/b$b;

    move-result-object v9

    invoke-static {v1, v9}, Lc/e/b/k/m/i;->c(Lc/e/b/k/f;Lc/e/b/k/m/b$b;)Z

    move-result v9

    if-eqz v9, :cond_dc

    .line 25
    sget-object v9, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v5, v9, :cond_c2

    .line 26
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->R()I

    move-result v9

    if-ge v0, v9, :cond_be

    if-lez v0, :cond_be

    .line 27
    invoke-virtual {v1, v0}, Lc/e/b/k/e;->U0(I)V

    .line 28
    iput-boolean v6, v1, Lc/e/b/k/f;->D0:Z

    goto :goto_c2

    .line 29
    :cond_be
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->R()I

    move-result v0

    .line 30
    :cond_c2
    :goto_c2
    sget-object v9, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v7, v9, :cond_d8

    .line 31
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->v()I

    move-result v9

    if-ge v4, v9, :cond_d4

    if-lez v4, :cond_d4

    .line 32
    invoke-virtual {v1, v4}, Lc/e/b/k/e;->v0(I)V

    .line 33
    iput-boolean v6, v1, Lc/e/b/k/f;->E0:Z

    goto :goto_d8

    .line 34
    :cond_d4
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->v()I

    move-result v4

    :cond_d8
    :goto_d8
    move v9, v4

    move v4, v0

    const/4 v0, 0x1

    goto :goto_df

    :cond_dc
    move v9, v4

    move v4, v0

    const/4 v0, 0x0

    :goto_df
    const/16 v10, 0x40

    .line 35
    invoke-virtual {v1, v10}, Lc/e/b/k/f;->B1(I)Z

    move-result v11

    if-nez v11, :cond_f2

    const/16 v11, 0x80

    invoke-virtual {v1, v11}, Lc/e/b/k/f;->B1(I)Z

    move-result v11

    if-eqz v11, :cond_f0

    goto :goto_f2

    :cond_f0
    const/4 v11, 0x0

    goto :goto_f3

    :cond_f2
    :goto_f2
    const/4 v11, 0x1

    .line 36
    :goto_f3
    iget-object v12, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    iput-boolean v2, v12, Lc/e/b/d;->h:Z

    .line 37
    iput-boolean v2, v12, Lc/e/b/d;->i:Z

    .line 38
    iget v13, v1, Lc/e/b/k/f;->C0:I

    if-eqz v13, :cond_101

    if-eqz v11, :cond_101

    .line 39
    iput-boolean v6, v12, Lc/e/b/d;->i:Z

    .line 40
    :cond_101
    iget-object v11, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    .line 41
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v12

    sget-object v13, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-eq v12, v13, :cond_116

    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->O()Lc/e/b/k/e$b;

    move-result-object v12

    sget-object v13, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v12, v13, :cond_114

    goto :goto_116

    :cond_114
    const/4 v12, 0x0

    goto :goto_117

    :cond_116
    :goto_116
    const/4 v12, 0x1

    .line 42
    :goto_117
    invoke-direct/range {p0 .. p0}, Lc/e/b/k/f;->C1()V

    const/4 v13, 0x0

    :goto_11b
    if-ge v13, v3, :cond_131

    .line 43
    iget-object v14, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc/e/b/k/e;

    .line 44
    instance-of v15, v14, Lc/e/b/k/l;

    if-eqz v15, :cond_12e

    .line 45
    check-cast v14, Lc/e/b/k/l;

    invoke-virtual {v14}, Lc/e/b/k/l;->b1()V

    :cond_12e
    add-int/lit8 v13, v13, 0x1

    goto :goto_11b

    .line 46
    :cond_131
    invoke-virtual {v1, v10}, Lc/e/b/k/f;->B1(I)Z

    move-result v10

    move v13, v0

    const/4 v0, 0x0

    const/4 v14, 0x1

    :goto_138
    if-eqz v14, :cond_31d

    add-int/lit8 v15, v0, 0x1

    .line 47
    :try_start_13c
    iget-object v0, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v0}, Lc/e/b/d;->D()V

    .line 48
    invoke-direct/range {p0 .. p0}, Lc/e/b/k/f;->C1()V

    .line 49
    iget-object v0, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v1, v0}, Lc/e/b/k/e;->k(Lc/e/b/d;)V

    const/4 v0, 0x0

    :goto_14a
    if-ge v0, v3, :cond_15e

    .line 50
    iget-object v6, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/b/k/e;

    .line 51
    iget-object v2, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v6, v2}, Lc/e/b/k/e;->k(Lc/e/b/d;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_14a

    .line 52
    :cond_15e
    iget-object v0, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v1, v0}, Lc/e/b/k/f;->f1(Lc/e/b/d;)Z

    move-result v14

    .line 53
    iget-object v0, v1, Lc/e/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v0, :cond_186

    iget-object v0, v1, Lc/e/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_186

    .line 54
    iget-object v0, v1, Lc/e/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/d;

    iget-object v6, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    iget-object v8, v1, Lc/e/b/k/e;->G:Lc/e/b/k/d;

    invoke-virtual {v6, v8}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lc/e/b/k/f;->k1(Lc/e/b/k/d;Lc/e/b/i;)V

    .line 55
    iput-object v2, v1, Lc/e/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    .line 56
    :cond_186
    iget-object v0, v1, Lc/e/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a7

    iget-object v0, v1, Lc/e/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a7

    .line 57
    iget-object v0, v1, Lc/e/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/d;

    iget-object v6, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    iget-object v8, v1, Lc/e/b/k/e;->I:Lc/e/b/k/d;

    invoke-virtual {v6, v8}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lc/e/b/k/f;->j1(Lc/e/b/k/d;Lc/e/b/i;)V

    .line 58
    iput-object v2, v1, Lc/e/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    .line 59
    :cond_1a7
    iget-object v0, v1, Lc/e/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c8

    iget-object v0, v1, Lc/e/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c8

    .line 60
    iget-object v0, v1, Lc/e/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/d;

    iget-object v6, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    iget-object v8, v1, Lc/e/b/k/e;->F:Lc/e/b/k/d;

    invoke-virtual {v6, v8}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lc/e/b/k/f;->k1(Lc/e/b/k/d;Lc/e/b/i;)V

    .line 61
    iput-object v2, v1, Lc/e/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    .line 62
    :cond_1c8
    iget-object v0, v1, Lc/e/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1e9

    iget-object v0, v1, Lc/e/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e9

    .line 63
    iget-object v0, v1, Lc/e/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/k/d;

    iget-object v6, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    iget-object v8, v1, Lc/e/b/k/e;->H:Lc/e/b/k/d;

    invoke-virtual {v6, v8}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lc/e/b/k/f;->j1(Lc/e/b/k/d;Lc/e/b/i;)V

    .line 64
    iput-object v2, v1, Lc/e/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    :cond_1e9
    if-eqz v14, :cond_20b

    .line 65
    iget-object v0, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v0}, Lc/e/b/d;->z()V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_1f0} :catch_1f1

    goto :goto_20b

    :catch_1f1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXCEPTION : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_20b
    :goto_20b
    if-eqz v14, :cond_215

    .line 68
    iget-object v0, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    sget-object v2, Lc/e/b/k/j;->a:[Z

    invoke-virtual {v1, v0, v2}, Lc/e/b/k/f;->G1(Lc/e/b/d;[Z)V

    goto :goto_22d

    .line 69
    :cond_215
    iget-object v0, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v1, v0, v10}, Lc/e/b/k/e;->Z0(Lc/e/b/d;Z)V

    const/4 v0, 0x0

    :goto_21b
    if-ge v0, v3, :cond_22d

    .line 70
    iget-object v2, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/b/k/e;

    .line 71
    iget-object v6, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v2, v6, v10}, Lc/e/b/k/e;->Z0(Lc/e/b/d;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21b

    :cond_22d
    :goto_22d
    if-eqz v12, :cond_29d

    const/16 v0, 0x8

    if-ge v15, v0, :cond_29d

    .line 72
    sget-object v0, Lc/e/b/k/j;->a:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_29d

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_23d
    if-ge v0, v3, :cond_262

    .line 73
    iget-object v14, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc/e/b/k/e;

    .line 74
    iget v2, v14, Lc/e/b/k/e;->W:I

    invoke-virtual {v14}, Lc/e/b/k/e;->R()I

    move-result v16

    add-int v2, v2, v16

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 75
    iget v2, v14, Lc/e/b/k/e;->X:I

    invoke-virtual {v14}, Lc/e/b/k/e;->v()I

    move-result v14

    add-int/2addr v2, v14

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    goto :goto_23d

    .line 76
    :cond_262
    iget v0, v1, Lc/e/b/k/e;->Z:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 77
    iget v2, v1, Lc/e/b/k/e;->a0:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 78
    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v5, v6, :cond_285

    .line 79
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->R()I

    move-result v6

    if-ge v6, v0, :cond_285

    .line 80
    invoke-virtual {v1, v0}, Lc/e/b/k/e;->U0(I)V

    .line 81
    iget-object v0, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    const/4 v8, 0x0

    aput-object v6, v0, v8

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_286

    :cond_285
    const/4 v0, 0x0

    .line 82
    :goto_286
    sget-object v6, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v7, v6, :cond_29e

    .line 83
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->v()I

    move-result v6

    if-ge v6, v2, :cond_29e

    .line 84
    invoke-virtual {v1, v2}, Lc/e/b/k/e;->v0(I)V

    .line 85
    iget-object v0, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    const/4 v6, 0x1

    aput-object v2, v0, v6

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_29e

    :cond_29d
    const/4 v0, 0x0

    .line 86
    :cond_29e
    :goto_29e
    iget v2, v1, Lc/e/b/k/e;->Z:I

    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->R()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 87
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->R()I

    move-result v6

    if-le v2, v6, :cond_2ba

    .line 88
    invoke-virtual {v1, v2}, Lc/e/b/k/e;->U0(I)V

    .line 89
    iget-object v0, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    const/4 v0, 0x1

    const/4 v13, 0x1

    .line 90
    :cond_2ba
    iget v2, v1, Lc/e/b/k/e;->a0:I

    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->v()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 91
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->v()I

    move-result v6

    if-le v2, v6, :cond_2d7

    .line 92
    invoke-virtual {v1, v2}, Lc/e/b/k/e;->v0(I)V

    .line 93
    iget-object v0, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    const/4 v6, 0x1

    aput-object v2, v0, v6

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_2d8

    :cond_2d7
    const/4 v6, 0x1

    :goto_2d8
    if-nez v13, :cond_316

    .line 94
    iget-object v2, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v8, 0x0

    aget-object v2, v2, v8

    sget-object v14, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v2, v14, :cond_2f8

    if-lez v4, :cond_2f8

    .line 95
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->R()I

    move-result v2

    if-le v2, v4, :cond_2f8

    .line 96
    iput-boolean v6, v1, Lc/e/b/k/f;->D0:Z

    .line 97
    iget-object v0, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    aput-object v2, v0, v8

    .line 98
    invoke-virtual {v1, v4}, Lc/e/b/k/e;->U0(I)V

    const/4 v0, 0x1

    const/4 v13, 0x1

    .line 99
    :cond_2f8
    iget-object v2, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v2, v2, v6

    sget-object v8, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v2, v8, :cond_316

    if-lez v9, :cond_316

    .line 100
    invoke-virtual/range {p0 .. p0}, Lc/e/b/k/e;->v()I

    move-result v2

    if-le v2, v9, :cond_316

    .line 101
    iput-boolean v6, v1, Lc/e/b/k/f;->E0:Z

    .line 102
    iget-object v0, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    aput-object v2, v0, v6

    .line 103
    invoke-virtual {v1, v9}, Lc/e/b/k/e;->v0(I)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    goto :goto_317

    :cond_316
    move v14, v0

    :goto_317
    move v0, v15

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    goto/16 :goto_138

    .line 104
    :cond_31d
    iput-object v11, v1, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    if-eqz v13, :cond_329

    .line 105
    iget-object v0, v1, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    const/4 v2, 0x0

    aput-object v5, v0, v2

    const/4 v2, 0x1

    .line 106
    aput-object v7, v0, v2

    .line 107
    :cond_329
    iget-object v0, v1, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v0}, Lc/e/b/d;->v()Lc/e/b/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc/e/b/k/l;->j0(Lc/e/b/c;)V

    return-void
.end method

.method e1(Lc/e/b/k/e;I)V
    .registers 4

    if-nez p2, :cond_6

    .line 1
    invoke-direct {p0, p1}, Lc/e/b/k/f;->g1(Lc/e/b/k/e;)V

    goto :goto_c

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 2
    invoke-direct {p0, p1}, Lc/e/b/k/f;->l1(Lc/e/b/k/e;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public f1(Lc/e/b/d;)Z
    .registers 14

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, v0}, Lc/e/b/k/f;->B1(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/e/b/k/e;->g(Lc/e/b/d;Z)V

    .line 3
    iget-object v1, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    const/4 v5, 0x1

    if-ge v3, v1, :cond_2b

    .line 4
    iget-object v6, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/b/k/e;

    .line 5
    invoke-virtual {v6, v2, v2}, Lc/e/b/k/e;->C0(IZ)V

    .line 6
    invoke-virtual {v6, v5, v2}, Lc/e/b/k/e;->C0(IZ)V

    .line 7
    instance-of v6, v6, Lc/e/b/k/a;

    if-eqz v6, :cond_28

    const/4 v4, 0x1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2b
    if-eqz v4, :cond_44

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v1, :cond_44

    .line 8
    iget-object v4, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/b/k/e;

    .line 9
    instance-of v6, v4, Lc/e/b/k/a;

    if-eqz v6, :cond_41

    .line 10
    check-cast v4, Lc/e/b/k/a;

    invoke-virtual {v4}, Lc/e/b/k/a;->h1()V

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_44
    const/4 v3, 0x0

    :goto_45
    if-ge v3, v1, :cond_5b

    .line 11
    iget-object v4, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/b/k/e;

    .line 12
    invoke-virtual {v4}, Lc/e/b/k/e;->f()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 13
    invoke-virtual {v4, p1, v0}, Lc/e/b/k/e;->g(Lc/e/b/d;Z)V

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 14
    :cond_5b
    sget-boolean v3, Lc/e/b/d;->r:Z

    if-eqz v3, :cond_a5

    .line 15
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :goto_65
    if-ge v4, v1, :cond_7b

    .line 16
    iget-object v6, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/b/k/e;

    .line 17
    invoke-virtual {v6}, Lc/e/b/k/e;->f()Z

    move-result v7

    if-nez v7, :cond_78

    .line 18
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 19
    :cond_7b
    invoke-virtual {p0}, Lc/e/b/k/e;->y()Lc/e/b/k/e$b;

    move-result-object v1

    sget-object v4, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v1, v4, :cond_85

    const/4 v10, 0x0

    goto :goto_86

    :cond_85
    const/4 v10, 0x1

    :goto_86
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    .line 20
    invoke-virtual/range {v6 .. v11}, Lc/e/b/k/e;->e(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/HashSet;IZ)V

    .line 21
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ed

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/b/k/e;

    .line 22
    invoke-static {p0, p1, v3}, Lc/e/b/k/j;->a(Lc/e/b/k/f;Lc/e/b/d;Lc/e/b/k/e;)V

    .line 23
    invoke-virtual {v3, p1, v0}, Lc/e/b/k/e;->g(Lc/e/b/d;Z)V

    goto :goto_92

    :cond_a5
    const/4 v3, 0x0

    :goto_a6
    if-ge v3, v1, :cond_ed

    .line 24
    iget-object v4, p0, Lc/e/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/b/k/e;

    .line 25
    instance-of v6, v4, Lc/e/b/k/f;

    if-eqz v6, :cond_de

    .line 26
    iget-object v6, v4, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v7, v6, v2

    .line 27
    aget-object v6, v6, v5

    .line 28
    sget-object v8, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v7, v8, :cond_c3

    .line 29
    sget-object v8, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    invoke-virtual {v4, v8}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 30
    :cond_c3
    sget-object v8, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v6, v8, :cond_cc

    .line 31
    sget-object v8, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    invoke-virtual {v4, v8}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    .line 32
    :cond_cc
    invoke-virtual {v4, p1, v0}, Lc/e/b/k/e;->g(Lc/e/b/d;Z)V

    .line 33
    sget-object v8, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v7, v8, :cond_d6

    .line 34
    invoke-virtual {v4, v7}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 35
    :cond_d6
    sget-object v7, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-ne v6, v7, :cond_ea

    .line 36
    invoke-virtual {v4, v6}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    goto :goto_ea

    .line 37
    :cond_de
    invoke-static {p0, p1, v4}, Lc/e/b/k/j;->a(Lc/e/b/k/f;Lc/e/b/d;Lc/e/b/k/e;)V

    .line 38
    invoke-virtual {v4}, Lc/e/b/k/e;->f()Z

    move-result v6

    if-nez v6, :cond_ea

    .line 39
    invoke-virtual {v4, p1, v0}, Lc/e/b/k/e;->g(Lc/e/b/d;Z)V

    :cond_ea
    :goto_ea
    add-int/lit8 v3, v3, 0x1

    goto :goto_a6

    .line 40
    :cond_ed
    iget v0, p0, Lc/e/b/k/f;->y0:I

    const/4 v1, 0x0

    if-lez v0, :cond_f5

    .line 41
    invoke-static {p0, p1, v1, v2}, Lc/e/b/k/b;->b(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/ArrayList;I)V

    .line 42
    :cond_f5
    iget v0, p0, Lc/e/b/k/f;->z0:I

    if-lez v0, :cond_fc

    .line 43
    invoke-static {p0, p1, v1, v5}, Lc/e/b/k/b;->b(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/ArrayList;I)V

    :cond_fc
    return v5
.end method

.method public h0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->v0:Lc/e/b/d;

    invoke-virtual {v0}, Lc/e/b/d;->D()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/e/b/k/f;->w0:I

    .line 3
    iput v0, p0, Lc/e/b/k/f;->x0:I

    .line 4
    invoke-super {p0}, Lc/e/b/k/l;->h0()V

    return-void
.end method

.method public h1(Lc/e/b/k/d;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {p1}, Lc/e/b/k/d;->d()I

    move-result v0

    iget-object v1, p0, Lc/e/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/d;

    invoke-virtual {v1}, Lc/e/b/k/d;->d()I

    move-result v1

    if-le v0, v1, :cond_23

    .line 3
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/e/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    :cond_23
    return-void
.end method

.method public i1(Lc/e/b/k/d;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {p1}, Lc/e/b/k/d;->d()I

    move-result v0

    iget-object v1, p0, Lc/e/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/d;

    invoke-virtual {v1}, Lc/e/b/k/d;->d()I

    move-result v1

    if-le v0, v1, :cond_23

    .line 3
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/e/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    :cond_23
    return-void
.end method

.method m1(Lc/e/b/k/d;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {p1}, Lc/e/b/k/d;->d()I

    move-result v0

    iget-object v1, p0, Lc/e/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/d;

    invoke-virtual {v1}, Lc/e/b/k/d;->d()I

    move-result v1

    if-le v0, v1, :cond_23

    .line 3
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/e/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    :cond_23
    return-void
.end method

.method n1(Lc/e/b/k/d;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {p1}, Lc/e/b/k/d;->d()I

    move-result v0

    iget-object v1, p0, Lc/e/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/d;

    invoke-virtual {v1}, Lc/e/b/k/d;->d()I

    move-result v1

    if-le v0, v1, :cond_23

    .line 3
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/e/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    :cond_23
    return-void
.end method

.method public o1(Z)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->r0:Lc/e/b/k/m/e;

    invoke-virtual {v0, p1}, Lc/e/b/k/m/e;->f(Z)Z

    move-result p1

    return p1
.end method

.method public p1(Z)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->r0:Lc/e/b/k/m/e;

    invoke-virtual {v0, p1}, Lc/e/b/k/m/e;->g(Z)Z

    move-result p1

    return p1
.end method

.method public q1(ZI)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->r0:Lc/e/b/k/m/e;

    invoke-virtual {v0, p1, p2}, Lc/e/b/k/m/e;->h(ZI)Z

    move-result p1

    return p1
.end method

.method public r1()Lc/e/b/k/m/b$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->s0:Lc/e/b/k/m/b$b;

    return-object v0
.end method

.method public s1()I
    .registers 2

    .line 1
    iget v0, p0, Lc/e/b/k/f;->C0:I

    return v0
.end method

.method public t1()Lc/e/b/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->v0:Lc/e/b/d;

    return-object v0
.end method

.method public u1()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->r0:Lc/e/b/k/m/e;

    invoke-virtual {v0}, Lc/e/b/k/m/e;->j()V

    return-void
.end method

.method public v1()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/k/f;->r0:Lc/e/b/k/m/e;

    invoke-virtual {v0}, Lc/e/b/k/m/e;->k()V

    return-void
.end method

.method public w1()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/f;->E0:Z

    return v0
.end method

.method public x1()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/f;->t0:Z

    return v0
.end method

.method public y1()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/f;->D0:Z

    return v0
.end method

.method public z1(IIIIIIIII)J
    .registers 22

    move-object v11, p0

    move/from16 v3, p8

    .line 1
    iput v3, v11, Lc/e/b/k/f;->w0:I

    move/from16 v4, p9

    .line 2
    iput v4, v11, Lc/e/b/k/f;->x0:I

    .line 3
    iget-object v0, v11, Lc/e/b/k/f;->q0:Lc/e/b/k/m/b;

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lc/e/b/k/m/b;->d(Lc/e/b/k/f;IIIIIIIII)J

    move-result-wide v0

    return-wide v0
.end method
