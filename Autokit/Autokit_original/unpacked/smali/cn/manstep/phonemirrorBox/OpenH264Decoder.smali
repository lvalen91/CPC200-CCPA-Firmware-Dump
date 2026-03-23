.class public Lcn/manstep/phonemirrorBox/OpenH264Decoder;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:I

.field private b:I

.field private c:I

.field private d:Ld/d/a/b;

.field private e:I

.field public f:[B

.method static constructor <clinit>()V
  .catch Ljava/lang/UnsatisfiedLinkError; { :L0 .. :L1 } :L2
  .registers 5
  :L0
    const-string v0, "openH264decoder"
  .line 1
    invoke-static { v0 }, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
  :L1
    goto :L3
  :L2
    move-exception v0
    const/4 v1, 0
  .line 2
    sput-boolean v1, Lcn/manstep/phonemirrorBox/p;->g:Z
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "static initializer: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "OpenH264Decoder"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L3
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->d:Ld/d/a/b;
    return-void
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method public a()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->d:Ld/d/a/b;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ld/d/a/b;->a()V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->d:Ld/d/a/b;
  :L0
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->nativeDestroy()V
    return-void
.end method

.method public b()V
  .registers 3
    const v0, 4392000
    new-array v0, v0, [B
  .line 1
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->f:[B
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->c:I
    iput v0, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->b:I
    iput v0, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->a:I
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->getSoftH264Render()Ld/d/a/b;
    move-result-object v1
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->d:Ld/d/a/b;
  .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->e:I
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->nativeInit()V
    return-void
.end method

.method public c([BII)V
  .registers 10
  .line 1
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->f:[B
    array-length v5, v4
    move-object v0, p0
    move-object v1, p1
    move v2, p2
    move v3, p3
    invoke-virtual/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->decodeFrameOffset([BII[BI)I
    move-result p1
  .line 2
    iget p2, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->e:I
    add-int/lit8 p2, p2, 1
    iput p2, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->e:I
  .line 3
    iget p2, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->a:I
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->getWidth()I
    move-result p3
    if-ne p2, p3, :L0
    iget p2, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->b:I
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->getHeight()I
    move-result p3
    if-eq p2, p3, :L2
  :L0
  .line 4
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->getWidth()I
    move-result p2
  .line 5
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->getHeight()I
    move-result p3
  .line 6
    iput p2, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->c:I
  .line 7
    iput p2, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->a:I
  .line 8
    iput p3, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->b:I
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->f:[B
    array-length v0, v0
    mul-int v1, p2, p3
    mul-int/lit8 v1, v1, 3
    div-int/lit8 v1, v1, 2
    if-ge v0, v1, :L1
    mul-int p2, p2, p3
    mul-int/lit8 p2, p2, 3
  .line 10
    div-int/lit8 p2, p2, 2
    new-array p2, p2, [B
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->f:[B
  :L1
  .line 11
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "mShowWidth = "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p3, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->c:I
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 12
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->d:Ld/d/a/b;
    if-eqz p2, :L2
  .line 13
    iget p3, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->c:I
    iget v0, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->b:I
    invoke-virtual { p2, p3, v0 }, Ld/d/a/b;->b(II)V
  :L2
    if-lez p1, :L3
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->d:Ld/d/a/b;
    if-eqz p1, :L3
  .line 15
    iget p2, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->e:I
    if-lez p2, :L3
  .line 16
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/OpenH264Decoder;->f:[B
    invoke-virtual { p1, p2 }, Ld/d/a/b;->c([B)V
  :L3
    return-void
.end method

.method public native decodeFrameOffset([BII[BI)I
.end method

.method public native getHeight()I
.end method

.method public native getWidth()I
.end method
