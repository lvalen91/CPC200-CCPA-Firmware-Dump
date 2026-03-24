.class public Ld/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/a/b/a$b;
    }
.end annotation


# static fields
.field private static final h:[F

.field private static final i:[F

.field private static final j:Ljava/nio/FloatBuffer;

.field private static final k:Ljava/nio/FloatBuffer;

.field private static final l:[F

.field private static final m:[F

.field private static final n:Ljava/nio/FloatBuffer;

.field private static final o:Ljava/nio/FloatBuffer;

.field private static final p:[F

.field private static final q:[F

.field private static final r:Ljava/nio/FloatBuffer;

.field private static final s:Ljava/nio/FloatBuffer;


# instance fields
.field private a:Ljava/nio/FloatBuffer;

.field private b:Ljava/nio/FloatBuffer;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ld/a/a/b/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_58

    sput-object v1, Ld/a/a/b/a;->h:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_68

    sput-object v0, Ld/a/a/b/a;->i:[F

    .line 3
    invoke-static {v1}, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Ld/a/a/b/a;->j:Ljava/nio/FloatBuffer;

    .line 4
    sget-object v0, Ld/a/a/b/a;->i:[F

    .line 5
    invoke-static {v0}, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Ld/a/a/b/a;->k:Ljava/nio/FloatBuffer;

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_78

    sput-object v1, Ld/a/a/b/a;->l:[F

    new-array v2, v0, [F

    .line 7
    fill-array-data v2, :array_8c

    sput-object v2, Ld/a/a/b/a;->m:[F

    .line 8
    invoke-static {v1}, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Ld/a/a/b/a;->n:Ljava/nio/FloatBuffer;

    .line 9
    sget-object v1, Ld/a/a/b/a;->m:[F

    .line 10
    invoke-static {v1}, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Ld/a/a/b/a;->o:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 11
    fill-array-data v1, :array_a0

    sput-object v1, Ld/a/a/b/a;->p:[F

    new-array v0, v0, [F

    .line 12
    fill-array-data v0, :array_b4

    sput-object v0, Ld/a/a/b/a;->q:[F

    .line 13
    invoke-static {v1}, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Ld/a/a/b/a;->r:Ljava/nio/FloatBuffer;

    .line 14
    sget-object v0, Ld/a/a/b/a;->q:[F

    .line 15
    invoke-static {v0}, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Ld/a/a/b/a;->s:Ljava/nio/FloatBuffer;

    return-void

    :array_58
    .array-data 4
        0x0
        0x3f13cd3a
        -0x41000000    # -0.5f
        -0x416c32c6
        0x3f000000    # 0.5f
        -0x416c32c6
    .end array-data

    :array_68
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_78
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_8c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ld/a/a/b/a$b;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ld/a/a/b/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_55

    if-eq v0, v2, :cond_40

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    .line 3
    sget-object v0, Ld/a/a/b/a;->r:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Ld/a/a/b/a;->a:Ljava/nio/FloatBuffer;

    .line 4
    sget-object v0, Ld/a/a/b/a;->s:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Ld/a/a/b/a;->b:Ljava/nio/FloatBuffer;

    .line 5
    iput v2, p0, Ld/a/a/b/a;->d:I

    mul-int/lit8 v0, v2, 0x4

    .line 6
    iput v0, p0, Ld/a/a/b/a;->e:I

    .line 7
    sget-object v0, Ld/a/a/b/a;->p:[F

    array-length v0, v0

    div-int/2addr v0, v2

    iput v0, p0, Ld/a/a/b/a;->c:I

    goto :goto_69

    .line 8
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_40
    sget-object v0, Ld/a/a/b/a;->n:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Ld/a/a/b/a;->a:Ljava/nio/FloatBuffer;

    .line 10
    sget-object v0, Ld/a/a/b/a;->o:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Ld/a/a/b/a;->b:Ljava/nio/FloatBuffer;

    .line 11
    iput v2, p0, Ld/a/a/b/a;->d:I

    mul-int/lit8 v0, v2, 0x4

    .line 12
    iput v0, p0, Ld/a/a/b/a;->e:I

    .line 13
    sget-object v0, Ld/a/a/b/a;->l:[F

    array-length v0, v0

    div-int/2addr v0, v2

    iput v0, p0, Ld/a/a/b/a;->c:I

    goto :goto_69

    .line 14
    :cond_55
    sget-object v0, Ld/a/a/b/a;->j:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Ld/a/a/b/a;->a:Ljava/nio/FloatBuffer;

    .line 15
    sget-object v0, Ld/a/a/b/a;->k:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Ld/a/a/b/a;->b:Ljava/nio/FloatBuffer;

    .line 16
    iput v2, p0, Ld/a/a/b/a;->d:I

    mul-int/lit8 v0, v2, 0x4

    .line 17
    iput v0, p0, Ld/a/a/b/a;->e:I

    .line 18
    sget-object v0, Ld/a/a/b/a;->h:[F

    array-length v0, v0

    div-int/2addr v0, v2

    iput v0, p0, Ld/a/a/b/a;->c:I

    :goto_69
    const/16 v0, 0x8

    .line 19
    iput v0, p0, Ld/a/a/b/a;->f:I

    .line 20
    iput-object p1, p0, Ld/a/a/b/a;->g:Ld/a/a/b/a$b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Ld/a/a/b/a;->d:I

    return v0
.end method

.method public b()Ljava/nio/FloatBuffer;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/a/a/b/a;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Ld/a/a/b/a;->f:I

    return v0
.end method

.method public d()Ljava/nio/FloatBuffer;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/a/a/b/a;->a:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Ld/a/a/b/a;->c:I

    return v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Ld/a/a/b/a;->e:I

    return v0
.end method

.method public g(Ljava/nio/FloatBuffer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ld/a/a/b/a;->b:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ld/a/a/b/a;->g:Ld/a/a/b/a$b;

    if-eqz v0, :cond_1d

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Drawable2d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a/a/b/a;->g:Ld/a/a/b/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    const-string v0, "[Drawable2d: ...]"

    return-object v0
.end method
