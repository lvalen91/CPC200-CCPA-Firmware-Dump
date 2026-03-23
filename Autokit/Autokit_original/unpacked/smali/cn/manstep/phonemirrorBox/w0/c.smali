.class public Lcn/manstep/phonemirrorBox/w0/c;
.super Lcn/manstep/phonemirrorBox/w0/a;
.source "SourceFile"

.field private final static q:[F

.field private c:Ljava/nio/FloatBuffer;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:I

.field private j:F

.field private k:I

.field private l:F

.field private m:I

.field private n:F

.field private o:I

.field private p:Z

.method static constructor <clinit>()V
  .registers 2
    const/16 v0, 24
    new-array v0, v0, [F
  .line 1
    fill-array-data v0, :L0
    sput-object v0, Lcn/manstep/phonemirrorBox/w0/c;->q:[F
    return-void
  :L0
  .array-data 4
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t -128t -65t
    0t 0t -128t 63t
    0t 0t 0t 0t
    0t 0t -128t 63t
    0t 0t -128t -65t
    0t 0t -128t -65t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t -128t 63t
    0t 0t -128t -65t
    0t 0t -128t -65t
    0t 0t 0t 0t
    0t 0t 0t 0t
    0t 0t -128t 63t
    0t 0t -128t -65t
    0t 0t -128t 63t
    0t 0t 0t 0t
  .end array-data
.end method

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/w0/a;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->d:I
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->e:I
  .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->f:I
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->g:I
    const/high16 v1, 16256
  .line 6
    iput v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->h:F
  .line 7
    iput v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->i:I
    const/4 v2, 0
  .line 8
    iput v2, p0, Lcn/manstep/phonemirrorBox/w0/c;->j:F
  .line 9
    iput v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->k:I
  .line 10
    iput v2, p0, Lcn/manstep/phonemirrorBox/w0/c;->l:F
  .line 11
    iput v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->m:I
  .line 12
    iput v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->n:F
  .line 13
    iput v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->o:I
    const/4 v0, 1
  .line 14
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->p:Z
    const-string v0, "attribute vec4 aPosition;\nuniform mat4 uTextureMatrix;\nattribute vec4 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main()\n{\n    vTextureCoord = (uTextureMatrix * aTextureCoordinate).xy;\n    gl_Position = aPosition;\n}"
  .line 15
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w0/a;->a:Ljava/lang/String;
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES uTextureSampler;\nvarying vec2 vTextureCoord;\nconst mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n\nuniform lowp float saturation;\nuniform lowp float brightness;\nuniform lowp float exposure;\nuniform lowp float contrast;\n\nvoid main()\n{\n    //\u7eb9\u7406\u989c\u8272\n    vec4 vTextureColor = texture2D(uTextureSampler, vTextureCoord);\n\n    //\u9971\u548c\u5ea6\n    lowp float luminance = dot(vTextureColor.rgb, luminanceWeighting);\n    lowp vec3 greyScaleColor = vec3(luminance);\n    vec4 saturationColor = vec4(mix(greyScaleColor, vTextureColor.rgb, saturation), vTextureColor.w);\n    vTextureColor = saturationColor;\n\n    //\u4eae\u5ea6\n    vec4 brightnessColor = vec4((vTextureColor.rgb + vec3(brightness)), vTextureColor.w);\n    vTextureColor = brightnessColor;\n\n    //\u66dd\u5149\u5ea6\n    vec4 exposureColor = vec4(vTextureColor.rgb * pow(2.0, exposure), vTextureColor.w);\n    vTextureColor = exposureColor;\n\n    //\u5bf9\u6bd4\u5ea6\n    vec4 contrastColor = vec4(((vTextureColor.rgb - vec3(0.5)) * contrast + vec3(0.5)), vTextureColor.w);\n    vTextureColor = contrastColor;\n\n    gl_FragColor = vTextureColor;\n}"
  .line 16
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w0/a;->b:Ljava/lang/String;
    return-void
.end method

.method public b(I[F)V
  .registers 5
    const v0, 33984
  .line 1
    invoke-static { v0 }, Landroid/opengl/GLES20;->glActiveTexture(I)V
    const v0, 36197
  .line 2
    invoke-static { v0, p1 }, Landroid/opengl/GLES20;->glBindTexture(II)V
  .line 3
    iget p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->g:I
    const/4 v0, 0
    invoke-static { p1, v0 }, Landroid/opengl/GLES20;->glUniform1i(II)V
  .line 4
    iget p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->f:I
    const/4 v1, 1
    invoke-static { p1, v1, v0, p2, v0 }, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V
  .line 5
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->p:Z
    if-eqz p1, :L0
  .line 6
    iget p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->i:I
    iget p2, p0, Lcn/manstep/phonemirrorBox/w0/c;->h:F
    invoke-static { p1, p2 }, Landroid/opengl/GLES20;->glUniform1f(IF)V
  .line 7
    iget p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->m:I
    iget p2, p0, Lcn/manstep/phonemirrorBox/w0/c;->l:F
    invoke-static { p1, p2 }, Landroid/opengl/GLES20;->glUniform1f(IF)V
  .line 8
    iget p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->k:I
    iget p2, p0, Lcn/manstep/phonemirrorBox/w0/c;->j:F
    invoke-static { p1, p2 }, Landroid/opengl/GLES20;->glUniform1f(IF)V
  .line 9
    iget p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->o:I
    iget p2, p0, Lcn/manstep/phonemirrorBox/w0/c;->n:F
    invoke-static { p1, p2 }, Landroid/opengl/GLES20;->glUniform1f(IF)V
  .line 10
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->p:Z
  :L0
    const/4 p1, 4
    const/4 p2, 6
  .line 11
    invoke-static { p1, v0, p2 }, Landroid/opengl/GLES20;->glDrawArrays(III)V
    return-void
.end method

.method public c()V
  .registers 8
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/w0/c;->q:[F
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/w0/a;->a([F)Ljava/nio/FloatBuffer;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->c:Ljava/nio/FloatBuffer;
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/a;->a:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
    const v1, 35633
    invoke-virtual { p0, v1, v0 }, Lcn/manstep/phonemirrorBox/w0/a;->e(ILjava/lang/String;)I
    move-result v0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/w0/a;->b:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v1
    const v2, 35632
    invoke-virtual { p0, v2, v1 }, Lcn/manstep/phonemirrorBox/w0/a;->e(ILjava/lang/String;)I
    move-result v1
  .line 4
    invoke-virtual { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/w0/a;->d(II)I
    move-result v0
    const-string v1, "aPosition"
  .line 5
    invoke-static { v0, v1 }, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I
    move-result v1
    iput v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->d:I
    const-string v1, "aTextureCoordinate"
  .line 6
    invoke-static { v0, v1 }, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I
    move-result v1
    iput v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->e:I
    const-string v1, "uTextureMatrix"
  .line 7
    invoke-static { v0, v1 }, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I
    move-result v1
    iput v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->f:I
    const-string v1, "uTextureSampler"
  .line 8
    invoke-static { v0, v1 }, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I
    move-result v1
    iput v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->g:I
    const-string v1, "saturation"
  .line 9
    invoke-static { v0, v1 }, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I
    move-result v1
    iput v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->i:I
    const-string v1, "brightness"
  .line 10
    invoke-static { v0, v1 }, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I
    move-result v1
    iput v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->m:I
    const-string v1, "exposure"
  .line 11
    invoke-static { v0, v1 }, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I
    move-result v1
    iput v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->k:I
    const-string v1, "contrast"
  .line 12
    invoke-static { v0, v1 }, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->o:I
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->c:Ljava/nio/FloatBuffer;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 14
    invoke-virtual { v0, v1 }, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
  .line 15
    iget v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->d:I
    invoke-static { v0 }, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V
  .line 16
    iget v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->d:I
    const/4 v2, 2
    const/16 v3, 5126
    const/4 v4, 0
    const/16 v5, 16
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/w0/c;->c:Ljava/nio/FloatBuffer;
    invoke-static/range { v1 .. v6 }, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
  .line 17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->c:Ljava/nio/FloatBuffer;
    const/4 v1, 2
    invoke-virtual { v0, v1 }, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
  .line 18
    iget v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->e:I
    invoke-static { v0 }, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V
  .line 19
    iget v1, p0, Lcn/manstep/phonemirrorBox/w0/c;->e:I
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/w0/c;->c:Ljava/nio/FloatBuffer;
    invoke-static/range { v1 .. v6 }, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
  :L0
    return-void
.end method

.method public f(Ljava/lang/String;I)V
  .registers 6
  .line 1
    invoke-super { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/w0/a;->f(Ljava/lang/String;I)V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/w0/c;->p:Z
    const-string v0, "saturation"
  .line 3
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/high16 v1, 16512
    const/high16 v2, 16672
    if-eqz v0, :L0
    int-to-float p1, p2
    div-float/2addr p1, v2
    sub-float/2addr p1, v1
  .line 4
    iput p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->h:F
    goto :L3
  :L0
    const-string v0, "brightness"
  .line 5
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    int-to-float p1, p2
    const/high16 p2, 16968
    div-float/2addr p1, p2
    const/high16 p2, 16256
    sub-float/2addr p1, p2
  .line 6
    iput p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->l:F
    goto :L3
  :L1
    const-string v0, "exposure"
  .line 7
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    int-to-float p1, p2
    div-float/2addr p1, v2
    const/high16 p2, 16544
    sub-float/2addr p1, p2
  .line 8
    iput p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->j:F
    goto :L3
  :L2
    const-string v0, "contrast"
  .line 9
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L3
    int-to-float p1, p2
    div-float/2addr p1, v2
    sub-float/2addr p1, v1
  .line 10
    iput p1, p0, Lcn/manstep/phonemirrorBox/w0/c;->n:F
  :L3
    return-void
.end method
