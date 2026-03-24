.class public Ld/a/a/a;
.super Ld/a/a/b/a;
.source "SourceFile"


# instance fields
.field private t:Ljava/nio/FloatBuffer;

.field private u:F

.field private v:Z


# direct methods
.method public constructor <init>(Ld/a/a/b/a$b;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ld/a/a/b/a;-><init>(Ld/a/a/b/a$b;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Ld/a/a/a;->u:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ld/a/a/a;->v:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/nio/FloatBuffer;
    .registers 9

    .line 1
    iget-boolean v0, p0, Ld/a/a/a;->v:Z

    if-eqz v0, :cond_3d

    .line 2
    invoke-super {p0}, Ld/a/a/b/a;->b()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    .line 4
    iget-object v2, p0, Ld/a/a/a;->t:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_23

    mul-int/lit8 v2, v1, 0x4

    .line 5
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Ld/a/a/a;->t:Ljava/nio/FloatBuffer;

    .line 8
    :cond_23
    iget-object v2, p0, Ld/a/a/a;->t:Ljava/nio/FloatBuffer;

    .line 9
    iget v3, p0, Ld/a/a/a;->u:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v1, :cond_3b

    .line 10
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    mul-float v6, v6, v3

    add-float/2addr v6, v7

    .line 11
    invoke-virtual {v2, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 12
    :cond_3b
    iput-boolean v4, p0, Ld/a/a/a;->v:Z

    .line 13
    :cond_3d
    iget-object v0, p0, Ld/a/a/a;->t:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public h(F)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_11

    .line 1
    iput p1, p0, Ld/a/a/a;->u:F

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ld/a/a/a;->v:Z

    return-void

    .line 3
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
