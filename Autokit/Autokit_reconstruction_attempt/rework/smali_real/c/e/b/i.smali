.class public Lc/e/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/b/i$a;
    }
.end annotation


# static fields
.field private static q:I = 0x1


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field public c:I

.field d:I

.field public e:I

.field public f:F

.field public g:Z

.field h:[F

.field i:[F

.field j:Lc/e/b/i$a;

.field k:[Lc/e/b/b;

.field l:I

.field public m:I

.field n:Z

.field o:I

.field p:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lc/e/b/i$a;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lc/e/b/i;->c:I

    .line 3
    iput p2, p0, Lc/e/b/i;->d:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc/e/b/i;->e:I

    .line 5
    iput-boolean v0, p0, Lc/e/b/i;->g:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    .line 6
    iput-object v2, p0, Lc/e/b/i;->h:[F

    new-array v1, v1, [F

    .line 7
    iput-object v1, p0, Lc/e/b/i;->i:[F

    const/16 v1, 0x10

    new-array v1, v1, [Lc/e/b/b;

    .line 8
    iput-object v1, p0, Lc/e/b/i;->k:[Lc/e/b/b;

    .line 9
    iput v0, p0, Lc/e/b/i;->l:I

    .line 10
    iput v0, p0, Lc/e/b/i;->m:I

    .line 11
    iput-boolean v0, p0, Lc/e/b/i;->n:Z

    .line 12
    iput p2, p0, Lc/e/b/i;->o:I

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Lc/e/b/i;->p:F

    .line 14
    iput-object p1, p0, Lc/e/b/i;->j:Lc/e/b/i$a;

    return-void
.end method

.method static b()V
    .registers 3

    .line 1
    sget v0, Lc/e/b/i;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lc/e/b/i;->q:I

    return-void
.end method


# virtual methods
.method public final a(Lc/e/b/b;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lc/e/b/i;->l:I

    if-ge v0, v1, :cond_f

    .line 2
    iget-object v1, p0, Lc/e/b/i;->k:[Lc/e/b/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_f
    iget-object v0, p0, Lc/e/b/i;->k:[Lc/e/b/b;

    array-length v2, v0

    if-lt v1, v2, :cond_1f

    .line 4
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/b/b;

    iput-object v0, p0, Lc/e/b/i;->k:[Lc/e/b/b;

    .line 5
    :cond_1f
    iget-object v0, p0, Lc/e/b/i;->k:[Lc/e/b/b;

    iget v1, p0, Lc/e/b/i;->l:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lc/e/b/i;->l:I

    return-void
.end method

.method public final c(Lc/e/b/b;)V
    .registers 6

    .line 1
    iget v0, p0, Lc/e/b/i;->l:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_23

    .line 2
    iget-object v2, p0, Lc/e/b/i;->k:[Lc/e/b/b;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_20

    :goto_b
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_19

    .line 3
    iget-object p1, p0, Lc/e/b/i;->k:[Lc/e/b/b;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_b

    .line 4
    :cond_19
    iget p1, p0, Lc/e/b/i;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lc/e/b/i;->l:I

    return-void

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_23
    return-void
.end method

.method public d()V
    .registers 7

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/e/b/i;->b:Ljava/lang/String;

    .line 2
    sget-object v1, Lc/e/b/i$a;->f:Lc/e/b/i$a;

    iput-object v1, p0, Lc/e/b/i;->j:Lc/e/b/i$a;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lc/e/b/i;->e:I

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lc/e/b/i;->c:I

    .line 5
    iput v2, p0, Lc/e/b/i;->d:I

    const/4 v3, 0x0

    .line 6
    iput v3, p0, Lc/e/b/i;->f:F

    .line 7
    iput-boolean v1, p0, Lc/e/b/i;->g:Z

    .line 8
    iput-boolean v1, p0, Lc/e/b/i;->n:Z

    .line 9
    iput v2, p0, Lc/e/b/i;->o:I

    .line 10
    iput v3, p0, Lc/e/b/i;->p:F

    .line 11
    iget v2, p0, Lc/e/b/i;->l:I

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v2, :cond_26

    .line 12
    iget-object v5, p0, Lc/e/b/i;->k:[Lc/e/b/b;

    aput-object v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 13
    :cond_26
    iput v1, p0, Lc/e/b/i;->l:I

    .line 14
    iput v1, p0, Lc/e/b/i;->m:I

    .line 15
    iput-boolean v1, p0, Lc/e/b/i;->a:Z

    .line 16
    iget-object v0, p0, Lc/e/b/i;->i:[F

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public e(Lc/e/b/d;F)V
    .registers 6

    .line 1
    iput p2, p0, Lc/e/b/i;->f:F

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lc/e/b/i;->g:Z

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lc/e/b/i;->n:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lc/e/b/i;->o:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lc/e/b/i;->p:F

    .line 6
    iget v1, p0, Lc/e/b/i;->l:I

    .line 7
    iput v0, p0, Lc/e/b/i;->d:I

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_1f

    .line 8
    iget-object v2, p0, Lc/e/b/i;->k:[Lc/e/b/b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p0, p2}, Lc/e/b/b;->A(Lc/e/b/d;Lc/e/b/i;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 9
    :cond_1f
    iput p2, p0, Lc/e/b/i;->l:I

    return-void
.end method

.method public f(Lc/e/b/i$a;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lc/e/b/i;->j:Lc/e/b/i$a;

    return-void
.end method

.method public final g(Lc/e/b/d;Lc/e/b/b;)V
    .registers 7

    .line 1
    iget v0, p0, Lc/e/b/i;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_10

    .line 2
    iget-object v3, p0, Lc/e/b/i;->k:[Lc/e/b/b;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Lc/e/b/b;->B(Lc/e/b/d;Lc/e/b/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3
    :cond_10
    iput v1, p0, Lc/e/b/i;->l:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/e/b/i;->b:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_18

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/e/b/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 3
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/e/b/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0
.end method
