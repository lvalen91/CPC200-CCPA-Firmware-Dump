.class public Lcn/manstep/phonemirrorBox/KeyLearnActivity;
.super Lcn/manstep/phonemirrorBox/k;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;
.implements Lcn/manstep/phonemirrorBox/n$c;


# static fields
.field private static final J:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private A:I

.field private B:Landroid/media/AudioManager;

.field private final C:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private D:Landroid/content/ComponentName;

.field private E:I

.field private F:Lcn/manstep/phonemirrorBox/n;

.field private G:I

.field private H:Z

.field private I:I

.field private t:Lcn/manstep/phonemirrorBox/b;

.field private u:[Ljava/lang/String;

.field private v:Z

.field private w:I

.field private x:[I

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const v0, 0x5cd

    invoke-static {v0}, Lcom/stub/StubApp;->interface11(I)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/k;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->u:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->w:I

    .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->x:[I

    .line 6
    iput v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->z:I

    .line 7
    iput v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    .line 8
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->B:Landroid/media/AudioManager;

    .line 9
    new-instance v2, Lcn/manstep/phonemirrorBox/KeyLearnActivity$a;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/KeyLearnActivity$a;-><init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->C:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 10
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->D:Landroid/content/ComponentName;

    .line 11
    iput v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->E:I

    .line 12
    iput v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G:I

    .line 13
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->H:Z

    .line 14
    iput v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    return-void
.end method

.method static synthetic A0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    return p1
.end method

.method private B0(Landroid/widget/LinearLayout;I)V
    .registers 8

    if-eqz p1, :cond_71

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/b;->e()I

    move-result v0

    if-ne p2, v0, :cond_b

    goto :goto_71

    .line 2
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyLearnActivity, addInvisibleButton: count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, p2, :cond_71

    .line 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/b;->e()I

    move-result v3

    sub-int/2addr v3, p2

    add-int/2addr v3, v1

    invoke-virtual {v2, p0, v3}, Lcn/manstep/phonemirrorBox/b;->c(Landroid/content/Context;I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    iget-boolean v4, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    invoke-virtual {v3, p0, v4}, Lcn/manstep/phonemirrorBox/b;->b(Landroid/content/Context;Z)I

    move-result v3

    .line 5
    iget-boolean v4, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->H:Z

    if-eqz v4, :cond_49

    .line 6
    iget v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G:I

    mul-int/lit8 v3, v2, 0x2

    .line 7
    div-int/lit8 v3, v3, 0x5

    .line 8
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    iget-boolean v4, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    invoke-virtual {v3, p0, v4}, Lcn/manstep/phonemirrorBox/b;->b(Landroid/content/Context;Z)I

    move-result v3

    .line 9
    :cond_49
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 10
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 11
    invoke-static {p0, v2}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v3, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 12
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x4

    .line 13
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 14
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_71
    :goto_71
    return-void
.end method

.method private C0(Landroid/widget/LinearLayout;)V
    .registers 4

    if-eqz p1, :cond_17

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_17
    return-void
.end method

.method private D0(Landroid/widget/Button;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3c

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 6
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->D0(Landroid/widget/Button;)V

    :cond_3c
    return-void
.end method

.method private static E0()I
    .registers 3

    .line 1
    :cond_0
    sget-object v0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const v2, 0xffffff

    if-le v1, v2, :cond_e

    const/4 v1, 0x1

    .line 2
    :cond_e
    sget-object v2, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateViewId: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyLearnActivity"

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private F0(Landroid/widget/LinearLayout;)I
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    .line 2
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    if-gtz p1, :cond_4f

    .line 6
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 7
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 9
    iget-boolean v4, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    if-eqz v4, :cond_48

    .line 10
    iget v2, p0, Lcn/manstep/phonemirrorBox/k;->f:I

    if-lez v2, :cond_45

    move p1, v2

    goto :goto_4f

    :cond_45
    iget p1, p1, Landroid/graphics/Point;->x:I

    goto :goto_4f

    .line 11
    :cond_48
    iget p1, p0, Lcn/manstep/phonemirrorBox/k;->e:I

    if-lez p1, :cond_4d

    goto :goto_4f

    :cond_4d
    iget p1, v2, Landroid/graphics/Point;->y:I

    :cond_4f
    :goto_4f
    const/high16 v2, 0x42000000    # 32.0f

    .line 12
    invoke-static {p0, v2}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr p1, v2

    .line 13
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/b;->e()I

    move-result v2

    if-eqz v2, :cond_6e

    sub-int/2addr p1, v3

    const/high16 v3, 0x41200000    # 10.0f

    .line 14
    invoke-static {p0, v3}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr p1, v3

    sub-int/2addr p1, v0

    mul-int v1, v1, v2

    sub-int/2addr p1, v1

    div-int/2addr p1, v2

    return p1

    :cond_6e
    const/4 p1, 0x0

    return p1
.end method

.method private G0(Landroid/widget/LinearLayout;)V
    .registers 11

    const v0, 0x7f0901f6

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init: layout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "KeyLearnActivity"

    invoke-static {v6, v3}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    const/4 v7, 0x0

    invoke-virtual {v3, p0, v7}, Lcn/manstep/phonemirrorBox/b;->c(Landroid/content/Context;I)I

    move-result v3

    if-nez v3, :cond_4e

    const/4 v7, 0x1

    :cond_4e
    iput-boolean v7, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->H:Z

    if-eqz v7, :cond_f6

    .line 5
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->F0(Landroid/widget/LinearLayout;)I

    move-result v3

    iput v3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G:I

    .line 6
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    iget-boolean v7, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    invoke-virtual {v3, p0, v7}, Lcn/manstep/phonemirrorBox/b;->b(Landroid/content/Context;Z)I

    move-result v3

    if-lez v0, :cond_75

    .line 7
    div-int/lit8 v7, v0, 0x5

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 8
    iget v7, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G:I

    mul-int v7, v7, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    div-int/2addr v7, v0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9
    :cond_75
    iput v3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: button="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G:I

    int-to-float v7, v7

    mul-float v7, v7, v2

    iget v8, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    const/high16 v7, 0x41000000    # 8.0f

    if-eqz v0, :cond_b8

    .line 12
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    invoke-static {p0, v7}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    goto :goto_c7

    :cond_b8
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_c7

    .line 13
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    invoke-static {p0, v7}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    .line 14
    :cond_c7
    :goto_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    iget v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_f6
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->J0(Landroid/widget/LinearLayout;)V

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->a()Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->c(Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;)V

    .line 17
    new-instance p1, Lcn/manstep/phonemirrorBox/n;

    invoke-direct {p1, p0, p0}, Lcn/manstep/phonemirrorBox/n;-><init>(Landroid/content/Context;Lcn/manstep/phonemirrorBox/n$c;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->F:Lcn/manstep/phonemirrorBox/n;

    .line 18
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/n;->m()V

    return-void
.end method

.method private H0()V
    .registers 3

    const v0, 0x7f090072

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/KeyLearnActivity$c;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/KeyLearnActivity$c;-><init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    const v0, 0x7f090077

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/KeyLearnActivity$d;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/KeyLearnActivity$d;-><init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private I0(ILandroid/widget/Button;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->x:[I

    aget p1, v0, p1

    .line 2
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->j(Landroid/content/Context;I)I

    move-result v0

    .line 3
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->e(Landroid/content/Context;I)Z

    move-result v7

    const/16 v1, 0xff

    .line 4
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v8, 0x0

    if-eqz v0, :cond_59

    .line 5
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/b0;->g(Landroid/content/Context;I)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    const/4 v4, 0x0

    if-ne v1, p1, :cond_24

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    :goto_25
    move-object v1, v2

    move-object v2, p0

    move-object v3, p2

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcn/manstep/phonemirrorBox/b;->f(Landroid/content/Context;Landroid/widget/Button;ZZZ)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyLearnActivity,initCmdButton: cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", keyCode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",btn==="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",bcanback="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto :goto_63

    .line 8
    :cond_59
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/manstep/phonemirrorBox/b;->f(Landroid/content/Context;Landroid/widget/Button;ZZZ)V

    .line 9
    :goto_63
    invoke-virtual {p2, v8}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 p1, 0x11

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setGravity(I)V

    .line 11
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->H:Z

    if-eqz p1, :cond_85

    .line 12
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    if-nez p1, :cond_81

    .line 13
    invoke-virtual {p2}, Landroid/widget/Button;->getTextSize()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    invoke-virtual {p2, v8, p1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 14
    :cond_81
    invoke-direct {p0, p2}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->D0(Landroid/widget/Button;)V

    return-void

    .line 15
    :cond_85
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_90

    const/high16 p1, 0x41800000    # 16.0f

    .line 16
    invoke-virtual {p2, v0, p1}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_95

    :cond_90
    const/high16 p1, 0x41600000    # 14.0f

    .line 17
    invoke-virtual {p2, v0, p1}, Landroid/widget/Button;->setTextSize(IF)V

    :goto_95
    return-void
.end method

.method private J0(Landroid/widget/LinearLayout;)V
    .registers 15

    const/high16 v0, 0x41200000    # 10.0f

    .line 1
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->u:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_e
    if-ge v5, v2, :cond_9c

    aget-object v8, v1, v5

    .line 3
    iget-object v9, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    invoke-virtual {v9}, Lcn/manstep/phonemirrorBox/b;->e()I

    move-result v9

    rem-int v9, v6, v9

    if-nez v9, :cond_3e

    .line 4
    invoke-direct {p0, v4}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->C0(Landroid/widget/LinearLayout;)V

    .line 5
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v9, v0

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v9, v9, v10

    float-to-int v9, v9

    .line 7
    invoke-virtual {v7, v9, v3, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 10
    invoke-direct {p0, v4}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->C0(Landroid/widget/LinearLayout;)V

    const/4 v7, 0x1

    :cond_3e
    add-int/lit8 v9, v6, 0x1

    .line 11
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_47

    goto :goto_97

    .line 12
    :cond_47
    iget-object v10, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    invoke-virtual {v10, p0, v7}, Lcn/manstep/phonemirrorBox/b;->c(Landroid/content/Context;I)I

    move-result v10

    .line 13
    iget-object v11, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    iget-boolean v12, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    invoke-virtual {v11, p0, v12}, Lcn/manstep/phonemirrorBox/b;->b(Landroid/content/Context;Z)I

    move-result v11

    .line 14
    iget-boolean v12, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->H:Z

    if-eqz v12, :cond_5d

    .line 15
    iget v10, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G:I

    .line 16
    iget v11, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I:I

    :cond_5d
    add-int/lit8 v7, v7, 0x1

    .line 17
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 18
    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 19
    invoke-virtual {v12, v0, v3, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 20
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x40c00000    # 6.0f

    .line 21
    invoke-static {p0, v11}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v11

    .line 22
    invoke-virtual {v10, v11, v11, v11, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 23
    invoke-virtual {v10, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v10, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-direct {p0, v6, v10}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->I0(ILandroid/widget/Button;)V

    if-eqz v4, :cond_97

    .line 26
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 27
    new-instance v8, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;

    invoke-direct {v8, p0, v6, v10}, Lcn/manstep/phonemirrorBox/KeyLearnActivity$f;-><init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;ILandroid/widget/Button;)V

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance v8, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;

    invoke-direct {v8, p0, v6, v10}, Lcn/manstep/phonemirrorBox/KeyLearnActivity$g;-><init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;ILandroid/widget/Button;)V

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_97
    :goto_97
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto/16 :goto_e

    .line 29
    :cond_9c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/b;->e()I

    move-result p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/b;->e()I

    move-result v0

    rem-int/2addr v6, v0

    sub-int/2addr p1, v6

    invoke-direct {p0, v4, p1}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->B0(Landroid/widget/LinearLayout;I)V

    .line 30
    invoke-direct {p0, v4}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->C0(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private K0(IZ)Z
    .registers 6

    if-eqz p2, :cond_7

    .line 1
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->g(Landroid/content/Context;I)I

    move-result p2

    goto :goto_b

    .line 2
    :cond_7
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->f(Landroid/content/Context;I)I

    move-result p2

    .line 3
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkKeyCodeOccupied: cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bLongPress="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyLearnActivity"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_65

    .line 4
    invoke-static {p0, p2}, Lcn/manstep/phonemirrorBox/b0;->j(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_3d

    return p1

    .line 5
    :cond_3d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->y:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, p1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p0, p2, p1}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :cond_65
    return p1
.end method

.method private M0(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->B:Landroid/media/AudioManager;

    if-nez v0, :cond_e

    const-string v0, "audio"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->B:Landroid/media/AudioManager;

    .line 3
    :cond_e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->B:Landroid/media/AudioManager;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->C:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method private N0()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->x:[I

    array-length v3, v2

    if-ge v1, v3, :cond_24

    .line 2
    aget v2, v2, v1

    invoke-static {p0, v2}, Lcn/manstep/phonemirrorBox/b0;->j(Landroid/content/Context;I)I

    move-result v2

    .line 3
    invoke-static {p0, v2, v0}, Lcn/manstep/phonemirrorBox/b0;->t(Landroid/content/Context;II)V

    .line 4
    invoke-static {p0, v2, v0}, Lcn/manstep/phonemirrorBox/b0;->u(Landroid/content/Context;II)V

    .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->x:[I

    aget v2, v2, v1

    invoke-static {p0, v2, v0}, Lcn/manstep/phonemirrorBox/b0;->v(Landroid/content/Context;II)V

    .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->x:[I

    aget v2, v2, v1

    invoke-static {p0, v2, v0}, Lcn/manstep/phonemirrorBox/b0;->s(Landroid/content/Context;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return-void
.end method

.method static synthetic n0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->M0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic o0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;Landroid/widget/LinearLayout;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->G0(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic p0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)Lcn/manstep/phonemirrorBox/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    return-object p0
.end method

.method static synthetic q0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->z:I

    return p1
.end method

.method static synthetic r0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->N0()V

    return-void
.end method

.method static synthetic s0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;Landroid/widget/LinearLayout;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->J0(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic t0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    return p0
.end method

.method static synthetic u0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    return p1
.end method

.method static synthetic v0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)[I
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->x:[I

    return-object p0
.end method

.method static synthetic w0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->E:I

    return p0
.end method

.method static synthetic x0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->E:I

    return p1
.end method

.method static synthetic y0()I
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->E0()I

    move-result v0

    return v0
.end method

.method static synthetic z0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->w:I

    return p1
.end method


# virtual methods
.method public E(IZ)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->w(IZ)V

    return-void
.end method

.method public L0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->B:Landroid/media/AudioManager;

    if-eqz v0, :cond_12

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->D:Landroid/content/ComponentName;

    if-eqz v1, :cond_12

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->B:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->D:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_12
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    const-string v0, "KeyLearnActivity"

    const-string v1, "onBackPressed"

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcn/manstep/phonemirrorBox/k;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->B:Landroid/media/AudioManager;

    if-eqz v0, :cond_12

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->D:Landroid/content/ComponentName;

    if-eqz v1, :cond_b

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 4
    :cond_b
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->B:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->C:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 5
    :cond_12
    invoke-static {}, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->a()Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->c(Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->F:Lcn/manstep/phonemirrorBox/n;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/n;->n()V

    .line 7
    invoke-super {p0}, Lcn/manstep/phonemirrorBox/k;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown: mControlCmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyLearnActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    if-nez v0, :cond_35

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_35
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->L0()V

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown: mControlCmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", repeatCount = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-lez v0, :cond_68

    .line 7
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    goto :goto_6b

    :cond_68
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    .line 9
    :goto_6b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp: mControlCmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyLearnActivity"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    if-nez v0, :cond_35

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_35
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->w:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_46

    .line 5
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    if-eqz v0, :cond_43

    .line 6
    iput v4, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->w:I

    goto :goto_7c

    .line 7
    :cond_43
    iput v3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->w:I

    goto :goto_7c

    .line 8
    :cond_46
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    if-eqz v2, :cond_63

    if-nez v0, :cond_7c

    const p1, 0x7f0f0129

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    :cond_63
    if-ne v0, v4, :cond_7c

    const p1, 0x7f0f012a

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    .line 11
    :cond_7c
    :goto_7c
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    const v2, 0x7f0f0139

    const-string v5, ", bLongPress="

    const-string v6, ", keyCode = "

    const-string v7, "onKeyUp: cmd = "

    if-eqz v0, :cond_d3

    .line 12
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->g(Landroid/content/Context;I)I

    move-result v0

    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_11d

    .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->y:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p0, p1, v3}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    .line 17
    :cond_d3
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/b0;->f(Landroid/content/Context;I)I

    move-result v0

    .line 18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_11d

    .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->y:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p0, p1, v3}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    .line 22
    :cond_11d
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->z:I

    if-eq p1, v0, :cond_13a

    .line 23
    iput p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->z:I

    const p1, 0x7f0f01bb

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    .line 25
    :cond_13a
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    invoke-static {p0, v0, p1}, Lcn/manstep/phonemirrorBox/b0;->v(Landroid/content/Context;II)V

    .line 26
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->w:I

    if-nez v0, :cond_149

    .line 27
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    invoke-static {p0, p1, v0}, Lcn/manstep/phonemirrorBox/b0;->t(Landroid/content/Context;II)V

    goto :goto_150

    :cond_149
    if-ne v0, v4, :cond_150

    .line 28
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    invoke-static {p0, p1, v0}, Lcn/manstep/phonemirrorBox/b0;->u(Landroid/content/Context;II)V

    .line 29
    :cond_150
    :goto_150
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->E:I

    if-eqz v0, :cond_16c

    .line 30
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_16c

    .line 31
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    const/4 v8, 0x0

    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->w:I

    if-ne v0, v4, :cond_166

    const/4 v9, 0x1

    goto :goto_167

    :cond_166
    const/4 v9, 0x0

    :goto_167
    const/4 v10, 0x0

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lcn/manstep/phonemirrorBox/b;->f(Landroid/content/Context;Landroid/widget/Button;ZZZ)V

    .line 32
    :cond_16c
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_17b

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_17b

    .line 33
    iput v3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->z:I

    .line 34
    iput v3, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    return v4

    .line 35
    :cond_17b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/manstep/phonemirrorBox/KeyLearnActivity$h;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/KeyLearnActivity$h;-><init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcn/manstep/phonemirrorBox/k;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->L0()V

    .line 3
    invoke-direct {p0, p0}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->M0(Landroid/content/Context;)V

    return-void
.end method

.method protected onStart()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcn/manstep/phonemirrorBox/k;->onStart()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/manstep/phonemirrorBox/KeyLearnActivity$e;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/KeyLearnActivity$e;-><init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onStop()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcn/manstep/phonemirrorBox/k;->onStop()V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "BgKeyValid"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/c0;->t(Landroid/content/Context;Z)V

    return-void
.end method

.method public w(IZ)V
    .registers 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyLearnActivity,onKeyCodeChanged: keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyLearnActivity,onKeyCodeChanged: isLongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bLongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyLearnActivity,onKeyCodeChanged: mControlCmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    if-nez v0, :cond_57

    return-void

    .line 5
    :cond_57
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->K0(IZ)Z

    move-result v0

    if-eqz v0, :cond_5e

    return-void

    .line 6
    :cond_5e
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->z:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_b3

    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    if-eq v0, p2, :cond_68

    goto :goto_b3

    :cond_68
    if-eqz p1, :cond_b2

    .line 7
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    invoke-static {p0, v0, p1}, Lcn/manstep/phonemirrorBox/b0;->v(Landroid/content/Context;II)V

    if-nez p2, :cond_77

    .line 8
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    invoke-static {p0, p1, v0}, Lcn/manstep/phonemirrorBox/b0;->t(Landroid/content/Context;II)V

    goto :goto_7c

    .line 9
    :cond_77
    iget v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    invoke-static {p0, p1, v0}, Lcn/manstep/phonemirrorBox/b0;->u(Landroid/content/Context;II)V

    .line 10
    :goto_7c
    iget p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/manstep/phonemirrorBox/b0;->s(Landroid/content/Context;IZ)V

    .line 11
    iget p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->E:I

    if-eqz p1, :cond_ac

    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/Button;

    .line 13
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->t:Lcn/manstep/phonemirrorBox/b;

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v3, p0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcn/manstep/phonemirrorBox/b;->f(Landroid/content/Context;Landroid/widget/Button;ZZZ)V

    const p1, 0x7f0f0127

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 15
    :cond_ac
    iput v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->z:I

    .line 16
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    .line 17
    iput v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->A:I

    :cond_b2
    return-void

    .line 18
    :cond_b3
    :goto_b3
    iput p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->z:I

    .line 19
    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->v:Z

    const p1, 0x7f0f01bb

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
