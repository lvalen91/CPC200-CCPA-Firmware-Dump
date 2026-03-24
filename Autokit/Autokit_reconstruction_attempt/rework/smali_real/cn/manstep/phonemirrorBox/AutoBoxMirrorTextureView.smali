.class public Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static j:I

.field private static k:I

.field private static l:Landroid/graphics/SurfaceTexture;

.field private static m:Landroid/graphics/SurfaceTexture;

.field private static n:Landroid/view/Surface;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d:Z

    .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z

    .line 5
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->h:I

    .line 6
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z

    .line 7
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j()V

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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSurface: surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoBoxMirrorTextureView"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;

    .line 3
    sput-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m:Landroid/graphics/SurfaceTexture;

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz v0, :cond_19

    .line 6
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->U()V

    :cond_19
    return-void
.end method

.method private j()V
    .registers 4

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/j;->c(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "UseOpenGLRender"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d:Z

    if-eqz v0, :cond_19

    .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/w0/b;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/w0/b;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;

    .line 4
    :cond_19
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/i;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/i;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    return-void
.end method

.method private k(II)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iget v1, v0, Lcn/manstep/phonemirrorBox/i;->e:I

    if-lez v1, :cond_81

    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->f:I

    if-gtz v0, :cond_c

    goto/16 :goto_81

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

    const-string p2, "AutoBoxMirrorTextureView,onRotationChanged: Screen:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Video:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z

    move-result v0

    if-nez v0, :cond_63

    .line 7
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iget v4, v1, Lcn/manstep/phonemirrorBox/i;->e:I

    iget v5, v1, Lcn/manstep/phonemirrorBox/i;->f:I

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/manstep/phonemirrorBox/j;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;IIII)Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoBoxMirrorTextureView,ReSizeView: ViewGroup.LayoutParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_81
    :goto_81
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


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 4

    const/16 v0, 0x1f5

    if-eq p1, v0, :cond_5

    goto :goto_26

    .line 1
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AutoBoxMirrorTextureView,on_Box_Phase: "

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

    invoke-virtual {p0, p1, p2}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->q(II)V

    :goto_26
    return-void
.end method

.method public b(II)V
    .registers 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReSizeView: Screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutoBoxMirrorTextureView"

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_d2

    invoke-static {}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_d2

    .line 3
    :cond_30
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iget v2, v0, Lcn/manstep/phonemirrorBox/i;->e:I

    if-lez v2, :cond_d2

    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->f:I

    if-gtz v0, :cond_3c

    goto/16 :goto_d2

    :cond_3c
    if-eqz p1, :cond_40

    if-nez p2, :cond_44

    .line 4
    :cond_40
    sget p1, Lcn/manstep/phonemirrorBox/p;->k:I

    .line 5
    sget p2, Lcn/manstep/phonemirrorBox/p;->l:I

    :cond_44
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoBoxMirrorTextureView,ReSizeView: Screen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Video:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iget v3, v3, Lcn/manstep/phonemirrorBox/i;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iget v3, v3, Lcn/manstep/phonemirrorBox/i;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 9
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z

    if-eqz v2, :cond_9a

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z

    move-result v2

    if-nez v2, :cond_98

    .line 11
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iget v6, v3, Lcn/manstep/phonemirrorBox/i;->e:I

    iget v7, v3, Lcn/manstep/phonemirrorBox/i;->f:I

    move-object v3, v8

    move v4, p1

    move v5, p2

    invoke-static/range {v2 .. v7}, Lcn/manstep/phonemirrorBox/j;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;IIII)Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v8}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :cond_98
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z

    .line 13
    :cond_9a
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    invoke-virtual {v0, p0, p1, p2}, Lcn/manstep/phonemirrorBox/i;->c(Landroid/view/View;II)V

    .line 15
    :cond_a5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AutoBoxMirrorTextureView,ReSizeView: ViewGroup.LayoutParams: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;-><init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d2
    :goto_d2
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

    if-eqz v0, :cond_12

    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iget v1, v0, Lcn/manstep/phonemirrorBox/i;->a:I

    if-eqz v1, :cond_12

    iget v0, v0, Lcn/manstep/phonemirrorBox/i;->b:I

    if-nez v0, :cond_20

    .line 2
    :cond_12
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m(II)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z

    .line 4
    :cond_20
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z

    if-eqz v0, :cond_8b

    .line 5
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoBoxMirrorTextureView,RecaculateScaleWH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-lez v0, :cond_5d

    goto :goto_5f

    .line 8
    :cond_5d
    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I

    :goto_5f
    if-lez v1, :cond_62

    goto :goto_64

    .line 9
    :cond_62
    sget v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I

    .line 10
    :goto_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->a:I

    .line 12
    iput v1, v2, Lcn/manstep/phonemirrorBox/i;->b:I

    const/4 v0, 0x0

    .line 13
    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->c:I

    .line 14
    iput v0, v2, Lcn/manstep/phonemirrorBox/i;->d:I

    .line 15
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z

    :cond_8b
    return-void
.end method

