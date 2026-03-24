.class public Lc/e/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/b/d$a;,
        Lc/e/b/d$b;
    }
.end annotation


# static fields
.field public static r:Z = false

.field public static s:Z = true

.field public static t:Z = true

.field public static u:Z = true

.field public static v:Z = false

.field private static w:I = 0x3e8

.field public static x:Lc/e/b/e;

.field public static y:J

.field public static z:J


# instance fields
.field public a:Z

.field b:I

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/e/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lc/e/b/d$a;

.field private e:I

.field private f:I

.field g:[Lc/e/b/b;

.field public h:Z

.field public i:Z

.field private j:[Z

.field k:I

.field l:I

.field private m:I

.field final n:Lc/e/b/c;

.field private o:[Lc/e/b/i;

.field private p:I

.field private q:Lc/e/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/e/b/d;->a:Z

    .line 3
    iput v0, p0, Lc/e/b/d;->b:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lc/e/b/d;->c:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 5
    iput v2, p0, Lc/e/b/d;->e:I

    .line 6
    iput v2, p0, Lc/e/b/d;->f:I

    .line 7
    iput-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    .line 8
    iput-boolean v0, p0, Lc/e/b/d;->h:Z

    .line 9
    iput-boolean v0, p0, Lc/e/b/d;->i:Z

    new-array v1, v2, [Z

    .line 10
    iput-object v1, p0, Lc/e/b/d;->j:[Z

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lc/e/b/d;->k:I

    .line 12
    iput v0, p0, Lc/e/b/d;->l:I

    .line 13
    iput v2, p0, Lc/e/b/d;->m:I

    .line 14
    sget v1, Lc/e/b/d;->w:I

    new-array v1, v1, [Lc/e/b/i;

    iput-object v1, p0, Lc/e/b/d;->o:[Lc/e/b/i;

    .line 15
    iput v0, p0, Lc/e/b/d;->p:I

    new-array v0, v2, [Lc/e/b/b;

    .line 16
    iput-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    .line 17
    invoke-direct {p0}, Lc/e/b/d;->C()V

    .line 18
    new-instance v0, Lc/e/b/c;

    invoke-direct {v0}, Lc/e/b/c;-><init>()V

    iput-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;

    .line 19
    new-instance v1, Lc/e/b/h;

    invoke-direct {v1, v0}, Lc/e/b/h;-><init>(Lc/e/b/c;)V

    iput-object v1, p0, Lc/e/b/d;->d:Lc/e/b/d$a;

    .line 20
    sget-boolean v0, Lc/e/b/d;->v:Z

    if-eqz v0, :cond_4d

    .line 21
    new-instance v0, Lc/e/b/d$b;

    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;

    invoke-direct {v0, p0, v1}, Lc/e/b/d$b;-><init>(Lc/e/b/d;Lc/e/b/c;)V

    iput-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;

    goto :goto_56

    .line 22
    :cond_4d
    new-instance v0, Lc/e/b/b;

    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;

    invoke-direct {v0, v1}, Lc/e/b/b;-><init>(Lc/e/b/c;)V

    iput-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;

    :goto_56
    return-void
.end method

.method private final B(Lc/e/b/d$a;Z)I
    .registers 15

    .line 1
    sget-object p2, Lc/e/b/d;->x:Lc/e/b/e;

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_b

    .line 2
    iget-wide v2, p2, Lc/e/b/e;->h:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lc/e/b/e;->h:J

    :cond_b
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_d
    iget v3, p0, Lc/e/b/d;->k:I

    if-ge v2, v3, :cond_18

    .line 4
    iget-object v3, p0, Lc/e/b/d;->j:[Z

    aput-boolean p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1a
    :goto_1a
    if-nez v2, :cond_b0

    .line 5
    sget-object v4, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v4, :cond_25

    .line 6
    iget-wide v5, v4, Lc/e/b/e;->i:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lc/e/b/e;->i:J

    :cond_25
    add-int/lit8 v3, v3, 0x1

    .line 7
    iget v4, p0, Lc/e/b/d;->k:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2e

    return v3

    .line 8
    :cond_2e
    invoke-interface {p1}, Lc/e/b/d$a;->getKey()Lc/e/b/i;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3f

    .line 9
    iget-object v4, p0, Lc/e/b/d;->j:[Z

    invoke-interface {p1}, Lc/e/b/d$a;->getKey()Lc/e/b/i;

    move-result-object v6

    iget v6, v6, Lc/e/b/i;->c:I

    aput-boolean v5, v4, v6

    .line 10
    :cond_3f
    iget-object v4, p0, Lc/e/b/d;->j:[Z

    invoke-interface {p1, p0, v4}, Lc/e/b/d$a;->c(Lc/e/b/d;[Z)Lc/e/b/i;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 11
    iget-object v6, p0, Lc/e/b/d;->j:[Z

    iget v7, v4, Lc/e/b/i;->c:I

    aget-boolean v8, v6, v7

    if-eqz v8, :cond_50

    return v3

    .line 12
    :cond_50
    aput-boolean v5, v6, v7

    :cond_52
    if-eqz v4, :cond_ad

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 13
    :goto_5a
    iget v9, p0, Lc/e/b/d;->l:I

    if-ge v7, v9, :cond_8e

    .line 14
    iget-object v9, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v9, v9, v7

    .line 15
    iget-object v10, v9, Lc/e/b/b;->a:Lc/e/b/i;

    .line 16
    iget-object v10, v10, Lc/e/b/i;->j:Lc/e/b/i$a;

    sget-object v11, Lc/e/b/i$a;->b:Lc/e/b/i$a;

    if-ne v10, v11, :cond_6b

    goto :goto_8b

    .line 17
    :cond_6b
    iget-boolean v10, v9, Lc/e/b/b;->f:Z

    if-eqz v10, :cond_70

    goto :goto_8b

    .line 18
    :cond_70
    invoke-virtual {v9, v4}, Lc/e/b/b;->t(Lc/e/b/i;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 19
    iget-object v10, v9, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v10, v4}, Lc/e/b/b$a;->g(Lc/e/b/i;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_8b

    .line 20
    iget v9, v9, Lc/e/b/b;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_8b

    move v8, v7

    move v5, v9

    :cond_8b
    :goto_8b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_8e
    if-le v8, v6, :cond_1a

    .line 21
    iget-object v5, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v5, v5, v8

    .line 22
    iget-object v7, v5, Lc/e/b/b;->a:Lc/e/b/i;

    iput v6, v7, Lc/e/b/i;->d:I

    .line 23
    sget-object v6, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v6, :cond_a1

    .line 24
    iget-wide v9, v6, Lc/e/b/e;->j:J

    add-long/2addr v9, v0

    iput-wide v9, v6, Lc/e/b/e;->j:J

    .line 25
    :cond_a1
    invoke-virtual {v5, v4}, Lc/e/b/b;->x(Lc/e/b/i;)V

    .line 26
    iget-object v4, v5, Lc/e/b/b;->a:Lc/e/b/i;

    iput v8, v4, Lc/e/b/i;->d:I

    .line 27
    invoke-virtual {v4, p0, v5}, Lc/e/b/i;->g(Lc/e/b/d;Lc/e/b/b;)V

    goto/16 :goto_1a

    :cond_ad
    const/4 v2, 0x1

    goto/16 :goto_1a

    :cond_b0
    return v3
.end method

.method private C()V
    .registers 5

    .line 1
    sget-boolean v0, Lc/e/b/d;->v:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 2
    :goto_6
    iget v0, p0, Lc/e/b/d;->l:I

    if-ge v2, v0, :cond_36

    .line 3
    iget-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_17

    .line 4
    iget-object v3, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v3, v3, Lc/e/b/c;->a:Lc/e/b/f;

    invoke-interface {v3, v0}, Lc/e/b/f;->a(Ljava/lang/Object;)Z

    .line 5
    :cond_17
    iget-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6
    :cond_1e
    :goto_1e
    iget v0, p0, Lc/e/b/d;->l:I

    if-ge v2, v0, :cond_36

    .line 7
    iget-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2f

    .line 8
    iget-object v3, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v3, v3, Lc/e/b/c;->b:Lc/e/b/f;

    invoke-interface {v3, v0}, Lc/e/b/f;->a(Ljava/lang/Object;)Z

    .line 9
    :cond_2f
    iget-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_36
    return-void
.end method

.method private a(Lc/e/b/i$a;Ljava/lang/String;)Lc/e/b/i;
    .registers 5

    .line 1
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v0, v0, Lc/e/b/c;->c:Lc/e/b/f;

    invoke-interface {v0}, Lc/e/b/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/i;

    if-nez v0, :cond_15

    .line 2
    new-instance v0, Lc/e/b/i;

    invoke-direct {v0, p1, p2}, Lc/e/b/i;-><init>(Lc/e/b/i$a;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Lc/e/b/i;->f(Lc/e/b/i$a;Ljava/lang/String;)V

    goto :goto_1b

    .line 4
    :cond_15
    invoke-virtual {v0}, Lc/e/b/i;->d()V

    .line 5
    invoke-virtual {v0, p1, p2}, Lc/e/b/i;->f(Lc/e/b/i$a;Ljava/lang/String;)V

    .line 6
    :goto_1b
    iget p1, p0, Lc/e/b/d;->p:I

    sget p2, Lc/e/b/d;->w:I

    if-lt p1, p2, :cond_2f

    mul-int/lit8 p2, p2, 0x2

    .line 7
    sput p2, Lc/e/b/d;->w:I

    .line 8
    iget-object p1, p0, Lc/e/b/d;->o:[Lc/e/b/i;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lc/e/b/i;

    iput-object p1, p0, Lc/e/b/d;->o:[Lc/e/b/i;

    .line 9
    :cond_2f
    iget-object p1, p0, Lc/e/b/d;->o:[Lc/e/b/i;

    iget p2, p0, Lc/e/b/d;->p:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lc/e/b/d;->p:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private final l(Lc/e/b/b;)V
    .registers 9

    .line 1
    sget-boolean v0, Lc/e/b/d;->t:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lc/e/b/b;->f:Z

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;

    iget p1, p1, Lc/e/b/b;->b:F

    invoke-virtual {v0, p0, p1}, Lc/e/b/i;->e(Lc/e/b/d;F)V

    goto :goto_21

    .line 3
    :cond_10
    iget-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    iget v1, p0, Lc/e/b/d;->l:I

    aput-object p1, v0, v1

    .line 4
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;

    iput v1, v0, Lc/e/b/i;->d:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lc/e/b/d;->l:I

    .line 6
    invoke-virtual {v0, p0, p1}, Lc/e/b/i;->g(Lc/e/b/d;Lc/e/b/b;)V

    .line 7
    :goto_21
    sget-boolean p1, Lc/e/b/d;->t:Z

    if-eqz p1, :cond_9f

    iget-boolean p1, p0, Lc/e/b/d;->a:Z

    if-eqz p1, :cond_9f

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 8
    :goto_2b
    iget v1, p0, Lc/e/b/d;->l:I

    if-ge v0, v1, :cond_9d

    .line 9
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_3c

    .line 10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    :cond_3c
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v2, v1, v0

    if-eqz v2, :cond_9a

    aget-object v2, v1, v0

    iget-boolean v2, v2, Lc/e/b/b;->f:Z

    if-eqz v2, :cond_9a

    .line 12
    aget-object v1, v1, v0

    .line 13
    iget-object v2, v1, Lc/e/b/b;->a:Lc/e/b/i;

    iget v3, v1, Lc/e/b/b;->b:F

    invoke-virtual {v2, p0, v3}, Lc/e/b/i;->e(Lc/e/b/d;F)V

    .line 14
    sget-boolean v2, Lc/e/b/d;->v:Z

    if-eqz v2, :cond_5d

    .line 15
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v2, v2, Lc/e/b/c;->a:Lc/e/b/f;

    invoke-interface {v2, v1}, Lc/e/b/f;->a(Ljava/lang/Object;)Z

    goto :goto_64

    .line 16
    :cond_5d
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v2, v2, Lc/e/b/c;->b:Lc/e/b/f;

    invoke-interface {v2, v1}, Lc/e/b/f;->a(Ljava/lang/Object;)Z

    .line 17
    :goto_64
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    .line 18
    :goto_6c
    iget v4, p0, Lc/e/b/d;->l:I

    if-ge v1, v4, :cond_8c

    .line 19
    iget-object v3, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    .line 20
    aget-object v5, v3, v4

    iget-object v5, v5, Lc/e/b/b;->a:Lc/e/b/i;

    iget v5, v5, Lc/e/b/i;->d:I

    if-ne v5, v1, :cond_86

    .line 21
    aget-object v3, v3, v4

    iget-object v3, v3, Lc/e/b/b;->a:Lc/e/b/i;

    iput v4, v3, Lc/e/b/i;->d:I

    :cond_86
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_6c

    :cond_8c
    if-ge v3, v4, :cond_92

    .line 22
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aput-object v2, v1, v3

    .line 23
    :cond_92
    iget v1, p0, Lc/e/b/d;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lc/e/b/d;->l:I

    add-int/lit8 v0, v0, -0x1

    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 24
    :cond_9d
    iput-boolean p1, p0, Lc/e/b/d;->a:Z

    :cond_9f
    return-void
.end method

.method private n()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lc/e/b/d;->l:I

    if-ge v0, v1, :cond_12

    .line 2
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v1, v1, v0

    .line 3
    iget-object v2, v1, Lc/e/b/b;->a:Lc/e/b/i;

    iget v1, v1, Lc/e/b/b;->b:F

    iput v1, v2, Lc/e/b/i;->f:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static s(Lc/e/b/d;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lc/e/b/b;->j(Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;

    return-object p0
.end method

.method private u(Lc/e/b/d$a;)I
    .registers 21

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 1
    :goto_3
    iget v3, v0, Lc/e/b/d;->l:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_22

    .line 2
    iget-object v3, v0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v6, v3, v2

    iget-object v6, v6, Lc/e/b/b;->a:Lc/e/b/i;

    .line 3
    iget-object v6, v6, Lc/e/b/i;->j:Lc/e/b/i$a;

    sget-object v7, Lc/e/b/i$a;->b:Lc/e/b/i$a;

    if-ne v6, v7, :cond_15

    goto :goto_1f

    .line 4
    :cond_15
    aget-object v3, v3, v2

    iget v3, v3, Lc/e/b/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1f

    const/4 v2, 0x1

    goto :goto_23

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_109

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_27
    :goto_27
    if-nez v2, :cond_107

    .line 5
    sget-object v6, Lc/e/b/d;->x:Lc/e/b/e;

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_34

    .line 6
    iget-wide v9, v6, Lc/e/b/e;->k:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Lc/e/b/e;->k:J

    :cond_34
    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 7
    :goto_3d
    iget v14, v0, Lc/e/b/d;->l:I

    if-ge v10, v14, :cond_d6

    .line 8
    iget-object v14, v0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v14, v14, v10

    .line 9
    iget-object v15, v14, Lc/e/b/b;->a:Lc/e/b/i;

    .line 10
    iget-object v15, v15, Lc/e/b/i;->j:Lc/e/b/i$a;

    sget-object v1, Lc/e/b/i$a;->b:Lc/e/b/i$a;

    if-ne v15, v1, :cond_4f

    goto/16 :goto_d0

    .line 11
    :cond_4f
    iget-boolean v1, v14, Lc/e/b/b;->f:Z

    if-eqz v1, :cond_55

    goto/16 :goto_d0

    .line 12
    :cond_55
    iget v1, v14, Lc/e/b/b;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_d0

    .line 13
    sget-boolean v1, Lc/e/b/d;->u:Z

    const/16 v15, 0x9

    if-eqz v1, :cond_9c

    .line 14
    iget-object v1, v14, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v1}, Lc/e/b/b$a;->k()I

    move-result v1

    const/4 v5, 0x0

    :goto_68
    if-ge v5, v1, :cond_d0

    .line 15
    iget-object v7, v14, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v7, v5}, Lc/e/b/b$a;->f(I)Lc/e/b/i;

    move-result-object v7

    .line 16
    iget-object v8, v14, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v8, v7}, Lc/e/b/b$a;->g(Lc/e/b/i;)F

    move-result v8

    cmpg-float v16, v8, v4

    if-gtz v16, :cond_7b

    goto :goto_95

    :cond_7b
    const/4 v9, 0x0

    :goto_7c
    if-ge v9, v15, :cond_95

    .line 17
    iget-object v15, v7, Lc/e/b/i;->h:[F

    aget v15, v15, v9

    div-float/2addr v15, v8

    cmpg-float v18, v15, v6

    if-gez v18, :cond_89

    if-eq v9, v13, :cond_8b

    :cond_89
    if-le v9, v13, :cond_90

    .line 18
    :cond_8b
    iget v12, v7, Lc/e/b/i;->c:I

    move v13, v9

    move v11, v10

    move v6, v15

    :cond_90
    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0x9

    goto :goto_7c

    :cond_95
    :goto_95
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v7, 0x1

    const/16 v15, 0x9

    goto :goto_68

    :cond_9c
    const/4 v1, 0x1

    .line 19
    :goto_9d
    iget v5, v0, Lc/e/b/d;->k:I

    if-ge v1, v5, :cond_d0

    .line 20
    iget-object v5, v0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v5, v5, Lc/e/b/c;->d:[Lc/e/b/i;

    aget-object v5, v5, v1

    .line 21
    iget-object v7, v14, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v7, v5}, Lc/e/b/b$a;->g(Lc/e/b/i;)F

    move-result v7

    cmpg-float v8, v7, v4

    if-gtz v8, :cond_b4

    const/16 v9, 0x9

    goto :goto_cd

    :cond_b4
    const/4 v8, 0x0

    const/16 v9, 0x9

    :goto_b7
    if-ge v8, v9, :cond_cd

    .line 22
    iget-object v15, v5, Lc/e/b/i;->h:[F

    aget v15, v15, v8

    div-float/2addr v15, v7

    cmpg-float v17, v15, v6

    if-gez v17, :cond_c4

    if-eq v8, v13, :cond_c6

    :cond_c4
    if-le v8, v13, :cond_ca

    :cond_c6
    move v12, v1

    move v13, v8

    move v11, v10

    move v6, v15

    :cond_ca
    add-int/lit8 v8, v8, 0x1

    goto :goto_b7

    :cond_cd
    :goto_cd
    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    :cond_d0
    :goto_d0
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x1

    goto/16 :goto_3d

    :cond_d6
    const/4 v1, -0x1

    if-eq v11, v1, :cond_fd

    .line 23
    iget-object v5, v0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v5, v5, v11

    .line 24
    iget-object v6, v5, Lc/e/b/b;->a:Lc/e/b/i;

    iput v1, v6, Lc/e/b/i;->d:I

    .line 25
    sget-object v1, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v1, :cond_ec

    .line 26
    iget-wide v6, v1, Lc/e/b/e;->j:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v1, Lc/e/b/e;->j:J

    .line 27
    :cond_ec
    iget-object v1, v0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v1, v1, Lc/e/b/c;->d:[Lc/e/b/i;

    aget-object v1, v1, v12

    invoke-virtual {v5, v1}, Lc/e/b/b;->x(Lc/e/b/i;)V

    .line 28
    iget-object v1, v5, Lc/e/b/b;->a:Lc/e/b/i;

    iput v11, v1, Lc/e/b/i;->d:I

    .line 29
    invoke-virtual {v1, v0, v5}, Lc/e/b/i;->g(Lc/e/b/d;Lc/e/b/b;)V

    goto :goto_fe

    :cond_fd
    const/4 v2, 0x1

    .line 30
    :goto_fe
    iget v1, v0, Lc/e/b/d;->k:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_27

    const/4 v2, 0x1

    goto/16 :goto_27

    :cond_107
    move v1, v3

    goto :goto_10a

    :cond_109
    const/4 v1, 0x0

    :goto_10a
    return v1
.end method

.method public static w()Lc/e/b/e;
    .registers 1

    .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    return-object v0
.end method

.method private y()V
    .registers 7

    .line 1
    iget v0, p0, Lc/e/b/d;->e:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc/e/b/d;->e:I

    .line 2
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/b/b;

    iput-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    .line 3
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v1, v0, Lc/e/b/c;->d:[Lc/e/b/i;

    iget v2, p0, Lc/e/b/d;->e:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc/e/b/i;

    iput-object v1, v0, Lc/e/b/c;->d:[Lc/e/b/i;

    .line 4
    iget v0, p0, Lc/e/b/d;->e:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lc/e/b/d;->j:[Z

    .line 5
    iput v0, p0, Lc/e/b/d;->f:I

    .line 6
    iput v0, p0, Lc/e/b/d;->m:I

    .line 7
    sget-object v1, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v1, :cond_42

    .line 8
    iget-wide v2, v1, Lc/e/b/e;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lc/e/b/e;->d:J

    .line 9
    iget-wide v2, v1, Lc/e/b/e;->o:J

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lc/e/b/e;->o:J

    .line 10
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    iget-wide v1, v0, Lc/e/b/e;->o:J

    iput-wide v1, v0, Lc/e/b/e;->x:J

    :cond_42
    return-void
.end method


# virtual methods
.method A(Lc/e/b/d$a;)V
    .registers 7

    .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v0, :cond_23

    .line 2
    iget-wide v1, v0, Lc/e/b/e;->t:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lc/e/b/e;->t:J

    .line 3
    iget-wide v1, v0, Lc/e/b/e;->u:J

    iget v3, p0, Lc/e/b/d;->k:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lc/e/b/e;->u:J

    .line 4
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    iget-wide v1, v0, Lc/e/b/e;->v:J

    iget v3, p0, Lc/e/b/d;->l:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lc/e/b/e;->v:J

    .line 5
    :cond_23
    invoke-direct {p0, p1}, Lc/e/b/d;->u(Lc/e/b/d$a;)I

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lc/e/b/d;->B(Lc/e/b/d$a;Z)I

    .line 7
    invoke-direct {p0}, Lc/e/b/d;->n()V

    return-void
.end method

.method public D()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v3, v2, Lc/e/b/c;->d:[Lc/e/b/i;

    array-length v4, v3

    if-ge v1, v4, :cond_13

    .line 2
    aget-object v2, v3, v1

    if-eqz v2, :cond_10

    .line 3
    invoke-virtual {v2}, Lc/e/b/i;->d()V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4
    :cond_13
    iget-object v1, v2, Lc/e/b/c;->c:Lc/e/b/f;

    iget-object v2, p0, Lc/e/b/d;->o:[Lc/e/b/i;

    iget v3, p0, Lc/e/b/d;->p:I

    invoke-interface {v1, v2, v3}, Lc/e/b/f;->c([Ljava/lang/Object;I)V

    .line 5
    iput v0, p0, Lc/e/b/d;->p:I

    .line 6
    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v1, v1, Lc/e/b/c;->d:[Lc/e/b/i;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lc/e/b/d;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_2d

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    :cond_2d
    iput v0, p0, Lc/e/b/d;->b:I

    .line 10
    iget-object v1, p0, Lc/e/b/d;->d:Lc/e/b/d$a;

    invoke-interface {v1}, Lc/e/b/d$a;->clear()V

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lc/e/b/d;->k:I

    const/4 v1, 0x0

    .line 12
    :goto_38
    iget v2, p0, Lc/e/b/d;->l:I

    if-ge v1, v2, :cond_49

    .line 13
    iget-object v2, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v3, v2, v1

    if-eqz v3, :cond_46

    .line 14
    aget-object v2, v2, v1

    iput-boolean v0, v2, Lc/e/b/b;->c:Z

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 15
    :cond_49
    invoke-direct {p0}, Lc/e/b/d;->C()V

    .line 16
    iput v0, p0, Lc/e/b/d;->l:I

    .line 17
    sget-boolean v0, Lc/e/b/d;->v:Z

    if-eqz v0, :cond_5c

    .line 18
    new-instance v0, Lc/e/b/d$b;

    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;

    invoke-direct {v0, p0, v1}, Lc/e/b/d$b;-><init>(Lc/e/b/d;Lc/e/b/c;)V

    iput-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;

    goto :goto_65

    .line 19
    :cond_5c
    new-instance v0, Lc/e/b/b;

    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;

    invoke-direct {v0, v1}, Lc/e/b/b;-><init>(Lc/e/b/c;)V

    iput-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;

    :goto_65
    return-void
.end method

.method public b(Lc/e/b/k/e;Lc/e/b/k/e;FI)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    invoke-virtual {v1, v3}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v5

    .line 2
    sget-object v3, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    invoke-virtual {v1, v3}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v7

    .line 3
    sget-object v3, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    invoke-virtual {v1, v3}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v3

    .line 4
    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    invoke-virtual {v1, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v8

    .line 5
    sget-object v1, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    invoke-virtual {v2, v1}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v1

    .line 6
    sget-object v4, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    invoke-virtual {v2, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v9

    .line 7
    sget-object v4, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    invoke-virtual {v2, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v12

    .line 8
    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    invoke-virtual {v2, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;

    move-result-object v10

    .line 9
    invoke-virtual/range {p0 .. p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v13, v4

    .line 10
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v4, p4

    move-object/from16 v17, v3

    int-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 p1, v12

    mul-double v11, v15, v3

    double-to-float v11, v11

    move-object v6, v2

    .line 11
    invoke-virtual/range {v6 .. v11}, Lc/e/b/b;->q(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;

    .line 12
    invoke-virtual {v0, v2}, Lc/e/b/d;->d(Lc/e/b/b;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v2

    .line 14
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-float v9, v6

    move-object v4, v2

    move-object/from16 v6, v17

    move-object v7, v1

    move-object/from16 v8, p1

    .line 15
    invoke-virtual/range {v4 .. v9}, Lc/e/b/b;->q(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;

    .line 16
    invoke-virtual {v0, v2}, Lc/e/b/d;->d(Lc/e/b/b;)V

    return-void
.end method

.method public c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V
    .registers 20

    move-object v0, p0

    move/from16 v1, p8

    .line 1
    invoke-virtual {p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 2
    invoke-virtual/range {v2 .. v9}, Lc/e/b/b;->h(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1c

    .line 3
    invoke-virtual {v10, p0, v1}, Lc/e/b/b;->d(Lc/e/b/d;I)Lc/e/b/b;

    .line 4
    :cond_1c
    invoke-virtual {p0, v10}, Lc/e/b/d;->d(Lc/e/b/b;)V

    return-void
.end method

.method public d(Lc/e/b/b;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_17

    .line 2
    iget-wide v3, v0, Lc/e/b/e;->f:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/e/b/e;->f:J

    .line 3
    iget-boolean v3, p1, Lc/e/b/b;->f:Z

    if-eqz v3, :cond_17

    .line 4
    iget-wide v3, v0, Lc/e/b/e;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/e/b/e;->g:J

    .line 5
    :cond_17
    iget v0, p0, Lc/e/b/d;->l:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, Lc/e/b/d;->m:I

    if-ge v0, v4, :cond_26

    iget v0, p0, Lc/e/b/d;->k:I

    add-int/2addr v0, v3

    iget v4, p0, Lc/e/b/d;->f:I

    if-lt v0, v4, :cond_29

    .line 6
    :cond_26
    invoke-direct {p0}, Lc/e/b/d;->y()V

    :cond_29
    const/4 v0, 0x0

    .line 7
    iget-boolean v4, p1, Lc/e/b/b;->f:Z

    if-nez v4, :cond_a1

    .line 8
    invoke-virtual {p1, p0}, Lc/e/b/b;->D(Lc/e/b/d;)V

    .line 9
    invoke-virtual {p1}, Lc/e/b/b;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_38

    return-void

    .line 10
    :cond_38
    invoke-virtual {p1}, Lc/e/b/b;->r()V

    .line 11
    invoke-virtual {p1, p0}, Lc/e/b/b;->f(Lc/e/b/d;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 12
    invoke-virtual {p0}, Lc/e/b/d;->p()Lc/e/b/i;

    move-result-object v4

    .line 13
    iput-object v4, p1, Lc/e/b/b;->a:Lc/e/b/i;

    .line 14
    iget v5, p0, Lc/e/b/d;->l:I

    .line 15
    invoke-direct {p0, p1}, Lc/e/b/d;->l(Lc/e/b/b;)V

    .line 16
    iget v6, p0, Lc/e/b/d;->l:I

    add-int/2addr v5, v3

    if-ne v6, v5, :cond_98

    .line 17
    iget-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;

    invoke-interface {v0, p1}, Lc/e/b/d$a;->a(Lc/e/b/d$a;)V

    .line 18
    iget-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;

    invoke-direct {p0, v0, v3}, Lc/e/b/d;->B(Lc/e/b/d$a;Z)I

    .line 19
    iget v0, v4, Lc/e/b/i;->d:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_99

    .line 20
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;

    if-ne v0, v4, :cond_76

    .line 21
    invoke-virtual {p1, v4}, Lc/e/b/b;->v(Lc/e/b/i;)Lc/e/b/i;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 22
    sget-object v4, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v4, :cond_73

    .line 23
    iget-wide v5, v4, Lc/e/b/e;->j:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Lc/e/b/e;->j:J

    .line 24
    :cond_73
    invoke-virtual {p1, v0}, Lc/e/b/b;->x(Lc/e/b/i;)V

    .line 25
    :cond_76
    iget-boolean v0, p1, Lc/e/b/b;->f:Z

    if-nez v0, :cond_7f

    .line 26
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;

    invoke-virtual {v0, p0, p1}, Lc/e/b/i;->g(Lc/e/b/d;Lc/e/b/b;)V

    .line 27
    :cond_7f
    sget-boolean v0, Lc/e/b/d;->v:Z

    if-eqz v0, :cond_8b

    .line 28
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v0, v0, Lc/e/b/c;->a:Lc/e/b/f;

    invoke-interface {v0, p1}, Lc/e/b/f;->a(Ljava/lang/Object;)Z

    goto :goto_92

    .line 29
    :cond_8b
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v0, v0, Lc/e/b/c;->b:Lc/e/b/f;

    invoke-interface {v0, p1}, Lc/e/b/f;->a(Ljava/lang/Object;)Z

    .line 30
    :goto_92
    iget v0, p0, Lc/e/b/d;->l:I

    sub-int/2addr v0, v3

    iput v0, p0, Lc/e/b/d;->l:I

    goto :goto_99

    :cond_98
    const/4 v3, 0x0

    .line 31
    :cond_99
    :goto_99
    invoke-virtual {p1}, Lc/e/b/b;->s()Z

    move-result v0

    if-nez v0, :cond_a0

    return-void

    :cond_a0
    move v0, v3

    :cond_a1
    if-nez v0, :cond_a6

    .line 32
    invoke-direct {p0, p1}, Lc/e/b/d;->l(Lc/e/b/b;)V

    :cond_a6
    return-void
.end method

.method public e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
    .registers 8

    .line 1
    sget-boolean v0, Lc/e/b/d;->s:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1a

    if-ne p4, v1, :cond_1a

    iget-boolean v0, p2, Lc/e/b/i;->g:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lc/e/b/i;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    .line 2
    iget p2, p2, Lc/e/b/i;->f:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lc/e/b/i;->e(Lc/e/b/d;F)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1a
    invoke-virtual {p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lc/e/b/b;->n(Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;

    if-eq p4, v1, :cond_26

    .line 5
    invoke-virtual {v0, p0, p4}, Lc/e/b/b;->d(Lc/e/b/d;I)Lc/e/b/b;

    .line 6
    :cond_26
    invoke-virtual {p0, v0}, Lc/e/b/d;->d(Lc/e/b/b;)V

    return-object v0
.end method

.method public f(Lc/e/b/i;I)V
    .registers 8

    .line 1
    sget-boolean v0, Lc/e/b/d;->s:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    iget v0, p1, Lc/e/b/i;->d:I

    if-ne v0, v1, :cond_30

    int-to-float p2, p2

    .line 2
    invoke-virtual {p1, p0, p2}, Lc/e/b/i;->e(Lc/e/b/d;F)V

    const/4 v0, 0x0

    .line 3
    :goto_f
    iget v1, p0, Lc/e/b/d;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2f

    .line 4
    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v1, v1, Lc/e/b/c;->d:[Lc/e/b/i;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2c

    .line 5
    iget-boolean v3, v1, Lc/e/b/i;->n:Z

    if-eqz v3, :cond_2c

    iget v3, v1, Lc/e/b/i;->o:I

    iget v4, p1, Lc/e/b/i;->c:I

    if-ne v3, v4, :cond_2c

    .line 6
    iget v3, v1, Lc/e/b/i;->p:F

    add-float/2addr v3, p2

    invoke-virtual {v1, p0, v3}, Lc/e/b/i;->e(Lc/e/b/d;F)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2f
    return-void

    .line 7
    :cond_30
    iget v0, p1, Lc/e/b/i;->d:I

    if-eq v0, v1, :cond_59

    .line 8
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v0, v1, v0

    .line 9
    iget-boolean v1, v0, Lc/e/b/b;->f:Z

    if-eqz v1, :cond_40

    int-to-float p1, p2

    .line 10
    iput p1, v0, Lc/e/b/b;->b:F

    goto :goto_63

    .line 11
    :cond_40
    iget-object v1, v0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {v1}, Lc/e/b/b$a;->k()I

    move-result v1

    if-nez v1, :cond_4e

    .line 12
    iput-boolean v2, v0, Lc/e/b/b;->f:Z

    int-to-float p1, p2

    .line 13
    iput p1, v0, Lc/e/b/b;->b:F

    goto :goto_63

    .line 14
    :cond_4e
    invoke-virtual {p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lc/e/b/b;->m(Lc/e/b/i;I)Lc/e/b/b;

    .line 16
    invoke-virtual {p0, v0}, Lc/e/b/d;->d(Lc/e/b/b;)V

    goto :goto_63

    .line 17
    :cond_59
    invoke-virtual {p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1, p2}, Lc/e/b/b;->i(Lc/e/b/i;I)Lc/e/b/b;

    .line 19
    invoke-virtual {p0, v0}, Lc/e/b/d;->d(Lc/e/b/b;)V

    :goto_63
    return-void
.end method

.method public g(Lc/e/b/i;Lc/e/b/i;IZ)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object p4

    .line 2
    invoke-virtual {p0}, Lc/e/b/d;->t()Lc/e/b/i;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lc/e/b/i;->e:I

    .line 4
    invoke-virtual {p4, p1, p2, v0, p3}, Lc/e/b/b;->o(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;

    .line 5
    invoke-virtual {p0, p4}, Lc/e/b/d;->d(Lc/e/b/b;)V

    return-void
.end method

.method public h(Lc/e/b/i;Lc/e/b/i;II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lc/e/b/d;->t()Lc/e/b/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lc/e/b/i;->e:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lc/e/b/b;->o(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_20

    .line 5
    iget-object p1, v0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, v1}, Lc/e/b/b$a;->g(Lc/e/b/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 6
    invoke-virtual {p0, v0, p1, p4}, Lc/e/b/d;->m(Lc/e/b/b;II)V

    .line 7
    :cond_20
    invoke-virtual {p0, v0}, Lc/e/b/d;->d(Lc/e/b/b;)V

    return-void
.end method

.method public i(Lc/e/b/i;Lc/e/b/i;IZ)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object p4

    .line 2
    invoke-virtual {p0}, Lc/e/b/d;->t()Lc/e/b/i;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lc/e/b/i;->e:I

    .line 4
    invoke-virtual {p4, p1, p2, v0, p3}, Lc/e/b/b;->p(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;

    .line 5
    invoke-virtual {p0, p4}, Lc/e/b/d;->d(Lc/e/b/b;)V

    return-void
.end method

.method public j(Lc/e/b/i;Lc/e/b/i;II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lc/e/b/d;->t()Lc/e/b/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lc/e/b/i;->e:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lc/e/b/b;->p(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_20

    .line 5
    iget-object p1, v0, Lc/e/b/b;->e:Lc/e/b/b$a;

    invoke-interface {p1, v1}, Lc/e/b/b$a;->g(Lc/e/b/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 6
    invoke-virtual {p0, v0, p1, p4}, Lc/e/b/d;->m(Lc/e/b/b;II)V

    .line 7
    :cond_20
    invoke-virtual {p0, v0}, Lc/e/b/d;->d(Lc/e/b/b;)V

    return-void
.end method

.method public k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;FI)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lc/e/b/b;->k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_14

    .line 3
    invoke-virtual {v6, p0, p6}, Lc/e/b/b;->d(Lc/e/b/d;I)Lc/e/b/b;

    .line 4
    :cond_14
    invoke-virtual {p0, v6}, Lc/e/b/d;->d(Lc/e/b/b;)V

    return-void
.end method

.method m(Lc/e/b/b;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p3, v0}, Lc/e/b/d;->o(ILjava/lang/String;)Lc/e/b/i;

    move-result-object p3

    .line 2
    invoke-virtual {p1, p3, p2}, Lc/e/b/b;->e(Lc/e/b/i;I)Lc/e/b/b;

    return-void
.end method

.method public o(ILjava/lang/String;)Lc/e/b/i;
    .registers 8

    .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v0, :cond_b

    .line 2
    iget-wide v1, v0, Lc/e/b/e;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lc/e/b/e;->l:J

    .line 3
    :cond_b
    iget v0, p0, Lc/e/b/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lc/e/b/d;->f:I

    if-lt v0, v1, :cond_16

    .line 4
    invoke-direct {p0}, Lc/e/b/d;->y()V

    .line 5
    :cond_16
    sget-object v0, Lc/e/b/i$a;->e:Lc/e/b/i$a;

    invoke-direct {p0, v0, p2}, Lc/e/b/d;->a(Lc/e/b/i$a;Ljava/lang/String;)Lc/e/b/i;

    move-result-object p2

    .line 6
    iget v0, p0, Lc/e/b/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/e/b/d;->b:I

    .line 7
    iget v1, p0, Lc/e/b/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/e/b/d;->k:I

    .line 8
    iput v0, p2, Lc/e/b/i;->c:I

    .line 9
    iput p1, p2, Lc/e/b/i;->e:I

    .line 10
    iget-object p1, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object p1, p1, Lc/e/b/c;->d:[Lc/e/b/i;

    aput-object p2, p1, v0

    .line 11
    iget-object p1, p0, Lc/e/b/d;->d:Lc/e/b/d$a;

    invoke-interface {p1, p2}, Lc/e/b/d$a;->b(Lc/e/b/i;)V

    return-object p2
.end method

.method public p()Lc/e/b/i;
    .registers 6

    .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v0, :cond_b

    .line 2
    iget-wide v1, v0, Lc/e/b/e;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lc/e/b/e;->n:J

    .line 3
    :cond_b
    iget v0, p0, Lc/e/b/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lc/e/b/d;->f:I

    if-lt v0, v1, :cond_16

    .line 4
    invoke-direct {p0}, Lc/e/b/d;->y()V

    .line 5
    :cond_16
    sget-object v0, Lc/e/b/i$a;->d:Lc/e/b/i$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc/e/b/d;->a(Lc/e/b/i$a;Ljava/lang/String;)Lc/e/b/i;

    move-result-object v0

    .line 6
    iget v1, p0, Lc/e/b/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/e/b/d;->b:I

    .line 7
    iget v2, p0, Lc/e/b/d;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc/e/b/d;->k:I

    .line 8
    iput v1, v0, Lc/e/b/i;->c:I

    .line 9
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v2, v2, Lc/e/b/c;->d:[Lc/e/b/i;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public q(Ljava/lang/Object;)Lc/e/b/i;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    iget v1, p0, Lc/e/b/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lc/e/b/d;->f:I

    if-lt v1, v2, :cond_f

    .line 2
    invoke-direct {p0}, Lc/e/b/d;->y()V

    .line 3
    :cond_f
    instance-of v1, p1, Lc/e/b/k/d;

    if-eqz v1, :cond_55

    .line 4
    check-cast p1, Lc/e/b/k/d;

    invoke-virtual {p1}, Lc/e/b/k/d;->h()Lc/e/b/i;

    move-result-object v0

    if-nez v0, :cond_25

    .line 5
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;

    invoke-virtual {p1, v0}, Lc/e/b/k/d;->r(Lc/e/b/c;)V

    .line 6
    invoke-virtual {p1}, Lc/e/b/k/d;->h()Lc/e/b/i;

    move-result-object p1

    move-object v0, p1

    .line 7
    :cond_25
    iget p1, v0, Lc/e/b/i;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_36

    iget v2, p0, Lc/e/b/d;->b:I

    if-gt p1, v2, :cond_36

    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v2, v2, Lc/e/b/c;->d:[Lc/e/b/i;

    aget-object p1, v2, p1

    if-nez p1, :cond_55

    .line 8
    :cond_36
    iget p1, v0, Lc/e/b/i;->c:I

    if-eq p1, v1, :cond_3d

    .line 9
    invoke-virtual {v0}, Lc/e/b/i;->d()V

    .line 10
    :cond_3d
    iget p1, p0, Lc/e/b/d;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/b/d;->b:I

    .line 11
    iget v1, p0, Lc/e/b/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/e/b/d;->k:I

    .line 12
    iput p1, v0, Lc/e/b/i;->c:I

    .line 13
    sget-object v1, Lc/e/b/i$a;->b:Lc/e/b/i$a;

    iput-object v1, v0, Lc/e/b/i;->j:Lc/e/b/i$a;

    .line 14
    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v1, v1, Lc/e/b/c;->d:[Lc/e/b/i;

    aput-object v0, v1, p1

    :cond_55
    return-object v0
.end method

.method public r()Lc/e/b/b;
    .registers 6

    .line 1
    sget-boolean v0, Lc/e/b/d;->v:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_23

    .line 2
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v0, v0, Lc/e/b/c;->a:Lc/e/b/f;

    invoke-interface {v0}, Lc/e/b/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/b;

    if-nez v0, :cond_1f

    .line 3
    new-instance v0, Lc/e/b/d$b;

    iget-object v3, p0, Lc/e/b/d;->n:Lc/e/b/c;

    invoke-direct {v0, p0, v3}, Lc/e/b/d$b;-><init>(Lc/e/b/d;Lc/e/b/c;)V

    .line 4
    sget-wide v3, Lc/e/b/d;->z:J

    add-long/2addr v3, v1

    sput-wide v3, Lc/e/b/d;->z:J

    goto :goto_3f

    .line 5
    :cond_1f
    invoke-virtual {v0}, Lc/e/b/b;->y()V

    goto :goto_3f

    .line 6
    :cond_23
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v0, v0, Lc/e/b/c;->b:Lc/e/b/f;

    invoke-interface {v0}, Lc/e/b/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/b/b;

    if-nez v0, :cond_3c

    .line 7
    new-instance v0, Lc/e/b/b;

    iget-object v3, p0, Lc/e/b/d;->n:Lc/e/b/c;

    invoke-direct {v0, v3}, Lc/e/b/b;-><init>(Lc/e/b/c;)V

    .line 8
    sget-wide v3, Lc/e/b/d;->y:J

    add-long/2addr v3, v1

    sput-wide v3, Lc/e/b/d;->y:J

    goto :goto_3f

    .line 9
    :cond_3c
    invoke-virtual {v0}, Lc/e/b/b;->y()V

    .line 10
    :goto_3f
    invoke-static {}, Lc/e/b/i;->b()V

    return-object v0
.end method

.method public t()Lc/e/b/i;
    .registers 6

    .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v0, :cond_b

    .line 2
    iget-wide v1, v0, Lc/e/b/e;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lc/e/b/e;->m:J

    .line 3
    :cond_b
    iget v0, p0, Lc/e/b/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lc/e/b/d;->f:I

    if-lt v0, v1, :cond_16

    .line 4
    invoke-direct {p0}, Lc/e/b/d;->y()V

    .line 5
    :cond_16
    sget-object v0, Lc/e/b/i$a;->d:Lc/e/b/i$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc/e/b/d;->a(Lc/e/b/i$a;Ljava/lang/String;)Lc/e/b/i;

    move-result-object v0

    .line 6
    iget v1, p0, Lc/e/b/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/e/b/d;->b:I

    .line 7
    iget v2, p0, Lc/e/b/d;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc/e/b/d;->k:I

    .line 8
    iput v1, v0, Lc/e/b/i;->c:I

    .line 9
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;

    iget-object v2, v2, Lc/e/b/c;->d:[Lc/e/b/i;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public v()Lc/e/b/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;

    return-object v0
.end method

.method public x(Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lc/e/b/k/d;

    .line 2
    invoke-virtual {p1}, Lc/e/b/k/d;->h()Lc/e/b/i;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 3
    iget p1, p1, Lc/e/b/i;->f:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public z()V
    .registers 6

    .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_b

    .line 2
    iget-wide v3, v0, Lc/e/b/e;->e:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/e/b/e;->e:J

    .line 3
    :cond_b
    iget-object v0, p0, Lc/e/b/d;->d:Lc/e/b/d$a;

    invoke-interface {v0}, Lc/e/b/d$a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4
    invoke-direct {p0}, Lc/e/b/d;->n()V

    return-void

    .line 5
    :cond_17
    iget-boolean v0, p0, Lc/e/b/d;->h:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lc/e/b/d;->i:Z

    if-eqz v0, :cond_20

    goto :goto_26

    .line 6
    :cond_20
    iget-object v0, p0, Lc/e/b/d;->d:Lc/e/b/d$a;

    invoke-virtual {p0, v0}, Lc/e/b/d;->A(Lc/e/b/d$a;)V

    goto :goto_56

    .line 7
    :cond_26
    :goto_26
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v0, :cond_2f

    .line 8
    iget-wide v3, v0, Lc/e/b/e;->q:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/e/b/e;->q:J

    :cond_2f
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 9
    :goto_31
    iget v4, p0, Lc/e/b/d;->l:I

    if-ge v3, v4, :cond_41

    .line 10
    iget-object v4, p0, Lc/e/b/d;->g:[Lc/e/b/b;

    aget-object v4, v4, v3

    .line 11
    iget-boolean v4, v4, Lc/e/b/b;->f:Z

    if-nez v4, :cond_3e

    goto :goto_42

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_41
    const/4 v0, 0x1

    :goto_42
    if-nez v0, :cond_4a

    .line 12
    iget-object v0, p0, Lc/e/b/d;->d:Lc/e/b/d$a;

    invoke-virtual {p0, v0}, Lc/e/b/d;->A(Lc/e/b/d$a;)V

    goto :goto_56

    .line 13
    :cond_4a
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;

    if-eqz v0, :cond_53

    .line 14
    iget-wide v3, v0, Lc/e/b/e;->p:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lc/e/b/e;->p:J

    .line 15
    :cond_53
    invoke-direct {p0}, Lc/e/b/d;->n()V

    :goto_56
    return-void
.end method
