.class Landroidx/appcompat/widget/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static k:Landroidx/appcompat/widget/x0;

.field private static l:Landroidx/appcompat/widget/x0;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Ljava/lang/CharSequence;

.field private final d:I

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;

.field private g:I

.field private h:I

.field private i:Landroidx/appcompat/widget/y0;

.field private j:Z


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/appcompat/widget/x0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/x0$a;-><init>(Landroidx/appcompat/widget/x0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/x0;->e:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Landroidx/appcompat/widget/x0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/x0$b;-><init>(Landroidx/appcompat/widget/x0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/x0;->f:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    .line 5
    iput-object p2, p0, Landroidx/appcompat/widget/x0;->c:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroidx/core/view/w;->c(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/x0;->d:I

    .line 8
    invoke-direct {p0}, Landroidx/appcompat/widget/x0;->b()V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/x0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .registers 2

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/x0;->g:I

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/x0;->h:I

    return-void
.end method

.method private d()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/x0;->e:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static e(Landroidx/appcompat/widget/x0;)V
    .registers 2

    .line 1
    sget-object v0, Landroidx/appcompat/widget/x0;->k:Landroidx/appcompat/widget/x0;

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {v0}, Landroidx/appcompat/widget/x0;->a()V

    .line 3
    :cond_7
    sput-object p0, Landroidx/appcompat/widget/x0;->k:Landroidx/appcompat/widget/x0;

    if-eqz p0, :cond_e

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/x0;->d()V

    :cond_e
    return-void
.end method

.method public static f(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/widget/x0;->k:Landroidx/appcompat/widget/x0;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    if-ne v0, p0, :cond_c

    .line 2
    invoke-static {v1}, Landroidx/appcompat/widget/x0;->e(Landroidx/appcompat/widget/x0;)V

    .line 3
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4
    sget-object p1, Landroidx/appcompat/widget/x0;->l:Landroidx/appcompat/widget/x0;

    if-eqz p1, :cond_1d

    iget-object v0, p1, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    if-ne v0, p0, :cond_1d

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/x0;->c()V

    .line 6
    :cond_1d
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_2d

    .line 9
    :cond_28
    new-instance v0, Landroidx/appcompat/widget/x0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/x0;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_2d
    return-void
.end method

.method private h(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 3
    iget v1, p0, Landroidx/appcompat/widget/x0;->g:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/x0;->d:I

    if-gt v1, v2, :cond_24

    iget v1, p0, Landroidx/appcompat/widget/x0;->h:I

    sub-int v1, p1, v1

    .line 4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/x0;->d:I

    if-gt v1, v2, :cond_24

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_24
    iput v0, p0, Landroidx/appcompat/widget/x0;->g:I

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/x0;->h:I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method c()V
    .registers 3

    .line 1
    sget-object v0, Landroidx/appcompat/widget/x0;->l:Landroidx/appcompat/widget/x0;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_18

    .line 2
    sput-object v1, Landroidx/appcompat/widget/x0;->l:Landroidx/appcompat/widget/x0;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->i:Landroidx/appcompat/widget/y0;

    if-eqz v0, :cond_18

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->c()V

    .line 5
    iput-object v1, p0, Landroidx/appcompat/widget/x0;->i:Landroidx/appcompat/widget/y0;

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/x0;->b()V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 8
    :cond_18
    sget-object v0, Landroidx/appcompat/widget/x0;->k:Landroidx/appcompat/widget/x0;

    if-ne v0, p0, :cond_1f

    .line 9
    invoke-static {v1}, Landroidx/appcompat/widget/x0;->e(Landroidx/appcompat/widget/x0;)V

    .line 10
    :cond_1f
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/x0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method g(Z)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->S(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroidx/appcompat/widget/x0;->e(Landroidx/appcompat/widget/x0;)V

    .line 3
    sget-object v0, Landroidx/appcompat/widget/x0;->l:Landroidx/appcompat/widget/x0;

    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/x0;->c()V

    .line 5
    :cond_14
    sput-object p0, Landroidx/appcompat/widget/x0;->l:Landroidx/appcompat/widget/x0;

    .line 6
    iput-boolean p1, p0, Landroidx/appcompat/widget/x0;->j:Z

    .line 7
    new-instance v1, Landroidx/appcompat/widget/y0;

    iget-object p1, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/x0;->i:Landroidx/appcompat/widget/y0;

    .line 8
    iget-object v2, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    iget v3, p0, Landroidx/appcompat/widget/x0;->g:I

    iget v4, p0, Landroidx/appcompat/widget/x0;->h:I

    iget-boolean v5, p0, Landroidx/appcompat/widget/x0;->j:Z

    iget-object v6, p0, Landroidx/appcompat/widget/x0;->c:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/y0;->e(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 10
    iget-boolean p1, p0, Landroidx/appcompat/widget/x0;->j:Z

    if-eqz p1, :cond_3e

    const-wide/16 v0, 0x9c4

    goto :goto_57

    .line 11
    :cond_3e
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/v;->M(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_4f

    const-wide/16 v0, 0xbb8

    .line 12
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    goto :goto_55

    :cond_4f
    const-wide/16 v0, 0x3a98

    .line 13
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    :goto_55
    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 14
    :goto_57
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/x0;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/x0;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->i:Landroidx/appcompat/widget/y0;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Landroidx/appcompat/widget/x0;->j:Z

    if-eqz p1, :cond_a

    return v0

    .line 2
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    .line 5
    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_38

    const/16 p2, 0xa

    if-eq p1, p2, :cond_31

    goto :goto_4d

    .line 6
    :cond_31
    invoke-direct {p0}, Landroidx/appcompat/widget/x0;->b()V

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/x0;->c()V

    goto :goto_4d

    .line 8
    :cond_38
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Landroidx/appcompat/widget/x0;->i:Landroidx/appcompat/widget/y0;

    if-nez p1, :cond_4d

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/x0;->h(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 9
    invoke-static {p0}, Landroidx/appcompat/widget/x0;->e(Landroidx/appcompat/widget/x0;)V

    :cond_4d
    :goto_4d
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/x0;->g:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/appcompat/widget/x0;->h:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/x0;->g(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/x0;->c()V

    return-void
.end method
