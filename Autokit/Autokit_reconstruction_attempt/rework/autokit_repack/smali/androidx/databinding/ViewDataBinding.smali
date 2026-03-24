.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/a;
.source "SourceFile"


# annotations
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


# static fields
.field static p:I = 0x0

.field private static final q:I = 0x8

.field private static final r:Z

.field private static final s:Landroidx/databinding/ViewDataBinding$f;

.field private static final t:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/ViewDataBinding;->p:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2
    :goto_b
    sput-boolean v0, Landroidx/databinding/ViewDataBinding;->r:Z

    .line 3
    new-instance v0, Landroidx/databinding/ViewDataBinding$b;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$b;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->s:Landroidx/databinding/ViewDataBinding$f;

    .line 4
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->t:Ljava/lang/ref/ReferenceQueue;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_25

    const/4 v0, 0x0

    .line 6
    sput-object v0, Landroidx/databinding/ViewDataBinding;->u:Landroid/view/View$OnAttachStateChangeListener;

    goto :goto_2c

    .line 7
    :cond_25
    new-instance v0, Landroidx/databinding/ViewDataBinding$c;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$c;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->u:Landroid/view/View$OnAttachStateChangeListener;

    :goto_2c
    return-void
.end method

.method protected constructor <init>(Landroidx/databinding/e;Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    .line 2
    new-instance p1, Landroidx/databinding/ViewDataBinding$d;

    invoke-direct {p1, p0}, Landroidx/databinding/ViewDataBinding$d;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->b:Ljava/lang/Runnable;

    const/4 p1, 0x0

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
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 8
    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->r:Z

    if-eqz p1, :cond_2d

    .line 9
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/Choreographer;

    .line 10
    new-instance p1, Landroidx/databinding/ViewDataBinding$e;

    invoke-direct {p1, p0}, Landroidx/databinding/ViewDataBinding$e;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->j:Landroid/view/Choreographer$FrameCallback;

    goto :goto_3b

    :cond_2d
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->j:Landroid/view/Choreographer$FrameCallback;

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->k:Landroid/os/Handler;

    :goto_3b
    return-void

    .line 13
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .line 14
    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->m(Ljava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/e;Landroid/view/View;I)V

    return-void
.end method

.method private static A(Ljava/lang/String;I)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge p1, v0, :cond_13

    mul-int/lit8 v1, v1, 0xa

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_13
    return v1
.end method

.method private static B()V
    .registers 2

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->t:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2
    instance-of v1, v0, Landroidx/databinding/ViewDataBinding$j;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/databinding/ViewDataBinding$j;

    .line 4
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$j;->e()Z

    goto :goto_0

    :cond_12
    return-void
.end method

.method protected static E(Ljava/lang/Integer;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_8
    return p0
.end method

.method protected static F(Ljava/lang/Boolean;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_8
    return p0
.end method

.method private K(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$f;)Z
    .registers 6

    if-nez p2, :cond_7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->I(I)Z

    move-result p1

    return p1

    .line 2
    :cond_7
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->C(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$f;)V

    return v1

    .line 4
    :cond_12
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$j;->b()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1a

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1a
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->I(I)Z

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->C(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$f;)V

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
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->B()V

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
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->u(ILjava/lang/Object;I)V

    return-void
.end method

.method protected static l(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 3

    .line 1
    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->m(Ljava/lang/Object;)Landroidx/databinding/e;

    move-result-object p0

    .line 2
    invoke-static {p0, p1, p2}, Landroidx/databinding/f;->a(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method private static m(Ljava/lang/Object;)Landroidx/databinding/e;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    instance-of v0, p0, Landroidx/databinding/e;

    if-eqz v0, :cond_b

    .line 2
    check-cast p0, Landroidx/databinding/e;

    return-object p0

    .line 3
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private o()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->h:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->D()V

    return-void

    .line 3
    :cond_8
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->v()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->h:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    .line 6
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    .line 7
    invoke-virtual {v2, p0, v0, v3}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    if-eqz v0, :cond_27

    .line 9
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/b;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 10
    :cond_27
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    if-nez v0, :cond_36

    .line 11
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->n()V

    .line 12
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/b;

    if-eqz v0, :cond_36

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    :cond_36
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->h:Z

    return-void
.end method

.method private static q(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$g;I)I
    .registers 6

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 3
    iget-object p2, p2, Landroidx/databinding/ViewDataBinding$g;->a:[[Ljava/lang/String;

    aget-object p2, p2, p3

    .line 4
    array-length p3, p2

    :goto_17
    if-ge p1, p3, :cond_25

    .line 5
    aget-object v0, p2, p1

    .line 6
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    return p1

    :cond_22
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_25
    const/4 p0, -0x1

    return p0
.end method

.method private static r(Landroid/view/ViewGroup;I)I
    .registers 10

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    :goto_1f
    if-ge v4, v3, :cond_60

    .line 6
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 8
    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_34

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    :goto_35
    if-eqz v5, :cond_5d

    .line 9
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_56

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_56

    return p1

    .line 11
    :cond_56
    invoke-static {v5, v2}, Landroidx/databinding/ViewDataBinding;->w(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5d

    move p1, v4

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_60
    return p1
.end method

.method static s(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .registers 2

    if-eqz p0, :cond_b

    .line 1
    sget v0, Landroidx/databinding/k/a;->dataBinding:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/databinding/ViewDataBinding;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private u(ILjava/lang/Object;I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->o:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->z(ILjava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->D()V

    :cond_e
    return-void
.end method

.method private static w(Ljava/lang/String;I)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    return v1

    :cond_8
    :goto_8
    if-ge p1, v0, :cond_18

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method private static x(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;Z)V
    .registers 22

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/databinding/ViewDataBinding;->s(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    if-eqz v1, :cond_f

    return-void

    .line 2
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1a

    check-cast v1, Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    const-string v9, "layout"

    const/4 v2, -0x1

    const/4 v11, 0x1

    if-eqz p5, :cond_4b

    if-eqz v1, :cond_4b

    .line 4
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/16 v3, 0x5f

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_47

    add-int/2addr v3, v11

    .line 6
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->w(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 7
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/String;I)I

    move-result v1

    .line 8
    aget-object v3, p2, v1

    if-nez v3, :cond_42

    .line 9
    aput-object v0, p2, v1

    :cond_42
    if-nez v7, :cond_45

    const/4 v1, -0x1

    :cond_45
    const/4 v3, 0x1

    goto :goto_49

    :cond_47
    const/4 v1, -0x1

    const/4 v3, 0x0

    :goto_49
    move v12, v1

    goto :goto_69

    :cond_4b
    if-eqz v1, :cond_67

    const-string v3, "binding_"

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 11
    sget v3, Landroidx/databinding/ViewDataBinding;->q:I

    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->A(Ljava/lang/String;I)I

    move-result v1

    .line 12
    aget-object v3, p2, v1

    if-nez v3, :cond_61

    .line 13
    aput-object v0, p2, v1

    :cond_61
    if-nez v7, :cond_64

    const/4 v1, -0x1

    :cond_64
    move v12, v1

    const/4 v3, 0x1

    goto :goto_69

    :cond_67
    const/4 v3, 0x0

    const/4 v12, -0x1

    :goto_69
    if-nez v3, :cond_7f

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_7f

    if-eqz v8, :cond_7f

    .line 15
    invoke-virtual {v8, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ltz v1, :cond_7f

    aget-object v2, p2, v1

    if-nez v2, :cond_7f

    .line 16
    aput-object v0, p2, v1

    .line 17
    :cond_7f
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_113

    .line 18
    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8c
    if-ge v0, v14, :cond_113

    .line 20
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ltz v12, :cond_f9

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_f9

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_0"

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 24
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f9

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_f9

    .line 25
    invoke-static {v3, v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->q(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$g;I)I

    move-result v3

    if-ltz v3, :cond_f9

    add-int/lit8 v1, v3, 0x1

    .line 26
    iget-object v4, v7, Landroidx/databinding/ViewDataBinding$g;->b:[[I

    aget-object v4, v4, v12

    aget v4, v4, v3

    .line 27
    iget-object v5, v7, Landroidx/databinding/ViewDataBinding$g;->c:[[I

    aget-object v5, v5, v12

    aget v3, v5, v3

    .line 28
    invoke-static {v13, v0}, Landroidx/databinding/ViewDataBinding;->r(Landroid/view/ViewGroup;I)I

    move-result v5

    if-ne v5, v0, :cond_dc

    .line 29
    invoke-static {v6, v2, v3}, Landroidx/databinding/f;->a(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    :goto_d8
    move v10, v0

    move v11, v1

    const/4 v0, 0x1

    goto :goto_fc

    :cond_dc
    sub-int/2addr v5, v0

    add-int/2addr v5, v11

    .line 30
    new-array v15, v5, [Landroid/view/View;

    const/4 v10, 0x0

    :goto_e1
    if-ge v10, v5, :cond_ef

    add-int v11, v0, v10

    .line 31
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    aput-object v11, v15, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_e1

    .line 32
    :cond_ef
    invoke-static {v6, v15, v3}, Landroidx/databinding/f;->b(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v0, v5

    goto :goto_d8

    :cond_f9
    move v10, v0

    move v11, v1

    const/4 v0, 0x0

    :goto_fc
    if-nez v0, :cond_10b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 33
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->x(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;Z)V

    :cond_10b
    const/4 v0, 0x1

    add-int/lit8 v1, v10, 0x1

    move v0, v1

    move v1, v11

    const/4 v11, 0x1

    goto/16 :goto_8c

    :cond_113
    return-void
.end method

.method protected static y(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .registers 11

    .line 1
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->x(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$g;Landroid/util/SparseIntArray;Z)V

    return-object p2
.end method


# virtual methods
.method protected C(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$f;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;

    aget-object v0, v0, p1

    if-nez v0, :cond_18

    .line 2
    invoke-interface {p3, p0, p1}, Landroidx/databinding/ViewDataBinding$f;->a(Landroidx/databinding/ViewDataBinding;I)Landroidx/databinding/ViewDataBinding$j;

    move-result-object v0

    .line 3
    iget-object p3, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;

    aput-object v0, p3, p1

    .line 4
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding;->m:Landroidx/lifecycle/j;

    if-eqz p1, :cond_18

    .line 5
    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding$j;->c(Landroidx/lifecycle/j;)V

    .line 6
    :cond_18
    invoke-virtual {v0, p2}, Landroidx/databinding/ViewDataBinding$j;->d(Ljava/lang/Object;)V

    return-void
.end method

.method protected D()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->l:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->D()V

    goto :goto_3b

    .line 3
    :cond_8
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->m:Landroidx/lifecycle/j;

    if-eqz v0, :cond_1d

    .line 4
    invoke-interface {v0}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object v0

    .line 5
    sget-object v1, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    .line 6
    :cond_1d
    monitor-enter p0

    .line 7
    :try_start_1e
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->c:Z

    if-eqz v0, :cond_24

    .line 8
    monitor-exit p0

    return-void

    :cond_24
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->c:Z

    .line 10
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_3c

    .line 11
    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->r:Z

    if-eqz v0, :cond_34

    .line 12
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/Choreographer;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->j:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_3b

    .line 13
    :cond_34
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->k:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3b
    return-void

    :catchall_3c
    move-exception v0

    .line 14
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public G(Landroidx/lifecycle/j;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->m:Landroidx/lifecycle/j;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_10

    .line 2
    invoke-interface {v0}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/i;)V

    .line 3
    :cond_10
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->m:Landroidx/lifecycle/j;

    if-eqz p1, :cond_29

    .line 4
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/databinding/ViewDataBinding$OnStartListener;

    if-nez v0, :cond_20

    .line 5
    new-instance v0, Landroidx/databinding/ViewDataBinding$OnStartListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/ViewDataBinding$a;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/databinding/ViewDataBinding$OnStartListener;

    .line 6
    :cond_20
    invoke-interface {p1}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V

    .line 7
    :cond_29
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    if-eqz v3, :cond_36

    .line 8
    invoke-virtual {v3, p1}, Landroidx/databinding/ViewDataBinding$j;->c(Landroidx/lifecycle/j;)V

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_39
    return-void
.end method

.method protected H(Landroid/view/View;)V
    .registers 3

    .line 1
    sget v0, Landroidx/databinding/k/a;->dataBinding:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected I(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/ViewDataBinding$j;

    aget-object p1, v0, p1

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding$j;->e()Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method protected J(ILandroidx/lifecycle/LiveData;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/LiveData<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->o:Z

    const/4 v0, 0x0

    .line 2
    :try_start_4
    sget-object v1, Landroidx/databinding/ViewDataBinding;->s:Landroidx/databinding/ViewDataBinding$f;

    invoke-direct {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->K(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$f;)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_d

    .line 3
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->o:Z

    return p1

    :catchall_d
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

    if-nez v0, :cond_8

    .line 2
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->o()V

    goto :goto_b

    .line 3
    :cond_8
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    :goto_b
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
