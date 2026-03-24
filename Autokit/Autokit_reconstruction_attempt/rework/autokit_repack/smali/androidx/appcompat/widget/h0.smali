.class public Landroidx/appcompat/widget/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/h0$d;,
        Landroidx/appcompat/widget/h0$e;,
        Landroidx/appcompat/widget/h0$f;,
        Landroidx/appcompat/widget/h0$b;,
        Landroidx/appcompat/widget/h0$c;
    }
.end annotation


# static fields
.field private static G:Ljava/lang/reflect/Method;

.field private static H:Ljava/lang/reflect/Method;

.field private static I:Ljava/lang/reflect/Method;


# instance fields
.field private final A:Landroidx/appcompat/widget/h0$b;

.field final B:Landroid/os/Handler;

.field private final C:Landroid/graphics/Rect;

.field private D:Landroid/graphics/Rect;

.field private E:Z

.field F:Landroid/widget/PopupWindow;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ListAdapter;

.field d:Landroidx/appcompat/widget/d0;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Z

.field p:I

.field private q:Landroid/view/View;

.field private r:I

.field private s:Landroid/database/DataSetObserver;

.field private t:Landroid/view/View;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/widget/AdapterView$OnItemClickListener;

.field private w:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final x:Landroidx/appcompat/widget/h0$f;

.field private final y:Landroidx/appcompat/widget/h0$e;

