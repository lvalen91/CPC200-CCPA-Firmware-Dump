.class public Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Ld/d/a/b;

.field private static f:Z

.field private static g:I

.field private static h:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcn/manstep/phonemirrorBox/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->f:Z

    .line 3
    sput v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->g:I

    .line 4
    sput v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->b:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->f()V

    return-void
.end method

.method private e(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 4

    const-string v0, "window"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->g()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 6
    :try_start_1a
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int p1, p1, v1

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr p1, v1

    iput p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception p1

    .line 7
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 8
    :cond_2e
    :goto_2e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",getDM: @@@isScreenLandscape :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->g()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",getDM: @@@ outMetrics w : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  h "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method private f()V
    .registers 4

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->d:Ljava/lang/String;

    const-string v1, "softview init"

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->b:Landroid/content/Context;

    invoke-static {v0}, Ld/d/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->d:Ljava/lang/String;

    const-string v1, "GLES20Support.detectOpenGLES20(mContext) false"

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception v0

    .line 4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 6
    new-instance v0, Ld/d/a/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->b:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Ld/d/a/b;-><init>(Ld/d/a/d;Landroid/opengl/GLSurfaceView;Landroid/util/DisplayMetrics;)V

    sput-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->e:Ld/d/a/b;

    .line 7
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 9
    new-instance v0, Lcn/manstep/phonemirrorBox/i;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/i;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    return-void
.end method

.method private g()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    return v1

    :cond_f
    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    :cond_12
    return v2
.end method

.method public static getSoftH264Render()Ld/d/a/b;
    .registers 1

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->e:Ld/d/a/b;

    return-object v0
.end method

.method public static h(II)V
    .registers 2

    .line 1
    sput p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->g:I

    .line 2
    sput p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->h:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 4

    const/16 v0, 0x1f5

    if-eq p1, v0, :cond_5

    goto :goto_2b

    .line 1
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",on_Box_Phase: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Lcn/manstep/phonemirrorBox/util/x;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/x;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget p1, p2, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iget p2, p2, Lcn/manstep/phonemirrorBox/util/x;->c:I

    invoke-virtual {p0, p1, p2}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->i(II)V

    :goto_2b
    return-void
.end method

.method public b(II)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    iget v1, v0, Lcn/manstep/phonemirrorBox/i;->e:I

    if-lez v1, :cond_8c

    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->f:I

    if-gtz v0, :cond_c

    goto/16 :goto_8c

    :cond_c
    if-eqz p1, :cond_10

    if-nez p2, :cond_14

    .line 2
    :cond_10
    sget p1, Lcn/manstep/phonemirrorBox/p;->k:I

    .line 3
    sget p2, Lcn/manstep/phonemirrorBox/p;->l:I

    :cond_14
    move v2, p1

    move v3, p2

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AutoBoxMirrorSoftView,ReSizeView: Screen:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Video:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    invoke-virtual {v0, p0, v2, v3}, Lcn/manstep/phonemirrorBox/i;->c(Landroid/view/View;II)V

    goto :goto_69

    .line 8
    :cond_58
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    iget v4, v1, Lcn/manstep/phonemirrorBox/i;->e:I

    iget v5, v1, Lcn/manstep/phonemirrorBox/i;->f:I

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/manstep/phonemirrorBox/j;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;IIII)Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :goto_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ReSizeView: ViewGroup.LayoutParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public d()V
    .registers 5

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->f:Z

    if-eqz v0, :cond_55

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iv_W = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iv_H = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->g:I

    .line 4
    sget v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->h:I

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caculate_W = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caculate_H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->a:I

    .line 7
    iput v1, v2, Lcn/manstep/phonemirrorBox/i;->b:I

    const/4 v0, 0x0

    .line 8
    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->c:I

    .line 9
    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->d:I

    .line 10
    sput-boolean v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->f:Z

    :cond_55
    return-void
.end method

