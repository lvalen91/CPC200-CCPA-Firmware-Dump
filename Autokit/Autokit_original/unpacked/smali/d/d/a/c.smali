.class public Ld/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static A:[F

.field static v:[F

.field static w:[F

.field static x:[F

.field static y:[F

.field static z:[F

.field private a:I

.field public final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/nio/ByteBuffer;

.field private r:Ljava/nio/ByteBuffer;

.field private s:I

.field private t:I

.field private u:Z

.method static constructor <clinit>()V
  .registers 3
    const/16 v0, 8
    new-array v1, v0, [F
  .line 1
    fill-array-data v1, :L0
    sput-object v1, Ld/d/a/c;->v:[F
    new-array v1, v0, [F
  .line 2
    fill-array-data v1, :L1
    sput-object v1, Ld/d/a/c;->w:[F
    new-array v1, v0, [F
  .line 3
    fill-array-data v1, :L2
    sput-object v1, Ld/d/a/c;->x:[F
    new-array v1, v0, [F
  .line 4
    fill-array-data v1, :L3
    sput-object v1, Ld/d/a/c;->y:[F
    new-array v1, v0, [F
  .line 5
    fill-array-data v1, :L4
    sput-object v1, Ld/d/a/c;->z:[F
    new-array v0, v0, [F
  .line 6
    fill-array-data v0, :L5
    sput-object v0, Ld/d/a/c;->A:[F
    return-void
  :L0
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
  :L1
  .array-data 4
    0t 0t -128t -65t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t -65t
    0t 0t -128t 63t
    0t 0t 0t 0t
    0t 0t -128t 63t
  .end array-data
  :L2
  .array-data 4
    0t 0t 0t 0t
    0t 0t -128t -65t
    0t 0t -128t 63t
    0t 0t -128t -65t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t 63t
    0t 0t 0t 0t
  .end array-data
  :L3
  .array-data 4
    0t 0t -128t -65t
    0t 0t -128t -65t
    0t 0t 0t 0t
    0t 0t -128t -65t
    0t 0t -128t -65t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t 0t 0t
  .end array-data
  :L4
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
  :L5
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
.end method

.method public constructor <init>(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Ld/d/a/c;->i:I
    iput v0, p0, Ld/d/a/c;->j:I
  .line 3
    iput v0, p0, Ld/d/a/c;->k:I
    iput v0, p0, Ld/d/a/c;->l:I
    iput v0, p0, Ld/d/a/c;->m:I
  .line 4
    iput v0, p0, Ld/d/a/c;->n:I
    iput v0, p0, Ld/d/a/c;->o:I
    iput v0, p0, Ld/d/a/c;->p:I
  .line 5
    iput v0, p0, Ld/d/a/c;->s:I
  .line 6
    iput v0, p0, Ld/d/a/c;->t:I
    const/4 v0, 0
  .line 7
    iput-boolean v0, p0, Ld/d/a/c;->u:Z
    if-ltz p1, :L0
    const/4 v0, 4
    if-gt p1, v0, :L0
  .line 8
    iput p1, p0, Ld/d/a/c;->b:I
  .line 9
    invoke-virtual { p0, p1 }, Ld/d/a/c;->i(I)V
    return-void
  :L0
  .line 10
    new-instance p1, Ljava/lang/RuntimeException;
    const-string v0, "Index can only be 0 to 4"
    invoke-direct { p1, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private c(Ljava/lang/String;)V
  .registers 6
  .line 1
    invoke-static { }, Landroid/opengl/GLES20;->glGetError()I
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "***** "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ": glError "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ld/d/a/e;->b(Ljava/lang/String;)V
  .line 3
    new-instance v1, Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v1
.end method

.method private h(ILjava/lang/String;)I
  .registers 6
  .line 1
    invoke-static { p1 }, Landroid/opengl/GLES20;->glCreateShader(I)I
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-static { v0, p2 }, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V
  .line 3
    invoke-static { v0 }, Landroid/opengl/GLES20;->glCompileShader(I)V
    const/4 p2, 1
    new-array p2, p2, [I
    const v2, 35713
  .line 4
    invoke-static { v0, v2, p2, v1 }, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V
  .line 5
    aget p2, p2, v1
    if-nez p2, :L0
  .line 6
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Could not compile shader "
    invoke-virtual { p2, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ld/d/a/e;->b(Ljava/lang/String;)V
  .line 7
    invoke-static { v0 }, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ld/d/a/e;->b(Ljava/lang/String;)V
  .line 8
    invoke-static { v0 }, Landroid/opengl/GLES20;->glDeleteShader(I)V
    const/4 v0, 0
  :L0
    return v0
.end method

.method public a()V
  .registers 4
  .line 1
    iget v0, p0, Ld/d/a/c;->a:I
    if-gtz v0, :L0
    const-string v0, "attribute vec4 vPosition;\nattribute vec2 a_texCoord;\nvarying vec2 tc;\nvoid main() {\ngl_Position = vPosition;\ntc = a_texCoord;\n}\n"
    const-string v1, "precision mediump float;\nuniform sampler2D tex_y;\nuniform sampler2D tex_u;\nuniform sampler2D tex_v;\nvarying vec2 tc;\nvoid main() {\nvec4 c = vec4((texture2D(tex_y, tc).r - 16./255.) * 1.164);\nvec4 U = vec4(texture2D(tex_u, tc).r - 128./255.);\nvec4 V = vec4(texture2D(tex_v, tc).r - 128./255.);\nc += V * vec4(1.596, -0.813, 0, 0);\nc += U * vec4(0, -0.392, 2.017, 0);\nc.a = 1.0;\ngl_FragColor = c;\n}\n"
  .line 2
    invoke-virtual { p0, v0, v1 }, Ld/d/a/c;->e(Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    iput v0, p0, Ld/d/a/c;->a:I
  :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "_program = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Ld/d/a/c;->a:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ld/d/a/e;->a(Ljava/lang/String;)V
  .line 4
    iget v0, p0, Ld/d/a/c;->a:I
    const-string v1, "vPosition"
    invoke-static { v0, v1 }, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I
    move-result v0
    iput v0, p0, Ld/d/a/c;->i:I
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "_positionHandle = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Ld/d/a/c;->i:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    const-string v0, "glGetAttribLocation vPosition"
  .line 6
    invoke-direct { p0, v0 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 7
    iget v0, p0, Ld/d/a/c;->i:I
    const/4 v1, -1
    if-eq v0, v1, :L5
  .line 8
    iget v0, p0, Ld/d/a/c;->a:I
    const-string v2, "a_texCoord"
    invoke-static { v0, v2 }, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I
    move-result v0
    iput v0, p0, Ld/d/a/c;->j:I
  .line 9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "_coordHandle = "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Ld/d/a/c;->j:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    const-string v0, "glGetAttribLocation a_texCoord"
  .line 10
    invoke-direct { p0, v0 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 11
    iget v0, p0, Ld/d/a/c;->j:I
    if-eq v0, v1, :L4
  .line 12
    iget v0, p0, Ld/d/a/c;->a:I
    const-string v2, "tex_y"
    invoke-static { v0, v2 }, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I
    move-result v0
    iput v0, p0, Ld/d/a/c;->k:I
  .line 13
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "_yhandle = "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Ld/d/a/c;->k:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    const-string v0, "glGetUniformLocation tex_y"
  .line 14
    invoke-direct { p0, v0 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 15
    iget v0, p0, Ld/d/a/c;->k:I
    if-eq v0, v1, :L3
  .line 16
    iget v0, p0, Ld/d/a/c;->a:I
    const-string v2, "tex_u"
    invoke-static { v0, v2 }, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I
    move-result v0
    iput v0, p0, Ld/d/a/c;->l:I
  .line 17
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "_uhandle = "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Ld/d/a/c;->l:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    const-string v0, "glGetUniformLocation tex_u"
  .line 18
    invoke-direct { p0, v0 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 19
    iget v0, p0, Ld/d/a/c;->l:I
    if-eq v0, v1, :L2
  .line 20
    iget v0, p0, Ld/d/a/c;->a:I
    const-string v2, "tex_v"
    invoke-static { v0, v2 }, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I
    move-result v0
    iput v0, p0, Ld/d/a/c;->m:I
  .line 21
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "_vhandle = "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Ld/d/a/c;->m:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    const-string v0, "glGetUniformLocation tex_v"
  .line 22
    invoke-direct { p0, v0 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 23
    iget v0, p0, Ld/d/a/c;->m:I
    if-eq v0, v1, :L1
    const/4 v0, 1
  .line 24
    iput-boolean v0, p0, Ld/d/a/c;->u:Z
    return-void
  :L1
  .line 25
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "Could not get uniform location for tex_v"
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .line 26
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "Could not get uniform location for tex_u"
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
  .line 27
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "Could not get uniform location for tex_y"
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
  .line 28
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "Could not get attribute location for a_texCoord"
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L5
  .line 29
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "Could not get attribute location for vPosition"
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public b(Ljava/nio/Buffer;Ljava/nio/Buffer;Ljava/nio/Buffer;II)V
  .registers 29
    move-object/from16 v0, p0
    move/from16 v1, p4
    move/from16 v2, p5
  .line 1
    iget v3, v0, Ld/d/a/c;->s:I
    const/4 v4, 0
    const/4 v5, 1
    if-ne v1, v3, :L1
    iget v3, v0, Ld/d/a/c;->t:I
    if-eq v2, v3, :L0
    goto :L1
  :L0
    const/4 v3, 0
    goto :L2
  :L1
    const/4 v3, 1
  :L2
    if-eqz v3, :L3
  .line 2
    iput v1, v0, Ld/d/a/c;->s:I
  .line 3
    iput v2, v0, Ld/d/a/c;->t:I
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "buildTextures videoSizeChanged: w="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, v0, Ld/d/a/c;->s:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " h="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, v0, Ld/d/a/c;->t:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ld/d/a/e;->a(Ljava/lang/String;)V
  :L3
  .line 5
    iget v1, v0, Ld/d/a/c;->n:I
    const-string v2, "glDeleteTextures"
    const-string v6, "glGenTextures"
    if-ltz v1, :L4
    if-eqz v3, :L6
  :L4
  .line 6
    iget v1, v0, Ld/d/a/c;->n:I
    if-ltz v1, :L5
    const-string v1, "glDeleteTextures Y"
  .line 7
    invoke-static { v1 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    new-array v1, v5, [I
  .line 8
    iget v7, v0, Ld/d/a/c;->n:I
    aput v7, v1, v4
    invoke-static { v5, v1, v4 }, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
  .line 9
    invoke-direct { v0, v2 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  :L5
    const/16 v1, 3317
  .line 10
    invoke-static { v1, v5 }, Landroid/opengl/GLES20;->glPixelStorei(II)V
    new-array v1, v5, [I
  .line 11
    invoke-static { v5, v1, v4 }, Landroid/opengl/GLES20;->glGenTextures(I[II)V
  .line 12
    invoke-direct { v0, v6 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 13
    aget v1, v1, v4
    iput v1, v0, Ld/d/a/c;->n:I
  .line 14
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "glGenTextures Y = "
    invoke-virtual { v1, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v7, v0, Ld/d/a/c;->n:I
    invoke-virtual { v1, v7 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ld/d/a/e;->a(Ljava/lang/String;)V
  :L6
  .line 15
    iget v1, v0, Ld/d/a/c;->n:I
    const/16 v7, 3553
    invoke-static { v7, v1 }, Landroid/opengl/GLES20;->glBindTexture(II)V
    const-string v1, "glBindTexture"
  .line 16
    invoke-direct { v0, v1 }, Ld/d/a/c;->c(Ljava/lang/String;)V
    const/16 v8, 3553
    const/4 v9, 0
    const/16 v10, 6409
  .line 17
    iget v11, v0, Ld/d/a/c;->s:I
    iget v12, v0, Ld/d/a/c;->t:I
    const/4 v13, 0
    const/16 v14, 6409
    const/16 v15, 5121
    move-object/from16 v16, p1
    invoke-static/range { v8 .. v16 }, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    const-string v1, "glTexImage2D"
  .line 18
    invoke-direct { v0, v1 }, Ld/d/a/c;->c(Ljava/lang/String;)V
    const/16 v1, 10241
    const v8, 1175979008
  .line 19
    invoke-static { v7, v1, v8 }, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
    const/16 v9, 10240
  .line 20
    invoke-static { v7, v9, v8 }, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
    const/16 v10, 10242
    const v11, 33071
  .line 21
    invoke-static { v7, v10, v11 }, Landroid/opengl/GLES20;->glTexParameteri(III)V
    const/16 v12, 10243
  .line 22
    invoke-static { v7, v12, v11 }, Landroid/opengl/GLES20;->glTexParameteri(III)V
  .line 23
    iget v13, v0, Ld/d/a/c;->o:I
    if-ltz v13, :L7
    if-eqz v3, :L9
  :L7
  .line 24
    iget v13, v0, Ld/d/a/c;->o:I
    if-ltz v13, :L8
    const-string v13, "glDeleteTextures U"
  .line 25
    invoke-static { v13 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    new-array v13, v5, [I
  .line 26
    iget v14, v0, Ld/d/a/c;->o:I
    aput v14, v13, v4
    invoke-static { v5, v13, v4 }, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
  .line 27
    invoke-direct { v0, v2 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  :L8
    new-array v13, v5, [I
  .line 28
    invoke-static { v5, v13, v4 }, Landroid/opengl/GLES20;->glGenTextures(I[II)V
  .line 29
    invoke-direct { v0, v6 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 30
    aget v13, v13, v4
    iput v13, v0, Ld/d/a/c;->o:I
  .line 31
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct { v13 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v14, "glGenTextures U = "
    invoke-virtual { v13, v14 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v14, v0, Ld/d/a/c;->o:I
    invoke-virtual { v13, v14 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v13 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v13
    invoke-static { v13 }, Ld/d/a/e;->a(Ljava/lang/String;)V
  :L9
  .line 32
    iget v13, v0, Ld/d/a/c;->o:I
    invoke-static { v7, v13 }, Landroid/opengl/GLES20;->glBindTexture(II)V
    const/16 v14, 3553
    const/4 v15, 0
    const/16 v16, 6409
  .line 33
    iget v13, v0, Ld/d/a/c;->s:I
    div-int/lit8 v17, v13, 2
    iget v13, v0, Ld/d/a/c;->t:I
    div-int/lit8 v18, v13, 2
    const/16 v19, 0
    const/16 v20, 6409
    const/16 v21, 5121
    move-object/from16 v22, p2
    invoke-static/range { v14 .. v22 }, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
  .line 34
    invoke-static { v7, v1, v8 }, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
  .line 35
    invoke-static { v7, v9, v8 }, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
  .line 36
    invoke-static { v7, v10, v11 }, Landroid/opengl/GLES20;->glTexParameteri(III)V
  .line 37
    invoke-static { v7, v12, v11 }, Landroid/opengl/GLES20;->glTexParameteri(III)V
  .line 38
    iget v13, v0, Ld/d/a/c;->p:I
    if-ltz v13, :L10
    if-eqz v3, :L12
  :L10
  .line 39
    iget v3, v0, Ld/d/a/c;->p:I
    if-ltz v3, :L11
    const-string v3, "glDeleteTextures V"
  .line 40
    invoke-static { v3 }, Ld/d/a/e;->a(Ljava/lang/String;)V
    new-array v3, v5, [I
  .line 41
    iget v13, v0, Ld/d/a/c;->p:I
    aput v13, v3, v4
    invoke-static { v5, v3, v4 }, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
  .line 42
    invoke-direct { v0, v2 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  :L11
    new-array v2, v5, [I
  .line 43
    invoke-static { v5, v2, v4 }, Landroid/opengl/GLES20;->glGenTextures(I[II)V
  .line 44
    invoke-direct { v0, v6 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 45
    aget v2, v2, v4
    iput v2, v0, Ld/d/a/c;->p:I
  .line 46
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "glGenTextures V = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v3, v0, Ld/d/a/c;->p:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ld/d/a/e;->a(Ljava/lang/String;)V
  :L12
  .line 47
    iget v2, v0, Ld/d/a/c;->p:I
    invoke-static { v7, v2 }, Landroid/opengl/GLES20;->glBindTexture(II)V
    const/16 v13, 3553
    const/4 v14, 0
    const/16 v15, 6409
  .line 48
    iget v2, v0, Ld/d/a/c;->s:I
    div-int/lit8 v16, v2, 2
    iget v2, v0, Ld/d/a/c;->t:I
    div-int/lit8 v17, v2, 2
    const/16 v18, 0
    const/16 v19, 6409
    const/16 v20, 5121
    move-object/from16 v21, p3
    invoke-static/range { v13 .. v21 }, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
  .line 49
    invoke-static { v7, v1, v8 }, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
  .line 50
    invoke-static { v7, v9, v8 }, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
  .line 51
    invoke-static { v7, v10, v11 }, Landroid/opengl/GLES20;->glTexParameteri(III)V
  .line 52
    invoke-static { v7, v12, v11 }, Landroid/opengl/GLES20;->glTexParameteri(III)V
    return-void
.end method

.method d([F)V
  .registers 4
  .line 1
    array-length v0, p1
    mul-int/lit8 v0, v0, 4
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    move-result-object v0
    iput-object v0, p0, Ld/d/a/c;->q:Ljava/nio/ByteBuffer;
  .line 2
    invoke-static { }, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
  .line 3
    iget-object v0, p0, Ld/d/a/c;->q:Ljava/nio/ByteBuffer;
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;
    move-result-object v0
    invoke-virtual { v0, p1 }, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;
  .line 4
    iget-object p1, p0, Ld/d/a/c;->q:Ljava/nio/ByteBuffer;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
  .line 5
    iget-object p1, p0, Ld/d/a/c;->r:Ljava/nio/ByteBuffer;
    if-nez p1, :L0
  .line 6
    sget-object p1, Ld/d/a/c;->A:[F
    array-length p1, p1
    mul-int/lit8 p1, p1, 4
    invoke-static { p1 }, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    move-result-object p1
    iput-object p1, p0, Ld/d/a/c;->r:Ljava/nio/ByteBuffer;
  .line 7
    invoke-static { }, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;
    move-result-object v1
    invoke-virtual { p1, v1 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
  .line 8
    iget-object p1, p0, Ld/d/a/c;->r:Ljava/nio/ByteBuffer;
    invoke-virtual { p1 }, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;
    move-result-object p1
    sget-object v1, Ld/d/a/c;->A:[F
    invoke-virtual { p1, v1 }, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;
  .line 9
    iget-object p1, p0, Ld/d/a/c;->r:Ljava/nio/ByteBuffer;
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
  :L0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
  .registers 6
    const v0, 35633
  .line 1
    invoke-direct { p0, v0, p1 }, Ld/d/a/c;->h(ILjava/lang/String;)I
    move-result p1
    const v0, 35632
  .line 2
    invoke-direct { p0, v0, p2 }, Ld/d/a/c;->h(ILjava/lang/String;)I
    move-result p2
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "vertexShader = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ld/d/a/e;->a(Ljava/lang/String;)V
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "pixelShader = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ld/d/a/e;->a(Ljava/lang/String;)V
  .line 5
    invoke-static { }, Landroid/opengl/GLES20;->glCreateProgram()I
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 6
    invoke-static { v0, p1 }, Landroid/opengl/GLES20;->glAttachShader(II)V
    const-string p1, "glAttachShader"
  .line 7
    invoke-direct { p0, p1 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 8
    invoke-static { v0, p2 }, Landroid/opengl/GLES20;->glAttachShader(II)V
  .line 9
    invoke-direct { p0, p1 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 10
    invoke-static { v0 }, Landroid/opengl/GLES20;->glLinkProgram(I)V
    const/4 p1, 1
    new-array p2, p1, [I
    const v2, 35714
  .line 11
    invoke-static { v0, v2, p2, v1 }, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V
  .line 12
    aget p2, p2, v1
    if-eq p2, p1, :L0
    const-string p1, "Could not link program: "
  .line 13
    invoke-static { p1 }, Ld/d/a/e;->b(Ljava/lang/String;)V
  .line 14
    invoke-static { v0 }, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ld/d/a/e;->b(Ljava/lang/String;)V
  .line 15
    invoke-static { v0 }, Landroid/opengl/GLES20;->glDeleteProgram(I)V
    const/4 v0, 0
  :L0
    return v0
.end method

.method public f()V
  .registers 8
  .line 1
    iget v0, p0, Ld/d/a/c;->a:I
    invoke-static { v0 }, Landroid/opengl/GLES20;->glUseProgram(I)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "glUseProgram: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Ld/d/a/c;->a:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v0 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 3
    iget v1, p0, Ld/d/a/c;->i:I
    iget-object v6, p0, Ld/d/a/c;->q:Ljava/nio/ByteBuffer;
    const/4 v2, 2
    const/16 v3, 5126
    const/4 v4, 0
    const/16 v5, 8
    invoke-static/range { v1 .. v6 }, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    const-string v0, "glVertexAttribPointer mPositionHandle"
  .line 4
    invoke-direct { p0, v0 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 5
    iget v0, p0, Ld/d/a/c;->i:I
    invoke-static { v0 }, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V
  .line 6
    iget v1, p0, Ld/d/a/c;->j:I
    iget-object v6, p0, Ld/d/a/c;->r:Ljava/nio/ByteBuffer;
    invoke-static/range { v1 .. v6 }, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    const-string v0, "glVertexAttribPointer maTextureHandle"
  .line 7
    invoke-direct { p0, v0 }, Ld/d/a/c;->c(Ljava/lang/String;)V
  .line 8
    iget v0, p0, Ld/d/a/c;->j:I
    invoke-static { v0 }, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V
  .line 9
    iget v0, p0, Ld/d/a/c;->c:I
    invoke-static { v0 }, Landroid/opengl/GLES20;->glActiveTexture(I)V
  .line 10
    iget v0, p0, Ld/d/a/c;->n:I
    const/16 v1, 3553
    invoke-static { v1, v0 }, Landroid/opengl/GLES20;->glBindTexture(II)V
  .line 11
    iget v0, p0, Ld/d/a/c;->k:I
    iget v2, p0, Ld/d/a/c;->f:I
    invoke-static { v0, v2 }, Landroid/opengl/GLES20;->glUniform1i(II)V
  .line 12
    iget v0, p0, Ld/d/a/c;->d:I
    invoke-static { v0 }, Landroid/opengl/GLES20;->glActiveTexture(I)V
  .line 13
    iget v0, p0, Ld/d/a/c;->o:I
    invoke-static { v1, v0 }, Landroid/opengl/GLES20;->glBindTexture(II)V
  .line 14
    iget v0, p0, Ld/d/a/c;->l:I
    iget v2, p0, Ld/d/a/c;->g:I
    invoke-static { v0, v2 }, Landroid/opengl/GLES20;->glUniform1i(II)V
  .line 15
    iget v0, p0, Ld/d/a/c;->e:I
    invoke-static { v0 }, Landroid/opengl/GLES20;->glActiveTexture(I)V
  .line 16
    iget v0, p0, Ld/d/a/c;->p:I
    invoke-static { v1, v0 }, Landroid/opengl/GLES20;->glBindTexture(II)V
  .line 17
    iget v0, p0, Ld/d/a/c;->m:I
    iget v1, p0, Ld/d/a/c;->h:I
    invoke-static { v0, v1 }, Landroid/opengl/GLES20;->glUniform1i(II)V
    const/4 v0, 5
    const/4 v1, 0
    const/4 v2, 4
  .line 18
    invoke-static { v0, v1, v2 }, Landroid/opengl/GLES20;->glDrawArrays(III)V
  .line 19
    invoke-static { }, Landroid/opengl/GLES20;->glFinish()V
  .line 20
    iget v0, p0, Ld/d/a/c;->i:I
    invoke-static { v0 }, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V
  .line 21
    iget v0, p0, Ld/d/a/c;->j:I
    invoke-static { v0 }, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V
    return-void
.end method

.method public g()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Ld/d/a/c;->u:Z
    return v0
.end method

.method public i(I)V
  .registers 10
  .line 1
    iget p1, p0, Ld/d/a/c;->b:I
    const/4 v0, 0
    const v1, 33986
    const v2, 33985
    const v3, 33984
    const/4 v4, 2
    const/4 v5, 1
    if-eq p1, v5, :L3
    const/4 v6, 4
    const/4 v7, 3
    if-eq p1, v4, :L2
    if-eq p1, v7, :L1
    if-eq p1, v6, :L0
  .line 2
    iput v3, p0, Ld/d/a/c;->c:I
  .line 3
    iput v2, p0, Ld/d/a/c;->d:I
  .line 4
    iput v1, p0, Ld/d/a/c;->e:I
  .line 5
    iput v0, p0, Ld/d/a/c;->f:I
  .line 6
    iput v5, p0, Ld/d/a/c;->g:I
  .line 7
    iput v4, p0, Ld/d/a/c;->h:I
    goto :L4
  :L0
    const p1, 33993
  .line 8
    iput p1, p0, Ld/d/a/c;->c:I
    const p1, 33994
  .line 9
    iput p1, p0, Ld/d/a/c;->d:I
    const p1, 33995
  .line 10
    iput p1, p0, Ld/d/a/c;->e:I
    const/16 p1, 9
  .line 11
    iput p1, p0, Ld/d/a/c;->f:I
    const/16 p1, 10
  .line 12
    iput p1, p0, Ld/d/a/c;->g:I
    const/16 p1, 11
  .line 13
    iput p1, p0, Ld/d/a/c;->h:I
    goto :L4
  :L1
    const p1, 33990
  .line 14
    iput p1, p0, Ld/d/a/c;->c:I
    const p1, 33991
  .line 15
    iput p1, p0, Ld/d/a/c;->d:I
    const p1, 33992
  .line 16
    iput p1, p0, Ld/d/a/c;->e:I
    const/4 p1, 6
  .line 17
    iput p1, p0, Ld/d/a/c;->f:I
    const/4 p1, 7
  .line 18
    iput p1, p0, Ld/d/a/c;->g:I
    const/16 p1, 8
  .line 19
    iput p1, p0, Ld/d/a/c;->h:I
    goto :L4
  :L2
    const p1, 33987
  .line 20
    iput p1, p0, Ld/d/a/c;->c:I
    const p1, 33988
  .line 21
    iput p1, p0, Ld/d/a/c;->d:I
    const p1, 33989
  .line 22
    iput p1, p0, Ld/d/a/c;->e:I
  .line 23
    iput v7, p0, Ld/d/a/c;->f:I
  .line 24
    iput v6, p0, Ld/d/a/c;->g:I
    const/4 p1, 5
  .line 25
    iput p1, p0, Ld/d/a/c;->h:I
    goto :L4
  :L3
  .line 26
    iput v3, p0, Ld/d/a/c;->c:I
  .line 27
    iput v2, p0, Ld/d/a/c;->d:I
  .line 28
    iput v1, p0, Ld/d/a/c;->e:I
  .line 29
    iput v0, p0, Ld/d/a/c;->f:I
  .line 30
    iput v5, p0, Ld/d/a/c;->g:I
  .line 31
    iput v4, p0, Ld/d/a/c;->h:I
  :L4
    return-void
.end method
