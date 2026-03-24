.class public Lcn/manstep/phonemirrorBox/floatwindow/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile k:Lcn/manstep/phonemirrorBox/floatwindow/e;


# instance fields
.field private final a:Landroid/graphics/Point;

.field b:Z

.field c:Z

.field private d:Lcn/manstep/phonemirrorBox/floatwindow/f;

.field private e:Lcn/manstep/phonemirrorBox/floatwindow/c;

.field private f:Landroid/view/WindowManager$LayoutParams;

.field private g:Landroid/view/WindowManager$LayoutParams;

.field private h:Landroid/view/WindowManager;

.field private i:Z

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->a:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z

    .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->i:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 12

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->h(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/floatwindow/f;->getCurrentPosition()Landroid/graphics/Point;

    move-result-object v3

    .line 5
    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v1, 0x2

    if-le v4, v5, :cond_24

    const v4, 0x800005

    goto :goto_27

    :cond_24
    const v4, 0x800003

    .line 6
    :goto_27
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->a:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    .line 7
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    const/4 v8, 0x1

    if-eqz v7, :cond_6b

    invoke-virtual {v7}, Lcn/manstep/phonemirrorBox/floatwindow/c;->getGravity()I

    move-result v7

    if-eq v7, v4, :cond_40

    goto :goto_6b

    .line 8
    :cond_40
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/floatwindow/c;->d()Z

    move-result v4

    if-eqz v4, :cond_50

    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    goto :goto_52

    :cond_50
    iget v5, v3, Landroid/graphics/Point;->x:I

    :goto_52
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lez v6, :cond_5c

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_ff

    .line 10
    :cond_5c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v2, v2, 0x2

    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->r:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x32

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_ff

    .line 11
    :cond_6b
    :goto_6b
    new-instance v7, Lcn/manstep/phonemirrorBox/floatwindow/c;

    invoke-direct {v7, p1, v4}, Lcn/manstep/phonemirrorBox/floatwindow/c;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_a2

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, v3, Landroid/graphics/Point;->x:I

    if-eq v4, v9, :cond_7d

    goto :goto_a2

    .line 13
    :cond_7d
    invoke-virtual {v7}, Lcn/manstep/phonemirrorBox/floatwindow/c;->d()Z

    move-result v4

    if-eqz v4, :cond_89

    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    goto :goto_8b

    :cond_89
    iget v5, v3, Landroid/graphics/Point;->x:I

    :goto_8b
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lez v6, :cond_94

    .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_ff

    .line 15
    :cond_94
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v2, v2, 0x2

    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->r:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x32

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_ff

    .line 16
    :cond_a2
    :goto_a2
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    .line 17
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/floatwindow/c;->d()Z

    move-result v4

    if-eqz v4, :cond_b7

    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    goto :goto_b9

    :cond_b7
    iget v5, v3, Landroid/graphics/Point;->x:I

    :goto_b9
    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lez v6, :cond_c2

    .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_cf

    .line 19
    :cond_c2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v2, v2, 0x2

    sget v4, Lcn/manstep/phonemirrorBox/floatwindow/c;->r:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x32

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 20
    :goto_cf
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_dc

    .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7f6

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_e2

    .line 22
    :cond_dc
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 23
    :goto_e2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x40028

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 24
    iput v8, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x33

    .line 25
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 26
    sget v2, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 27
    sget v2, Lcn/manstep/phonemirrorBox/floatwindow/c;->r:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 28
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/floatwindow/c;->getWindowAnimationStyle()I

    move-result v2

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 29
    :goto_ff
    :try_start_ff
    iget p1, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_112

    .line 30
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v2, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 31
    :cond_112
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iput-boolean v8, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_11b} :catch_11c

    goto :goto_135

    :catch_11c
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatWindowManager,createBigWindow: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 34
    :goto_135
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->i:Z

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->b(Z)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/floatwindow/e;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method private c(Landroid/content/Context;Z)V
    .registers 8

    const-string v0, "FloatWindowManager,createSmallWindow: \n"

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->h(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    .line 2
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->m(Landroid/content/Context;)V

    .line 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    if-nez v2, :cond_14

    .line 4
    new-instance v2, Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-direct {v2, p1}, Lcn/manstep/phonemirrorBox/floatwindow/f;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    .line 5
    :cond_14
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    .line 6
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-virtual {v4, p1, v2, p2}, Lcn/manstep/phonemirrorBox/floatwindow/f;->f(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Z)V

    goto :goto_54

    .line 7
    :cond_1f
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/floatwindow/f;->e()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;

    .line 8
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-virtual {v4, p1, v2, p2}, Lcn/manstep/phonemirrorBox/floatwindow/f;->f(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Z)V

    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_39

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7f6

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_3f

    .line 11
    :cond_39
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 12
    :goto_3f
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const p2, 0x10028

    .line 13
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p2, 0x33

    .line 14
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 15
    sget p2, Lcn/manstep/phonemirrorBox/floatwindow/f;->v:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 16
    sget p2, Lcn/manstep/phonemirrorBox/floatwindow/f;->w:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 17
    :goto_54
    :try_start_54
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iput-boolean v3, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_5d} :catch_76
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_5e

    goto :goto_8d

    :catch_5e
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_8d

    :catch_76
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 21
    :goto_8d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createSmallWindow: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloatWindowManager"

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/floatwindow/e;->v()V

    return-void
