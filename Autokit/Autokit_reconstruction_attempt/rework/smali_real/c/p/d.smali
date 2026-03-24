.class public Lc/p/d;
.super Lc/p/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/p/d$b;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lc/p/j0;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lc/p/j0;->h0(I)V

    return-void
.end method

.method private i0(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 6

    cmpl-float v0, p2, p3

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_6
    invoke-static {p1, p2}, Lc/p/c0;->g(Landroid/view/View;F)V

    .line 2
    sget-object p2, Lc/p/c0;->b:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 3
    new-instance p3, Lc/p/d$b;

    invoke-direct {p3, p1}, Lc/p/d$b;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    new-instance p3, Lc/p/d$a;

    invoke-direct {p3, p0, p1}, Lc/p/d$a;-><init>(Lc/p/d;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lc/p/m;->a(Lc/p/m$f;)Lc/p/m;

    return-object p2
.end method

.method private static j0(Lc/p/s;F)F
    .registers 3

    if-eqz p0, :cond_12

    .line 1
    iget-object p0, p0, Lc/p/s;->a:Ljava/util/Map;

    const-string v0, "android:fade:transitionAlpha"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_12

    .line 2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_12
    return p1
.end method


# virtual methods
.method public d0(Landroid/view/ViewGroup;Landroid/view/View;Lc/p/s;Lc/p/s;)Landroid/animation/Animator;
    .registers 6

    const/4 p1, 0x0

    .line 1
    invoke-static {p3, p1}, Lc/p/d;->j0(Lc/p/s;F)F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p4

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    move p1, p3

    .line 2
    :goto_d
    invoke-direct {p0, p2, p1, p4}, Lc/p/d;->i0(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public f0(Landroid/view/ViewGroup;Landroid/view/View;Lc/p/s;Lc/p/s;)Landroid/animation/Animator;
    .registers 5

    .line 1
    invoke-static {p2}, Lc/p/c0;->e(Landroid/view/View;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p3, p1}, Lc/p/d;->j0(Lc/p/s;F)F

    move-result p1

    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p2, p1, p3}, Lc/p/d;->i0(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public i(Lc/p/s;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lc/p/j0;->i(Lc/p/s;)V

    .line 2
    iget-object v0, p1, Lc/p/s;->a:Ljava/util/Map;

    iget-object p1, p1, Lc/p/s;->b:Landroid/view/View;

    .line 3
    invoke-static {p1}, Lc/p/c0;->c(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:fade:transitionAlpha"

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
