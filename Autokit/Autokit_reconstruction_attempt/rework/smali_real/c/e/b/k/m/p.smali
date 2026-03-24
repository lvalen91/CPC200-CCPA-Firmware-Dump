.class public abstract Lc/e/b/k/m/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/e/b/k/m/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/b/k/m/p$b;
    }
.end annotation


# instance fields
.field public a:I

.field b:Lc/e/b/k/e;

.field c:Lc/e/b/k/m/m;

.field protected d:Lc/e/b/k/e$b;

.field e:Lc/e/b/k/m/g;

.field public f:I

.field g:Z

.field public h:Lc/e/b/k/m/f;

.field public i:Lc/e/b/k/m/f;

.field protected j:Lc/e/b/k/m/p$b;


# direct methods
.method public constructor <init>(Lc/e/b/k/e;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/b/k/m/g;

    invoke-direct {v0, p0}, Lc/e/b/k/m/g;-><init>(Lc/e/b/k/m/p;)V

    iput-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/e/b/k/m/p;->f:I

    .line 4
    iput-boolean v0, p0, Lc/e/b/k/m/p;->g:Z

    .line 5
    new-instance v0, Lc/e/b/k/m/f;

    invoke-direct {v0, p0}, Lc/e/b/k/m/f;-><init>(Lc/e/b/k/m/p;)V

    iput-object v0, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    .line 6
    new-instance v0, Lc/e/b/k/m/f;

    invoke-direct {v0, p0}, Lc/e/b/k/m/f;-><init>(Lc/e/b/k/m/p;)V

    iput-object v0, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    .line 7
    sget-object v0, Lc/e/b/k/m/p$b;->b:Lc/e/b/k/m/p$b;

    iput-object v0, p0, Lc/e/b/k/m/p;->j:Lc/e/b/k/m/p$b;

    .line 8
    iput-object p1, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    return-void
.end method

.method private l(II)V
    .registers 9

    .line 1
    iget v0, p0, Lc/e/b/k/m/p;->a:I

    if-eqz v0, :cond_9d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8b

    const/4 p2, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq v0, p2, :cond_5a

    const/4 p2, 0x3

    if-eq v0, p2, :cond_11

    goto/16 :goto_a6

    .line 2
    :cond_11
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    iget-object v3, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    iget-object v4, v3, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;

    sget-object v5, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v4, v5, :cond_2b

    iget v3, v3, Lc/e/b/k/m/p;->a:I

    if-ne v3, p2, :cond_2b

    iget-object v0, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    iget-object v3, v0, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;

    if-ne v3, v5, :cond_2b

    iget v0, v0, Lc/e/b/k/m/p;->a:I

    if-ne v0, p2, :cond_2b

    goto/16 :goto_a6

    .line 3
    :cond_2b
    iget-object p2, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    if-nez p1, :cond_32

    iget-object p2, p2, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    goto :goto_34

    :cond_32
    iget-object p2, p2, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    .line 4
    :goto_34
    iget-object v0, p2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z

    if-eqz v0, :cond_a6

    .line 5
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    invoke-virtual {v0}, Lc/e/b/k/e;->t()F

    move-result v0

    if-ne p1, v1, :cond_4b

    .line 6
    iget-object p1, p2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget p1, p1, Lc/e/b/k/m/f;->g:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_54

    .line 7
    :cond_4b
    iget-object p1, p2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget p1, p1, Lc/e/b/k/m/f;->g:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    add-float/2addr v0, v2

    float-to-int p1, v0

    .line 8
    :goto_54
    iget-object p2, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {p2, p1}, Lc/e/b/k/m/g;->d(I)V

    goto :goto_a6

    .line 9
    :cond_5a
    iget-object p2, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    invoke-virtual {p2}, Lc/e/b/k/e;->I()Lc/e/b/k/e;

    move-result-object p2

    if-eqz p2, :cond_a6

    if-nez p1, :cond_67

    .line 10
    iget-object p2, p2, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    goto :goto_69

    :cond_67
    iget-object p2, p2, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    .line 11
    :goto_69
    iget-object v0, p2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v0, v0, Lc/e/b/k/m/f;->j:Z

    if-eqz v0, :cond_a6

    .line 12
    iget-object v0, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    if-nez p1, :cond_76

    iget v0, v0, Lc/e/b/k/e;->s:F

    goto :goto_78

    :cond_76
    iget v0, v0, Lc/e/b/k/e;->v:F

    .line 13
    :goto_78
    iget-object p2, p2, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget p2, p2, Lc/e/b/k/m/f;->g:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    add-float/2addr p2, v2

    float-to-int p2, p2

    .line 14
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {p0, p2, p1}, Lc/e/b/k/m/p;->g(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lc/e/b/k/m/g;->d(I)V

    goto :goto_a6

    .line 15
    :cond_8b
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget v0, v0, Lc/e/b/k/m/g;->m:I

    invoke-virtual {p0, v0, p1}, Lc/e/b/k/m/p;->g(II)I

    move-result p1

    .line 16
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lc/e/b/k/m/g;->d(I)V

    goto :goto_a6

    .line 17
    :cond_9d
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-virtual {p0, p2, p1}, Lc/e/b/k/m/p;->g(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lc/e/b/k/m/g;->d(I)V

    :cond_a6
    :goto_a6
    return-void
.end method


# virtual methods
.method public a(Lc/e/b/k/m/d;)V
    .registers 2

    return-void
.end method

.method protected final b(Lc/e/b/k/m/f;Lc/e/b/k/m/f;I)V
    .registers 5

    .line 1
    iget-object v0, p1, Lc/e/b/k/m/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iput p3, p1, Lc/e/b/k/m/f;->f:I

    .line 3
    iget-object p2, p2, Lc/e/b/k/m/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final c(Lc/e/b/k/m/f;Lc/e/b/k/m/f;ILc/e/b/k/m/g;)V
    .registers 7

    .line 1
    iget-object v0, p1, Lc/e/b/k/m/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p1, Lc/e/b/k/m/f;->l:Ljava/util/List;

    iget-object v1, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iput p3, p1, Lc/e/b/k/m/f;->h:I

    .line 4
    iput-object p4, p1, Lc/e/b/k/m/f;->i:Lc/e/b/k/m/g;

    .line 5
    iget-object p2, p2, Lc/e/b/k/m/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p2, p4, Lc/e/b/k/m/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method protected final g(II)I
    .registers 4

    if-nez p2, :cond_15

    .line 1
    iget-object p2, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    iget v0, p2, Lc/e/b/k/e;->r:I

    .line 2
    iget p2, p2, Lc/e/b/k/e;->q:I

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_12

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_12
    if-eq p2, p1, :cond_28

    goto :goto_27

    .line 5
    :cond_15
    iget-object p2, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    iget v0, p2, Lc/e/b/k/e;->u:I

    .line 6
    iget p2, p2, Lc/e/b/k/e;->t:I

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_25

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_25
    if-eq p2, p1, :cond_28

    :goto_27
    move p1, p2

    :cond_28
    return p1
.end method

.method protected final h(Lc/e/b/k/d;)Lc/e/b/k/m/f;
    .registers 5

    .line 1
    iget-object p1, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return-object v0

    .line 2
    :cond_6
    iget-object v1, p1, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    .line 3
    iget-object p1, p1, Lc/e/b/k/d;->e:Lc/e/b/k/d$b;

    .line 4
    sget-object v2, Lc/e/b/k/m/p$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_36

    const/4 v2, 0x2

    if-eq p1, v2, :cond_31

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2c

    const/4 v2, 0x4

    if-eq p1, v2, :cond_27

    const/4 v2, 0x5

    if-eq p1, v2, :cond_22

    goto :goto_3a

    .line 5
    :cond_22
    iget-object p1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    .line 6
    iget-object v0, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    goto :goto_3a

    .line 7
    :cond_27
    iget-object p1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    .line 8
    iget-object v0, p1, Lc/e/b/k/m/n;->k:Lc/e/b/k/m/f;

    goto :goto_3a

    .line 9
    :cond_2c
    iget-object p1, v1, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    .line 10
    iget-object v0, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    goto :goto_3a

    .line 11
    :cond_31
    iget-object p1, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    .line 12
    iget-object v0, p1, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    goto :goto_3a

    .line 13
    :cond_36
    iget-object p1, v1, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    .line 14
    iget-object v0, p1, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    :goto_3a
    return-object v0
.end method

.method protected final i(Lc/e/b/k/d;I)Lc/e/b/k/m/f;
    .registers 5

    .line 1
    iget-object v0, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    iget-object v0, v0, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    if-nez p2, :cond_d

    .line 3
    iget-object p2, v0, Lc/e/b/k/e;->d:Lc/e/b/k/m/l;

    goto :goto_f

    :cond_d
    iget-object p2, v0, Lc/e/b/k/e;->e:Lc/e/b/k/m/n;

    .line 4
    :goto_f
    iget-object p1, p1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object p1, p1, Lc/e/b/k/d;->e:Lc/e/b/k/d$b;

    .line 5
    sget-object v0, Lc/e/b/k/m/p$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_28

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x5

    if-eq p1, v0, :cond_28

    goto :goto_2d

    .line 6
    :cond_28
    iget-object v1, p2, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    goto :goto_2d

    .line 7
    :cond_2b
    iget-object v1, p2, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    :goto_2d
    return-object v1
.end method

.method public j()J
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v1, v0, Lc/e/b/k/m/f;->j:Z

    if-eqz v1, :cond_a

    .line 2
    iget v0, v0, Lc/e/b/k/m/f;->g:I

    int-to-long v0, v0

    return-wide v0

    :cond_a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/m/p;->g:Z

    return v0
.end method

.method abstract m()Z
.end method

.method protected n(Lc/e/b/k/m/d;Lc/e/b/k/d;Lc/e/b/k/d;I)V
    .registers 9

    .line 1
    invoke-virtual {p0, p2}, Lc/e/b/k/m/p;->h(Lc/e/b/k/d;)Lc/e/b/k/m/f;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p3}, Lc/e/b/k/m/p;->h(Lc/e/b/k/d;)Lc/e/b/k/m/f;

    move-result-object v0

    .line 3
    iget-boolean v1, p1, Lc/e/b/k/m/f;->j:Z

    if-eqz v1, :cond_7d

    iget-boolean v1, v0, Lc/e/b/k/m/f;->j:Z

    if-nez v1, :cond_11

    goto :goto_7d

    .line 4
    :cond_11
    iget v1, p1, Lc/e/b/k/m/f;->g:I

    invoke-virtual {p2}, Lc/e/b/k/d;->e()I

    move-result p2

    add-int/2addr v1, p2

    .line 5
    iget p2, v0, Lc/e/b/k/m/f;->g:I

    invoke-virtual {p3}, Lc/e/b/k/d;->e()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p2, v1

    .line 6
    iget-object v2, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v2, v2, Lc/e/b/k/m/f;->j:Z

    if-nez v2, :cond_30

    iget-object v2, p0, Lc/e/b/k/m/p;->d:Lc/e/b/k/e$b;

    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v2, v3, :cond_30

    .line 7
    invoke-direct {p0, p4, p3}, Lc/e/b/k/m/p;->l(II)V

    .line 8
    :cond_30
    iget-object v2, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget-boolean v3, v2, Lc/e/b/k/m/f;->j:Z

    if-nez v3, :cond_37

    return-void

    .line 9
    :cond_37
    iget v2, v2, Lc/e/b/k/m/f;->g:I

    if-ne v2, p3, :cond_46

    .line 10
    iget-object p1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    invoke-virtual {p1, v1}, Lc/e/b/k/m/f;->d(I)V

    .line 11
    iget-object p1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    invoke-virtual {p1, p2}, Lc/e/b/k/m/f;->d(I)V

    return-void

    .line 12
    :cond_46
    iget-object p3, p0, Lc/e/b/k/m/p;->b:Lc/e/b/k/e;

    if-nez p4, :cond_4f

    invoke-virtual {p3}, Lc/e/b/k/e;->w()F

    move-result p3

    goto :goto_53

    .line 13
    :cond_4f
    invoke-virtual {p3}, Lc/e/b/k/e;->M()F

    move-result p3

    :goto_53
    const/high16 p4, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_5d

    .line 14
    iget v1, p1, Lc/e/b/k/m/f;->g:I

    .line 15
    iget p2, v0, Lc/e/b/k/m/f;->g:I

    const/high16 p3, 0x3f000000    # 0.5f

    :cond_5d
    sub-int/2addr p2, v1

    .line 16
    iget-object p1, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget p1, p1, Lc/e/b/k/m/f;->g:I

    sub-int/2addr p2, p1

    .line 17
    iget-object p1, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    int-to-float v0, v1

    add-float/2addr v0, p4

    int-to-float p2, p2

    mul-float p2, p2, p3

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lc/e/b/k/m/f;->d(I)V

    .line 18
    iget-object p1, p0, Lc/e/b/k/m/p;->i:Lc/e/b/k/m/f;

    iget-object p2, p0, Lc/e/b/k/m/p;->h:Lc/e/b/k/m/f;

    iget p2, p2, Lc/e/b/k/m/f;->g:I

    iget-object p3, p0, Lc/e/b/k/m/p;->e:Lc/e/b/k/m/g;

    iget p3, p3, Lc/e/b/k/m/f;->g:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lc/e/b/k/m/f;->d(I)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method protected o(Lc/e/b/k/m/d;)V
    .registers 2

    return-void
.end method

.method protected p(Lc/e/b/k/m/d;)V
    .registers 2

    return-void
.end method