.field private final z:Landroidx/appcompat/widget/h0$d;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-gt v0, v3, :cond_2a

    .line 2
    :try_start_8
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setClipToScreenEnabled"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/h0;->G:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_18} :catch_18

    .line 3
    :catch_18
    :try_start_18
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setEpicenterBounds"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/h0;->I:Ljava/lang/reflect/Method;
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    nop

    .line 4
    :cond_2a
    :goto_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v0, v3, :cond_4a

    .line 5
    :try_start_30
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "getMaxAvailableHeight"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v4, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/h0;->H:Ljava/lang/reflect/Method;
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_30 .. :try_end_4a} :catch_4a

    :catch_4a
    :cond_4a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget v0, Lc/a/a;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/h0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/h0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 4
    iput v0, p0, Landroidx/appcompat/widget/h0;->e:I

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/h0;->f:I

    const/16 v0, 0x3ea

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/h0;->i:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/h0;->m:I

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/h0;->n:Z

    .line 9
    iput-boolean v0, p0, Landroidx/appcompat/widget/h0;->o:Z

    const v1, 0x7fffffff

    .line 10
    iput v1, p0, Landroidx/appcompat/widget/h0;->p:I

    .line 11
    iput v0, p0, Landroidx/appcompat/widget/h0;->r:I

    .line 12
    new-instance v1, Landroidx/appcompat/widget/h0$f;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/h0$f;-><init>(Landroidx/appcompat/widget/h0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/h0;->x:Landroidx/appcompat/widget/h0$f;

    .line 13
    new-instance v1, Landroidx/appcompat/widget/h0$e;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/h0$e;-><init>(Landroidx/appcompat/widget/h0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/h0;->y:Landroidx/appcompat/widget/h0$e;

    .line 14
    new-instance v1, Landroidx/appcompat/widget/h0$d;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/h0$d;-><init>(Landroidx/appcompat/widget/h0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/h0;->z:Landroidx/appcompat/widget/h0$d;

    .line 15
    new-instance v1, Landroidx/appcompat/widget/h0$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/h0$b;-><init>(Landroidx/appcompat/widget/h0;)V

    iput-object v1, p0, Landroidx/appcompat/widget/h0;->A:Landroidx/appcompat/widget/h0$b;

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/h0;->C:Landroid/graphics/Rect;

    .line 17
    iput-object p1, p0, Landroidx/appcompat/widget/h0;->b:Landroid/content/Context;

    .line 18
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/appcompat/widget/h0;->B:Landroid/os/Handler;

    .line 19
    sget-object v1, Lc/a/j;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 20
    sget v2, Lc/a/j;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/h0;->g:I

    .line 21
    sget v2, Lc/a/j;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/h0;->h:I

    const/4 v2, 0x1

    if-eqz v0, :cond_65

    .line 22
    iput-boolean v2, p0, Landroidx/appcompat/widget/h0;->j:Z

    .line 23
    :cond_65
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    new-instance v0, Landroidx/appcompat/widget/o;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method private C()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->q:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method private N(Z)V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1a

    .line 2
    sget-object v0, Landroidx/appcompat/widget/h0;->G:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 3
    :try_start_a
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1f

    goto :goto_1f

    .line 4
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    :catch_1f
    :cond_1f
    :goto_1f
    return-void
.end method

.method private q()I
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_b2

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->b:Landroid/content/Context;

    .line 3
    iget-boolean v5, p0, Landroidx/appcompat/widget/h0;->E:Z

    xor-int/2addr v5, v3

    invoke-virtual {p0, v0, v5}, Landroidx/appcompat/widget/h0;->s(Landroid/content/Context;Z)Landroidx/appcompat/widget/d0;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    .line 4
    iget-object v6, p0, Landroidx/appcompat/widget/h0;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1b

    .line 5
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/d0;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_1b
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    iget-object v6, p0, Landroidx/appcompat/widget/h0;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    iget-object v6, p0, Landroidx/appcompat/widget/h0;->v:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 9
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 10
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    new-instance v6, Landroidx/appcompat/widget/h0$a;

    invoke-direct {v6, p0}, Landroidx/appcompat/widget/h0$a;-><init>(Landroidx/appcompat/widget/h0;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 11
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    iget-object v6, p0, Landroidx/appcompat/widget/h0;->z:Landroidx/appcompat/widget/h0$d;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 12
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->w:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_4d

    .line 13
    iget-object v6, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 14
    :cond_4d
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    .line 15
    iget-object v6, p0, Landroidx/appcompat/widget/h0;->q:Landroid/view/View;

    if-eqz v6, :cond_ab

    .line 16
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 19
    iget v8, p0, Landroidx/appcompat/widget/h0;->r:I

    if-eqz v8, :cond_82

    if-eq v8, v3, :cond_7b

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/appcompat/widget/h0;->r:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_88

    .line 21
    :cond_7b
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_88

    .line 23
    :cond_82
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 24
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :goto_88
    iget v0, p0, Landroidx/appcompat/widget/h0;->f:I

    if-ltz v0, :cond_8f

    const/high16 v5, -0x80000000

    goto :goto_91

    :cond_8f
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 26
    :goto_91
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 27
    invoke-virtual {v6, v0, v4}, Landroid/view/View;->measure(II)V

    .line 28
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    move v0, v5

    move-object v5, v7

    goto :goto_ac

    :cond_ab
    const/4 v0, 0x0

    .line 30
    :goto_ac
    iget-object v6, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_d0

    .line 31
    :cond_b2
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->q:Landroid/view/View;

    if-eqz v0, :cond_cf

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    goto :goto_d0

    :cond_cf
    const/4 v0, 0x0

    .line 35
    :goto_d0
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_ec

    .line 36
    iget-object v6, p0, Landroidx/appcompat/widget/h0;->C:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 37
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->C:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 38
    iget-boolean v7, p0, Landroidx/appcompat/widget/h0;->j:Z

    if-nez v7, :cond_f2

    neg-int v6, v6

    .line 39
    iput v6, p0, Landroidx/appcompat/widget/h0;->h:I

    goto :goto_f2

    .line 40
    :cond_ec
    iget-object v5, p0, Landroidx/appcompat/widget/h0;->C:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v5, 0x0

    .line 41
    :cond_f2
    :goto_f2
    iget-object v6, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    .line 42
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_fc

    goto :goto_fd

    :cond_fc
    const/4 v3, 0x0

    .line 43
    :goto_fd
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->t()Landroid/view/View;

    move-result-object v4

    iget v6, p0, Landroidx/appcompat/widget/h0;->h:I

    invoke-direct {p0, v4, v6, v3}, Landroidx/appcompat/widget/h0;->u(Landroid/view/View;IZ)I

    move-result v3

    .line 44
    iget-boolean v4, p0, Landroidx/appcompat/widget/h0;->n:Z

    if-nez v4, :cond_16e

    iget v4, p0, Landroidx/appcompat/widget/h0;->e:I

    if-ne v4, v2, :cond_110

    goto :goto_16e

    .line 45
    :cond_110
    iget v4, p0, Landroidx/appcompat/widget/h0;->f:I

    const/4 v6, -0x2

    if-eq v4, v6, :cond_137

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v4, v2, :cond_11e

    .line 46
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_14f

    .line 47
    :cond_11e
    iget-object v2, p0, Landroidx/appcompat/widget/h0;->b:Landroid/content/Context;

    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Landroidx/appcompat/widget/h0;->C:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 49
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_14f

    .line 50
    :cond_137
    iget-object v2, p0, Landroidx/appcompat/widget/h0;->b:Landroid/content/Context;

    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Landroidx/appcompat/widget/h0;->C:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 52
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_14f
    move v7, v1

    .line 53
    iget-object v6, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    const/4 v8, 0x0

    const/4 v9, -0x1

    sub-int v10, v3, v0

    const/4 v11, -0x1

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/widget/d0;->d(IIIII)I

    move-result v1

    if-lez v1, :cond_16c

    .line 54
    iget-object v2, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    .line 55
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    add-int/2addr v0, v5

    :cond_16c
    add-int/2addr v1, v0

    return v1

    :cond_16e
    :goto_16e
    add-int/2addr v3, v5

    return v3
.end method

.method private u(Landroid/view/View;IZ)I
    .registers 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_32

    .line 2
    sget-object v0, Landroidx/appcompat/widget/h0;->H:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2b

    .line 3
    :try_start_a
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 4
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v2, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2a} :catch_2b

    return p1

    .line 6
    :catch_2b
    :cond_2b
    iget-object p3, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {p3, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result p1

    return p1

    .line 7
    :cond_32
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p1

    return p1
.end method


# virtual methods
.method public A()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public B()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/h0;->E:Z

    return v0
.end method

.method public D(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/h0;->t:Landroid/view/View;

    return-void
.end method

.method public E(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public F(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->C:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/appcompat/widget/h0;->f:I

    goto :goto_1b

    .line 4
    :cond_18
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/h0;->Q(I)V

    :goto_1b
    return-void
.end method

.method public G(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/h0;->m:I

    return-void
.end method

.method public H(Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/h0;->D:Landroid/graphics/Rect;

    return-void
.end method

.method public I(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public J(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/h0;->E:Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public K(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public L(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/h0;->v:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public M(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/h0;->l:Z

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/h0;->k:Z

    return-void
.end method

.method public O(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/h0;->r:I

    return-void
.end method

.method public P(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->b()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/d0;->setListSelectionHidden(Z)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1b
    return-void
.end method

.method public Q(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/h0;->f:I

    return-void
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public d(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/h0;->g:I

    return-void
.end method

.method public dismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/h0;->C()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4
    iput-object v1, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->B:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/h0;->x:Landroidx/appcompat/widget/h0$f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/h0;->g:I

    return v0
.end method

.method public g()V
    .registers 14

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/h0;->q()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->A()Z

    move-result v1

    .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    iget v3, p0, Landroidx/appcompat/widget/h0;->i:I

    invoke-static {v2, v3}, Landroidx/core/widget/h;->b(Landroid/widget/PopupWindow;I)V

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_90

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->t()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/v;->S(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_26

    return-void

    .line 6
    :cond_26
    iget v2, p0, Landroidx/appcompat/widget/h0;->f:I

    if-ne v2, v6, :cond_2c

    const/4 v2, -0x1

    goto :goto_36

    :cond_2c
    if-ne v2, v4, :cond_36

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->t()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 8
    :cond_36
    :goto_36
    iget v7, p0, Landroidx/appcompat/widget/h0;->e:I

    if-ne v7, v6, :cond_64

    if-eqz v1, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v0, -0x1

    :goto_3e
    if-eqz v1, :cond_52

    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    iget v4, p0, Landroidx/appcompat/widget/h0;->f:I

    if-ne v4, v6, :cond_48

    const/4 v4, -0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_68

    .line 11
    :cond_52
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    iget v4, p0, Landroidx/appcompat/widget/h0;->f:I

    if-ne v4, v6, :cond_5a

    const/4 v4, -0x1

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 12
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_68

    :cond_64
    if-ne v7, v4, :cond_67

    goto :goto_68

    :cond_67
    move v0, v7

    .line 13
    :goto_68
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Landroidx/appcompat/widget/h0;->o:Z

    if-nez v4, :cond_73

    iget-boolean v4, p0, Landroidx/appcompat/widget/h0;->n:Z

    if-nez v4, :cond_73

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    :goto_74
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 14
    iget-object v7, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->t()Landroid/view/View;

    move-result-object v8

    iget v9, p0, Landroidx/appcompat/widget/h0;->g:I

    iget v10, p0, Landroidx/appcompat/widget/h0;->h:I

    if-gez v2, :cond_85

    const/4 v11, -0x1

    goto :goto_86

    :cond_85
    move v11, v2

    :goto_86
    if-gez v0, :cond_8a

    const/4 v12, -0x1

    goto :goto_8b

    :cond_8a
    move v12, v0

    :goto_8b
    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_126

    .line 15
    :cond_90
    iget v1, p0, Landroidx/appcompat/widget/h0;->f:I

    if-ne v1, v6, :cond_96

    const/4 v1, -0x1

    goto :goto_a0

    :cond_96
    if-ne v1, v4, :cond_a0

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 17
    :cond_a0
    :goto_a0
    iget v2, p0, Landroidx/appcompat/widget/h0;->e:I

    if-ne v2, v6, :cond_a6

    const/4 v0, -0x1

    goto :goto_aa

    :cond_a6
    if-ne v2, v4, :cond_a9

    goto :goto_aa

    :cond_a9
    move v0, v2

    .line 18
    :goto_aa
    iget-object v2, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 19
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 20
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/h0;->N(Z)V

    .line 21
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroidx/appcompat/widget/h0;->o:Z

    if-nez v1, :cond_c3

    iget-boolean v1, p0, Landroidx/appcompat/widget/h0;->n:Z

    if-nez v1, :cond_c3

    const/4 v1, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v1, 0x0

    :goto_c4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/widget/h0;->y:Landroidx/appcompat/widget/h0$e;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 23
    iget-boolean v0, p0, Landroidx/appcompat/widget/h0;->l:Z

    if-eqz v0, :cond_d9

    .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroidx/appcompat/widget/h0;->k:Z

    invoke-static {v0, v1}, Landroidx/core/widget/h;->a(Landroid/widget/PopupWindow;Z)V

    .line 25
    :cond_d9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_f1

    .line 26
    sget-object v0, Landroidx/appcompat/widget/h0;->I:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f8

    .line 27
    :try_start_e3
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/appcompat/widget/h0;->D:Landroid/graphics/Rect;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_ee} :catch_ef

    goto :goto_f8

    :catch_ef
    nop

    goto :goto_f8

    .line 28
    :cond_f1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/widget/h0;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 29
    :cond_f8
    :goto_f8
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->t()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/h0;->g:I

    iget v3, p0, Landroidx/appcompat/widget/h0;->h:I

    iget v4, p0, Landroidx/appcompat/widget/h0;->m:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/h;->c(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 30
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 31
    iget-boolean v0, p0, Landroidx/appcompat/widget/h0;->E:Z

    if-eqz v0, :cond_118

    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 32
    :cond_118
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->r()V

    .line 33
    :cond_11b
    iget-boolean v0, p0, Landroidx/appcompat/widget/h0;->E:Z

    if-nez v0, :cond_126

    .line 34
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->B:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/h0;->A:Landroidx/appcompat/widget/h0$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_126
    :goto_126
    return-void
.end method

.method public h()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/h0;->j:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_6
    iget v0, p0, Landroidx/appcompat/widget/h0;->h:I

    return v0
.end method

.method public j()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/widget/ListView;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    return-object v0
.end method

.method public n(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/h0;->h:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/h0;->j:Z

    return-void
.end method

.method public o(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->s:Landroid/database/DataSetObserver;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Landroidx/appcompat/widget/h0$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/h0$c;-><init>(Landroidx/appcompat/widget/h0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/h0;->s:Landroid/database/DataSetObserver;

    goto :goto_13

    .line 3
    :cond_c
    iget-object v1, p0, Landroidx/appcompat/widget/h0;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_13

    .line 4
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5
    :cond_13
    :goto_13
    iput-object p1, p0, Landroidx/appcompat/widget/h0;->c:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1c

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->s:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_1c
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    if-eqz p1, :cond_25

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->c:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_25
    return-void
.end method

.method public r()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/d0;->setListSelectionHidden(Z)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_b
    return-void
.end method

.method s(Landroid/content/Context;Z)Landroidx/appcompat/widget/d0;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/d0;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public t()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->t:Landroid/view/View;

    return-object v0
.end method

.method public v()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->b()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public w()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->b()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->b()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public y()Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->b()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public z()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/h0;->f:I

    return v0
.end method
