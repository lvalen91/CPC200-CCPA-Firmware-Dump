.class public Lcn/manstep/phonemirrorBox/FloatWindowService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static b:Landroid/widget/LinearLayout;

.field public static c:Landroid/view/WindowManager$LayoutParams;

.field public static d:Landroid/view/WindowManager;

.field public static e:Landroid/view/Surface;

.field public static f:I

.field public static g:I

.field private static h:Z

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x5c3

    invoke-static {v0}, Lcom/stub/StubApp;->interface11(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 1

    return-object p0
.end method

.method private static b(II)V
    .registers 7

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1a

    .line 4
    sget-object v2, Lcn/manstep/phonemirrorBox/FloatWindowService;->d:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_23

    .line 5
    :cond_1a
    sget-object v2, Lcn/manstep/phonemirrorBox/FloatWindowService;->d:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    :goto_23
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const v3, 0xfffe

    if-eqz p1, :cond_3c

    if-nez p0, :cond_2f

    goto :goto_3c

    :cond_2f
    if-le p0, p1, :cond_33

    move p0, v2

    goto :goto_3e

    :cond_33
    int-to-float v4, v0

    int-to-float p0, p0

    mul-float v4, v4, p0

    int-to-float p0, p1

    div-float/2addr v4, p0

    float-to-int p0, v4

    and-int/2addr p0, v3

    goto :goto_3e

    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 8
    :goto_3e
    sget-boolean p1, Lcn/manstep/phonemirrorBox/FloatWindowService;->i:Z

    if-nez p1, :cond_4c

    mul-int/lit8 p0, p0, 0x2

    .line 9
    div-int/lit8 p0, p0, 0x5

    and-int/2addr p0, v3

    mul-int/lit8 v0, v0, 0x2

    .line 10
    div-int/lit8 v0, v0, 0x5

    and-int/2addr v0, v3

    .line 11
    :cond_4c
    sget-object p1, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    sub-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 12
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 13
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 14
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_60

    .line 15
    :cond_5a
    sget-object p0, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 16
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 17
    :goto_60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "float window calculateWH: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FloatWindowService"

    invoke-static {p1, p0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .registers 5

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->d:Landroid/view/WindowManager;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowManager--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/manstep/phonemirrorBox/FloatWindowService;->d:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatWindowService"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3d

    .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_43

    .line 6
    :cond_3d
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7
    :goto_43
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x38

    .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x33

    .line 9
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x2

    .line 12
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 13
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 14
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c003c

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->b:Landroid/widget/LinearLayout;

    .line 16
    sget-object v2, Lcn/manstep/phonemirrorBox/FloatWindowService;->d:Landroid/view/WindowManager;

    sget-object v3, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->b:Landroid/widget/LinearLayout;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 18
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 20
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 21
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcn/manstep/phonemirrorBox/FloatWindowService$a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/FloatWindowService$a;-><init>(Lcn/manstep/phonemirrorBox/FloatWindowService;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public static d(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->e:Landroid/view/Surface;

    const-string v1, "FloatWindowService"

    if-nez v0, :cond_c

    const-string p0, "float window not init!"

    .line 2
    invoke-static {v1, p0}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "float window set reg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sput-boolean p0, Lcn/manstep/phonemirrorBox/FloatWindowService;->i:Z

    .line 5
    sget-boolean p0, Lcn/manstep/phonemirrorBox/FloatWindowService;->h:Z

    if-eqz p0, :cond_36

    .line 6
    sget p0, Lcn/manstep/phonemirrorBox/FloatWindowService;->f:I

    sget v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->g:I

    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/FloatWindowService;->b(II)V

    .line 7
    sget-object p0, Lcn/manstep/phonemirrorBox/FloatWindowService;->d:Landroid/view/WindowManager;

    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->b:Landroid/widget/LinearLayout;

    sget-object v1, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_36
    return-void
.end method

.method public static e(II)V
    .registers 6

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->e:Landroid/view/Surface;

    const-string v1, "FloatWindowService"

    if-nez v0, :cond_c

    const-string p0, "float window not init!"

    .line 2
    invoke-static {v1, p0}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_c
    sput p0, Lcn/manstep/phonemirrorBox/FloatWindowService;->f:I

    .line 4
    sput p1, Lcn/manstep/phonemirrorBox/FloatWindowService;->g:I

    .line 5
    sget-boolean v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->h:Z

    if-eqz v0, :cond_20

    .line 6
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/FloatWindowService;->b(II)V

    .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->d:Landroid/view/WindowManager;

    sget-object v2, Lcn/manstep/phonemirrorBox/FloatWindowService;->b:Landroid/widget/LinearLayout;

    sget-object v3, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WH: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->e:Landroid/view/Surface;

    const-string v1, "FloatWindowService"

    if-nez v0, :cond_c

    const-string p0, "float window not init!"

    .line 2
    invoke-static {v1, p0}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_c
    sput-boolean p0, Lcn/manstep/phonemirrorBox/FloatWindowService;->h:Z

    .line 4
    sget p0, Lcn/manstep/phonemirrorBox/FloatWindowService;->f:I

    sget v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->g:I

    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/FloatWindowService;->b(II)V

    .line 5
    sget-object p0, Lcn/manstep/phonemirrorBox/FloatWindowService;->d:Landroid/view/WindowManager;

    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->b:Landroid/widget/LinearLayout;

    sget-object v2, Lcn/manstep/phonemirrorBox/FloatWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "float window set mbVisible: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->h:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "FloatWindowService"

    const-string v1, "onCreate"

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->h:Z

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcn/manstep/phonemirrorBox/FloatWindowService;->e:Landroid/view/Surface;

    .line 5
    sput v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->f:I

    .line 6
    sput v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->g:I

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_29

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    .line 9
    :cond_29
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/FloatWindowService;->c()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/FloatWindowService;->d:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_c
    return-void
.end method
