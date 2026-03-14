.class public Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
.super Landroid/view/TextureView;
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.source "SourceFile"

.field private static j:I

.field private static k:I

.field private static l:Landroid/graphics/SurfaceTexture;

.field private static m:Landroid/graphics/SurfaceTexture;

.field private static n:Landroid/view/Surface;

.field private b:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcn/manstep/phonemirrorBox/BoxInterface/d;",
      ">;"
    }
  .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Lcn/manstep/phonemirrorBox/w0/b;

.field private f:Z

.field private g:Lcn/manstep/phonemirrorBox/i;

.field private h:I

.field private i:Z

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d:Z
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z
  .line 5
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->h:I
  .line 6
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z
  .line 7
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j()V
    return-void
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->h:I
    return p0
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->h:I
    return p1
.end method

.method static synthetic g()I
  .registers 2
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I
    return v0
.end method

.method public static getSurface()Landroid/view/Surface;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "getSurface: surface="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "AutoBoxMirrorTextureView"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;
    return-object v0
.end method

.method static synthetic h()I
  .registers 2
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I
    return v0
.end method

.method private i()V
  .registers 2
    const-string v0, "AutoBoxMirrorTextureView,destroy: ######"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 v0, 0
  .line 2
    sput-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;
  .line 3
    sput-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m:Landroid/graphics/SurfaceTexture;
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L0
  .line 5
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz v0, :L0
  .line 6
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->U()V
  :L0
    return-void
.end method

