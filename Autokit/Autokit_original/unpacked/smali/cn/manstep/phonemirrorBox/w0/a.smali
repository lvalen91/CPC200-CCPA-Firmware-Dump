.class public abstract Lcn/manstep/phonemirrorBox/w0/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a([F)Ljava/nio/FloatBuffer;
  .registers 5
  .line 1
    array-length v0, p1
    mul-int/lit8 v0, v0, 4
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    move-result-object v0
  .line 2
    invoke-static { }, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;
    move-result-object v0
  .line 4
    array-length v1, p1
    const/4 v2, 0
    invoke-virtual { v0, p1, v2, v1 }, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;
    move-result-object p1
    invoke-virtual { p1, v2 }, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    return-object v0
.end method

.method public abstract b(I[F)V
.end method

.method public abstract c()V
.end method

.method public d(II)I
  .registers 4
  .line 1
    invoke-static { }, Landroid/opengl/GLES20;->glCreateProgram()I
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p1 }, Landroid/opengl/GLES20;->glAttachShader(II)V
  .line 3
    invoke-static { v0, p2 }, Landroid/opengl/GLES20;->glAttachShader(II)V
  .line 4
    invoke-static { v0 }, Landroid/opengl/GLES20;->glLinkProgram(I)V
  .line 5
    invoke-static { v0 }, Landroid/opengl/GLES20;->glUseProgram(I)V
    return v0
  :L0
  .line 6
    new-instance p1, Ljava/lang/RuntimeException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Create Program Failed!"
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Landroid/opengl/GLES20;->glGetError()I
    move-result v0
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public e(ILjava/lang/String;)I
  .registers 4
  .line 1
    invoke-static { p1 }, Landroid/opengl/GLES20;->glCreateShader(I)I
    move-result p1
    if-eqz p1, :L0
  .line 2
    invoke-static { p1, p2 }, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V
  .line 3
    invoke-static { p1 }, Landroid/opengl/GLES20;->glCompileShader(I)V
    return p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/RuntimeException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Create Shader Failed!"
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Landroid/opengl/GLES20;->glGetError()I
    move-result v0
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public f(Ljava/lang/String;I)V
  .registers 3
    return-void
.end method
