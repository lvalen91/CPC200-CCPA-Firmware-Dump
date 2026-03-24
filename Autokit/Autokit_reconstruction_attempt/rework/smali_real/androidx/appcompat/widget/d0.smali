.class Landroidx/appcompat/widget/d0;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/d0$b;,
        Landroidx/appcompat/widget/d0$a;
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Rect;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/reflect/Field;

.field private i:Landroidx/appcompat/widget/d0$a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroidx/core/view/z;

.field private n:Landroidx/core/widget/f;

.field o:Landroidx/appcompat/widget/d0$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    sget v0, Lc/a/a;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->b:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/appcompat/widget/d0;->c:I

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/d0;->d:I

    .line 5
    iput p1, p0, Landroidx/appcompat/widget/d0;->e:I

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/d0;->f:I

    .line 7
    iput-boolean p2, p0, Landroidx/appcompat/widget/d0;->k:Z

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 9
    :try_start_1b
    const-class p1, Landroid/widget/AbsListView;

    const-string p2, "mIsChildViewEnabled"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/d0;->h:Ljava/lang/reflect/Field;

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_2e
    return-void
.end method

.method private a()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/d0;->l:Z

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setPressed(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/d0;->drawableStateChanged()V

    .line 4
    iget v1, p0, Landroidx/appcompat/widget/d0;->g:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->m:Landroidx/core/view/z;

    if-eqz v0, :cond_23

    .line 7
    invoke-virtual {v0}, Landroidx/core/view/z;->b()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/d0;->m:Landroidx/core/view/z;

    :cond_23
    return-void
.end method

.method private b(Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/d0;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_16
    return-void
.end method

.method private f(ILandroid/view/View;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroidx/appcompat/widget/d0;->c:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroidx/appcompat/widget/d0;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroidx/appcompat/widget/d0;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroidx/appcompat/widget/d0;->f:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 7
    :try_start_31
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, v0, :cond_56

    .line 9
    iget-object p2, p0, Landroidx/appcompat/widget/d0;->h:Ljava/lang/reflect/Field;

    if-nez v0, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_56

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->refreshDrawableState()V
    :try_end_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_56
    :goto_56
    return-void
.end method

.method private g(ILandroid/view/View;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v3, -0x1

    if-eq p1, v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_13

    .line 2
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3
    :cond_13
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/d0;->f(ILandroid/view/View;)V

    if-eqz v3, :cond_30

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/d0;->b:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 8
    invoke-static {v0, p2, p1}, Landroidx/core/graphics/drawable/a;->k(Landroid/graphics/drawable/Drawable;FF)V

    :cond_30
    return-void
.end method

.method private h(ILandroid/view/View;FF)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/d0;->g(ILandroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    .line 3
    invoke-static {p2, p3, p4}, Landroidx/core/graphics/drawable/a;->k(Landroid/graphics/drawable/Drawable;FF)V

    :cond_f
    return-void
.end method

.method private i(Landroid/view/View;IFF)V
    .registers 11

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/d0;->l:Z

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_c

    .line 3
    invoke-virtual {p0, p3, p4}, Landroid/widget/ListView;->drawableHotspotChanged(FF)V

    .line 4
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_15

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setPressed(Z)V

    .line 6
    :cond_15
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 7
    iget v1, p0, Landroidx/appcompat/widget/d0;->g:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_34

    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_34

    if-eq v1, p1, :cond_34

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 10
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 11
    :cond_34
    iput p2, p0, Landroidx/appcompat/widget/d0;->g:I

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p4, v3

    .line 14
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_4b

    .line 15
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 16
    :cond_4b
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_54

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 18
    :cond_54
    invoke-direct {p0, p2, p1, p3, p4}, Landroidx/appcompat/widget/d0;->h(ILandroid/view/View;FF)V

    .line 19
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/d0;->setSelectorEnabled(Z)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/ListView;->refreshDrawableState()V

    return-void
.end method

.method private j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->l:Z

    return v0
.end method

.method private k()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/d0;->j()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/widget/ListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_19
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->i:Landroidx/appcompat/widget/d0$a;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d0$a;->c(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public d(IIIII)I
    .registers 16

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p2

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p3

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_18

    add-int/2addr p2, p3

    return p2

    :cond_18
    add-int/2addr p2, p3

    const/4 p3, 0x0

    if-lez v0, :cond_1f

    if-eqz v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 6
    :goto_20
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_29
    if-ge v4, v1, :cond_75

    .line 7
    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v5, :cond_33

    move-object v6, v3

    move v5, v8

    .line 8
    :cond_33
    invoke-interface {v2, v4, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_44

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 11
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :cond_44
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v8, :cond_4f

    const/high16 v9, 0x40000000    # 2.0f

    .line 13
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_53

    .line 14
    :cond_4f
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 15
    :goto_53
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 16
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    if-lez v4, :cond_5c

    add-int/2addr p2, v0

    .line 17
    :cond_5c
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p2, v8

    if-lt p2, p4, :cond_6d

    if-ltz p5, :cond_6c

    if-le v4, p5, :cond_6c

    if-lez v7, :cond_6c

    if-eq p2, p4, :cond_6c

    move p4, v7

    :cond_6c
    return p4

    :cond_6d
    if-ltz p5, :cond_72

    if-lt v4, p5, :cond_72

    move v7, p2

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_75
    return p2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/d0;->c(Landroid/graphics/Canvas;)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/d0;->setSelectorEnabled(Z)V

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/d0;->k()V

    return-void
.end method

.method public e(Landroid/view/MotionEvent;I)Z
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v0, v3, :cond_14

    const/4 p2, 0x3

    if-eq v0, p2, :cond_11

    :cond_e
    :goto_e
    const/4 p2, 0x0

    const/4 v3, 0x1

    goto :goto_46

    :cond_11
    :goto_11
    const/4 p2, 0x0

    const/4 v3, 0x0

    goto :goto_46

    :cond_14
    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    .line 2
    :goto_17
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_1e

    goto :goto_11

    .line 3
    :cond_1e
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    .line 5
    invoke-virtual {p0, v4, p2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_31

    const/4 p2, 0x1

    goto :goto_46

    .line 6
    :cond_31
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    int-to-float p2, p2

    .line 7
    invoke-direct {p0, v3, v5, v4, p2}, Landroidx/appcompat/widget/d0;->i(Landroid/view/View;IFF)V

    if-ne v0, v2, :cond_e

    .line 8
    invoke-direct {p0, v3, v5}, Landroidx/appcompat/widget/d0;->b(Landroid/view/View;I)V

    goto :goto_e

    :goto_46
    if-eqz v3, :cond_4a

    if-eqz p2, :cond_4d

    .line 9
    :cond_4a
    invoke-direct {p0}, Landroidx/appcompat/widget/d0;->a()V

    :cond_4d
    if-eqz v3, :cond_65

    .line 10
    iget-object p2, p0, Landroidx/appcompat/widget/d0;->n:Landroidx/core/widget/f;

    if-nez p2, :cond_5a

    .line 11
    new-instance p2, Landroidx/core/widget/f;

    invoke-direct {p2, p0}, Landroidx/core/widget/f;-><init>(Landroid/widget/ListView;)V

    iput-object p2, p0, Landroidx/appcompat/widget/d0;->n:Landroidx/core/widget/f;

    .line 12
    :cond_5a
    iget-object p2, p0, Landroidx/appcompat/widget/d0;->n:Landroidx/core/widget/f;

    invoke-virtual {p2, v2}, Landroidx/core/widget/a;->m(Z)Landroidx/core/widget/a;

    .line 13
    iget-object p2, p0, Landroidx/appcompat/widget/d0;->n:Landroidx/core/widget/f;

    invoke-virtual {p2, p0, p1}, Landroidx/core/widget/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_6c

    .line 14
    :cond_65
    iget-object p1, p0, Landroidx/appcompat/widget/d0;->n:Landroidx/core/widget/f;

    if-eqz p1, :cond_6c

    .line 15
    invoke-virtual {p1, v1}, Landroidx/core/widget/a;->m(Z)Landroidx/core/widget/a;

    :cond_6c
    :goto_6c
    return v3
.end method

.method public hasFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->k:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->k:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->k:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isInTouchMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->k:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/appcompat/widget/d0;->j:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;

    .line 2
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_b

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_21

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;

    if-nez v1, :cond_21

    .line 5
    new-instance v1, Landroidx/appcompat/widget/d0$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/d0$b;-><init>(Landroidx/appcompat/widget/d0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;

    .line 6
    invoke-virtual {v1}, Landroidx/appcompat/widget/d0$b;->b()V

    .line 7
    :cond_21
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_32

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2e

    goto :goto_32

    .line 8
    :cond_2e
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_67

    .line 9
    :cond_32
    :goto_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p1

    if-eq p1, v3, :cond_67

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_67

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 14
    :cond_64
    invoke-direct {p0}, Landroidx/appcompat/widget/d0;->k()V

    :cond_67
    :goto_67
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_17

    .line 2
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/d0;->g:I

    .line 3
    :goto_17
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->o:Landroidx/appcompat/widget/d0$b;

    if-eqz v0, :cond_1e

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/d0$b;->a()V

    .line 5
    :cond_1e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method setListSelectionHidden(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/d0;->j:Z

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    new-instance v0, Landroidx/appcompat/widget/d0$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/d0$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/d0;->i:Landroidx/appcompat/widget/d0$a;

    .line 2
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_18

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5
    :cond_18
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroidx/appcompat/widget/d0;->c:I

    .line 6
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroidx/appcompat/widget/d0;->d:I

    .line 7
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroidx/appcompat/widget/d0;->e:I

    .line 8
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroidx/appcompat/widget/d0;->f:I

    return-void
.end method