.method private j()V
  .registers 4
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/j;->c(Landroid/view/View;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "UseOpenGLRender"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d:Z
    if-eqz v0, :L0
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/w0/b;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/w0/b;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;
  :L0
  .line 4
    invoke-virtual { p0, p0 }, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
  .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/i;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/i;-><init>(Landroid/view/View;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    return-void
.end method

.method private k(II)V
  .registers 9
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v1, v0, Lcn/manstep/phonemirrorBox/i;->e:I
    if-lez v1, :L4
    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->f:I
    if-gtz v0, :L0
    goto/16 :L4
  :L0
    if-eqz p1, :L1
    if-nez p2, :L2
  :L1
  .line 2
    sget p1, Lcn/manstep/phonemirrorBox/p;->k:I
  .line 3
    sget p2, Lcn/manstep/phonemirrorBox/p;->l:I
  :L2
    move v2, p1
    move v3, p2
  .line 4
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AutoBoxMirrorTextureView,onRotationChanged: Screen:"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, "x"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ", Video:"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->e:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->f:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    invoke-virtual { p0 }, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z
    move-result v0
    if-nez v0, :L3
  .line 7
    invoke-virtual { p0 }, Landroid/view/TextureView;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v4, v1, Lcn/manstep/phonemirrorBox/i;->e:I
    iget v5, v1, Lcn/manstep/phonemirrorBox/i;->f:I
    move-object v1, p1
    invoke-static/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/j;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;IIII)Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual { p0, p1 }, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L3
  .line 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorTextureView,ReSizeView: ViewGroup.LayoutParams: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L4
    return-void
.end method

.method public static m(II)V
  .registers 2
  .line 1
    sput p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I
  .line 2
    sput p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I
    return-void
.end method

.method public a(ILjava/lang/Object;)V
  .registers 4
    const/16 v0, 501
    if-eq p1, v0, :L0
    goto :L1
  :L0
  .line 1
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "AutoBoxMirrorTextureView,on_Box_Phase: "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    check-cast p2, Lcn/manstep/phonemirrorBox/util/x;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/util/x;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget p1, p2, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iget p2, p2, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-virtual { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->q(II)V
  :L1
    return-void
.end method

.method public b(II)V
  .registers 12
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ReSizeView: Screen:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v2, "AutoBoxMirrorTextureView"
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->getSurface()Landroid/view/Surface;
    move-result-object v0
    if-eqz v0, :L7
    invoke-static { }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->getSurface()Landroid/view/Surface;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Surface;->isValid()Z
    move-result v0
    if-nez v0, :L0
    goto/16 :L7
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v2, v0, Lcn/manstep/phonemirrorBox/i;->e:I
    if-lez v2, :L7
    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->f:I
    if-gtz v0, :L1
    goto/16 :L7
  :L1
    if-eqz p1, :L2
    if-nez p2, :L3
  :L2
  .line 4
    sget p1, Lcn/manstep/phonemirrorBox/p;->k:I
  .line 5
    sget p2, Lcn/manstep/phonemirrorBox/p;->l:I
  :L3
    const/4 v0, 0
  .line 6
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z
  .line 7
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "AutoBoxMirrorTextureView,ReSizeView: Screen:"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ", Video:"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v3, v3, Lcn/manstep/phonemirrorBox/i;->e:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v3, v3, Lcn/manstep/phonemirrorBox/i;->f:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 8
    invoke-virtual { p0 }, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v8
  .line 9
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z
    if-eqz v2, :L5
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z
    move-result v2
    if-nez v2, :L4
  .line 11
    invoke-virtual { p0 }, Landroid/view/TextureView;->getContext()Landroid/content/Context;
    move-result-object v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v6, v3, Lcn/manstep/phonemirrorBox/i;->e:I
    iget v7, v3, Lcn/manstep/phonemirrorBox/i;->f:I
    move-object v3, v8
    move v4, p1
    move v5, p2
    invoke-static/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/j;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;IIII)Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual { p0, v8 }, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L4
  .line 12
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z
  :L5
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z
    move-result v0
    if-eqz v0, :L6
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    invoke-virtual { v0, p0, p1, p2 }, Lcn/manstep/phonemirrorBox/i;->c(Landroid/view/View;II)V
  :L6
  .line 15
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AutoBoxMirrorTextureView,ReSizeView: ViewGroup.LayoutParams: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 16
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    new-instance p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;-><init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;)V
    const-wide/16 v0, 3000
    invoke-virtual { p1, p2, v0, v1 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L7
    return-void
.end method

.method public c(I)V
  .registers 2
    return-void
.end method

.method public d()V
  .registers 7
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I
    if-eqz v0, :L0
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I
    if-eqz v0, :L0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v1, v0, Lcn/manstep/phonemirrorBox/i;->a:I
    if-eqz v1, :L0
    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->b:I
    if-nez v0, :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/TextureView;->getWidth()I
    move-result v0
    invoke-virtual { p0 }, Landroid/view/TextureView;->getHeight()I
    move-result v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m(II)V
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z
  :L1
  .line 4
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z
    if-eqz v0, :L6
  .line 5
    invoke-virtual { p0 }, Landroid/view/TextureView;->getWidth()I
    move-result v0
  .line 6
    invoke-virtual { p0 }, Landroid/view/TextureView;->getHeight()I
    move-result v1
  .line 7
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "AutoBoxMirrorTextureView,RecaculateScaleWH: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "x"
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, ", "
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v5, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v4, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-lez v0, :L2
    goto :L3
  :L2
  .line 8
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I
  :L3
    if-lez v1, :L4
    goto :L5
  :L4
  .line 9
    sget v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I
  :L5
  .line 10
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ","
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 11
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->a:I
  .line 12
    iput v1, v2, Lcn/manstep/phonemirrorBox/i;->b:I
    const/4 v0, 0
  .line 13
    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->c:I
  .line 14
    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->d:I
  .line 15
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z
  :L6
    return-void
.end method

.method public l()V
  .registers 4
    const/4 v0, 0
  .line 1
    sput-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m:Landroid/graphics/SurfaceTexture;
    const/4 v1, 1
  .line 2
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z
  .line 3
    sget-object v2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;
    if-eqz v2, :L0
  .line 4
    invoke-virtual { v2 }, Landroid/view/Surface;->release()V
  .line 5
    sput-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;
  :L0
  .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;
    if-eqz v2, :L1
  .line 7
    invoke-virtual { v2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz v2, :L1
  .line 8
    invoke-virtual { v2, v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->S(Landroid/view/SurfaceHolder;Z)V
  :L1
    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public o(I)V
  .registers 7
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z
    if-nez v0, :L0
    const/16 p1, 8
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/TextureView;->setVisibility(I)V
    return-void
  :L0
    const/4 v0, 2
    const/4 v1, 4
    const/4 v2, 1
    const/4 v3, 0
    if-eq p1, v0, :L7
    const/4 v0, 3
    if-eq p1, v0, :L3
    const/16 v0, 12
    if-eq p1, v0, :L7
    const/16 v0, 15
    if-eq p1, v0, :L2
    const/16 v0, 500
    if-eq p1, v0, :L1
    goto/16 :L9
  :L1
  .line 3
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z
  .line 4
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I
    invoke-virtual { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b(II)V
    goto :L9
  :L2
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;
    move-result-object p1
    const-wide/16 v0, 100
    new-instance v2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$b;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$b;-><init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;)V
    const-string v3, "ReSizeView"
    invoke-virtual { p1, v3, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
    goto :L9
  :L3
  .line 6
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-nez p1, :L4
  .line 7
    invoke-virtual { p0, v3 }, Landroid/view/TextureView;->setVisibility(I)V
    goto :L5
  :L4
  .line 8
    invoke-virtual { p0, v1 }, Landroid/view/TextureView;->setVisibility(I)V
  :L5
  .line 9
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L6
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object p1
    if-eqz p1, :L6
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object p1
    invoke-interface { p1 }, Lcn/manstep/phonemirrorBox/q0/g;->i()Z
    move-result p1
    if-eqz p1, :L6
  .line 10
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/f;->b(Z)V
  .line 11
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/f;->g(Z)V
    goto :L9
  :L6
  .line 12
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/f;->g(Z)V
    goto :L9
  :L7
  .line 13
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "AutoBoxMirrorTextureView,on_Box_Phase: PLUG_OUT = "
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 14
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z
  .line 15
    invoke-virtual { p0, v1 }, Landroid/view/TextureView;->setVisibility(I)V
  .line 16
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-nez p1, :L8
  .line 17
    invoke-virtual { p0 }, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    const/4 v0, -1
  .line 18
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
  .line 19
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
  .line 20
    invoke-virtual { p0, p1 }, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L8
  .line 21
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/f;->g(Z)V
  :L9
    return-void
.end method

.method protected onAttachedToWindow()V
  .registers 4
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
    move-result-object v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoBoxMirrorTextureView onAttachedToWindow & boxInterface="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;
    invoke-direct { v1, v0 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;
  .line 4
    invoke-super { p0 }, Landroid/view/TextureView;->onAttachedToWindow()V
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/TextureView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I
    invoke-static { }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->getOrientation()I
    move-result v0
    if-ne p1, v0, :L0
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z
  .line 4
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I
    invoke-virtual { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b(II)V
    goto :L1
  :L0
  .line 5
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k(II)V
  :L1
    return-void
.end method

.method protected onDetachedFromWindow()V
  .registers 2
    const-string v0, "AutoBoxMirrorTextureView onDetachedFromWindow"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;
  .line 3
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V
  .line 4
    invoke-super { p0 }, Landroid/view/TextureView;->onDetachedFromWindow()V
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
  .registers 6
  .line 1
    invoke-static { p2, p3 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m(II)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorTextureView,onSurfaceTextureAvailable: touch set size="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 v0, 1
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z
  .line 4
    sget-object v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m:Landroid/graphics/SurfaceTexture;
    if-eqz v1, :L2
  .line 5
    invoke-virtual { p0, v1 }, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
  .line 6
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d:Z
    if-eqz p1, :L0
  .line 7
    new-instance p1, Landroid/view/Surface;
    sget-object p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->l:Landroid/graphics/SurfaceTexture;
    invoke-direct { p1, p2 }, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    sput-object p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;
    goto :L1
  :L0
  .line 8
    new-instance p1, Landroid/view/Surface;
    sget-object p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m:Landroid/graphics/SurfaceTexture;
    invoke-direct { p1, p2 }, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    sput-object p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;
  :L1
    return-void
  :L2
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z
    move-result v1
    if-eqz v1, :L3
    const/4 v1, 0
  .line 10
    invoke-virtual { p0, v1 }, Landroid/view/TextureView;->setX(F)V
  .line 11
    invoke-virtual { p0, v1 }, Landroid/view/TextureView;->setY(F)V
    const/4 v1, 0
  .line 12
    invoke-virtual { p0, v1 }, Landroid/view/TextureView;->setLeft(I)V
  .line 13
    invoke-virtual { p0, v1 }, Landroid/view/TextureView;->setTop(I)V
  .line 14
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    invoke-virtual { v1, p0, p2, p3 }, Lcn/manstep/phonemirrorBox/i;->c(Landroid/view/View;II)V
  :L3
  .line 15
    iget-boolean p2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d:Z
    if-eqz p2, :L4
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;
    invoke-virtual { p0 }, Landroid/view/TextureView;->getContext()Landroid/content/Context;
    move-result-object p2
    invoke-virtual { p1, p0, p2 }, Lcn/manstep/phonemirrorBox/w0/b;->e(Landroid/view/TextureView;Landroid/content/Context;)V
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/w0/b;->g()Landroid/graphics/SurfaceTexture;
    move-result-object p1
    sput-object p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->l:Landroid/graphics/SurfaceTexture;
  .line 18
    new-instance p1, Landroid/view/Surface;
    sget-object p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->l:Landroid/graphics/SurfaceTexture;
    invoke-direct { p1, p2 }, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    sput-object p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;
    goto :L5
  :L4
  .line 19
    new-instance p2, Landroid/view/Surface;
    invoke-direct { p2, p1 }, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    sput-object p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;
  :L5
  .line 20
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-eqz p1, :L6
  .line 21
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "onSurfaceTextureAvailable: surface="
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object p3, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    const-string p3, "AutoBoxMirrorTextureView"
    invoke-static { p3, p2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 p2, 0
  .line 22
    invoke-virtual { p1, p2, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->S(Landroid/view/SurfaceHolder;Z)V
  :L6
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;
    if-eqz p1, :L7
  .line 24
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/w0/b;->h()V
  :L7
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorTextureView,onSurfaceTextureDestroyed: SurfaceTexture="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ", bPlugOut="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z
    if-nez v0, :L0
  .line 3
    sput-object p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m:Landroid/graphics/SurfaceTexture;
    const/4 p1, 0
    return p1
  :L0
  .line 4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i()V
    const/4 p1, 1
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
  .registers 6
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    invoke-static { p2, p3 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m(II)V
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorTextureView,onSurfaceTextureSizeChanged: touch set size="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z
    const/4 v0, 0
  .line 5
    invoke-virtual { p1, v0, p2, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->T(III)V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;
    if-eqz p1, :L1
  .line 7
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/w0/b;->h()V
  :L1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
  .registers 2
  .line 1
    iget p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->h:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->h:I
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 8
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/q0/g;->a()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d()V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v1, v0, Lcn/manstep/phonemirrorBox/i;->c:I
    iget v2, v0, Lcn/manstep/phonemirrorBox/i;->d:I
    iget v3, v0, Lcn/manstep/phonemirrorBox/i;->a:I
    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->b:I
    invoke-static { p1, v1, v2, v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/e;->b(Landroid/view/MotionEvent;IIII)Z
    move-result p1
    return p1
  :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    const/4 v1, 1
    if-eqz v0, :L11
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/q0/g;->g()Z
    move-result v0
    if-eqz v0, :L11
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z
    move-result v0
    if-nez v0, :L1
  .line 8
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d()V
  :L1
  .line 9
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    float-to-int v0, v0
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v2, v2, Lcn/manstep/phonemirrorBox/i;->c:I
    sub-int/2addr v0, v2
  .line 10
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v2
    float-to-int v2, v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v4, v3, Lcn/manstep/phonemirrorBox/i;->d:I
    sub-int/2addr v2, v4
  .line 11
    iget v3, v3, Lcn/manstep/phonemirrorBox/i;->a:I
    const/16 v4, 10000
    const/4 v5, 0
    if-le v0, v3, :L2
    const/16 v0, 10000
    goto :L4
  :L2
    if-lez v0, :L3
    mul-int/lit16 v0, v0, 10000
  .line 12
    div-int/2addr v0, v3
    goto :L4
  :L3
    const/4 v0, 0
  :L4
  .line 13
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iget v3, v3, Lcn/manstep/phonemirrorBox/i;->b:I
    if-le v2, v3, :L5
    goto :L7
  :L5
    if-lez v2, :L6
    mul-int/lit16 v2, v2, 10000
  .line 14
    div-int v4, v2, v3
    goto :L7
  :L6
    const/4 v4, 0
  :L7
  .line 15
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result v2
    and-int/lit16 v2, v2, 255
    if-eqz v2, :L10
    const/4 v3, 2
    if-eq v2, v1, :L9
    if-eq v2, v3, :L8
  .line 16
    invoke-super { p0, p1 }, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result p1
    return p1
  :L8
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/i;->a()V
  .line 18
    invoke-static { v1, v5, v0, v4 }, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V
    goto :L11
  :L9
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/i;->a()V
  .line 20
    invoke-static { v3, v5, v0, v4 }, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V
  .line 21
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object p1
    invoke-interface { p1 }, Lcn/manstep/phonemirrorBox/q0/g;->i()Z
    move-result p1
    if-eqz p1, :L11
  .line 22
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/f;->b(Z)V
    goto :L11
  :L10
  .line 23
    invoke-static { v5, v5, v0, v4 }, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V
  .line 24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    invoke-virtual { p1, v0, v4 }, Lcn/manstep/phonemirrorBox/i;->b(II)V
  :L11
    return v1
.end method

.method public p(Ljava/lang/String;I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/w0/b;->i(Ljava/lang/String;I)V
  :L0
    return-void
.end method

.method public q(II)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorTextureView,setVideoWH: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;
    iput p1, v0, Lcn/manstep/phonemirrorBox/i;->e:I
  .line 3
    iput p2, v0, Lcn/manstep/phonemirrorBox/i;->f:I
    const/4 p1, 1
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z
    return-void
.end method

.method public setUseGlRender(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d:Z
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;
    if-nez p1, :L0
  .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/w0/b;
    invoke-direct { p1 }, Lcn/manstep/phonemirrorBox/w0/b;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;
  :L0
  .line 4
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->l()V
    return-void
.end method

.method public v([B)V
  .registers 2
    return-void
.end method
