.class public Lcn/manstep/phonemirrorBox/x0/e;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# instance fields
.field private final d:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcn/manstep/phonemirrorBox/util/e0;

.field private j:Lcn/manstep/phonemirrorBox/util/d0;

.field private k:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/n;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/fragment/app/n;)V
    .registers 14

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->n:Ljava/lang/ref/WeakReference;

    .line 3
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->w:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->x:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 4
    :goto_17
    new-instance v3, Landroidx/lifecycle/o;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcn/manstep/phonemirrorBox/x0/e;->o:Landroidx/lifecycle/o;

    .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/util/e0;

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->z()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcn/manstep/phonemirrorBox/util/e0;-><init>(Landroid/content/Context;Landroidx/fragment/app/n;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->i:Lcn/manstep/phonemirrorBox/util/e0;

    .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/util/d0;

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->z()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcn/manstep/phonemirrorBox/util/d0;-><init>(Landroid/content/Context;Landroidx/fragment/app/n;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->j:Lcn/manstep/phonemirrorBox/util/d0;

    .line 7
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/d0;->i()V

    .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/x0/e;->j:Lcn/manstep/phonemirrorBox/util/d0;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/util/d0;->j()V

    .line 9
    invoke-virtual {p0}, Landroidx/lifecycle/a;->i()Landroid/app/Application;

    move-result-object p2

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 10
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_5f

    .line 12
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_66

    .line 13
    :cond_5f
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 14
    :goto_66
    new-instance v3, Landroidx/lifecycle/o;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcn/manstep/phonemirrorBox/x0/e;->k:Landroidx/lifecycle/o;

    .line 15
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 16
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/x0/e;->k:Landroidx/lifecycle/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/x0/e;->k:Landroidx/lifecycle/o;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 17
    new-instance p2, Landroidx/lifecycle/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/x0/e;->l:Landroidx/lifecycle/o;

    .line 18
    new-instance p2, Landroidx/lifecycle/o;

    invoke-direct {p2}, Landroidx/lifecycle/o;-><init>()V

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/x0/e;->q:Landroidx/lifecycle/o;

    .line 19
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/x0/e;->A()V

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "2025.03.19.1126"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa

    .line 21
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    const/16 v6, 0x25

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, ".%02d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V"

    .line 22
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v0, Landroidx/lifecycle/o;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->g:Landroidx/lifecycle/o;

    .line 24
    new-instance p2, Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/x0/e;->f:Landroidx/lifecycle/o;

    .line 25
    new-instance p2, Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/x0/e;->d:Landroidx/lifecycle/o;

    .line 26
    new-instance p2, Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/x0/e;->e:Landroidx/lifecycle/o;

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const-string v4, "\n"

    const-string v5, "video/avc"

    if-lt v0, v3, :cond_1b8

    .line 29
    new-instance v0, Landroid/media/MediaCodecList;

    invoke-direct {v0, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 30
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_174
    if-ge v3, v2, :cond_1f3

    aget-object v6, v0, v3

    .line 31
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-nez v7, :cond_1b5

    .line 32
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 33
    array-length v8, v7

    const/4 v9, 0x0

    :goto_184
    if-ge v9, v8, :cond_1b5

    aget-object v10, v7, v9

    .line 34
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b2

    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_19b

    .line 36
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_19b
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    .line 38
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcn/manstep/phonemirrorBox/x0/e;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b2
    add-int/lit8 v9, v9, 0x1

    goto :goto_184

    :cond_1b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_174

    .line 39
    :cond_1b8
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1bd
    if-ge v2, v0, :cond_1f3

    .line 40
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_1f0

    .line 42
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 43
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1cf
    if-ge v8, v7, :cond_1f0

    aget-object v9, v6, v8

    .line 44
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ed

    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1e6

    .line 46
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_1e6
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ed
    add-int/lit8 v8, v8, 0x1

    goto :goto_1cf

    :cond_1f0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1bd

    .line 48
    :cond_1f3
    new-instance v0, Landroidx/lifecycle/o;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->m:Landroidx/lifecycle/o;

    .line 49
    new-instance p2, Landroidx/lifecycle/o;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->u(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/x0/e;->p:Landroidx/lifecycle/o;

    return-void
.end method

.method private A()V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ro.product.model"

    invoke-direct {p0, v2, v1}, Lcn/manstep/phonemirrorBox/x0/e;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "ro.product.name"

    invoke-direct {p0, v3, v2}, Lcn/manstep/phonemirrorBox/x0/e;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v3, "ro.build.id"

    invoke-direct {p0, v3, v2}, Lcn/manstep/phonemirrorBox/x0/e;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ro.board.platform"

    const-string v3, ""

    .line 5
    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcn/manstep/phonemirrorBox/x0/e;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "ro.product.brand"

    invoke-direct {p0, v3, v2}, Lcn/manstep/phonemirrorBox/x0/e;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "ro.build.fingerprint"

    invoke-direct {p0, v3, v2}, Lcn/manstep/phonemirrorBox/x0/e;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    new-instance v3, Ljava/util/Date;

    sget-wide v4, Landroid/os/Build;->TIME:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.build.date.utc"

    .line 10
    invoke-direct {p0, v3, v2}, Lcn/manstep/phonemirrorBox/x0/e;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.build.version.release(sdk)"

    invoke-direct {p0, v3, v2}, Lcn/manstep/phonemirrorBox/x0/e;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/e;->q:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method private o(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5e

    const/4 v0, 0x0

    .line 2
    :try_start_7
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p1

    const-string v1, "video/avc"

    .line 4
    invoke-virtual {p1, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d~%d,%d~%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_52} :catch_5b
    .catchall {:try_start_7 .. :try_end_52} :catchall_56

    .line 7
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_60

    :catchall_56
    move-exception p1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 8
    throw p1

    .line 9
    :catch_5b
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_5e
    const-string p1, ""

    :goto_60
    return-object p1
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "%-40s: %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public B()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->i()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/w;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public C(Landroid/view/View;)V
    .registers 3

    .line 1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_18

    .line 2
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 3
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->J(Z)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 5
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V

    :cond_18
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->f:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public E(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->p:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public F(Landroid/view/View;)V
    .registers 4

    .line 1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2b

    .line 2
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->o:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    .line 4
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->w:Z

    .line 5
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->x:Z

    .line 6
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->y:Z

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->z()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->a(Landroid/content/Context;)V

    goto :goto_2b

    :cond_24
    const/4 p1, 0x0

    .line 8
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->w:Z

    .line 9
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->x:Z

    .line 10
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->y:Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method public G(Landroid/view/View;)V
    .registers 4

    .line 1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1e

    .line 2
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->r:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 4
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->d:Z

    if-eqz p1, :cond_1e

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->z()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->c(Landroid/content/Context;)V

    :cond_1e
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->e:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->d:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public J()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->i:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/e0;->t()V

    return-void
.end method

.method public K()V
    .registers 3

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->x:Z

    if-eqz v0, :cond_17

    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->w:Z

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->i:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/e0;->w()V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->i:Lcn/manstep/phonemirrorBox/util/e0;

    new-instance v1, Lcn/manstep/phonemirrorBox/x0/e$a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/x0/e$a;-><init>(Lcn/manstep/phonemirrorBox/x0/e;)V

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/util/e0;->o(Lcn/manstep/phonemirrorBox/util/e0$g;)V

    :cond_17
    return-void
.end method

.method public j()V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_28

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->z()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_45

    :cond_28
    const/16 v2, 0x8

    if-gt v1, v2, :cond_45

    const-string v1, "android.intent.action.VIEW"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->z()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :cond_45
    :goto_45
    :try_start_45
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->z()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4d

    goto :goto_68

    :catch_4d
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",getAppDetailSettingIntent: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugFragmentViewModel"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    return-void
.end method

.method public k()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/l0/l;->newInstance()Lcn/manstep/phonemirrorBox/l0/l;

    move-result-object v1

    const v2, 0x7f09015e

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    const-string v1, "AudioDebugFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/w;->g(Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {v0}, Landroidx/fragment/app/w;->i()I

    return-void
.end method

.method public l()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/l0/r;->newInstance()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const v2, 0x7f09015e

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    const-string v1, "FileShareFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/w;->g(Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {v0}, Landroidx/fragment/app/w;->i()I

    return-void
.end method

.method public m()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->g:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public n()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->f:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public p()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->l:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public q()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->p:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public s()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->m:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public t()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->o:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public u()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->k:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public v()Landroidx/lifecycle/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->r:Landroidx/lifecycle/o;

    if-nez v0, :cond_11

    .line 2
    new-instance v0, Landroidx/lifecycle/o;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/p;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->r:Landroidx/lifecycle/o;

    .line 3
    :cond_11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->r:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public w()Landroidx/lifecycle/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->h:Landroidx/lifecycle/o;

    if-nez v0, :cond_48

    .line 2
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->h:Landroidx/lifecycle/o;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1b

    .line 4
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    goto :goto_48

    .line 5
    :cond_1b
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->h:Landroidx/lifecycle/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    goto :goto_48

    .line 7
    :cond_41
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->h:Landroidx/lifecycle/o;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 8
    :cond_48
    :goto_48
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->h:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public x()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->q:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public y()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->e:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public z()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/e;->d:Landroidx/lifecycle/o;

    return-object v0
.end method
