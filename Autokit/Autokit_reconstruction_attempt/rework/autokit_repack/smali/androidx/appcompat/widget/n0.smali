.class public Landroidx/appcompat/widget/n0;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/n0$c;,
        Landroidx/appcompat/widget/n0$b;,
        Landroidx/appcompat/widget/n0$d;
    }
.end annotation


# instance fields
.field b:Ljava/lang/Runnable;

.field private c:Landroidx/appcompat/widget/n0$c;

.field d:Landroidx/appcompat/widget/g0;

.field private e:Landroid/widget/Spinner;

.field private f:Z

.field g:I

.field h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method private b()Landroid/widget/Spinner;
    .registers 5

    .line 1
    new-instance v0, Landroidx/appcompat/widget/u;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lc/a/a;->actionDropDownStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Landroidx/appcompat/widget/g0$a;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/g0$a;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v0
.end method

.method private d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroid/widget/Spinner;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private e()V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/n0;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroid/widget/Spinner;

    if-nez v0, :cond_11

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/n0;->b()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroid/widget/Spinner;

    .line 4
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->d:Landroidx/appcompat/widget/g0;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_34

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroid/widget/Spinner;

    new-instance v1, Landroidx/appcompat/widget/n0$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/n0$b;-><init>(Landroidx/appcompat/widget/n0;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 8
    :cond_34
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_3e

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/lang/Runnable;

    .line 11
    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroid/widget/Spinner;

    iget v1, p0, Landroidx/appcompat/widget/n0;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private f()Z
    .registers 6

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/n0;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->d:Landroidx/appcompat/widget/g0;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/n0;->setTabSelected(I)V

    return v1
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->d:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_d
    new-instance v0, Landroidx/appcompat/widget/n0$a;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/n0$a;-><init>(Landroidx/appcompat/widget/n0;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method c(Landroidx/appcompat/app/a$c;Z)Landroidx/appcompat/widget/n0$d;
    .registers 5

    .line 1
    new-instance v0, Landroidx/appcompat/widget/n0$d;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/appcompat/widget/n0$d;-><init>(Landroidx/appcompat/widget/n0;Landroid/content/Context;Landroidx/appcompat/app/a$c;Z)V

    if-eqz p2, :cond_1b

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 p2, -0x1

    iget v1, p0, Landroidx/appcompat/widget/n0;->i:I

    invoke-direct {p1, p2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f

    :cond_1b
    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$c;

    if-nez p1, :cond_2a

    .line 6
    new-instance p1, Landroidx/appcompat/widget/n0$c;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/n0$c;-><init>(Landroidx/appcompat/widget/n0;)V

    iput-object p1, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$c;

    .line 7
    :cond_2a
    iget-object p1, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$c;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2f
    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc/a/o/a;->b(Landroid/content/Context;)Lc/a/o/a;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lc/a/o/a;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/n0;->setContentHeight(I)V

    .line 4
    invoke-virtual {p1}, Lc/a/o/a;->e()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/n0;->h:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    check-cast p2, Landroidx/appcompat/widget/n0$d;

    .line 2
    invoke-virtual {p2}, Landroidx/appcompat/widget/n0$d;->b()Landroidx/appcompat/app/a$c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/a$c;->e()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    .line 2
    :goto_d
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 3
    iget-object v4, p0, Landroidx/appcompat/widget/n0;->d:Landroidx/appcompat/widget/g0;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, v0, :cond_41

    if-eq p2, v2, :cond_1e

    const/high16 v5, -0x80000000

    if-ne p2, v5, :cond_41

    :cond_1e
    const/4 p2, 0x2

    if-le v4, p2, :cond_2f

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x3ecccccd    # 0.4f

    mul-float p2, p2, v4

    float-to-int p2, p2

    iput p2, p0, Landroidx/appcompat/widget/n0;->g:I

    goto :goto_36

    .line 5
    :cond_2f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    div-int/2addr v4, p2

    iput v4, p0, Landroidx/appcompat/widget/n0;->g:I

    .line 6
    :goto_36
    iget p2, p0, Landroidx/appcompat/widget/n0;->g:I

    iget v4, p0, Landroidx/appcompat/widget/n0;->h:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/n0;->g:I

    goto :goto_44

    :cond_41
    const/4 p2, -0x1

    .line 7
    iput p2, p0, Landroidx/appcompat/widget/n0;->g:I

    .line 8
    :goto_44
    iget p2, p0, Landroidx/appcompat/widget/n0;->i:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v3, :cond_51

    .line 9
    iget-boolean v2, p0, Landroidx/appcompat/widget/n0;->f:Z

    if-eqz v2, :cond_51

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    if-eqz v0, :cond_6d

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->d:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->d:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_69

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/widget/n0;->e()V

    goto :goto_70

    .line 13
    :cond_69
    invoke-direct {p0}, Landroidx/appcompat/widget/n0;->f()Z

    goto :goto_70

    .line 14
    :cond_6d
    invoke-direct {p0}, Landroidx/appcompat/widget/n0;->f()Z

    .line 15
    :goto_70
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 16
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_84

    if-eq v0, p1, :cond_84

    .line 18
    iget p1, p0, Landroidx/appcompat/widget/n0;->j:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n0;->setTabSelected(I)V

    :cond_84
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/n0;->f:Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/n0;->i:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .registers 7

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/n0;->j:I

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->d:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_22

    .line 3
    iget-object v3, p0, Landroidx/appcompat/widget/n0;->d:Landroidx/appcompat/widget/g0;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    .line 4
    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1f

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n0;->a(I)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 6
    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->e:Landroid/widget/Spinner;

    if-eqz v0, :cond_2b

    if-ltz p1, :cond_2b

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2b
    return-void
.end method
