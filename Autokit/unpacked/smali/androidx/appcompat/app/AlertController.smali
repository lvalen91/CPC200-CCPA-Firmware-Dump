.class Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/app/AlertController$h;,
    Landroidx/appcompat/app/AlertController$f;,
    Landroidx/appcompat/app/AlertController$RecycleListView;,
    Landroidx/appcompat/app/AlertController$g;
  }
.end annotation

.field A:Landroidx/core/widget/NestedScrollView;

.field private B:I

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/view/View;

.field H:Landroid/widget/ListAdapter;

.field I:I

.field private J:I

.field private K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field private P:Z

.field private Q:I

.field R:Landroid/os/Handler;

.field private final S:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field final b:Landroidx/appcompat/app/h;

.field private final c:Landroid/view/Window;

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field o:Landroid/widget/Button;

.field private p:Ljava/lang/CharSequence;

.field q:Landroid/os/Message;

.field private r:Landroid/graphics/drawable/Drawable;

.field s:Landroid/widget/Button;

.field private t:Ljava/lang/CharSequence;

.field u:Landroid/os/Message;

.field private v:Landroid/graphics/drawable/Drawable;

.field w:Landroid/widget/Button;

.field private x:Ljava/lang/CharSequence;

.field y:Landroid/os/Message;

.field private z:Landroid/graphics/drawable/Drawable;

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/h;Landroid/view/Window;)V
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController;->n:Z
  .line 3
    iput v0, p0, Landroidx/appcompat/app/AlertController;->B:I
    const/4 v1, -1
  .line 4
    iput v1, p0, Landroidx/appcompat/app/AlertController;->I:I
  .line 5
    iput v0, p0, Landroidx/appcompat/app/AlertController;->Q:I
  .line 6
    new-instance v1, Landroidx/appcompat/app/AlertController$a;
    invoke-direct { v1, p0 }, Landroidx/appcompat/app/AlertController$a;-><init>(Landroidx/appcompat/app/AlertController;)V
    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;
  .line 7
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;
  .line 8
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/h;
  .line 9
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
  .line 10
    new-instance p3, Landroidx/appcompat/app/AlertController$g;
    invoke-direct { p3, p2 }, Landroidx/appcompat/app/AlertController$g;-><init>(Landroid/content/DialogInterface;)V
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->R:Landroid/os/Handler;
  .line 11
    sget-object p3, Lc/a/j;->AlertDialog:[I
    sget v1, Lc/a/a;->alertDialogStyle:I
    const/4 v2, 0
    invoke-virtual { p1, v2, p3, v1, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 12
    sget p3, Lc/a/j;->AlertDialog_android_layout:I
    invoke-virtual { p1, p3, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p3
    iput p3, p0, Landroidx/appcompat/app/AlertController;->J:I
  .line 13
    sget p3, Lc/a/j;->AlertDialog_buttonPanelSideLayout:I
    invoke-virtual { p1, p3, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p3
    iput p3, p0, Landroidx/appcompat/app/AlertController;->K:I
  .line 14
    sget p3, Lc/a/j;->AlertDialog_listLayout:I
    invoke-virtual { p1, p3, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p3
    iput p3, p0, Landroidx/appcompat/app/AlertController;->L:I
  .line 15
    sget p3, Lc/a/j;->AlertDialog_multiChoiceItemLayout:I
    invoke-virtual { p1, p3, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p3
    iput p3, p0, Landroidx/appcompat/app/AlertController;->M:I
  .line 16
    sget p3, Lc/a/j;->AlertDialog_singleChoiceItemLayout:I
  .line 17
    invoke-virtual { p1, p3, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p3
    iput p3, p0, Landroidx/appcompat/app/AlertController;->N:I
  .line 18
    sget p3, Lc/a/j;->AlertDialog_listItemLayout:I
    invoke-virtual { p1, p3, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p3
    iput p3, p0, Landroidx/appcompat/app/AlertController;->O:I
  .line 19
    sget p3, Lc/a/j;->AlertDialog_showTitle:I
    const/4 v1, 1
    invoke-virtual { p1, p3, v1 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    move-result p3
    iput-boolean p3, p0, Landroidx/appcompat/app/AlertController;->P:Z
  .line 20
    sget p3, Lc/a/j;->AlertDialog_buttonIconDimen:I
    invoke-virtual { p1, p3, v0 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result p3
    iput p3, p0, Landroidx/appcompat/app/AlertController;->d:I
  .line 21
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  .line 22
    invoke-virtual { p2, v1 }, Landroidx/appcompat/app/h;->d(I)Z
    return-void
.end method

.method static a(Landroid/view/View;)Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->onCheckIsTextEditor()Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    instance-of v0, p0, Landroid/view/ViewGroup;
    const/4 v2, 0
    if-nez v0, :L1
    return v2
  :L1
  .line 3
    check-cast p0, Landroid/view/ViewGroup;
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
  :L2
    if-lez v0, :L3
    add-int/lit8 v0, v0, -1
  .line 5
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 6
    invoke-static { v3 }, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z
    move-result v3
    if-eqz v3, :L2
    return v1
  :L3
    return v2
.end method

.method private b(Landroid/widget/Button;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 1
  .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    const/high16 v1, 16128
  .line 3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
  .line 4
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method static f(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
  .registers 6
    const/4 v0, 0
    const/4 v1, 4
    if-eqz p1, :L2
    const/4 v2, -1
  .line 1
    invoke-virtual { p0, v2 }, Landroid/view/View;->canScrollVertically(I)Z
    move-result v2
    if-eqz v2, :L0
    const/4 v2, 0
    goto :L1
  :L0
    const/4 v2, 4
  :L1
  .line 2
    invoke-virtual { p1, v2 }, Landroid/view/View;->setVisibility(I)V
  :L2
    if-eqz p2, :L5
    const/4 p1, 1
  .line 3
    invoke-virtual { p0, p1 }, Landroid/view/View;->canScrollVertically(I)Z
    move-result p0
    if-eqz p0, :L3
    goto :L4
  :L3
    const/4 v0, 4
  :L4
  .line 4
    invoke-virtual { p2, v0 }, Landroid/view/View;->setVisibility(I)V
  :L5
    return-void
.end method

.method private i(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
  .registers 5
    if-nez p1, :L1
  .line 1
    instance-of p1, p2, Landroid/view/ViewStub;
    if-eqz p1, :L0
  .line 2
    check-cast p2, Landroid/view/ViewStub;
    invoke-virtual { p2 }, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    move-result-object p2
  :L0
  .line 3
    check-cast p2, Landroid/view/ViewGroup;
    return-object p2
  :L1
    if-eqz p2, :L2
  .line 4
    invoke-virtual { p2 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
  .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;
    if-eqz v1, :L2
  .line 6
    check-cast v0, Landroid/view/ViewGroup;
    invoke-virtual { v0, p2 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L2
  .line 7
    instance-of p2, p1, Landroid/view/ViewStub;
    if-eqz p2, :L3
  .line 8
    check-cast p1, Landroid/view/ViewStub;
    invoke-virtual { p1 }, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    move-result-object p1
  :L3
  .line 9
    check-cast p1, Landroid/view/ViewGroup;
    return-object p1
.end method

.method private j()I
  .registers 4
  .line 1
    iget v0, p0, Landroidx/appcompat/app/AlertController;->K:I
    if-nez v0, :L0
  .line 2
    iget v0, p0, Landroidx/appcompat/app/AlertController;->J:I
    return v0
  :L0
  .line 3
    iget v1, p0, Landroidx/appcompat/app/AlertController;->Q:I
    const/4 v2, 1
    if-ne v1, v2, :L1
    return v0
  :L1
  .line 4
    iget v0, p0, Landroidx/appcompat/app/AlertController;->J:I
    return v0
.end method

.method private p(Landroid/view/ViewGroup;Landroid/view/View;II)V
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
    sget v1, Lc/a/f;->scrollIndicatorUp:I
    invoke-virtual { v0, v1 }, Landroid/view/Window;->findViewById(I)Landroid/view/View;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
    sget v2, Lc/a/f;->scrollIndicatorDown:I
    invoke-virtual { v1, v2 }, Landroid/view/Window;->findViewById(I)Landroid/view/View;
    move-result-object v1
  .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 23
    if-lt v2, v3, :L1
  .line 4
    invoke-static { p2, p3, p4 }, Landroidx/core/view/v;->B0(Landroid/view/View;II)V
    if-eqz v0, :L0
  .line 5
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L0
    if-eqz v1, :L8
  .line 6
    invoke-virtual { p1, v1 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    goto :L8
  :L1
    const/4 p2, 0
    if-eqz v0, :L2
    and-int/lit8 p4, p3, 1
    if-nez p4, :L2
  .line 7
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    move-object v0, p2
  :L2
    if-eqz v1, :L3
    and-int/lit8 p3, p3, 2
    if-nez p3, :L3
  .line 8
    invoke-virtual { p1, v1 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    move-object v1, p2
  :L3
    if-nez v0, :L4
    if-eqz v1, :L8
  :L4
  .line 9
    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;
    if-eqz p2, :L5
  .line 10
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
    new-instance p2, Landroidx/appcompat/app/AlertController$b;
    invoke-direct { p2, p0, v0, v1 }, Landroidx/appcompat/app/AlertController$b;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    invoke-virtual { p1, p2 }, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V
  .line 11
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
    new-instance p2, Landroidx/appcompat/app/AlertController$c;
    invoke-direct { p2, p0, v0, v1 }, Landroidx/appcompat/app/AlertController$c;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    invoke-virtual { p1, p2 }, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    goto :L8
  :L5
  .line 12
    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    if-eqz p2, :L6
  .line 13
    new-instance p1, Landroidx/appcompat/app/AlertController$d;
    invoke-direct { p1, p0, v0, v1 }, Landroidx/appcompat/app/AlertController$d;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    invoke-virtual { p2, p1 }, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
  .line 14
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    new-instance p2, Landroidx/appcompat/app/AlertController$e;
    invoke-direct { p2, p0, v0, v1 }, Landroidx/appcompat/app/AlertController$e;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    invoke-virtual { p1, p2 }, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z
    goto :L8
  :L6
    if-eqz v0, :L7
  .line 15
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L7
    if-eqz v1, :L8
  .line 16
    invoke-virtual { p1, v1 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L8
    return-void
.end method

.method private u(Landroid/view/ViewGroup;)V
  .registers 9
    const v0, 16908313
  .line 1
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/Button;
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;
  .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 1
    const/16 v2, 8
    const/4 v3, 0
    const/4 v4, 0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;
    if-nez v0, :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;
    invoke-virtual { v0, v2 }, Landroid/widget/Button;->setVisibility(I)V
    const/4 v0, 0
    goto :L2
  :L0
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;
    invoke-virtual { v0, v5 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 6
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :L1
  .line 7
    iget v5, p0, Landroidx/appcompat/app/AlertController;->d:I
    invoke-virtual { v0, v4, v4, v5, v5 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 8
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v0, v5, v3, v3, v3 }, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  :L1
  .line 9
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;
    invoke-virtual { v0, v4 }, Landroid/widget/Button;->setVisibility(I)V
    const/4 v0, 1
  :L2
    const v5, 16908314
  .line 10
    invoke-virtual { p1, v5 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v5
    check-cast v5, Landroid/widget/Button;
    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;
  .line 11
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;
    invoke-virtual { v5, v6 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 12
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;
    invoke-static { v5 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-eqz v5, :L3
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;
    if-nez v5, :L3
  .line 13
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;
    invoke-virtual { v5, v2 }, Landroid/widget/Button;->setVisibility(I)V
    goto :L5
  :L3
  .line 14
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;
    invoke-virtual { v5, v6 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 15
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :L4
  .line 16
    iget v6, p0, Landroidx/appcompat/app/AlertController;->d:I
    invoke-virtual { v5, v4, v4, v6, v6 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 17
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v5, v6, v3, v3, v3 }, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  :L4
  .line 18
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;
    invoke-virtual { v5, v4 }, Landroid/widget/Button;->setVisibility(I)V
    or-int/lit8 v0, v0, 2
  :L5
    const v5, 16908315
  .line 19
    invoke-virtual { p1, v5 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v5
    check-cast v5, Landroid/widget/Button;
    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;
  .line 20
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;
    invoke-virtual { v5, v6 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 21
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;
    invoke-static { v5 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-eqz v5, :L6
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;
    if-nez v5, :L6
  .line 22
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;
    invoke-virtual { v3, v2 }, Landroid/widget/Button;->setVisibility(I)V
    goto :L8
  :L6
  .line 23
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;
    invoke-virtual { v5, v6 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 24
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :L7
  .line 25
    iget v6, p0, Landroidx/appcompat/app/AlertController;->d:I
    invoke-virtual { v5, v4, v4, v6, v6 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 26
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;
    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;
    invoke-virtual { v5, v6, v3, v3, v3 }, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  :L7
  .line 27
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;
    invoke-virtual { v3, v4 }, Landroid/widget/Button;->setVisibility(I)V
    or-int/lit8 v0, v0, 4
  :L8
  .line 28
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;
    invoke-static { v3 }, Landroidx/appcompat/app/AlertController;->z(Landroid/content/Context;)Z
    move-result v3
    if-eqz v3, :L11
    if-ne v0, v1, :L9
  .line 29
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;
    invoke-direct { p0, v3 }, Landroidx/appcompat/app/AlertController;->b(Landroid/widget/Button;)V
    goto :L11
  :L9
    const/4 v3, 2
    if-ne v0, v3, :L10
  .line 30
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;
    invoke-direct { p0, v3 }, Landroidx/appcompat/app/AlertController;->b(Landroid/widget/Button;)V
    goto :L11
  :L10
    const/4 v3, 4
    if-ne v0, v3, :L11
  .line 31
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;
    invoke-direct { p0, v3 }, Landroidx/appcompat/app/AlertController;->b(Landroid/widget/Button;)V
  :L11
    if-eqz v0, :L12
    goto :L13
  :L12
    const/4 v1, 0
  :L13
    if-nez v1, :L14
  .line 32
    invoke-virtual { p1, v2 }, Landroid/view/ViewGroup;->setVisibility(I)V
  :L14
    return-void
.end method

.method private v(Landroid/view/ViewGroup;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
    sget v1, Lc/a/f;->scrollView:I
    invoke-virtual { v0, v1 }, Landroid/view/Window;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroidx/core/widget/NestedScrollView;
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Landroid/widget/FrameLayout;->setFocusable(Z)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
    invoke-virtual { v0, v1 }, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V
    const v0, 16908299
  .line 4
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;
    if-nez v0, :L0
    return-void
  :L0
  .line 5
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;
    if-eqz v1, :L1
  .line 6
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L3
  :L1
    const/16 v1, 8
  .line 7
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 8
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;
    invoke-virtual { v0, v2 }, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
  .line 9
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    if-eqz v0, :L2
  .line 10
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
    invoke-virtual { p1 }, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    check-cast p1, Landroid/view/ViewGroup;
  .line 11
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I
    move-result v0
  .line 12
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->removeViewAt(I)V
  .line 13
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -1
    invoke-direct { v2, v3, v3 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual { p1, v1, v0, v2 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    goto :L3
  :L2
  .line 14
    invoke-virtual { p1, v1 }, Landroid/view/ViewGroup;->setVisibility(I)V
  :L3
    return-void
.end method

.method private w(Landroid/view/ViewGroup;)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;
    const/4 v1, 0
    if-eqz v0, :L0
    goto :L2
  :L0
  .line 2
    iget v0, p0, Landroidx/appcompat/app/AlertController;->i:I
    if-eqz v0, :L1
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
  .line 4
    iget v2, p0, Landroidx/appcompat/app/AlertController;->i:I
    invoke-virtual { v0, v2, p1, v1 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v0
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    if-eqz v0, :L3
    const/4 v1, 1
  :L3
    if-eqz v1, :L4
  .line 5
    invoke-static { v0 }, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z
    move-result v2
    if-nez v2, :L5
  :L4
  .line 6
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
    const/high16 v3, 2
    invoke-virtual { v2, v3, v3 }, Landroid/view/Window;->setFlags(II)V
  :L5
    if-eqz v1, :L7
  .line 7
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
    sget v2, Lc/a/f;->custom:I
    invoke-virtual { v1, v2 }, Landroid/view/Window;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/FrameLayout;
  .line 8
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -1
    invoke-direct { v2, v3, v3 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual { v1, v0, v2 }, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 9
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->n:Z
    if-eqz v0, :L6
  .line 10
    iget v0, p0, Landroidx/appcompat/app/AlertController;->j:I
    iget v2, p0, Landroidx/appcompat/app/AlertController;->k:I
    iget v3, p0, Landroidx/appcompat/app/AlertController;->l:I
    iget v4, p0, Landroidx/appcompat/app/AlertController;->m:I
    invoke-virtual { v1, v0, v2, v3, v4 }, Landroid/widget/FrameLayout;->setPadding(IIII)V
  :L6
  .line 11
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    if-eqz v0, :L8
  .line 12
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/widget/g0$a;
    const/4 v0, 0
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    goto :L8
  :L7
    const/16 v0, 8
  .line 13
    invoke-virtual { p1, v0 }, Landroid/view/ViewGroup;->setVisibility(I)V
  :L8
    return-void
.end method

.method private x(Landroid/view/ViewGroup;)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;
    const/16 v1, 8
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -1
    const/4 v3, -2
    invoke-direct { v0, v2, v3 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
  .line 3
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;
    const/4 v3, 0
    invoke-virtual { p1, v2, v3, v0 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  .line 4
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
    sget v0, Lc/a/f;->title_template:I
    invoke-virtual { p1, v0 }, Landroid/view/Window;->findViewById(I)Landroid/view/View;
    move-result-object p1
  .line 5
    invoke-virtual { p1, v1 }, Landroid/view/View;->setVisibility(I)V
    goto/16 :L4
  :L0
  .line 6
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
    const v2, 16908294
    invoke-virtual { v0, v2 }, Landroid/view/Window;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
  .line 7
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    xor-int/lit8 v0, v0, 1
    if-eqz v0, :L3
  .line 8
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->P:Z
    if-eqz v0, :L3
  .line 9
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
    sget v0, Lc/a/f;->alertTitle:I
    invoke-virtual { p1, v0 }, Landroid/view/Window;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/TextView;
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;
  .line 10
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 11
    iget p1, p0, Landroidx/appcompat/app/AlertController;->B:I
    if-eqz p1, :L1
  .line 12
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setImageResource(I)V
    goto :L4
  :L1
  .line 13
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :L2
  .line 14
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    goto :L4
  :L2
  .line 15
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getPaddingLeft()I
    move-result v0
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
  .line 16
    invoke-virtual { v2 }, Landroid/widget/ImageView;->getPaddingTop()I
    move-result v2
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
  .line 17
    invoke-virtual { v3 }, Landroid/widget/ImageView;->getPaddingRight()I
    move-result v3
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
  .line 18
    invoke-virtual { v4 }, Landroid/widget/ImageView;->getPaddingBottom()I
    move-result v4
  .line 19
    invoke-virtual { p1, v0, v2, v3, v4 }, Landroid/widget/TextView;->setPadding(IIII)V
  .line 20
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
    invoke-virtual { p1, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
    goto :L4
  :L3
  .line 21
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
    sget v2, Lc/a/f;->title_template:I
    invoke-virtual { v0, v2 }, Landroid/view/Window;->findViewById(I)Landroid/view/View;
    move-result-object v0
  .line 22
    invoke-virtual { v0, v1 }, Landroid/view/View;->setVisibility(I)V
  .line 23
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 24
    invoke-virtual { p1, v1 }, Landroid/view/ViewGroup;->setVisibility(I)V
  :L4
    return-void
.end method

.method private y()V
  .registers 10
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;
    sget v1, Lc/a/f;->parentPanel:I
    invoke-virtual { v0, v1 }, Landroid/view/Window;->findViewById(I)Landroid/view/View;
    move-result-object v0
  .line 2
    sget v1, Lc/a/f;->topPanel:I
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1
  .line 3
    sget v2, Lc/a/f;->contentPanel:I
    invoke-virtual { v0, v2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v2
  .line 4
    sget v3, Lc/a/f;->buttonPanel:I
    invoke-virtual { v0, v3 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v3
  .line 5
    sget v4, Lc/a/f;->customPanel:I
    invoke-virtual { v0, v4 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
  .line 6
    invoke-direct { p0, v0 }, Landroidx/appcompat/app/AlertController;->w(Landroid/view/ViewGroup;)V
  .line 7
    sget v4, Lc/a/f;->topPanel:I
    invoke-virtual { v0, v4 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v4
  .line 8
    sget v5, Lc/a/f;->contentPanel:I
    invoke-virtual { v0, v5 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v5
  .line 9
    sget v6, Lc/a/f;->buttonPanel:I
    invoke-virtual { v0, v6 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v6
  .line 10
    invoke-direct { p0, v4, v1 }, Landroidx/appcompat/app/AlertController;->i(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    move-result-object v1
  .line 11
    invoke-direct { p0, v5, v2 }, Landroidx/appcompat/app/AlertController;->i(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    move-result-object v2
  .line 12
    invoke-direct { p0, v6, v3 }, Landroidx/appcompat/app/AlertController;->i(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    move-result-object v3
  .line 13
    invoke-direct { p0, v2 }, Landroidx/appcompat/app/AlertController;->v(Landroid/view/ViewGroup;)V
  .line 14
    invoke-direct { p0, v3 }, Landroidx/appcompat/app/AlertController;->u(Landroid/view/ViewGroup;)V
  .line 15
    invoke-direct { p0, v1 }, Landroidx/appcompat/app/AlertController;->x(Landroid/view/ViewGroup;)V
    const/16 v4, 8
    const/4 v5, 1
    const/4 v6, 0
    if-eqz v0, :L0
  .line 16
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result v0
    if-eq v0, v4, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eqz v1, :L2
  .line 17
    invoke-virtual { v1 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result v7
    if-eq v7, v4, :L2
    const/4 v7, 1
    goto :L3
  :L2
    const/4 v7, 0
  :L3
    if-eqz v3, :L4
  .line 18
    invoke-virtual { v3 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result v3
    if-eq v3, v4, :L4
    const/4 v3, 1
    goto :L5
  :L4
    const/4 v3, 0
  :L5
    if-nez v3, :L6
    if-eqz v2, :L6
  .line 19
    sget v4, Lc/a/f;->textSpacerNoButtons:I
    invoke-virtual { v2, v4 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v4
    if-eqz v4, :L6
  .line 20
    invoke-virtual { v4, v6 }, Landroid/view/View;->setVisibility(I)V
  :L6
    if-eqz v7, :L10
  .line 21
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
    if-eqz v4, :L7
  .line 22
    invoke-virtual { v4, v5 }, Landroid/widget/FrameLayout;->setClipToPadding(Z)V
  :L7
    const/4 v4, 0
  .line 23
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;
    if-nez v8, :L8
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    if-eqz v8, :L9
  :L8
  .line 24
    sget v4, Lc/a/f;->titleDividerNoCustom:I
    invoke-virtual { v1, v4 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v4
  :L9
    if-eqz v4, :L11
  .line 25
    invoke-virtual { v4, v6 }, Landroid/view/View;->setVisibility(I)V
    goto :L11
  :L10
    if-eqz v2, :L11
  .line 26
    sget v1, Lc/a/f;->textSpacerNoTitle:I
    invoke-virtual { v2, v1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v1
    if-eqz v1, :L11
  .line 27
    invoke-virtual { v1, v6 }, Landroid/view/View;->setVisibility(I)V
  :L11
  .line 28
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    instance-of v4, v1, Landroidx/appcompat/app/AlertController$RecycleListView;
    if-eqz v4, :L12
  .line 29
    check-cast v1, Landroidx/appcompat/app/AlertController$RecycleListView;
    invoke-virtual { v1, v7, v3 }, Landroidx/appcompat/app/AlertController$RecycleListView;->a(ZZ)V
  :L12
    if-nez v0, :L16
  .line 30
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    if-eqz v0, :L13
    goto :L14
  :L13
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
  :L14
    if-eqz v0, :L16
    if-eqz v3, :L15
    const/4 v6, 2
  :L15
    or-int v1, v7, v6
    const/4 v3, 3
  .line 31
    invoke-direct { p0, v2, v0, v1, v3 }, Landroidx/appcompat/app/AlertController;->p(Landroid/view/ViewGroup;Landroid/view/View;II)V
  :L16
  .line 32
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    if-eqz v0, :L17
  .line 33
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;
    if-eqz v1, :L17
  .line 34
    invoke-virtual { v0, v1 }, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
  .line 35
    iget v1, p0, Landroidx/appcompat/app/AlertController;->I:I
    const/4 v2, -1
    if-le v1, v2, :L17
  .line 36
    invoke-virtual { v0, v1, v5 }, Landroid/widget/ListView;->setItemChecked(IZ)V
  .line 37
    invoke-virtual { v0, v1 }, Landroid/widget/ListView;->setSelection(I)V
  :L17
    return-void
.end method

.method private static z(Landroid/content/Context;)Z
  .registers 4
  .line 1
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p0
    sget v1, Lc/a/a;->alertDialogCenterButtons:I
    const/4 v2, 1
    invoke-virtual { p0, v1, v0, v2 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
  .line 3
    iget p0, v0, Landroid/util/TypedValue;->data:I
    if-eqz p0, :L0
    goto :L1
  :L0
    const/4 v2, 0
  :L1
    return v2
.end method

.method public c(I)I
  .registers 5
  .line 1
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;
    invoke-virtual { v1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v1
    const/4 v2, 1
    invoke-virtual { v1, p1, v0, v2 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
  .line 3
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I
    return p1
.end method

.method public d()Landroid/widget/ListView;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;
    return-object v0
.end method

.method public e()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/app/AlertController;->j()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/h;
    invoke-virtual { v1, v0 }, Landroidx/appcompat/app/h;->setContentView(I)V
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/app/AlertController;->y()V
    return-void
.end method

.method public g(ILandroid/view/KeyEvent;)Z
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
    if-eqz p1, :L0
    invoke-virtual { p1, p2 }, Landroidx/core/widget/NestedScrollView;->q(Landroid/view/KeyEvent;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public h(ILandroid/view/KeyEvent;)Z
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;
    if-eqz p1, :L0
    invoke-virtual { p1, p2 }, Landroidx/core/widget/NestedScrollView;->q(Landroid/view/KeyEvent;)Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method public k(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
  .registers 6
    if-nez p4, :L0
    if-eqz p3, :L0
  .line 1
    iget-object p4, p0, Landroidx/appcompat/app/AlertController;->R:Landroid/os/Handler;
    invoke-virtual { p4, p1, p3 }, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    move-result-object p4
  :L0
    const/4 p3, -3
    if-eq p1, p3, :L3
    const/4 p3, -2
    if-eq p1, p3, :L2
    const/4 p3, -1
    if-ne p1, p3, :L1
  .line 2
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;
  .line 3
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->q:Landroid/os/Message;
  .line 4
    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;
    goto :L4
  :L1
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Button does not exist"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 6
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;
  .line 7
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->u:Landroid/os/Message;
  .line 8
    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;
    goto :L4
  :L3
  .line 9
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;
  .line 10
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->y:Landroid/os/Message;
  .line 11
    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;
  :L4
    return-void
.end method

.method public l(Landroid/view/View;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;
    return-void
.end method

.method public m(I)V
  .registers 3
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;
  .line 2
    iput p1, p0, Landroidx/appcompat/app/AlertController;->B:I
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
    if-eqz v0, :L1
    if-eqz p1, :L0
    const/4 p1, 0
  .line 4
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 5
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
    iget v0, p0, Landroidx/appcompat/app/AlertController;->B:I
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setImageResource(I)V
    goto :L1
  :L0
    const/16 p1, 8
  .line 6
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setVisibility(I)V
  :L1
    return-void
.end method

.method public n(Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/appcompat/app/AlertController;->B:I
  .line 3
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
    if-eqz v1, :L1
    if-eqz p1, :L0
  .line 4
    invoke-virtual { v1, v0 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
    const/16 p1, 8
  .line 6
    invoke-virtual { v1, p1 }, Landroid/widget/ImageView;->setVisibility(I)V
  :L1
    return-void
.end method

.method public o(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method public q(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method public r(I)V
  .registers 3
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;
  .line 2
    iput p1, p0, Landroidx/appcompat/app/AlertController;->i:I
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->n:Z
    return-void
.end method

.method public s(Landroid/view/View;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;
    const/4 p1, 0
  .line 2
    iput p1, p0, Landroidx/appcompat/app/AlertController;->i:I
  .line 3
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->n:Z
    return-void
.end method

.method public t(Landroid/view/View;IIII)V
  .registers 6
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;
    const/4 p1, 0
  .line 2
    iput p1, p0, Landroidx/appcompat/app/AlertController;->i:I
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->n:Z
  .line 4
    iput p2, p0, Landroidx/appcompat/app/AlertController;->j:I
  .line 5
    iput p3, p0, Landroidx/appcompat/app/AlertController;->k:I
  .line 6
    iput p4, p0, Landroidx/appcompat/app/AlertController;->l:I
  .line 7
    iput p5, p0, Landroidx/appcompat/app/AlertController;->m:I
    return-void
.end method
