.class public Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;
.super Landroid/view/SurfaceView;
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.implements Landroid/view/SurfaceHolder$Callback;
.source "SourceFile"

.field private static e:Z = true

.field private static f:I

.field private static g:I

.field private static h:I

.field private b:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcn/manstep/phonemirrorBox/BoxInterface/d;",
      ">;"
    }
  .end annotation
.end field

.field private c:Lcn/manstep/phonemirrorBox/i;

.field private d:Z

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->d:Z
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->e()V
    return-void
.end method

.method private e()V
  .registers 2
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/j;->c(Landroid/view/View;)V
  .line 2
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
    move-result-object v0
    invoke-interface { v0, p0 }, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/i;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/i;-><init>(Landroid/view/View;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    return-void
.end method

.method private f(II)V
  .registers 9
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
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
    const-string p2, "AutoBoxMirrorView,onRotationChanged: Screen:"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, "x"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ", Video:"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->e:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->f:I
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z
    move-result v0
    if-nez v0, :L3
  .line 7
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v4, v1, Lcn/manstep/phonemirrorBox/i;->e:I
    iget v5, v1, Lcn/manstep/phonemirrorBox/i;->f:I
    move-object v1, p1
    invoke-static/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/j;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;IIII)Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual { p0, p1 }, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L3
  .line 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorView,onRotationChanged: ViewGroup.LayoutParams: "
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

.method public static g(II)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorView,setDisplaySize: w="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", h="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    sput p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->f:I
  .line 3
    sput p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g:I
  .line 4
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z
    if-eqz v0, :L0
  .line 5
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m(II)V
  :L0
  .line 6
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-eqz v0, :L1
  .line 7
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->h(II)V
  :L1
    return-void
.end method

.method public static getOrientation()I
  .registers 1
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->h:I
    return v0
.end method