.method public l()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z

    .line 3
    sget-object v2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;

    if-eqz v2, :cond_f

    .line 4
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 5
    sput-object v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;

    .line 6
    :cond_f
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1e

    .line 7
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz v2, :cond_1e

    .line 8
    invoke-virtual {v2, v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->S(Landroid/view/SurfaceHolder;Z)V

    :cond_1e
    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public o(I)V
    .registers 7

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z

    if-nez v0, :cond_a

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void

    :cond_a
    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_68

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xc

    if-eq p1, v0, :cond_68

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_21

    goto/16 :goto_94

    .line 3
    :cond_21
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z

    .line 4
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I

    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I

    invoke-virtual {p0, p1, v0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b(II)V

    goto :goto_94

    .line 5
    :cond_2b
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;

    move-result-object p1

    const-wide/16 v0, 0x64

    new-instance v2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$b;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$b;-><init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;)V

    const-string v3, "ReSizeView"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;

    goto :goto_94

    .line 6
    :cond_3c
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-nez p1, :cond_44

    .line 7
    invoke-virtual {p0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_47

    .line 8
    :cond_44
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 9
    :goto_47
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_64

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object p1

    if-eqz p1, :cond_64

    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/q0/g;->i()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 10
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/f;->b(Z)V

    .line 11
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/f;->g(Z)V

    goto :goto_94

    .line 12
    :cond_64
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/f;->g(Z)V

    goto :goto_94

    .line 13
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoBoxMirrorTextureView,on_Box_Phase: PLUG_OUT = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 14
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 16
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-nez p1, :cond_91

    .line 17
    invoke-virtual {p0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 18
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    :cond_91
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/f;->g(Z)V

    :goto_94
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoBoxMirrorTextureView onAttachedToWindow & boxInterface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorView;->getOrientation()I

    move-result v0

    if-ne p1, v0, :cond_16

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z

    .line 4
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I

    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I

    invoke-virtual {p0, p1, v0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b(II)V

    goto :goto_1d

    .line 5
    :cond_16
    sget p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->j:I

    sget v0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k:I

    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->k(II)V

    :goto_1d
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const-string v0, "AutoBoxMirrorTextureView onDetachedFromWindow"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V

    .line 4
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .line 1
    invoke-static {p2, p3}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m(II)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoBoxMirrorTextureView,onSurfaceTextureAvailable: touch set size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z

    .line 4
    sget-object v1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_41

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 6
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d:Z

    if-eqz p1, :cond_37

    .line 7
    new-instance p1, Landroid/view/Surface;

    sget-object p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->l:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;

    goto :goto_40

    .line 8
    :cond_37
    new-instance p1, Landroid/view/Surface;

    sget-object p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;

    :goto_40
    return-void

    .line 9
    :cond_41
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->u()Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setX(F)V

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setY(F)V

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setLeft(I)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setTop(I)V

    .line 14
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    invoke-virtual {v1, p0, p2, p3}, Lcn/manstep/phonemirrorBox/i;->c(Landroid/view/View;II)V

    .line 15
    :cond_5a
    iget-boolean p2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d:Z

    if-eqz p2, :cond_79

    .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcn/manstep/phonemirrorBox/w0/b;->e(Landroid/view/TextureView;Landroid/content/Context;)V

    .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/w0/b;->g()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    sput-object p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->l:Landroid/graphics/SurfaceTexture;

    .line 18
    new-instance p1, Landroid/view/Surface;

    sget-object p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->l:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;

    goto :goto_80

    .line 19
    :cond_79
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object p2, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;

    .line 20
    :goto_80
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-eqz p1, :cond_a6

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSurfaceTextureAvailable: surface="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->n:Landroid/view/Surface;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AutoBoxMirrorTextureView"

    invoke-static {p3, p2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->S(Landroid/view/SurfaceHolder;Z)V

    .line 23
    :cond_a6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;

    if-eqz p1, :cond_ad

    .line 24
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/w0/b;->h()V

    :cond_ad
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoBoxMirrorTextureView,onSurfaceTextureDestroyed: SurfaceTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bPlugOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f:Z

    if-nez v0, :cond_26

    .line 3
    sput-object p1, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_26
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;

    if-nez p1, :cond_b

    return-void

    .line 2
    :cond_b
    invoke-static {p2, p3}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->m(II)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoBoxMirrorTextureView,onSurfaceTextureSizeChanged: touch set size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->c:Z

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, p3}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->T(III)V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;

    if-eqz p1, :cond_38

    .line 7
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/w0/b;->h()V

    :cond_38
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 1
    iget p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->h:I

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
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d()V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

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
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d()V

    .line 9
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iget v2, v2, Lcn/manstep/phonemirrorBox/i;->c:I

    sub-int/2addr v0, v2

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

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
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

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
    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 17
    :cond_82
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/i;->a()V

    .line 18
    invoke-static {v1, v5, v0, v4}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    goto :goto_ab

    .line 19
    :cond_8b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

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
    invoke-static {v5, v5, v0, v4}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    .line 24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    invoke-virtual {p1, v0, v4}, Lcn/manstep/phonemirrorBox/i;->b(II)V

    :cond_ab
    :goto_ab
    return v1
.end method

.method public p(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p2}, Lcn/manstep/phonemirrorBox/w0/b;->i(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method public q(II)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoBoxMirrorTextureView,setVideoWH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g:Lcn/manstep/phonemirrorBox/i;

    iput p1, v0, Lcn/manstep/phonemirrorBox/i;->e:I

    .line 3
    iput p2, v0, Lcn/manstep/phonemirrorBox/i;->f:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->i:Z

    return-void
.end method

.method public setUseGlRender(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->d:Z

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;

    if-nez p1, :cond_f

    .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/w0/b;

    invoke-direct {p1}, Lcn/manstep/phonemirrorBox/w0/b;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e:Lcn/manstep/phonemirrorBox/w0/b;

    .line 4
    :cond_f
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->l()V

    return-void
.end method

.method public v([B)V
    .registers 2

    return-void
.end method
