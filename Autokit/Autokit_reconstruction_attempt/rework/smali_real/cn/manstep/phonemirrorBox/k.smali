.class public Lcn/manstep/phonemirrorBox/k;
.super Landroidx/appcompat/app/d;
.source "SourceFile"


# instance fields
.field protected b:Z

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:I

.field protected g:Ljava/util/Locale;

.field protected h:I

.field protected i:I

.field protected j:Z

.field private k:F

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field protected q:Landroid/content/ComponentCallbacks;

.field private r:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroidx/appcompat/app/f;->D(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->e:I

    .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->f:I

    .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->h:I

    .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->i:I

    .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    .line 8
    new-instance v1, Lcn/manstep/phonemirrorBox/k$a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/k$a;-><init>(Lcn/manstep/phonemirrorBox/k;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/k;->q:Landroid/content/ComponentCallbacks;

    .line 9
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->r:I

    .line 10
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->s:Z

    return-void
.end method

.method static synthetic L(Lcn/manstep/phonemirrorBox/k;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->m:F

    return p1
.end method

.method static synthetic M(Lcn/manstep/phonemirrorBox/k;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->k:F

    return p1
.end method

.method static synthetic N(Lcn/manstep/phonemirrorBox/k;Landroid/content/res/Configuration;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/k;->P(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method static synthetic O(Lcn/manstep/phonemirrorBox/k;Landroid/app/Activity;Landroid/app/Application;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/k;->j0(Landroid/app/Activity;Landroid/app/Application;)V

    return-void
.end method

.method private P(Landroid/content/res/Configuration;)Z
    .registers 10

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "LanguageID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_104

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_104

    .line 2
    :cond_15
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_2c

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_37

    .line 5
    :cond_2c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    :goto_37
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcn/manstep/phonemirrorBox/u;->G(I)I

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 8
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/x;->h(Ljava/util/Locale;)Z

    move-result v4

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newLocale, isRtlConfig = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BaseActivity"

    invoke-static {v6, v5}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "curLocale = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", newLocale = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_104

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v5

    invoke-virtual {v5}, Lcn/manstep/phonemirrorBox/u;->k()I

    move-result v5

    .line 12
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    if-nez v5, :cond_af

    if-nez v4, :cond_b7

    mul-int/lit8 p1, v1, 0x2

    goto :goto_b8

    :cond_af
    if-eqz v4, :cond_b5

    neg-int p1, v1

    goto :goto_b8

    :cond_b3
    if-nez v5, :cond_b7

    :cond_b5
    move p1, v1

    goto :goto_b8

    :cond_b7
    const/4 p1, 0x0

    .line 13
    :goto_b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rightMargin= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",x= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v3, v0, p1, v2}, Lcn/manstep/phonemirrorBox/k;->W(IIII)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-direct {p0, p0, p1}, Lcn/manstep/phonemirrorBox/k;->j0(Landroid/app/Activity;Landroid/app/Application;)V

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "ShowFloatBall"

    invoke-virtual {p1, v0, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_102

    .line 17
    invoke-static {}, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/floatwindow/e;->o(Landroid/content/Context;)V

    :cond_102
    const/4 p1, 0x1

    return p1

    :cond_104
    :goto_104
    return v2
.end method

.method private Q()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k;->g:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 2
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    goto :goto_3e

    .line 3
    :cond_16
    iget v0, p0, Lcn/manstep/phonemirrorBox/k;->i:I

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/k;->Z()I

    move-result v2

    if-eq v0, v2, :cond_21

    .line 4
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    goto :goto_3e

    .line 5
    :cond_21
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 6
    iget v0, p0, Lcn/manstep/phonemirrorBox/k;->h:I

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v2, :cond_3e

    .line 7
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    .line 8
    :cond_3e
    :goto_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRecreate: bRecreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    if-eqz v0, :cond_63

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-nez v0, :cond_63

    .line 11
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->recreate()V

    :cond_63
    return-void
.end method

.method private R(III)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, p2, :cond_8

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_b

    .line 2
    :cond_8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3
    :goto_b
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    sput-boolean v1, Lcn/manstep/phonemirrorBox/p;->m:Z

    .line 9
    sput p1, Lcn/manstep/phonemirrorBox/p;->k:I

    .line 10
    sput p2, Lcn/manstep/phonemirrorBox/p;->l:I

    .line 11
    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_3d

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_48

    .line 14
    :cond_3d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    :goto_48
    iget v1, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, p1

    sput v1, Lcn/manstep/phonemirrorBox/p;->I:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_52

    .line 16
    sput v0, Lcn/manstep/phonemirrorBox/p;->I:I

    :cond_52
    if-ne p2, v1, :cond_59

    .line 17
    iget p2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lcn/manstep/phonemirrorBox/k;->f:I

    goto :goto_6c

    .line 18
    :cond_59
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p3

    invoke-virtual {p3}, Lcn/manstep/phonemirrorBox/u;->Y()Z

    move-result p3

    if-nez p3, :cond_6a

    .line 19
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcn/manstep/phonemirrorBox/c0;->o(II)Lcn/manstep/phonemirrorBox/c0;

    .line 20
    :cond_6a
    iput p2, p0, Lcn/manstep/phonemirrorBox/k;->f:I

    .line 21
    :goto_6c
    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->e:I

    return-void
.end method

.method private S(IIII)V
    .registers 7

    const/4 v0, 0x1

    if-le p1, p2, :cond_8

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_b

    .line 2
    :cond_8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3
    :goto_b
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 4
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 7
    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 p3, 0x30

    .line 8
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->m:Z

    .line 11
    sput p1, Lcn/manstep/phonemirrorBox/p;->k:I

    add-int/lit8 p2, p2, -0x80

    .line 12
    sput p2, Lcn/manstep/phonemirrorBox/p;->l:I

    .line 13
    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z

    .line 14
    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->j:Z

    .line 15
    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->z:Z

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object p1

    sget p2, Lcn/manstep/phonemirrorBox/p;->k:I

    sget p3, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {p1, p2, p3}, Lcn/manstep/phonemirrorBox/c0;->o(II)Lcn/manstep/phonemirrorBox/c0;

    return-void
.end method

.method private T(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    if-eqz p1, :cond_b

    .line 1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0, v0, v1, p1}, Lcn/manstep/phonemirrorBox/k;->R(III)V

    :cond_b
    return-void
.end method

.method private U(II)V
    .registers 6

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_17

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_22

    .line 4
    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    :goto_22
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr p1, p2

    const p2, 0x800033

    invoke-direct {p0, v1, p1, p2}, Lcn/manstep/phonemirrorBox/k;->R(III)V

    return-void
.end method

.method private W(IIII)V
    .registers 8

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_17

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_22

    .line 4
    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    :goto_22
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v0, p2, :cond_46

    if-nez p4, :cond_29

    goto :goto_46

    .line 6
    :cond_29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 8
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 9
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 10
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const p4, 0x800033

    .line 11
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_64

    :cond_46
    :goto_46
    const v0, 0x1020002

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, p3

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    int-to-float p4, p4

    .line 17
    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->setY(F)V

    .line 18
    :goto_64
    sget p4, Lcn/manstep/phonemirrorBox/p;->I:I

    if-gtz p4, :cond_6a

    .line 19
    sput p3, Lcn/manstep/phonemirrorBox/p;->I:I

    :cond_6a
    const/4 p3, 0x1

    .line 20
    sput-boolean p3, Lcn/manstep/phonemirrorBox/p;->m:Z

    .line 21
    sput p1, Lcn/manstep/phonemirrorBox/p;->k:I

    .line 22
    sput p2, Lcn/manstep/phonemirrorBox/p;->l:I

    .line 23
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcn/manstep/phonemirrorBox/c0;->o(II)Lcn/manstep/phonemirrorBox/c0;

    .line 24
    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->e:I

    .line 25
    iput p2, p0, Lcn/manstep/phonemirrorBox/k;->f:I

    return-void
.end method

.method private X(IIIIII)V
    .registers 10

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_17

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_22

    .line 4
    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_22
    const v0, 0x1020002

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez p3, :cond_3a

    if-nez p5, :cond_3a

    .line 6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    iput p1, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    goto :goto_46

    .line 8
    :cond_3a
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sub-int/2addr p1, p3

    sub-int/2addr p1, p5

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p3

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    :goto_46
    if-nez p4, :cond_54

    if-nez p6, :cond_54

    .line 10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    goto :goto_60

    .line 12
    :cond_54
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sub-int/2addr p2, p4

    sub-int/2addr p2, p6

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p4

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 14
    :goto_60
    sget p1, Lcn/manstep/phonemirrorBox/p;->I:I

    if-gtz p1, :cond_66

    .line 15
    sput p3, Lcn/manstep/phonemirrorBox/p;->I:I

    :cond_66
    const/4 p1, 0x1

    .line 16
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->m:Z

    .line 17
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sput p1, Lcn/manstep/phonemirrorBox/p;->k:I

    .line 18
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput p1, Lcn/manstep/phonemirrorBox/p;->l:I

    .line 19
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2, p3}, Lcn/manstep/phonemirrorBox/c0;->o(II)Lcn/manstep/phonemirrorBox/c0;

    .line 20
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->e:I

    .line 21
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->f:I

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-direct {p0, p0, p1}, Lcn/manstep/phonemirrorBox/k;->j0(Landroid/app/Activity;Landroid/app/Application;)V

    return-void
.end method

.method private Y(Landroid/graphics/Rect;)V
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixedContentSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseActivity"

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_31

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_3c

    .line 5
    :cond_31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    :goto_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v3, v5, :cond_97

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v5, :cond_69

    goto :goto_97

    :cond_69
    const-string v0, "fixedContentSize: 2"

    .line 8
    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 12
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 13
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v3, 0x800033

    .line 14
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_cd

    :cond_97
    :goto_97
    const-string v3, "fixedContentSize: 1"

    .line 16
    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x1020002

    .line 17
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 18
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v0, v5, :cond_c1

    .line 20
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    :cond_c1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setX(F)V

    .line 22
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setY(F)V

    .line 23
    :goto_cd
    sget v0, Lcn/manstep/phonemirrorBox/p;->I:I

    if-gtz v0, :cond_d5

    .line 24
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sput v0, Lcn/manstep/phonemirrorBox/p;->I:I

    :cond_d5
    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->m:Z

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sput v0, Lcn/manstep/phonemirrorBox/p;->k:I

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sput p1, Lcn/manstep/phonemirrorBox/p;->l:I

    .line 28
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object p1

    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I

    sget v3, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {p1, v0, v3}, Lcn/manstep/phonemirrorBox/c0;->o(II)Lcn/manstep/phonemirrorBox/c0;

    .line 29
    sget p1, Lcn/manstep/phonemirrorBox/p;->k:I

    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->e:I

    .line 30
    sget p1, Lcn/manstep/phonemirrorBox/p;->l:I

    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->f:I

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcn/manstep/phonemirrorBox/p;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-direct {p0, p0, p1}, Lcn/manstep/phonemirrorBox/k;->j0(Landroid/app/Activity;Landroid/app/Application;)V

    return-void
.end method

.method private Z()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-nez v0, :cond_3b

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_23

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_2e

    .line 5
    :cond_23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    :goto_2e
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_38

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->i:I

    goto :goto_3b

    :cond_38
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->i:I

    .line 9
    :cond_3b
    :goto_3b
    iget v0, p0, Lcn/manstep/phonemirrorBox/k;->i:I

    return v0
.end method

.method private b0(II)F
    .registers 16

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseActivity,getTargetDensity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v0, 0x258

    const/high16 v1, 0x44200000    # 640.0f

    const-string v2, "getTargetDensity: dpi=640f"

    const/16 v3, 0x2d0

    const/high16 v4, 0x44340000    # 720.0f

    const-string v5, "BaseActivity"

    const/16 v6, 0x6e4

    if-lt p1, v6, :cond_5a

    const/16 v6, 0x780

    if-gt p1, v6, :cond_5a

    const/16 v6, 0x3b8

    const-string v7, "getTargetDensity: dpi=960f"

    if-ne p2, v6, :cond_3c

    .line 2
    invoke-static {v5, v7}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v4

    return p1

    :cond_3c
    if-le p2, v0, :cond_4a

    if-ge p2, v3, :cond_4a

    const-string p2, "getTargetDensity: dpi=980f"

    .line 3
    invoke-static {v5, p2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    const/high16 p2, 0x44750000    # 980.0f

    div-float/2addr p1, p2

    return p1

    :cond_4a
    if-le p2, v3, :cond_52

    .line 4
    invoke-static {v5, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v1

    return p1

    .line 5
    :cond_52
    invoke-static {v5, v7}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    const/high16 p2, 0x44700000    # 960.0f

    div-float/2addr p1, p2

    return p1

    :cond_5a
    const/16 v6, 0x300

    const/16 v7, 0x400

    const-string v8, "getTargetDensity: dpi=720f"

    if-ne p1, v6, :cond_6a

    if-gt p2, v7, :cond_6a

    .line 6
    invoke-static {v5, v8}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v4

    return p1

    :cond_6a
    const/16 v6, 0x500

    const/16 v9, 0x1e0

    if-ne p1, v6, :cond_91

    const/16 v0, 0x558

    if-lt p2, v0, :cond_83

    const/16 v0, 0x640

    if-gt p2, v0, :cond_83

    const-string p2, "getTargetDensity: dpi=750f"

    .line 7
    invoke-static {v5, p2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    const p2, 0x443b8000    # 750.0f

    div-float/2addr p1, p2

    return p1

    :cond_83
    if-gt p2, v9, :cond_8b

    .line 8
    invoke-static {v5, v8}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v4

    return p1

    .line 9
    :cond_8b
    invoke-static {v5, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v1

    return p1

    :cond_91
    const/high16 v6, 0x440c0000    # 560.0f

    const-string v10, "getTargetDensity: dpi=560f"

    if-ne p1, v7, :cond_9f

    if-gt p2, v0, :cond_9f

    .line 10
    invoke-static {v5, v10}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v6

    return p1

    :cond_9f
    const/high16 v0, 0x44480000    # 800.0f

    const-string v7, "getTargetDensity: dpi=800f"

    const/16 v11, 0x4b0

    if-le p1, v11, :cond_bb

    const/16 v12, 0x334

    if-gt p2, v12, :cond_bb

    const/16 v1, 0x280

    if-ge p2, v1, :cond_b5

    .line 11
    invoke-static {v5, v7}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1

    .line 12
    :cond_b5
    invoke-static {v5, v8}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v4

    return p1

    :cond_bb
    if-ne p1, v11, :cond_c5

    if-gt p2, v3, :cond_c5

    .line 13
    invoke-static {v5, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v1

    return p1

    :cond_c5
    const/16 v1, 0x7d0

    const/16 v2, 0x898

    if-lt p1, v1, :cond_d3

    if-ge p1, v2, :cond_d3

    .line 14
    invoke-static {v5, v8}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v4

    return p1

    :cond_d3
    if-lt p1, v2, :cond_e5

    const/16 p2, 0xa00

    if-ne p1, p2, :cond_df

    .line 15
    invoke-static {v5, v7}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1

    .line 16
    :cond_df
    invoke-static {v5, v8}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v4

    return p1

    :cond_e5
    const/16 v0, 0x320

    if-ne p1, v0, :cond_f1

    if-gt p2, v9, :cond_f1

    .line 17
    invoke-static {v5, v10}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v6

    return p1

    :cond_f1
    const/16 p2, 0x384

    if-le p1, p2, :cond_fb

    .line 18
    invoke-static {v5, v10}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    div-float/2addr p1, v6

    return p1

    :cond_fb
    const-string p2, "getTargetDensity: dpi=480f"

    .line 19
    invoke-static {v5, p2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    const/high16 p2, 0x43f00000    # 480.0f

    div-float/2addr p1, p2

    return p1
.end method

.method private c0()Z
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "AREA_RECT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 2
    :cond_14
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_25

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_25

    .line 3
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/k;->Y(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_25
    return v1
.end method

.method private i0(I)V
    .registers 4

    const v0, 0x1020002

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_14

    .line 3
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_14
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private j0(Landroid/app/Activity;Landroid/app/Application;)V
    .registers 9

    const-string v0, "BaseActivity"

    const-string v1, "setCustomDensity: start"

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3
    iget v1, p0, Lcn/manstep/phonemirrorBox/k;->k:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_56

    .line 4
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcn/manstep/phonemirrorBox/k;->k:F

    .line 5
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Lcn/manstep/phonemirrorBox/k;->m:F

    .line 6
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcn/manstep/phonemirrorBox/k;->l:I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseActivity,setCustomDensity: sysDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/manstep/phonemirrorBox/k;->k:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sysDensityDpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/manstep/phonemirrorBox/k;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sysScaledDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/manstep/phonemirrorBox/k;->m:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k;->q:Landroid/content/ComponentCallbacks;

    invoke-virtual {p2, v1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k;->q:Landroid/content/ComponentCallbacks;

    invoke-virtual {p2, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 10
    :cond_56
    iget p2, p0, Lcn/manstep/phonemirrorBox/k;->e:I

    if-lez p2, :cond_63

    iget v1, p0, Lcn/manstep/phonemirrorBox/k;->f:I

    if-lez v1, :cond_63

    .line 11
    invoke-direct {p0, p2, v1}, Lcn/manstep/phonemirrorBox/k;->b0(II)F

    move-result p2

    goto :goto_6b

    .line 12
    :cond_63
    iget p2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, p2, v1}, Lcn/manstep/phonemirrorBox/k;->b0(II)F

    move-result p2

    .line 13
    :goto_6b
    iget v1, p0, Lcn/manstep/phonemirrorBox/k;->m:F

    iget v2, p0, Lcn/manstep/phonemirrorBox/k;->k:F

    sub-float/2addr v1, v2

    add-float/2addr v1, p2

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v2, v2, p2

    float-to-int v2, v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseActivity,setCustomDensity: targetDensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", widthPixels="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", heightPixels="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 15
    iput p2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 16
    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 17
    iput v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 18
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "density"

    invoke-virtual {v3, v5, v4}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "sdensity"

    invoke-virtual {v3, v5, v4}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v3

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "densityd"

    invoke-virtual {v3, v4, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "FontScaled"

    invoke-virtual {v0, v4, v3}, Lcn/manstep/phonemirrorBox/b0;->l(Ljava/lang/String;F)F

    move-result v0

    mul-float v1, v1, v0

    .line 22
    iput v1, p0, Lcn/manstep/phonemirrorBox/k;->o:F

    .line 23
    iput p2, p0, Lcn/manstep/phonemirrorBox/k;->n:F

    .line 24
    iput v2, p0, Lcn/manstep/phonemirrorBox/k;->p:I

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 26
    iget p2, p0, Lcn/manstep/phonemirrorBox/k;->n:F

    iput p2, p1, Landroid/util/DisplayMetrics;->density:F

    .line 27
    iget p2, p0, Lcn/manstep/phonemirrorBox/k;->o:F

    iput p2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 28
    iget p2, p0, Lcn/manstep/phonemirrorBox/k;->p:I

    iput p2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BaseActivity,setCustomDensity: over density="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/manstep/phonemirrorBox/k;->n:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", densityDpi="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/manstep/phonemirrorBox/k;->p:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", scaledDensity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/manstep/phonemirrorBox/k;->o:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->o(Ljava/lang/String;)V

    return-void
.end method

.method private l0(I)V
    .registers 4

    and-int/lit8 p1, p1, 0x30

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiModeStyle: uiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/16 v0, 0x20

    if-ne p1, v0, :cond_4f

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p0, p1}, Lcn/manstep/phonemirrorBox/k;->k0(Landroid/app/Activity;I)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->W()Z

    move-result p1

    if-eqz p1, :cond_6f

    const/high16 p1, -0x1000000

    .line 5
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/k;->i0(I)V

    goto :goto_6f

    .line 6
    :cond_4f
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f060000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p0, p1}, Lcn/manstep/phonemirrorBox/k;->k0(Landroid/app/Activity;I)V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->W()Z

    move-result p1

    if-eqz p1, :cond_6f

    const-string p1, "#DCE6FA"

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/k;->i0(I)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private m0(IIIIII)V
    .registers 10

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_17

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_22

    .line 4
    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_22
    if-nez p3, :cond_27

    if-nez p5, :cond_27

    goto :goto_29

    :cond_27
    sub-int/2addr p1, p3

    sub-int/2addr p1, p5

    :goto_29
    if-nez p4, :cond_2e

    if-nez p6, :cond_2e

    goto :goto_30

    :cond_2e
    sub-int/2addr p2, p4

    sub-int/2addr p2, p6

    .line 5
    :goto_30
    sget p4, Lcn/manstep/phonemirrorBox/p;->I:I

    if-gtz p4, :cond_36

    .line 6
    sput p3, Lcn/manstep/phonemirrorBox/p;->I:I

    :cond_36
    const/4 p3, 0x1

    .line 7
    sput-boolean p3, Lcn/manstep/phonemirrorBox/p;->m:Z

    .line 8
    sput p1, Lcn/manstep/phonemirrorBox/p;->k:I

    .line 9
    sput p2, Lcn/manstep/phonemirrorBox/p;->l:I

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcn/manstep/phonemirrorBox/c0;->o(II)Lcn/manstep/phonemirrorBox/c0;

    .line 11
    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->e:I

    .line 12
    iput p2, p0, Lcn/manstep/phonemirrorBox/k;->f:I

    return-void
.end method


# virtual methods
.method protected V()V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/k;->c0()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1e

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_29

    .line 5
    :cond_1e
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    :goto_29
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_70

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0190

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 8
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k;->d:Ljava/lang/String;

    const-string v4, "SABRESD-MX6DQ"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 9
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v4, "KOT49H"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 10
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v4, v4, -0x48

    invoke-direct {p0, v1, v4, v3, v3}, Lcn/manstep/phonemirrorBox/k;->W(IIII)V

    goto :goto_6e

    .line 11
    :cond_64
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v4, 0x88

    sub-int/2addr v1, v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v1, v5, v4, v3}, Lcn/manstep/phonemirrorBox/k;->W(IIII)V

    :goto_6e
    const/4 v1, 0x1

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    .line 12
    :goto_71
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/manstep/phonemirrorBox/u;->G(I)I

    move-result v4

    if-lez v4, :cond_b5

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u;->k()I

    move-result v1

    if-nez v1, :cond_92

    move v1, v4

    goto :goto_93

    :cond_92
    const/4 v1, 0x0

    .line 14
    :goto_93
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v5

    const-string v6, "LanguageID"

    invoke-virtual {v5, v6, v3}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v5

    .line 15
    invoke-static {v5}, Lcn/manstep/phonemirrorBox/x;->e(I)Ljava/util/Locale;

    move-result-object v5

    .line 16
    invoke-static {v5}, Lcn/manstep/phonemirrorBox/x;->h(Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_ac

    if-nez v1, :cond_ab

    neg-int v1, v4

    goto :goto_ac

    :cond_ab
    const/4 v1, 0x0

    .line 17
    :cond_ac
    :goto_ac
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v4

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v5, v4, v1, v3}, Lcn/manstep/phonemirrorBox/k;->W(IIII)V

    const/4 v1, 0x1

    .line 18
    :cond_b5
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/u;->A()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_d0

    .line 19
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcn/manstep/phonemirrorBox/k;->X(IIIIII)V

    const/4 v1, 0x1

    .line 20
    :cond_d0
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/u;->C()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_eb

    .line 21
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcn/manstep/phonemirrorBox/k;->m0(IIIIII)V

    goto :goto_ec

    :cond_eb
    move v2, v1

    :goto_ec
    if-eqz v2, :cond_f5

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcn/manstep/phonemirrorBox/k;->j0(Landroid/app/Activity;Landroid/app/Application;)V

    :cond_f5
    return-void
.end method

.method public a0()F
    .registers 2

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/k;->o:F

    return v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "LanguageID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x;->e(I)Ljava/util/Locale;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/r;->a(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/ContextWrapper;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5
    new-instance v1, Lcn/manstep/phonemirrorBox/k$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lcn/manstep/phonemirrorBox/k$b;-><init>(Lcn/manstep/phonemirrorBox/k;Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/res/Configuration;)V

    .line 6
    invoke-super {p0, v1}, Landroidx/appcompat/app/d;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected d0()Z
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/k;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public e0()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->s:Z

    .line 2
    const-class v1, Lcn/manstep/phonemirrorBox/Main1Activity;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/manstep/phonemirrorBox/util/f;->d(Landroid/content/Context;Ljava/lang/Class;Z)V

    const/16 v1, 0xc

    .line 3
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 4
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/v0/e;->P(Z)V

    return-void
.end method

.method protected f0()V
    .registers 11

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->C()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_21

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_2c

    .line 5
    :cond_21
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    :goto_2c
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcn/manstep/phonemirrorBox/k;->X(IIIIII)V

    :cond_3c
    return-void
.end method

.method public finish()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k;->q:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method protected g0()V
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->C()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2e

    const v0, 0x1020002

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcn/manstep/phonemirrorBox/k;->j0(Landroid/app/Activity;Landroid/app/Application;)V

    :cond_2e
    return-void
.end method

.method public h0(I)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->recreate()V

    return-void
.end method

.method public k0(Landroid/app/Activity;I)V
    .registers 12

    if-eqz p1, :cond_67

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_64

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide v3, 0x3fd322d0e5604189L    # 0.299

    .line 8
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const-wide v3, 0x3fe2c8b439581062L    # 0.587

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    add-double/2addr v5, v7

    const-wide v3, 0x3fbd2f1a9fbe76c9L    # 0.114

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-double v7, p2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    add-double/2addr v5, v7

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v5, v3

    sub-double/2addr v1, v5

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double p2, v1, v3

    if-lez p2, :cond_62

    and-int/lit16 v0, v0, -0x2001

    goto :goto_64

    :cond_62
    or-int/lit16 v0, v0, 0x2000

    .line 9
    :cond_64
    :goto_64
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_67
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/k;->l0(I)V

    :cond_b
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->k:F

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcn/manstep/phonemirrorBox/k;->j0(Landroid/app/Activity;Landroid/app/Application;)V

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k;->g:Ljava/util/Locale;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->h:I

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->i:I

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: locale="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k;->g:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",uiMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/k;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseActivity"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ro.product.name"

    const-string v1, ""

    .line 6
    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k;->c:Ljava/lang/String;

    const-string p1, "ro.product.model"

    .line 7
    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k;->d:Ljava/lang/String;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: name="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", model="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f0f0190

    const/4 v2, 0x0

    if-nez p1, :cond_b2

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k;->c:Ljava/lang/String;

    const-string v3, "mars"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ab

    const/16 p1, 0x921

    const/16 v3, 0x5c0

    const/16 v4, 0xdf

    .line 12
    invoke-direct {p0, p1, v3, v4, v2}, Lcn/manstep/phonemirrorBox/k;->S(IIII)V

    goto :goto_b2

    .line 13
    :cond_ab
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k;->c:Ljava/lang/String;

    const-string v3, "gin"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    :cond_b2
    :goto_b2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0a0023

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 15
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/k;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_131

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k;->d:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v6, -0x30783428

    if-eq v3, v6, :cond_102

    const v6, 0x12734

    if-eq v3, v6, :cond_f8

    const v6, 0x36261de

    if-eq v3, v6, :cond_ee

    goto :goto_10b

    :cond_ee
    const-string v3, "MEK-MX8Q"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10b

    const/4 v0, 0x2

    goto :goto_10b

    :cond_f8
    const-string v3, "M18"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10b

    const/4 v0, 0x0

    goto :goto_10b

    :cond_102
    const-string v3, "msm8953_32"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10b

    const/4 v0, 0x1

    :cond_10b
    :goto_10b
    if-eqz v0, :cond_129

    if-eq v0, v5, :cond_121

    if-eq v0, v4, :cond_112

    goto :goto_130

    .line 18
    :cond_112
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/manstep/phonemirrorBox/b0;->E(Z)V

    .line 19
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/manstep/phonemirrorBox/b0;->A(Z)V

    goto :goto_130

    .line 20
    :cond_121
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/manstep/phonemirrorBox/b0;->A(Z)V

    goto :goto_130

    .line 21
    :cond_129
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/manstep/phonemirrorBox/b0;->B(Z)V

    :goto_130
    const/4 p1, 0x0

    :cond_131
    if-lez p1, :cond_139

    .line 22
    sput p1, Lcn/manstep/phonemirrorBox/p;->I:I

    .line 23
    invoke-direct {p0, p1, v2}, Lcn/manstep/phonemirrorBox/k;->U(II)V

    goto :goto_144

    .line 24
    :cond_139
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->u()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/k;->T(Landroid/view/WindowManager$LayoutParams;)V

    .line 25
    :goto_144
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "AREA_RECT"

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_160

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->e:I

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/k;->f:I

    .line 28
    :cond_160
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-direct {p0, p0, p1}, Lcn/manstep/phonemirrorBox/k;->j0(Landroid/app/Activity;Landroid/app/Application;)V

    .line 29
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_17e

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_189

    .line 32
    :cond_17e
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    :goto_189
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, p1, :cond_191

    .line 34
    iput-boolean v5, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    .line 35
    :cond_191
    iget p1, p0, Lcn/manstep/phonemirrorBox/k;->i:I

    if-nez p1, :cond_19e

    .line 36
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    if-eqz p1, :cond_19c

    .line 37
    iput v5, p0, Lcn/manstep/phonemirrorBox/k;->i:I

    goto :goto_19e

    .line 38
    :cond_19c
    iput v4, p0, Lcn/manstep/phonemirrorBox/k;->i:I

    .line 39
    :cond_19e
    :goto_19e
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BaseActivity,onCreate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcn/manstep/phonemirrorBox/p;->o:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 43
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    if-eqz p1, :cond_1ef

    .line 44
    iget p1, v0, Landroid/graphics/Point;->y:I

    sget v0, Lcn/manstep/phonemirrorBox/p;->o:I

    if-ge p1, v0, :cond_1ef

    .line 45
    sput p1, Lcn/manstep/phonemirrorBox/p;->o:I

    .line 46
    :cond_1ef
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "hz_switch_meter"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1fc

    const/4 v2, 0x1

    .line 47
    :cond_1fc
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcn/manstep/phonemirrorBox/u0/c;->u(Landroid/content/Context;Z)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k;->q:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onPause()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->r:I

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->r:I

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/k;->l0(I)V

    .line 5
    :cond_19
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->s:Z

    if-eqz v0, :cond_29

    .line 6
    const-class v0, Lcn/manstep/phonemirrorBox/Main1Activity;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/manstep/phonemirrorBox/util/f;->d(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 7
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/v0/e;->P(Z)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->s:Z

    :cond_29
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStart()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->r:I

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStop()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/k;->r:I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_8

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/k;->Q()V

    :cond_8
    return-void
.end method

.method public recreate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/MyApplication;->j()V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/MyApplication;->f()V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_18

    .line 5
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Q()V

    .line 6
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/k;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
