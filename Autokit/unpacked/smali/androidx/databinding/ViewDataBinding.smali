.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/databinding/ViewDataBinding$OnStartListener;,
    Landroidx/databinding/ViewDataBinding$g;,
    Landroidx/databinding/ViewDataBinding$f;,
    Landroidx/databinding/ViewDataBinding$h;,
    Landroidx/databinding/ViewDataBinding$j;,
    Landroidx/databinding/ViewDataBinding$i;
  }
.end annotation

.field static p:I = 0

.field private final static q:I = 8

.field private final static r:Z

.field private final static s:Landroidx/databinding/ViewDataBinding$f;

.field private final static t:Ljava/lang/ref/ReferenceQueue;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/ReferenceQueue<",
      "Landroidx/databinding/ViewDataBinding;",
      ">;"
    }
  .end annotation
.end field

.field private final static u:Landroid/view/View$OnAttachStateChangeListener;

.field private final b:Ljava/lang/Runnable;

.field private c:Z

.field private d:Z

.field private e:[Landroidx/databinding/ViewDataBinding$j;

.field private final f:Landroid/view/View;

.field private g:Landroidx/databinding/b;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/databinding/b<",
      "Ljava/lang/Object;",
      "Landroidx/databinding/ViewDataBinding;",
      "Ljava/lang/Void;",
      ">;"
    }
  .end annotation
.end field

.field private h:Z

.field private i:Landroid/view/Choreographer;

.field private final j:Landroid/view/Choreographer$FrameCallback;

.field private k:Landroid/os/Handler;

.field private l:Landroidx/databinding/ViewDataBinding;

.field private m:Landroidx/lifecycle/j;

.field private n:Landroidx/databinding/ViewDataBinding$OnStartListener;

.field private o:Z

.method static constructor <clinit>()V
  .registers 2
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    sput v0, Landroidx/databinding/ViewDataBinding;->p:I
    const/16 v1, 16
    if-lt v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    sput-boolean v0, Landroidx/databinding/ViewDataBinding;->r:Z
  .line 3
    new-instance v0, Landroidx/databinding/ViewDataBinding$b;
    invoke-direct { v0 }, Landroidx/databinding/ViewDataBinding$b;-><init>()V
    sput-object v0, Landroidx/databinding/ViewDataBinding;->s:Landroidx/databinding/ViewDataBinding$f;
  .line 4
    new-instance v0, Ljava/lang/ref/ReferenceQueue;
    invoke-direct { v0 }, Ljava/lang/ref/ReferenceQueue;-><init>()V
    sput-object v0, Landroidx/databinding/ViewDataBinding;->t:Ljava/lang/ref/ReferenceQueue;
  .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-ge v0, v1, :L2
    const/4 v0, 0
  .line 6
    sput-object v0, Landroidx/databinding/ViewDataBinding;->u:Landroid/view/View$OnAttachStateChangeListener;
    goto :L3
  :L2
  .line 7
    new-instance v0, Landroidx/databinding/ViewDataBinding$c;
    invoke-direct { v0 }, Landroidx/databinding/ViewDataBinding$c;-><init>()V
    sput-object v0, Landroidx/databinding/ViewDataBinding;->u:Landroid/view/View$OnAttachStateChangeListener;
  :L3
    return-void
.end method

