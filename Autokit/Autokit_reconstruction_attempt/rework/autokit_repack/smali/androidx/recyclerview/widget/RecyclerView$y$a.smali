.class public Landroidx/recyclerview/widget/RecyclerView$y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$y$a;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->d:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->f:Z

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->g:I

    .line 6
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->a:I

    .line 7
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->b:I

    .line 8
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->c:I

    .line 9
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private e()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->e:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->c:I

    if-lt v0, v1, :cond_a

    goto :goto_12

    .line 2
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_12
    :goto_12
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->c:I

    if-lt v0, v1, :cond_17

    return-void

    .line 4
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->d:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public b(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->d:I

    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 7

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->d:I

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    const/4 v2, -0x1

    .line 2
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->d:I

    .line 3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->v0(I)V

    .line 4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->f:Z

    return-void

    .line 5
    :cond_e
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->f:Z

    if-eqz v0, :cond_2d

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$y$a;->e()V

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->b:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->c:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$b0;->f(IIILandroid/view/animation/Interpolator;)V

    .line 8
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->g:I

    const/16 v0, 0xa

    .line 9
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->f:Z

    goto :goto_2f

    .line 10
    :cond_2d
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->g:I

    :goto_2f
    return-void
.end method

.method public d(IIILandroid/view/animation/Interpolator;)V
    .registers 5

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->a:I

    .line 2
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->b:I

    .line 3
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->c:I

    .line 4
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->e:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$y$a;->f:Z

    return-void
.end method
