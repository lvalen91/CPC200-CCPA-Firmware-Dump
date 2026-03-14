.class public Ld/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Ld/a/a/b/a$b;
  }
.end annotation

.field private final static h:[F

.field private final static i:[F

.field private final static j:Ljava/nio/FloatBuffer;

.field private final static k:Ljava/nio/FloatBuffer;

.field private final static l:[F

.field private final static m:[F

.field private final static n:Ljava/nio/FloatBuffer;

.field private final static o:Ljava/nio/FloatBuffer;

.field private final static p:[F

.field private final static q:[F

.field private final static r:Ljava/nio/FloatBuffer;

.field private final static s:Ljava/nio/FloatBuffer;

.field private a:Ljava/nio/FloatBuffer;

.field private b:Ljava/nio/FloatBuffer;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ld/a/a/b/a$b;

.method static constructor <clinit>()V
  .registers 4
    const/4 v0, 6
    new-array v1, v0, [F
  .line 1
    fill-array-data v1, :L0
    sput-object v1, Ld/a/a/b/a;->h:[F
    new-array v0, v0, [F
  .line 2
    fill-array-data v0, :L1
    sput-object v0, Ld/a/a/b/a;->i:[F
  .line 3
    invoke-static { v1 }, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;
    move-result-object v0
    sput-object v0, Ld/a/a/b/a;->j:Ljava/nio/FloatBuffer;
  .line 4
    sget-object v0, Ld/a/a/b/a;->i:[F
  .line 5
    invoke-static { v0 }, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;
    move-result-object v0
    sput-object v0, Ld/a/a/b/a;->k:Ljava/nio/FloatBuffer;
    const/16 v0, 8
    new-array v1, v0, [F
  .line 6
    fill-array-data v1, :L2
    sput-object v1, Ld/a/a/b/a;->l:[F
    new-array v2, v0, [F
  .line 7
    fill-array-data v2, :L3
    sput-object v2, Ld/a/a/b/a;->m:[F
  .line 8
    invoke-static { v1 }, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;
    move-result-object v1
    sput-object v1, Ld/a/a/b/a;->n:Ljava/nio/FloatBuffer;
  .line 9
    sget-object v1, Ld/a/a/b/a;->m:[F
  .line 10
    invoke-static { v1 }, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;
    move-result-object v1
    sput-object v1, Ld/a/a/b/a;->o:Ljava/nio/FloatBuffer;
    new-array v1, v0, [F
  .line 11
    fill-array-data v1, :L4
    sput-object v1, Ld/a/a/b/a;->p:[F
    new-array v0, v0, [F
  .line 12
    fill-array-data v0, :L5
    sput-object v0, Ld/a/a/b/a;->q:[F
  .line 13
    invoke-static { v1 }, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;
    move-result-object v0
    sput-object v0, Ld/a/a/b/a;->r:Ljava/nio/FloatBuffer;
  .line 14
    sget-object v0, Ld/a/a/b/a;->q:[F
  .line 15
    invoke-static { v0 }, Ld/a/a/b/d;->c([F)Ljava/nio/FloatBuffer;
    move-result-object v0
    sput-object v0, Ld/a/a/b/a;->s:Ljava/nio/FloatBuffer;
    return-void
  :L0
  .array-data 4
    0t 0t 0t 0t
    58t -51t 19t 63t
    0t 0t 0t -65t
    58t -51t -109t -66t
    0t 0t 0t 63t
    58t -51t -109t -66t
  .end array-data
  :L1
  .array-data 4
    0t 0t 0t 63t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t -128t 63t
  .end array-data
  :L2
  .array-data 4
    0t 0t 0t -65t
    0t 0t 0t -65t
    0t 0t 0t 63t
    0t 0t 0t -65t
    0t 0t 0t -65t
    0t 0t 0t 63t
    0t 0t 0t 63t
    0t 0t 0t 63t
  .end array-data
  :L3
  .array-data 4
    0t 0t 0t 0t
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t 63t
    0t 0t 0t 0t
  .end array-data
  :L4
  .array-data 4
    0t 0t -128t -65t
    0t 0t -128t -65t
    0t 0t -128t 63t
    0t 0t -128t -65t
    0t 0t -128t -65t
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t -128t 63t
  .end array-data
  :L5
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t 63t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t -128t 63t
  .end array-data
.end method

.method public constructor <init>(Ld/a/a/b/a$b;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget-object v0, Ld/a/a/b/a$a;->a:[I
    invoke-virtual { p1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aget v0, v0, v1
    const/4 v1, 1
    const/4 v2, 2
    if-eq v0, v1, :L2
    if-eq v0, v2, :L1
    const/4 v1, 3
    if-ne v0, v1, :L0
  .line 3
    sget-object v0, Ld/a/a/b/a;->r:Ljava/nio/FloatBuffer;
    iput-object v0, p0, Ld/a/a/b/a;->a:Ljava/nio/FloatBuffer;
  .line 4
    sget-object v0, Ld/a/a/b/a;->s:Ljava/nio/FloatBuffer;
    iput-object v0, p0, Ld/a/a/b/a;->b:Ljava/nio/FloatBuffer;
  .line 5
    iput v2, p0, Ld/a/a/b/a;->d:I
    mul-int/lit8 v0, v2, 4
  .line 6
    iput v0, p0, Ld/a/a/b/a;->e:I
  .line 7
    sget-object v0, Ld/a/a/b/a;->p:[F
    array-length v0, v0
    div-int/2addr v0, v2
    iput v0, p0, Ld/a/a/b/a;->c:I
    goto :L3
  :L0
  .line 8
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unknown shape "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 9
    sget-object v0, Ld/a/a/b/a;->n:Ljava/nio/FloatBuffer;
    iput-object v0, p0, Ld/a/a/b/a;->a:Ljava/nio/FloatBuffer;
  .line 10
    sget-object v0, Ld/a/a/b/a;->o:Ljava/nio/FloatBuffer;
    iput-object v0, p0, Ld/a/a/b/a;->b:Ljava/nio/FloatBuffer;
  .line 11
    iput v2, p0, Ld/a/a/b/a;->d:I
    mul-int/lit8 v0, v2, 4
  .line 12
    iput v0, p0, Ld/a/a/b/a;->e:I
  .line 13
    sget-object v0, Ld/a/a/b/a;->l:[F
    array-length v0, v0
    div-int/2addr v0, v2
    iput v0, p0, Ld/a/a/b/a;->c:I
    goto :L3
  :L2
  .line 14
    sget-object v0, Ld/a/a/b/a;->j:Ljava/nio/FloatBuffer;
    iput-object v0, p0, Ld/a/a/b/a;->a:Ljava/nio/FloatBuffer;
  .line 15
    sget-object v0, Ld/a/a/b/a;->k:Ljava/nio/FloatBuffer;
    iput-object v0, p0, Ld/a/a/b/a;->b:Ljava/nio/FloatBuffer;
  .line 16
    iput v2, p0, Ld/a/a/b/a;->d:I
    mul-int/lit8 v0, v2, 4
  .line 17
    iput v0, p0, Ld/a/a/b/a;->e:I
  .line 18
    sget-object v0, Ld/a/a/b/a;->h:[F
    array-length v0, v0
    div-int/2addr v0, v2
    iput v0, p0, Ld/a/a/b/a;->c:I
  :L3
    const/16 v0, 8
  .line 19
    iput v0, p0, Ld/a/a/b/a;->f:I
  .line 20
    iput-object p1, p0, Ld/a/a/b/a;->g:Ld/a/a/b/a$b;
    return-void
.end method

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
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "[Drawable2d: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Ld/a/a/b/a;->g:Ld/a/a/b/a$b;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "]"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L0
    const-string v0, "[Drawable2d: ...]"
    return-object v0
.end method