.method protected constructor <init>(Landroidx/databinding/e;Landroid/view/View;I)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/databinding/a;-><init>()V
  .line 2
    new-instance p1, Landroidx/databinding/ViewDataBinding$d;
    invoke-direct { p1, p0 }, Landroidx/databinding/ViewDataBinding$d;-><init>(Landroidx/databinding/ViewDataBinding;)V
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->b:Ljava/lang/Runnable;
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->c:Z
  .line 4
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->d:Z
  .line 5
    new-array p1, p3, [Landroidx/databinding/ViewDataBinding$j;
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;
  .line 6
    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->f:Landroid/view/View;
  .line 7
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object p1
    if-eqz p1, :L2
  .line 8
    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->r:Z
    if-eqz p1, :L0
  .line 9
    invoke-static { }, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;
    move-result-object p1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/Choreographer;
  .line 10
    new-instance p1, Landroidx/databinding/ViewDataBinding$e;
    invoke-direct { p1, p0 }, Landroidx/databinding/ViewDataBinding$e;-><init>(Landroidx/databinding/ViewDataBinding;)V
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->j:Landroid/view/Choreographer$FrameCallback;
    goto :L1
  :L0
    const/4 p1, 0
  .line 11
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->j:Landroid/view/Choreographer$FrameCallback;
  .line 12
    new-instance p1, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object p2
    invoke-direct { p1, p2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->k:Landroid/os/Handler;
  :L1
    return-void
  :L2
  .line 13
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "DataBinding must be created in view's UI Thread"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
  .registers 4
  .line 14
    invoke-static { p1 }, Landroidx/databinding/ViewDataBinding;->m(Ljava/lang/Object;)Landroidx/databinding/e;
    move-result-object p1
    invoke-direct { p0, p1, p2, p3 }, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/e;Landroid/view/View;I)V
    return-void
.end method

.method private static A(Ljava/lang/String;I)I
  .registers 5
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge p1, v0, :L1
    mul-int/lit8 v1, v1, 10
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    add-int/lit8 v2, v2, -48
    add-int/2addr v1, v2
    add-int/lit8 p1, p1, 1
    goto :L0
  :L1
    return v1
.end method

.method private static B()V
  .registers 2
  :L0
  .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->t:Ljava/lang/ref/ReferenceQueue;
    invoke-virtual { v0 }, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
    move-result-object v0
    if-eqz v0, :L1
  .line 2
    instance-of v1, v0, Landroidx/databinding/ViewDataBinding$j;
    if-eqz v1, :L0
  .line 3
    check-cast v0, Landroidx/databinding/ViewDataBinding$j;
  .line 4
    invoke-virtual { v0 }, Landroidx/databinding/ViewDataBinding$j;->e()Z
    goto :L0
  :L1
    return-void
.end method

.method protected static E(Ljava/lang/Integer;)I
  .registers 1
    if-nez p0, :L0
    const/4 p0, 0
    goto :L1
  :L0
  .line 1
    invoke-virtual { p0 }, Ljava/lang/Integer;->intValue()I
    move-result p0
  :L1
    return p0
.end method

.method protected static F(Ljava/lang/Boolean;)Z
  .registers 1
    if-nez p0, :L0
    const/4 p0, 0
    goto :L1
  :L0
  .line 1
    invoke-virtual { p0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p0
  :L1
    return p0
.end method

.method private K(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$f;)Z
  .registers 6
    if-nez p2, :L0
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/databinding/ViewDataBinding;->I(I)Z
    move-result p1
    return p1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;
    aget-object v0, v0, p1
    const/4 v1, 1
    if-nez v0, :L1
  .line 3
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/databinding/ViewDataBinding;->C(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$f;)V
    return v1
  :L1
  .line 4
    invoke-virtual { v0 }, Landroidx/databinding/ViewDataBinding$j;->b()Ljava/lang/Object;
    move-result-object v0
    if-ne v0, p2, :L2
    const/4 p1, 0
    return p1
  :L2
  .line 5
    invoke-virtual { p0, p1 }, Landroidx/databinding/ViewDataBinding;->I(I)Z
  .line 6
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/databinding/ViewDataBinding;->C(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$f;)V
    return v1
.end method

.method static synthetic e(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
  .registers 1
  .line 1
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->b:Ljava/lang/Runnable;
    return-object p0
.end method

.method static synthetic f(Landroidx/databinding/ViewDataBinding;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->c:Z
    return p1
.end method

.method static synthetic g()V
  .registers 0
  .line 1
    invoke-static { }, Landroidx/databinding/ViewDataBinding;->B()V
    return-void
.end method

.method static synthetic h(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
  .registers 1
  .line 1
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->f:Landroid/view/View;
    return-object p0
.end method

.method static synthetic i()Landroid/view/View$OnAttachStateChangeListener;
  .registers 1
  .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->u:Landroid/view/View$OnAttachStateChangeListener;
    return-object v0
.end method

.method static synthetic j()Ljava/lang/ref/ReferenceQueue;
  .registers 1
  .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->t:Ljava/lang/ref/ReferenceQueue;
    return-object v0
.end method

.method static synthetic k(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Landroidx/databinding/ViewDataBinding;->u(ILjava/lang/Object;I)V
    return-void
.end method

.method protected static l(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
  .registers 3
  .line 1
    invoke-static { p0 }, Landroidx/databinding/ViewDataBinding;->m(Ljava/lang/Object;)Landroidx/databinding/e;
    move-result-object p0
  .line 2
    invoke-static { p0, p1, p2 }, Landroidx/databinding/f;->a(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    move-result-object p0
    return-object p0
.end method

.method private static m(Ljava/lang/Object;)Landroidx/databinding/e;
  .registers 2
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 1
    instance-of v0, p0, Landroidx/databinding/e;
    if-eqz v0, :L1
  .line 2
    check-cast p0, Landroidx/databinding/e;
    return-object p0
  :L1
  .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method private o()V
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->h:Z
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/databinding/ViewDataBinding;->D()V
    return-void
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/databinding/ViewDataBinding;->v()Z
    move-result v0
    if-nez v0, :L1
    return-void
  :L1
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->h:Z
    const/4 v1, 0
  .line 5
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->d:Z
  .line 6
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/b;
    const/4 v3, 0
    if-eqz v2, :L2
  .line 7
    invoke-virtual { v2, p0, v0, v3 }, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V
  .line 8
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->d:Z
    if-eqz v0, :L2
  .line 9
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/b;
    const/4 v2, 2
    invoke-virtual { v0, p0, v2, v3 }, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V
  :L2
  .line 10
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->d:Z
    if-nez v0, :L3
  .line 11
    invoke-virtual { p0 }, Landroidx/databinding/ViewDataBinding;->n()V
  .line 12
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/b;
    if-eqz v0, :L3
    const/4 v2, 3
  .line 13
    invoke-virtual { v0, p0, v2, v3 }, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V
  :L3
  .line 14
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->h:Z
    return-void
.end method

.method private static q(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$g;I)I
  .registers 6
    const/16 v0, 47
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    add-int/lit8 v0, v0, 1
  .line 2
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v1
    add-int/lit8 v1, v1, -2
    invoke-virtual { p0, v0, v1 }, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;
    move-result-object p0
  .line 3
    iget-object p2, p2, Landroidx/databinding/ViewDataBinding$g;->a:[[Ljava/lang/String;
    aget-object p2, p2, p3
  .line 4
    array-length p3, p2
  :L0
    if-ge p1, p3, :L2
  .line 5
    aget-object v0, p2, p1
  .line 6
    invoke-static { p0, v0 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L1
    return p1
  :L1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    const/4 p0, -1
    return p0
.end method

.method private static r(Landroid/view/ViewGroup;I)I
  .registers 10
  .line 1
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 3
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v1
    add-int/lit8 v1, v1, -1
    const/4 v2, 0
    invoke-virtual { v0, v2, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
  .line 4
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v2
  .line 5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v3
    add-int/lit8 v4, p1, 1
  :L0
    if-ge v4, v3, :L5
  .line 6
    invoke-virtual { p0, v4 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v5
  .line 7
    invoke-virtual { v5 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v6
  .line 8
    instance-of v6, v6, Ljava/lang/String;
    if-eqz v6, :L1
    invoke-virtual { v5 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/String;
    goto :L2
  :L1
    const/4 v5, 0
  :L2
    if-eqz v5, :L4
  .line 9
    invoke-virtual { v5, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :L4
  .line 10
    invoke-virtual { v5 }, Ljava/lang/String;->length()I
    move-result v6
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v7
    if-ne v6, v7, :L3
    invoke-virtual { v5 }, Ljava/lang/String;->length()I
    move-result v6
    add-int/lit8 v6, v6, -1
    invoke-virtual { v5, v6 }, Ljava/lang/String;->charAt(I)C
    move-result v6
    const/16 v7, 48
    if-ne v6, v7, :L3
    return p1
  :L3
  .line 11
    invoke-static { v5, v2 }, Landroidx/databinding/ViewDataBinding;->w(Ljava/lang/String;I)Z
    move-result v5
    if-eqz v5, :L4
    move p1, v4
  :L4
    add-int/lit8 v4, v4, 1
    goto :L0
  :L5
    return p1
.end method

.method static s(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
  .registers 2
    if-eqz p0, :L0
  .line 1
    sget v0, Landroidx/databinding/k/a;->dataBinding:I
    invoke-virtual { p0, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroidx/databinding/ViewDataBinding;
    return-object p0
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method private u(ILjava/lang/Object;I)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->o:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/databinding/ViewDataBinding;->z(ILjava/lang/Object;I)Z
    move-result p1
    if-eqz p1, :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/databinding/ViewDataBinding;->D()V
  :L1
    return-void
.end method

.method private static w(Ljava/lang/String;I)Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
    if-ne v0, p1, :L0
    return v1
  :L0
    if-ge p1, v0, :L2
  .line 2
    invoke-virtual { p0, p1 }, Ljava/lang/String;->charAt(I)C
    move-result v2
    invoke-static { v2 }, Ljava/lang/Character;->isDigit(C)Z
    move-result v2
    if-nez v2, :L1
    return v1
  :L1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L2
    const/4 p0, 1
    return p0
.end method

.method private static x(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;Z)V
  .registers 22
    move-object/from16 v6, p0
    move-object/from16 v0, p1
    move-object/from16 v7, p3
    move-object/from16 v8, p4
  .line 1
    invoke-static/range { p1 .. p1 }, Landroidx/databinding/ViewDataBinding;->s(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    move-result-object v1
    if-eqz v1, :L0
    return-void
  :L0
  .line 2
    invoke-virtual/range { p1 .. p1 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v1
  .line 3
    instance-of v2, v1, Ljava/lang/String;
    if-eqz v2, :L1
    check-cast v1, Ljava/lang/String;
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    const-string v9, "layout"
    const/4 v2, -1
    const/4 v11, 1
    if-eqz p5, :L7
    if-eqz v1, :L7
  .line 4
    invoke-virtual { v1, v9 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L7
    const/16 v3, 95
  .line 5
    invoke-virtual { v1, v3 }, Ljava/lang/String;->lastIndexOf(I)I
    move-result v3
    if-lez v3, :L5
    add-int/2addr v3, v11
  .line 6
    invoke-static { v1, v3 }, Landroidx/databinding/ViewDataBinding;->w(Ljava/lang/String;I)Z
    move-result v4
    if-eqz v4, :L5
  .line 7
    invoke-static { v1, v3 }, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/String;I)I
    move-result v1
  .line 8
    aget-object v3, p2, v1
    if-nez v3, :L3
  .line 9
    aput-object v0, p2, v1
  :L3
    if-nez v7, :L4
    const/4 v1, -1
  :L4
    const/4 v3, 1
    goto :L6
  :L5
    const/4 v1, -1
    const/4 v3, 0
  :L6
    move v12, v1
    goto :L11
  :L7
    if-eqz v1, :L10
    const-string v3, "binding_"
  .line 10
    invoke-virtual { v1, v3 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L10
  .line 11
    sget v3, Landroidx/databinding/ViewDataBinding;->q:I
    invoke-static { v1, v3 }, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/String;I)I
    move-result v1
  .line 12
    aget-object v3, p2, v1
    if-nez v3, :L8
  .line 13
    aput-object v0, p2, v1
  :L8
    if-nez v7, :L9
    const/4 v1, -1
  :L9
    move v12, v1
    const/4 v3, 1
    goto :L11
  :L10
    const/4 v3, 0
    const/4 v12, -1
  :L11
    if-nez v3, :L12
  .line 14
    invoke-virtual/range { p1 .. p1 }, Landroid/view/View;->getId()I
    move-result v1
    if-lez v1, :L12
    if-eqz v8, :L12
  .line 15
    invoke-virtual { v8, v1, v2 }, Landroid/util/SparseIntArray;->get(II)I
    move-result v1
    if-ltz v1, :L12
    aget-object v2, p2, v1
    if-nez v2, :L12
  .line 16
    aput-object v0, p2, v1
  :L12
  .line 17
    instance-of v1, v0, Landroid/view/ViewGroup;
    if-eqz v1, :L21
  .line 18
    move-object v13, v0
    check-cast v13, Landroid/view/ViewGroup;
  .line 19
    invoke-virtual { v13 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v14
    const/4 v0, 0
    const/4 v1, 0
  :L13
    if-ge v0, v14, :L21
  .line 20
    invoke-virtual { v13, v0 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    if-ltz v12, :L18
  .line 21
    invoke-virtual { v2 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v3
    instance-of v3, v3, Ljava/lang/String;
    if-eqz v3, :L18
  .line 22
    invoke-virtual { v2 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    const-string v4, "_0"
  .line 23
    invoke-virtual { v3, v4 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :L18
  .line 24
    invoke-virtual { v3, v9 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :L18
    const/16 v4, 47
    invoke-virtual { v3, v4 }, Ljava/lang/String;->indexOf(I)I
    move-result v4
    if-lez v4, :L18
  .line 25
    invoke-static { v3, v1, v7, v12 }, Landroidx/databinding/ViewDataBinding;->q(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$g;I)I
    move-result v3
    if-ltz v3, :L18
    add-int/lit8 v1, v3, 1
  .line 26
    iget-object v4, v7, Landroidx/databinding/ViewDataBinding$g;->b:[[I
    aget-object v4, v4, v12
    aget v4, v4, v3
  .line 27
    iget-object v5, v7, Landroidx/databinding/ViewDataBinding$g;->c:[[I
    aget-object v5, v5, v12
    aget v3, v5, v3
  .line 28
    invoke-static { v13, v0 }, Landroidx/databinding/ViewDataBinding;->r(Landroid/view/ViewGroup;I)I
    move-result v5
    if-ne v5, v0, :L15
  .line 29
    invoke-static { v6, v2, v3 }, Landroidx/databinding/f;->a(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    move-result-object v3
    aput-object v3, p2, v4
  :L14
    move v10, v0
    move v11, v1
    const/4 v0, 1
    goto :L19
  :L15
    sub-int/2addr v5, v0
    add-int/2addr v5, v11
  .line 30
    new-array v15, v5, [Landroid/view/View;
    const/4 v10, 0
  :L16
    if-ge v10, v5, :L17
    add-int v11, v0, v10
  .line 31
    invoke-virtual { v13, v11 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v11
    aput-object v11, v15, v10
    add-int/lit8 v10, v10, 1
    const/4 v11, 1
    goto :L16
  :L17
  .line 32
    invoke-static { v6, v15, v3 }, Landroidx/databinding/f;->b(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    move-result-object v3
    aput-object v3, p2, v4
    add-int/lit8 v5, v5, -1
    add-int/2addr v0, v5
    goto :L14
  :L18
    move v10, v0
    move v11, v1
    const/4 v0, 0
  :L19
    if-nez v0, :L20
    const/4 v5, 0
    move-object/from16 v0, p0
    move-object v1, v2
    move-object/from16 v2, p2
    move-object/from16 v3, p3
    move-object/from16 v4, p4
  .line 33
    invoke-static/range { v0 .. v5 }, Landroidx/databinding/ViewDataBinding;->x(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;Z)V
  :L20
    const/4 v0, 1
    add-int/lit8 v1, v10, 1
    move v0, v1
    move v1, v11
    const/4 v11, 1
    goto/16 :L13
  :L21
    return-void
.end method

.method protected static y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
  .registers 11
  .line 1
    new-array p2, p2, [Ljava/lang/Object;
    const/4 v5, 1
    move-object v0, p0
    move-object v1, p1
    move-object v2, p2
    move-object v3, p3
    move-object v4, p4
  .line 2
    invoke-static/range { v0 .. v5 }, Landroidx/databinding/ViewDataBinding;->x(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;Z)V
    return-object p2
.end method

.method protected C(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$f;)V
  .registers 5
    if-nez p2, :L0
    return-void
  :L0
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;
    aget-object v0, v0, p1
    if-nez v0, :L1
  .line 2
    invoke-interface { p3, p0, p1 }, Landroidx/databinding/ViewDataBinding$f;->a(Landroidx/databinding/ViewDataBinding;I)Landroidx/databinding/ViewDataBinding$j;
    move-result-object v0
  .line 3
    iget-object p3, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;
    aput-object v0, p3, p1
  .line 4
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding;->m:Landroidx/lifecycle/j;
    if-eqz p1, :L1
  .line 5
    invoke-virtual { v0, p1 }, Landroidx/databinding/ViewDataBinding$j;->c(Landroidx/lifecycle/j;)V
  :L1
  .line 6
    invoke-virtual { v0, p2 }, Landroidx/databinding/ViewDataBinding$j;->d(Ljava/lang/Object;)V
    return-void
.end method

.method protected D()V
  .catchall { :L2 .. :L4 } :L7
  .catchall { :L8 .. :L9 } :L7
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->l:Landroidx/databinding/ViewDataBinding;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/databinding/ViewDataBinding;->D()V
    goto :L6
  :L0
  .line 3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->m:Landroidx/lifecycle/j;
    if-eqz v0, :L1
  .line 4
    invoke-interface { v0 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;
    move-result-object v0
  .line 5
    sget-object v1, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z
    move-result v0
    if-nez v0, :L1
    return-void
  :L1
  .line 6
    monitor-enter p0
  :L2
  .line 7
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->c:Z
    if-eqz v0, :L3
  .line 8
    monitor-exit p0
    return-void
  :L3
    const/4 v0, 1
  .line 9
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->c:Z
  .line 10
    monitor-exit p0
  :L4
  .line 11
    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->r:Z
    if-eqz v0, :L5
  .line 12
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/Choreographer;
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->j:Landroid/view/Choreographer$FrameCallback;
    invoke-virtual { v0, v1 }, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    goto :L6
  :L5
  .line 13
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->k:Landroid/os/Handler;
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->b:Ljava/lang/Runnable;
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L6
    return-void
  :L7
    move-exception v0
  :L8
  .line 14
    monitor-exit p0
  :L9
    throw v0
.end method

.method public G(Landroidx/lifecycle/j;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->m:Landroidx/lifecycle/j;
    if-ne v0, p1, :L0
    return-void
  :L0
    if-eqz v0, :L1
  .line 2
    invoke-interface { v0 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/databinding/ViewDataBinding$OnStartListener;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/i;)V
  :L1
  .line 3
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->m:Landroidx/lifecycle/j;
    if-eqz p1, :L3
  .line 4
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/databinding/ViewDataBinding$OnStartListener;
    if-nez v0, :L2
  .line 5
    new-instance v0, Landroidx/databinding/ViewDataBinding$OnStartListener;
    const/4 v1, 0
    invoke-direct { v0, p0, v1 }, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/ViewDataBinding$a;)V
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/databinding/ViewDataBinding$OnStartListener;
  :L2
  .line 6
    invoke-interface { p1 }, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/databinding/ViewDataBinding$OnStartListener;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V
  :L3
  .line 7
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;
    array-length v1, v0
    const/4 v2, 0
  :L4
    if-ge v2, v1, :L6
    aget-object v3, v0, v2
    if-eqz v3, :L5
  .line 8
    invoke-virtual { v3, p1 }, Landroidx/databinding/ViewDataBinding$j;->c(Landroidx/lifecycle/j;)V
  :L5
    add-int/lit8 v2, v2, 1
    goto :L4
  :L6
    return-void
.end method

.method protected H(Landroid/view/View;)V
  .registers 3
  .line 1
    sget v0, Landroidx/databinding/k/a;->dataBinding:I
    invoke-virtual { p1, v0, p0 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    return-void
.end method

.method protected I(I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;
    aget-object p1, v0, p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/databinding/ViewDataBinding$j;->e()Z
    move-result p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method protected J(ILandroidx/lifecycle/LiveData;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Landroidx/lifecycle/LiveData<",
      "*>;)Z"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .registers 5
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->o:Z
    const/4 v0, 0
  :L0
  .line 2
    sget-object v1, Landroidx/databinding/ViewDataBinding;->s:Landroidx/databinding/ViewDataBinding$f;
    invoke-direct { p0, p1, p2, v1 }, Landroidx/databinding/ViewDataBinding;->K(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$f;)Z
    move-result p1
  :L1
  .line 3
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->o:Z
    return p1
  :L2
    move-exception p1
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->o:Z
  .line 4
    throw p1
.end method

.method protected abstract n()V
.end method

.method public p()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->l:Landroidx/databinding/ViewDataBinding;
    if-nez v0, :L0
  .line 2
    invoke-direct { p0 }, Landroidx/databinding/ViewDataBinding;->o()V
    goto :L1
  :L0
  .line 3
    invoke-virtual { v0 }, Landroidx/databinding/ViewDataBinding;->p()V
  :L1
    return-void
.end method

.method public t()Landroid/view/View;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->f:Landroid/view/View;
    return-object v0
.end method

.method public abstract v()Z
.end method

.method protected abstract z(ILjava/lang/Object;I)Z
.end method