.method public static setOrientation(I)V
  .registers 1
  .line 1
    sput p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->h:I
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
    const-string v0, "AutoBoxMirrorView,on_Box_Phase: "
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
    invoke-virtual { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->h(II)V
  :L1
    return-void
.end method

.method public b(II)V
  .registers 11
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v1, v0, Lcn/manstep/phonemirrorBox/i;->e:I
    if-lez v1, :L6
    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->f:I
    if-gtz v0, :L0
    goto/16 :L6
  :L0
    if-eqz p1, :L1
    if-nez p2, :L2
  :L1
  .line 2
    sget p1, Lcn/manstep/phonemirrorBox/p;->k:I
  .line 3
    sget p2, Lcn/manstep/phonemirrorBox/p;->l:I
  :L2
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorView,ReSizeView: Screen:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v6, "x"
    invoke-virtual { v0, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", Video:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v1, v1, Lcn/manstep/phonemirrorBox/i;->e:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v1, v1, Lcn/manstep/phonemirrorBox/i;->f:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v7
  .line 6
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->d:Z
    if-eqz v0, :L4
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z
    move-result v0
    if-nez v0, :L3
  .line 8
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v4, v1, Lcn/manstep/phonemirrorBox/i;->e:I
    iget v5, v1, Lcn/manstep/phonemirrorBox/i;->f:I
    move-object v1, v7
    move v2, p1
    move v3, p2
    invoke-static/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/j;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;IIII)Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual { p0, v7 }, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L3
    const/4 v0, 0
  .line 9
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->d:Z
  :L4
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z
    move-result v0
    if-eqz v0, :L5
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    invoke-virtual { v0, p0, p1, p2 }, Lcn/manstep/phonemirrorBox/i;->c(Landroid/view/View;II)V
  :L5
  .line 12
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AutoBoxMirrorView,ReSizeView: ViewGroup.LayoutParams: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, v7, Landroid/view/ViewGroup$LayoutParams;->width:I
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L6
    return-void
.end method

.method public c(I)V
  .registers 2
    return-void
.end method

.method public d()V
  .registers 7
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->e:Z
    if-eqz v0, :L4
  .line 2
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getWidth()I
    move-result v0
  .line 3
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getHeight()I
    move-result v1
  .line 4
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "AutoBoxMirrorView,RecaculateScaleWH: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "x"
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, ", "
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v5, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->f:I
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v4, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g:I
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-lez v0, :L0
    goto :L1
  :L0
  .line 5
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->f:I
  :L1
    if-lez v1, :L2
    goto :L3
  :L2
  .line 6
    sget v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g:I
  :L3
  .line 7
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
  .line 8
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->a:I
  .line 9
    iput v1, v2, Lcn/manstep/phonemirrorBox/i;->b:I
    const/4 v0, 0
  .line 10
    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->c:I
  .line 11
    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->d:I
  .line 12
    sput-boolean v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->e:Z
  :L4
    return-void
.end method

.method public h(II)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorView,setVideoWH: w="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", h="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iput p1, v0, Lcn/manstep/phonemirrorBox/i;->e:I
  .line 3
    iput p2, v0, Lcn/manstep/phonemirrorBox/i;->f:I
    const/4 p1, 1
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->d:Z
    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->b:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public o(I)V
  .registers 5
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z
    if-eqz v0, :L0
    const/16 p1, 8
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/SurfaceView;->setVisibility(I)V
    return-void
  :L0
    const/4 v0, 2
    const/4 v1, 4
    const/4 v2, 0
    if-eq p1, v0, :L7
    const/4 v0, 3
    if-eq p1, v0, :L3
    const/16 v0, 12
    if-eq p1, v0, :L7
    const/16 v0, 15
    if-eq p1, v0, :L2
    const/16 v0, 500
    if-eq p1, v0, :L1
    goto :L9
  :L1
  .line 3
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->f:I
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g:I
    invoke-virtual { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->b(II)V
    goto :L9
  :L2
  .line 4
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-nez p1, :L9
  .line 5
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->f:I
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g:I
    invoke-virtual { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->b(II)V
    goto :L9
  :L3
  .line 6
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-nez p1, :L4
  .line 7
    invoke-virtual { p0, v2 }, Landroid/view/SurfaceView;->setVisibility(I)V
    goto :L5
  :L4
  .line 8
    invoke-virtual { p0, v1 }, Landroid/view/SurfaceView;->setVisibility(I)V
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
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/f;->b(Z)V
    const/4 p1, 1
  .line 11
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/f;->g(Z)V
    goto :L9
  :L6
  .line 12
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/f;->g(Z)V
    goto :L9
  :L7
  .line 13
    invoke-virtual { p0, v1 }, Landroid/view/SurfaceView;->setVisibility(I)V
  .line 14
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-nez p1, :L8
  .line 15
    invoke-virtual { p0 }, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    const/4 v0, -1
  .line 16
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
  .line 17
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
  .line 18
    invoke-virtual { p0, p1 }, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L8
  .line 19
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/f;->g(Z)V
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
    const-string v2, "AutoBoxMirrorView,onAttachedToWindow: boxInterface="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;
    invoke-direct { v1, v0 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->b:Ljava/lang/ref/WeakReference;
  .line 4
    invoke-super { p0 }, Landroid/view/SurfaceView;->onAttachedToWindow()V
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I
    invoke-static { }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->getOrientation()I
    move-result v0
    if-ne p1, v0, :L0
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->d:Z
  .line 4
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->f:I
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g:I
    invoke-virtual { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->b(II)V
    goto :L1
  :L0
  .line 5
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->f:I
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g:I
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->f(II)V
  :L1
    return-void
.end method

.method protected onDetachedFromWindow()V
  .registers 2
    const-string v0, "AutoBoxMirrorView,onDetachedFromWindow: #"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->b:Ljava/lang/ref/WeakReference;
  .line 3
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V
  .line 4
    invoke-super { p0 }, Landroid/view/SurfaceView;->onDetachedFromWindow()V
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
  .registers 8
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    if-eqz v0, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/q0/g;->a()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->d()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v1, v0, Lcn/manstep/phonemirrorBox/i;->c:I
    iget v2, v0, Lcn/manstep/phonemirrorBox/i;->d:I
    iget v3, v0, Lcn/manstep/phonemirrorBox/i;->a:I
    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->b:I
    invoke-static { p1, v1, v2, v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/e;->b(Landroid/view/MotionEvent;IIII)Z
    move-result p1
    return p1
  :L0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    const/4 v1, 1
    if-eqz v0, :L11
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v0
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/q0/g;->g()Z
    move-result v0
    if-eqz v0, :L11
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z
    move-result v0
    if-nez v0, :L1
  .line 6
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->d()V
  :L1
  .line 7
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getX()F
    move-result v0
    float-to-int v0, v0
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v2, v2, Lcn/manstep/phonemirrorBox/i;->c:I
    sub-int/2addr v0, v2
  .line 8
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getY()F
    move-result v2
    float-to-int v2, v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v4, v3, Lcn/manstep/phonemirrorBox/i;->d:I
    sub-int/2addr v2, v4
  .line 9
    iget v3, v3, Lcn/manstep/phonemirrorBox/i;->a:I
    const/16 v4, 10000
    const/4 v5, 0
    if-le v0, v3, :L2
    const/16 v0, 10000
    goto :L4
  :L2
    if-lez v0, :L3
    mul-int/lit16 v0, v0, 10000
  .line 10
    div-int/2addr v0, v3
    goto :L4
  :L3
    const/4 v0, 0
  :L4
  .line 11
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    iget v3, v3, Lcn/manstep/phonemirrorBox/i;->b:I
    if-le v2, v3, :L5
    goto :L7
  :L5
    if-lez v2, :L6
    mul-int/lit16 v2, v2, 10000
  .line 12
    div-int v4, v2, v3
    goto :L7
  :L6
    const/4 v4, 0
  :L7
  .line 13
    invoke-virtual { p1 }, Landroid/view/MotionEvent;->getAction()I
    move-result p1
    and-int/lit16 p1, p1, 255
    if-eqz p1, :L10
    const/4 v2, 2
    if-eq p1, v1, :L9
    if-eq p1, v2, :L8
    goto :L11
  :L8
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/i;->a()V
  .line 15
    invoke-static { v1, v5, v0, v4 }, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V
    goto :L11
  :L9
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/i;->a()V
  .line 17
    invoke-static { v2, v5, v0, v4 }, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V
  .line 18
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object p1
    invoke-interface { p1 }, Lcn/manstep/phonemirrorBox/q0/g;->i()Z
    move-result p1
    if-eqz p1, :L11
  .line 19
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/f;->b(Z)V
    goto :L11
  :L10
  .line 20
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->c:Lcn/manstep/phonemirrorBox/i;
    invoke-virtual { p1, v0, v4 }, Lcn/manstep/phonemirrorBox/i;->b(II)V
  .line 21
    invoke-static { v5, v5, v0, v4 }, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V
  :L11
    return v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
  .registers 7
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    sput p3, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->f:I
  .line 3
    sput p4, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->g:I
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorView,surfaceChanged: touch set size="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 1
  .line 5
    sput-boolean v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->e:Z
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->x()Z
  .line 7
    invoke-virtual { p1, p2, p3, p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->T(III)V
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoBoxMirrorView,surfaceCreated: holder="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " ii="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v1, 1
  .line 3
    invoke-virtual { v0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->S(Landroid/view/SurfaceHolder;Z)V
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->U()V
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorView,surfaceDestroyed: holder="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public v([B)V
  .registers 2
    return-void
.end method