.end method

.method public static g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/floatwindow/e;->k:Lcn/manstep/phonemirrorBox/floatwindow/e;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/floatwindow/e;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/floatwindow/e;->k:Lcn/manstep/phonemirrorBox/floatwindow/e;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/floatwindow/e;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/floatwindow/e;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/floatwindow/e;->k:Lcn/manstep/phonemirrorBox/floatwindow/e;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcn/manstep/phonemirrorBox/floatwindow/e;->k:Lcn/manstep/phonemirrorBox/floatwindow/e;

    return-object v0
.end method

.method private h(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->h:Landroid/view/WindowManager;

    if-nez v0, :cond_e

    const-string v0, "window"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->h:Landroid/view/WindowManager;

    .line 3
    :cond_e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->h:Landroid/view/WindowManager;

    return-object p1
.end method

.method private l(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    if-eqz v0, :cond_2e

    .line 2
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->h(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p1

    .line 3
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z

    if-eqz v0, :cond_2e

    .line 4
    :try_start_c
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_2e

    :catch_15
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatWindowManager,removeBigWindow: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private m(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    if-eqz v0, :cond_31

    .line 2
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/floatwindow/f;->j()V

    .line 3
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->h(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z

    if-eqz v0, :cond_31

    .line 5
    :try_start_f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_31

    :catch_18
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatWindowManager,removeSmallWindow: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public d()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->j:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public e()Landroid/graphics/Rect;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/floatwindow/e;->d()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 4
    aget v3, v1, v2

    const/4 v4, 0x1

    .line 5
    aget v1, v1, v4

    .line 6
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7
    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 8
    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3a

    :cond_39
    const/4 v4, 0x0

    .line 11
    :goto_3a
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/manstep/phonemirrorBox/u0/c;->i(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/manstep/phonemirrorBox/u0/c;->i(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    :cond_4c
    return-object v4
.end method

.method public f()Lcn/manstep/phonemirrorBox/floatwindow/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public j(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->l(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->m(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->e:Lcn/manstep/phonemirrorBox/floatwindow/c;

    .line 4
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z

    .line 6
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z

    return-void
.end method

.method public k(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->j(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->g:Landroid/view/WindowManager$LayoutParams;

    .line 3
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public n()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/floatwindow/f;->k()V

    :cond_7
    return-void
.end method

.method public o(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/floatwindow/f;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2
    :cond_b
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->k(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/floatwindow/e;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method public p(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/floatwindow/f;->getCurrentPosition()Landroid/graphics/Point;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smallWindowPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatWindowManager"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->d:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/floatwindow/f;->h()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-eq v0, p2, :cond_4b

    .line 4
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->k(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050011

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/floatwindow/e;->c(Landroid/content/Context;Z)V

    :cond_4b
    return-void
.end method

.method public q(Landroid/app/Activity;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public r(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->i:Z

    return-void
.end method

.method public s(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->m(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public t(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->c:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->b:Z

    if-nez v0, :cond_b

    .line 2
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->b(Landroid/content/Context;)V

    :cond_b
    return-void
.end method

.method public u(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->l(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method public v()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->a:Landroid/graphics/Point;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/e;->f:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