.method public i(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    iput p1, v0, Lcn/manstep/phonemirrorBox/i;->e:I

    .line 2
    iput p2, v0, Lcn/manstep/phonemirrorBox/i;->f:I

    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public o(I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_37

    const/16 v0, 0xf

    const/4 v2, 0x0

    if-eq p1, v0, :cond_28

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_20

    packed-switch p1, :pswitch_data_54

    goto :goto_52

    .line 1
    :pswitch_14
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_52

    .line 2
    :pswitch_18
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-eqz p1, :cond_52

    .line 3
    invoke-virtual {p0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_52

    .line 4
    :cond_20
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->g:I

    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->h:I

    invoke-virtual {p0, p1, v0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->b(II)V

    goto :goto_52

    .line 5
    :cond_28
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-eqz p1, :cond_52

    .line 6
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->g:I

    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->h:I

    invoke-virtual {p0, p1, v0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->b(II)V

    .line 7
    invoke-virtual {p0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_52

    .line 8
    :cond_37
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-nez p1, :cond_52

    .line 9
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_52

    .line 10
    :cond_3f
    :pswitch_3f
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 11
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-eqz p1, :cond_52

    .line 12
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 13
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_52
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0xa
        :pswitch_18
        :pswitch_14
        :pswitch_3f
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 2
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@AutoBoxMirrorSoftView onAttachedToWindow & boxInterface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    const-string v0, "@@@AutoBoxMirrorSoftView onDetachedFromWindow"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/q0/g;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->d()V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    iget v1, v0, Lcn/manstep/phonemirrorBox/i;->c:I

    iget v2, v0, Lcn/manstep/phonemirrorBox/i;->d:I

    iget v3, v0, Lcn/manstep/phonemirrorBox/i;->a:I

    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->b:I

    invoke-static {p1, v1, v2, v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/e;->b(Landroid/view/MotionEvent;IIII)Z

    move-result p1

    return p1

    .line 5
    :cond_22
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_ab

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/q0/g;->g()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 8
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->d()V

    .line 9
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    iget v2, v2, Lcn/manstep/phonemirrorBox/i;->c:I

    sub-int/2addr v0, v2

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    iget v4, v3, Lcn/manstep/phonemirrorBox/i;->d:I

    sub-int/2addr v2, v4

    .line 11
    iget v3, v3, Lcn/manstep/phonemirrorBox/i;->a:I

    const/16 v4, 0x2710

    const/4 v5, 0x0

    if-le v0, v3, :cond_5a

    const/16 v0, 0x2710

    goto :goto_61

    :cond_5a
    if-lez v0, :cond_60

    mul-int/lit16 v0, v0, 0x2710

    .line 12
    div-int/2addr v0, v3

    goto :goto_61

    :cond_60
    const/4 v0, 0x0

    .line 13
    :goto_61
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    iget v3, v3, Lcn/manstep/phonemirrorBox/i;->b:I

    if-le v2, v3, :cond_68

    goto :goto_70

    :cond_68
    if-lez v2, :cond_6f

    mul-int/lit16 v2, v2, 0x2710

    .line 14
    div-int v4, v2, v3

    goto :goto_70

    :cond_6f
    const/4 v4, 0x0

    .line 15
    :goto_70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_a3

    const/4 v3, 0x2

    if-eq v2, v1, :cond_8b

    if-eq v2, v3, :cond_82

    .line 16
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 17
    :cond_82
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/i;->a()V

    .line 18
    invoke-static {v1, v5, v0, v4}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    goto :goto_ab

    .line 19
    :cond_8b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/i;->a()V

    .line 20
    invoke-static {v3, v5, v0, v4}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    .line 21
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/q0/g;->i()Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 22
    invoke-static {v5}, Lcn/manstep/phonemirrorBox/f;->b(Z)V

    goto :goto_ab

    .line 23
    :cond_a3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->c:Lcn/manstep/phonemirrorBox/i;

    invoke-virtual {p1, v0, v4}, Lcn/manstep/phonemirrorBox/i;->b(II)V

    .line 24
    invoke-static {v5, v5, v0, v4}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    :cond_ab
    :goto_ab
    return v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->f:Z

    .line 3
    sput p3, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->g:I

    .line 4
    sput p4, Lcn/manstep/phonemirrorBox/AutoBoxMirrorSoftView;->h:I

    const-string p1, "@@@AutoBoxMirrorSoftView surfaceChanged"

    .line 5
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@@@AutoBoxMirrorSoftView surfaceCreated holder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@@@AutoBoxMirrorSoftView surfaceDestroyed holder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public v([B)V
    .registers 2

    return-void
.end method
