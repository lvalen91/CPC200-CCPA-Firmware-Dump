.class public abstract Lc/p/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/p/m$e;,
        Lc/p/m$d;,
        Lc/p/m$f;
    }
.end annotation


# static fields
.field private static final H:[I

.field private static final I:Lc/p/g;

.field private static J:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lc/d/a<",
            "Landroid/animation/Animator;",
            "Lc/p/m$d;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/p/m$f;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field D:Lc/p/p;

.field private E:Lc/p/m$e;

.field private F:Lc/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lc/p/g;

.field private b:Ljava/lang/String;

.field private c:J

.field d:J

.field private e:Landroid/animation/TimeInterpolator;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private q:Lc/p/t;

.field private r:Lc/p/t;

.field s:Lc/p/q;

.field private t:[I

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/p/s;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/p/s;",
            ">;"
        }
    .end annotation
.end field

.field w:Z

.field x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_18

    sput-object v0, Lc/p/m;->H:[I

    .line 2
    new-instance v0, Lc/p/m$a;

    invoke-direct {v0}, Lc/p/m$a;-><init>()V

    sput-object v0, Lc/p/m;->I:Lc/p/g;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc/p/m;->J:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_18
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/p/m;->b:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lc/p/m;->c:J

    .line 4
    iput-wide v0, p0, Lc/p/m;->d:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lc/p/m;->e:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Lc/p/m;->h:Ljava/util/ArrayList;

    .line 9
    iput-object v0, p0, Lc/p/m;->i:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Lc/p/m;->j:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lc/p/m;->k:Ljava/util/ArrayList;

    .line 12
    iput-object v0, p0, Lc/p/m;->l:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lc/p/m;->m:Ljava/util/ArrayList;

    .line 14
    iput-object v0, p0, Lc/p/m;->n:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, Lc/p/m;->o:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Lc/p/m;->p:Ljava/util/ArrayList;

    .line 17
    new-instance v1, Lc/p/t;

    invoke-direct {v1}, Lc/p/t;-><init>()V

    iput-object v1, p0, Lc/p/m;->q:Lc/p/t;

    .line 18
    new-instance v1, Lc/p/t;

    invoke-direct {v1}, Lc/p/t;-><init>()V

    iput-object v1, p0, Lc/p/m;->r:Lc/p/t;

    .line 19
    iput-object v0, p0, Lc/p/m;->s:Lc/p/q;

    .line 20
    sget-object v1, Lc/p/m;->H:[I

    iput-object v1, p0, Lc/p/m;->t:[I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lc/p/m;->w:Z

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc/p/m;->x:Ljava/util/ArrayList;

    .line 23
    iput v1, p0, Lc/p/m;->y:I

    .line 24
    iput-boolean v1, p0, Lc/p/m;->z:Z

    .line 25
    iput-boolean v1, p0, Lc/p/m;->A:Z

    .line 26
    iput-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/p/m;->C:Ljava/util/ArrayList;

    .line 28
    sget-object v0, Lc/p/m;->I:Lc/p/g;

    iput-object v0, p0, Lc/p/m;->G:Lc/p/g;

    return-void
.end method

.method private static G(Lc/p/s;Lc/p/s;Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object p0, p0, Lc/p/s;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    iget-object p1, p1, Lc/p/s;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_13

    if-nez p1, :cond_13

    const/4 p2, 0x0

    goto :goto_1d

    :cond_13
    if-eqz p0, :cond_1d

    if-nez p1, :cond_18

    goto :goto_1d

    .line 3
    :cond_18
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_1d
    :goto_1d
    return p2
.end method

.method private H(Lc/d/a;Lc/d/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a<",
            "Landroid/view/View;",
            "Lc/p/s;",
            ">;",
            "Lc/d/a<",
            "Landroid/view/View;",
            "Lc/p/s;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    .line 2
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    .line 3
    invoke-virtual {p0, v2}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 4
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    .line 5
    invoke-virtual {p0, v3}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 6
    invoke-virtual {p1, v2}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/p/s;

    .line 7
    invoke-virtual {p2, v3}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/p/s;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 8
    iget-object v6, p0, Lc/p/m;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v4, p0, Lc/p/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1, v2}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, v3}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private I(Lc/d/a;Lc/d/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a<",
            "Landroid/view/View;",
            "Lc/p/s;",
            ">;",
            "Lc/d/a<",
            "Landroid/view/View;",
            "Lc/p/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/d/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_39

    .line 2
    invoke-virtual {p1, v0}, Lc/d/g;->i(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_36

    .line 3
    invoke-virtual {p0, v1}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 4
    invoke-virtual {p2, v1}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/p/s;

    if-eqz v1, :cond_36

    .line 5
    iget-object v2, v1, Lc/p/s;->b:Landroid/view/View;

    invoke-virtual {p0, v2}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 6
    invoke-virtual {p1, v0}, Lc/d/g;->k(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/s;

    .line 7
    iget-object v3, p0, Lc/p/m;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v2, p0, Lc/p/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_39
    return-void
.end method

.method private J(Lc/d/a;Lc/d/a;Lc/d/d;Lc/d/d;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a<",
            "Landroid/view/View;",
            "Lc/p/s;",
            ">;",
            "Lc/d/a<",
            "Landroid/view/View;",
            "Lc/p/s;",
            ">;",
            "Lc/d/d<",
            "Landroid/view/View;",
            ">;",
            "Lc/d/d<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lc/d/d;->l()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    .line 2
    invoke-virtual {p3, v1}, Lc/d/d;->m(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    .line 3
    invoke-virtual {p0, v2}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 4
    invoke-virtual {p3, v1}, Lc/d/d;->h(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Lc/d/d;->e(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    .line 5
    invoke-virtual {p0, v3}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 6
    invoke-virtual {p1, v2}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/p/s;

    .line 7
    invoke-virtual {p2, v3}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/p/s;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 8
    iget-object v6, p0, Lc/p/m;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v4, p0, Lc/p/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1, v2}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, v3}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private K(Lc/d/a;Lc/d/a;Lc/d/a;Lc/d/a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a<",
            "Landroid/view/View;",
            "Lc/p/s;",
            ">;",
            "Lc/d/a<",
            "Landroid/view/View;",
            "Lc/p/s;",
            ">;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lc/d/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lc/d/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    .line 2
    invoke-virtual {p3, v1}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    .line 3
    invoke-virtual {p0, v2}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 4
    invoke-virtual {p3, v1}, Lc/d/g;->i(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    .line 5
    invoke-virtual {p0, v3}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 6
    invoke-virtual {p1, v2}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/p/s;

    .line 7
    invoke-virtual {p2, v3}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/p/s;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 8
    iget-object v6, p0, Lc/p/m;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v4, p0, Lc/p/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1, v2}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, v3}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private L(Lc/p/t;Lc/p/t;)V
    .registers 8

    .line 1
    new-instance v0, Lc/d/a;

    iget-object v1, p1, Lc/p/t;->a:Lc/d/a;

    invoke-direct {v0, v1}, Lc/d/a;-><init>(Lc/d/g;)V

    .line 2
    new-instance v1, Lc/d/a;

    iget-object v2, p2, Lc/p/t;->a:Lc/d/a;

    invoke-direct {v1, v2}, Lc/d/a;-><init>(Lc/d/g;)V

    const/4 v2, 0x0

    .line 3
    :goto_f
    iget-object v3, p0, Lc/p/m;->t:[I

    array-length v4, v3

    if-ge v2, v4, :cond_41

    .line 4
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_33

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_23

    goto :goto_3e

    .line 5
    :cond_23
    iget-object v3, p1, Lc/p/t;->c:Lc/d/d;

    iget-object v4, p2, Lc/p/t;->c:Lc/d/d;

    invoke-direct {p0, v0, v1, v3, v4}, Lc/p/m;->J(Lc/d/a;Lc/d/a;Lc/d/d;Lc/d/d;)V

    goto :goto_3e

    .line 6
    :cond_2b
    iget-object v3, p1, Lc/p/t;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Lc/p/t;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Lc/p/m;->H(Lc/d/a;Lc/d/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_3e

    .line 7
    :cond_33
    iget-object v3, p1, Lc/p/t;->d:Lc/d/a;

    iget-object v4, p2, Lc/p/t;->d:Lc/d/a;

    invoke-direct {p0, v0, v1, v3, v4}, Lc/p/m;->K(Lc/d/a;Lc/d/a;Lc/d/a;Lc/d/a;)V

    goto :goto_3e

    .line 8
    :cond_3b
    invoke-direct {p0, v0, v1}, Lc/p/m;->I(Lc/d/a;Lc/d/a;)V

    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 9
    :cond_41
    invoke-direct {p0, v0, v1}, Lc/p/m;->c(Lc/d/a;Lc/d/a;)V

    return-void
.end method

.method private R(Landroid/animation/Animator;Lc/d/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Lc/d/a<",
            "Landroid/animation/Animator;",
            "Lc/p/m$d;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 1
    new-instance v0, Lc/p/m$b;

    invoke-direct {v0, p0, p2}, Lc/p/m$b;-><init>(Lc/p/m;Lc/d/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    invoke-virtual {p0, p1}, Lc/p/m;->e(Landroid/animation/Animator;)V

    :cond_d
    return-void
.end method

.method private c(Lc/d/a;Lc/d/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a<",
            "Landroid/view/View;",
            "Lc/p/s;",
            ">;",
            "Lc/d/a<",
            "Landroid/view/View;",
            "Lc/p/s;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual {p1}, Lc/d/g;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_24

    .line 2
    invoke-virtual {p1, v1}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/s;

    .line 3
    iget-object v4, v2, Lc/p/s;->b:Landroid/view/View;

    invoke-virtual {p0, v4}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4
    iget-object v4, p0, Lc/p/m;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lc/p/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6
    :cond_24
    :goto_24
    invoke-virtual {p2}, Lc/d/g;->size()I

    move-result p1

    if-ge v0, p1, :cond_45

    .line 7
    invoke-virtual {p2, v0}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/p/s;

    .line 8
    iget-object v1, p1, Lc/p/s;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lc/p/m;->F(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 9
    iget-object v1, p0, Lc/p/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lc/p/m;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_45
    return-void
.end method

.method private static d(Lc/p/t;Landroid/view/View;Lc/p/s;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lc/p/t;->a:Lc/d/a;

    invoke-virtual {v0, p1, p2}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1f

    .line 3
    iget-object v1, p0, Lc/p/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1a

    .line 4
    iget-object v1, p0, Lc/p/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    .line 5
    :cond_1a
    iget-object v1, p0, Lc/p/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_1f
    :goto_1f
    invoke-static {p1}, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 7
    iget-object v1, p0, Lc/p/t;->d:Lc/d/a;

    invoke-virtual {v1, p2}, Lc/d/g;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 8
    iget-object v1, p0, Lc/p/t;->d:Lc/d/a;

    invoke-virtual {v1, p2, v0}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 9
    :cond_33
    iget-object v1, p0, Lc/p/t;->d:Lc/d/a;

    invoke-virtual {v1, p2, p1}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_7d

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 12
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 14
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 15
    iget-object p2, p0, Lc/p/t;->c:Lc/d/d;

    invoke-virtual {p2, v1, v2}, Lc/d/d;->g(J)I

    move-result p2

    if-ltz p2, :cond_74

    .line 16
    iget-object p1, p0, Lc/p/t;->c:Lc/d/d;

    invoke-virtual {p1, v1, v2}, Lc/d/d;->e(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7d

    const/4 p2, 0x0

    .line 17
    invoke-static {p1, p2}, Landroidx/core/view/v;->w0(Landroid/view/View;Z)V

    .line 18
    iget-object p0, p0, Lc/p/t;->c:Lc/d/d;

    invoke-virtual {p0, v1, v2, v0}, Lc/d/d;->i(JLjava/lang/Object;)V

    goto :goto_7d

    :cond_74
    const/4 p2, 0x1

    .line 19
    invoke-static {p1, p2}, Landroidx/core/view/v;->w0(Landroid/view/View;Z)V

    .line 20
    iget-object p0, p0, Lc/p/t;->c:Lc/d/d;

    invoke-virtual {p0, v1, v2, p1}, Lc/d/d;->i(JLjava/lang/Object;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private g(Landroid/view/View;Z)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lc/p/m;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    .line 3
    :cond_16
    iget-object v1, p0, Lc/p/m;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    .line 4
    :cond_21
    iget-object v1, p0, Lc/p/m;->l:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v1, :cond_3f

    .line 6
    iget-object v4, p0, Lc/p/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    return-void

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 7
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6a

    .line 8
    new-instance v1, Lc/p/s;

    invoke-direct {v1, p1}, Lc/p/s;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_52

    .line 9
    invoke-virtual {p0, v1}, Lc/p/m;->i(Lc/p/s;)V

    goto :goto_55

    .line 10
    :cond_52
    invoke-virtual {p0, v1}, Lc/p/m;->f(Lc/p/s;)V

    .line 11
    :goto_55
    iget-object v3, v1, Lc/p/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0, v1}, Lc/p/m;->h(Lc/p/s;)V

    if-eqz p2, :cond_65

    .line 13
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;

    invoke-static {v3, p1, v1}, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V

    goto :goto_6a

    .line 14
    :cond_65
    iget-object v3, p0, Lc/p/m;->r:Lc/p/t;

    invoke-static {v3, p1, v1}, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V

    .line 15
    :cond_6a
    :goto_6a
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b7

    .line 16
    iget-object v1, p0, Lc/p/m;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_7d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    return-void

    .line 17
    :cond_7d
    iget-object v0, p0, Lc/p/m;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_88

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    return-void

    .line 18
    :cond_88
    iget-object v0, p0, Lc/p/m;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_a5

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_91
    if-ge v1, v0, :cond_a5

    .line 20
    iget-object v3, p0, Lc/p/m;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    return-void

    :cond_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    .line 21
    :cond_a5
    check-cast p1, Landroid/view/ViewGroup;

    .line 22
    :goto_a7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_b7

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lc/p/m;->g(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    :cond_b7
    return-void
.end method

.method private static w()Lc/d/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/d/a<",
            "Landroid/animation/Animator;",
            "Lc/p/m$d;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/p/m;->J:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a;

    if-nez v0, :cond_14

    .line 2
    new-instance v0, Lc/d/a;

    invoke-direct {v0}, Lc/d/a;-><init>()V

    .line 3
    sget-object v1, Lc/p/m;->J:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_14
    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/p/m;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public B()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public C()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public D(Landroid/view/View;Z)Lc/p/s;
    .registers 4

    .line 1
    iget-object v0, p0, Lc/p/m;->s:Lc/p/q;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1, p2}, Lc/p/m;->D(Landroid/view/View;Z)Lc/p/s;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p2, :cond_e

    .line 3
    iget-object p2, p0, Lc/p/m;->q:Lc/p/t;

    goto :goto_10

    :cond_e
    iget-object p2, p0, Lc/p/m;->r:Lc/p/t;

    .line 4
    :goto_10
    iget-object p2, p2, Lc/p/t;->a:Lc/d/a;

    invoke-virtual {p2, p1}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/p/s;

    return-object p1
.end method

.method public E(Lc/p/s;Lc/p/s;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_39

    if-eqz p2, :cond_39

    .line 1
    invoke-virtual {p0}, Lc/p/m;->C()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_39

    aget-object v5, v2, v4

    .line 3
    invoke-static {p1, p2, v5}, Lc/p/m;->G(Lc/p/s;Lc/p/s;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_38

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 4
    :cond_1c
    iget-object v2, p1, Lc/p/s;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {p1, p2, v3}, Lc/p/m;->G(Lc/p/s;Lc/p/s;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    :goto_38
    const/4 v0, 0x1

    :cond_39
    return v0
.end method

.method F(Landroid/view/View;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lc/p/m;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v2

    .line 3
    :cond_14
    iget-object v1, p0, Lc/p/m;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v2

    .line 4
    :cond_1f
    iget-object v1, p0, Lc/p/m;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_3c

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v1, :cond_3c

    .line 6
    iget-object v4, p0, Lc/p/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 7
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    return v2

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 8
    :cond_3c
    iget-object v1, p0, Lc/p/m;->m:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    invoke-static {p1}, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 9
    iget-object v1, p0, Lc/p/m;->m:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    return v2

    .line 10
    :cond_53
    iget-object v1, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_79

    iget-object v1, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, p0, Lc/p/m;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_6e

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_6e
    iget-object v1, p0, Lc/p/m;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_78

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_78
    return v3

    .line 13
    :cond_79
    iget-object v1, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_bd

    .line 14
    :cond_8e
    iget-object v0, p0, Lc/p/m;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_9d

    invoke-static {p1}, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    return v3

    .line 15
    :cond_9d
    iget-object v0, p0, Lc/p/m;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_bc

    const/4 v0, 0x0

    .line 16
    :goto_a2
    iget-object v1, p0, Lc/p/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_bc

    .line 17
    iget-object v1, p0, Lc/p/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    return v3

    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    :cond_bc
    return v2

    :cond_bd
    :goto_bd
    return v3
.end method

.method public M(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lc/p/m;->A:Z

    if-nez v0, :cond_59

    .line 2
    invoke-static {}, Lc/p/m;->w()Lc/d/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lc/d/g;->size()I

    move-result v1

    .line 4
    invoke-static {p1}, Lc/p/c0;->d(Landroid/view/View;)Lc/p/m0;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_12
    if-ltz v1, :cond_32

    .line 5
    invoke-virtual {v0, v1}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/p/m$d;

    .line 6
    iget-object v4, v3, Lc/p/m$d;->a:Landroid/view/View;

    if-eqz v4, :cond_2f

    iget-object v3, v3, Lc/p/m$d;->d:Lc/p/m0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 7
    invoke-virtual {v0, v1}, Lc/d/g;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 8
    invoke-static {v3}, Lc/p/a;->b(Landroid/animation/Animator;)V

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 9
    :cond_32
    iget-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_57

    .line 10
    iget-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_57

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/p/m$f;

    invoke-interface {v3, p0}, Lc/p/m$f;->a(Lc/p/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 14
    :cond_57
    iput-boolean v2, p0, Lc/p/m;->z:Z

    :cond_59
    return-void
.end method

.method N(Landroid/view/ViewGroup;)V
    .registers 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/p/m;->u:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/p/m;->v:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lc/p/m;->q:Lc/p/t;

    iget-object v1, p0, Lc/p/m;->r:Lc/p/t;

    invoke-direct {p0, v0, v1}, Lc/p/m;->L(Lc/p/t;Lc/p/t;)V

    .line 4
    invoke-static {}, Lc/p/m;->w()Lc/d/a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lc/d/g;->size()I

    move-result v1

    .line 6
    invoke-static {p1}, Lc/p/c0;->d(Landroid/view/View;)Lc/p/m0;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_23
    if-ltz v1, :cond_84

    .line 7
    invoke-virtual {v0, v1}, Lc/d/g;->i(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_81

    .line 8
    invoke-virtual {v0, v4}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/p/m$d;

    if-eqz v5, :cond_81

    .line 9
    iget-object v6, v5, Lc/p/m$d;->a:Landroid/view/View;

    if-eqz v6, :cond_81

    iget-object v6, v5, Lc/p/m$d;->d:Lc/p/m0;

    .line 10
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 11
    iget-object v6, v5, Lc/p/m$d;->c:Lc/p/s;

    .line 12
    iget-object v7, v5, Lc/p/m$d;->a:Landroid/view/View;

    .line 13
    invoke-virtual {p0, v7, v3}, Lc/p/m;->D(Landroid/view/View;Z)Lc/p/s;

    move-result-object v8

    .line 14
    invoke-virtual {p0, v7, v3}, Lc/p/m;->s(Landroid/view/View;Z)Lc/p/s;

    move-result-object v9

    if-nez v8, :cond_5c

    if-nez v9, :cond_5c

    .line 15
    iget-object v9, p0, Lc/p/m;->r:Lc/p/t;

    iget-object v9, v9, Lc/p/t;->a:Lc/d/a;

    invoke-virtual {v9, v7}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lc/p/s;

    :cond_5c
    if-nez v8, :cond_60

    if-eqz v9, :cond_6a

    .line 16
    :cond_60
    iget-object v5, v5, Lc/p/m$d;->e:Lc/p/m;

    .line 17
    invoke-virtual {v5, v6, v9}, Lc/p/m;->E(Lc/p/s;Lc/p/s;)Z

    move-result v5

    if-eqz v5, :cond_6a

    const/4 v5, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v5, 0x0

    :goto_6b
    if-eqz v5, :cond_81

    .line 18
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_7e

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_7a

    goto :goto_7e

    .line 19
    :cond_7a
    invoke-virtual {v0, v4}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 20
    :cond_7e
    :goto_7e
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_81
    :goto_81
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 21
    :cond_84
    iget-object v6, p0, Lc/p/m;->q:Lc/p/t;

    iget-object v7, p0, Lc/p/m;->r:Lc/p/t;

    iget-object v8, p0, Lc/p/m;->u:Ljava/util/ArrayList;

    iget-object v9, p0, Lc/p/m;->v:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lc/p/m;->n(Landroid/view/ViewGroup;Lc/p/t;Lc/p/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 22
    invoke-virtual {p0}, Lc/p/m;->S()V

    return-void
.end method

.method public O(Lc/p/m$f;)Lc/p/m;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-object p0

    .line 2
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    :cond_13
    return-object p0
.end method

.method public P(Landroid/view/View;)Lc/p/m;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public Q(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lc/p/m;->z:Z

    if-eqz v0, :cond_5e

    .line 2
    iget-boolean v0, p0, Lc/p/m;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5c

    .line 3
    invoke-static {}, Lc/p/m;->w()Lc/d/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lc/d/g;->size()I

    move-result v2

    .line 5
    invoke-static {p1}, Lc/p/c0;->d(Landroid/view/View;)Lc/p/m0;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_37

    .line 6
    invoke-virtual {v0, v2}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/p/m$d;

    .line 7
    iget-object v4, v3, Lc/p/m$d;->a:Landroid/view/View;

    if-eqz v4, :cond_34

    iget-object v3, v3, Lc/p/m$d;->d:Lc/p/m0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 8
    invoke-virtual {v0, v2}, Lc/d/g;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 9
    invoke-static {v3}, Lc/p/a;->c(Landroid/animation/Animator;)V

    :cond_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 10
    :cond_37
    iget-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5c

    .line 11
    iget-object p1, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v0, :cond_5c

    .line 14
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/p/m$f;

    invoke-interface {v3, p0}, Lc/p/m$f;->b(Lc/p/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 15
    :cond_5c
    iput-boolean v1, p0, Lc/p/m;->z:Z

    :cond_5e
    return-void
.end method

.method protected S()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lc/p/m;->Z()V

    .line 2
    invoke-static {}, Lc/p/m;->w()Lc/d/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/p/m;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 4
    invoke-virtual {v0, v2}, Lc/d/g;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5
    invoke-virtual {p0}, Lc/p/m;->Z()V

    .line 6
    invoke-direct {p0, v2, v0}, Lc/p/m;->R(Landroid/animation/Animator;Lc/d/a;)V

    goto :goto_d

    .line 7
    :cond_26
    iget-object v0, p0, Lc/p/m;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    invoke-virtual {p0}, Lc/p/m;->o()V

    return-void
.end method

.method public T(J)Lc/p/m;
    .registers 3

    .line 1
    iput-wide p1, p0, Lc/p/m;->d:J

    return-object p0
.end method

.method public U(Lc/p/m$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/p/m;->E:Lc/p/m$e;

    return-void
.end method

.method public V(Landroid/animation/TimeInterpolator;)Lc/p/m;
    .registers 2

    .line 1
    iput-object p1, p0, Lc/p/m;->e:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public W(Lc/p/g;)V
    .registers 2

    if-nez p1, :cond_7

    .line 1
    sget-object p1, Lc/p/m;->I:Lc/p/g;

    iput-object p1, p0, Lc/p/m;->G:Lc/p/g;

    goto :goto_9

    .line 2
    :cond_7
    iput-object p1, p0, Lc/p/m;->G:Lc/p/g;

    :goto_9
    return-void
.end method

.method public X(Lc/p/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/p/m;->D:Lc/p/p;

    return-void
.end method

.method public Y(J)Lc/p/m;
    .registers 3

    .line 1
    iput-wide p1, p0, Lc/p/m;->c:J

    return-object p0
.end method

.method protected Z()V
    .registers 6

    .line 1
    iget v0, p0, Lc/p/m;->y:I

    if-nez v0, :cond_2c

    .line 2
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 3
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2a

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/p/m$f;

    invoke-interface {v4, p0}, Lc/p/m$f;->c(Lc/p/m;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 7
    :cond_2a
    iput-boolean v1, p0, Lc/p/m;->A:Z

    .line 8
    :cond_2c
    iget v0, p0, Lc/p/m;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/p/m;->y:I

    return-void
.end method

.method public a(Lc/p/m$f;)Lc/p/m;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    .line 3
    :cond_b
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method a0(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-wide v0, p0, Lc/p/m;->d:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_4f

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lc/p/m;->d:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_4f
    iget-wide v0, p0, Lc/p/m;->c:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_6e

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/p/m;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_6e
    iget-object v0, p0, Lc/p/m;->e:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_8b

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lc/p/m;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_8b
    iget-object v0, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9b

    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_133

    .line 10
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_e9

    const/4 v0, 0x0

    .line 12
    :goto_b8
    iget-object v3, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_e9

    if-lez v0, :cond_d1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_d1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 15
    :cond_e9
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_122

    .line 16
    :goto_f1
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_122

    if-lez v2, :cond_10a

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_10a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f1

    .line 19
    :cond_122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_133
    return-object p1
.end method

.method public b(Landroid/view/View;)Lc/p/m;
    .registers 3

    .line 1
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected cancel()V
    .registers 5

    .line 1
    iget-object v0, p0, Lc/p/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2
    iget-object v1, p0, Lc/p/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 3
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4
    :cond_18
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    .line 5
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_3d

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/p/m$f;

    invoke-interface {v3, p0}, Lc/p/m$f;->d(Lc/p/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3d
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lc/p/m;->l()Lc/p/m;

    move-result-object v0

    return-object v0
.end method

.method protected e(Landroid/animation/Animator;)V
    .registers 7

    if-nez p1, :cond_6

    .line 1
    invoke-virtual {p0}, Lc/p/m;->o()V

    goto :goto_43

    .line 2
    :cond_6
    invoke-virtual {p0}, Lc/p/m;->p()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    .line 3
    invoke-virtual {p0}, Lc/p/m;->p()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 4
    :cond_17
    invoke-virtual {p0}, Lc/p/m;->x()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2b

    .line 5
    invoke-virtual {p0}, Lc/p/m;->x()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 6
    :cond_2b
    invoke-virtual {p0}, Lc/p/m;->r()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 7
    invoke-virtual {p0}, Lc/p/m;->r()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    :cond_38
    new-instance v0, Lc/p/m$c;

    invoke-direct {v0, p0}, Lc/p/m$c;-><init>(Lc/p/m;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_43
    return-void
.end method

.method public abstract f(Lc/p/s;)V
.end method

.method h(Lc/p/s;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lc/p/m;->D:Lc/p/p;

    if-eqz v0, :cond_30

    iget-object v0, p1, Lc/p/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2
    iget-object v0, p0, Lc/p/m;->D:Lc/p/p;

    invoke-virtual {v0}, Lc/p/p;->b()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_28

    .line 4
    iget-object v3, p1, Lc/p/s;->a:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_29

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_28
    const/4 v1, 0x1

    :goto_29
    if-nez v1, :cond_30

    .line 5
    iget-object v0, p0, Lc/p/m;->D:Lc/p/p;

    invoke-virtual {v0, p1}, Lc/p/p;->a(Lc/p/s;)V

    :cond_30
    return-void
.end method

.method public abstract i(Lc/p/s;)V
.end method

.method j(Landroid/view/ViewGroup;Z)V
    .registers 8

    .line 1
    invoke-virtual {p0, p2}, Lc/p/m;->k(Z)V

    .line 2
    iget-object v0, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    :cond_14
    iget-object v0, p0, Lc/p/m;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_1e
    iget-object v0, p0, Lc/p/m;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2e

    .line 5
    :cond_29
    invoke-direct {p0, p1, p2}, Lc/p/m;->g(Landroid/view/View;Z)V

    goto/16 :goto_a6

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    .line 6
    :goto_2f
    iget-object v2, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6f

    .line 7
    iget-object v2, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 9
    new-instance v3, Lc/p/s;

    invoke-direct {v3, v2}, Lc/p/s;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_54

    .line 10
    invoke-virtual {p0, v3}, Lc/p/m;->i(Lc/p/s;)V

    goto :goto_57

    .line 11
    :cond_54
    invoke-virtual {p0, v3}, Lc/p/m;->f(Lc/p/s;)V

    .line 12
    :goto_57
    iget-object v4, v3, Lc/p/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0, v3}, Lc/p/m;->h(Lc/p/s;)V

    if-eqz p2, :cond_67

    .line 14
    iget-object v4, p0, Lc/p/m;->q:Lc/p/t;

    invoke-static {v4, v2, v3}, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V

    goto :goto_6c

    .line 15
    :cond_67
    iget-object v4, p0, Lc/p/m;->r:Lc/p/t;

    invoke-static {v4, v2, v3}, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_6f
    const/4 p1, 0x0

    .line 16
    :goto_70
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a6

    .line 17
    iget-object v0, p0, Lc/p/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    new-instance v2, Lc/p/s;

    invoke-direct {v2, v0}, Lc/p/s;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8b

    .line 19
    invoke-virtual {p0, v2}, Lc/p/m;->i(Lc/p/s;)V

    goto :goto_8e

    .line 20
    :cond_8b
    invoke-virtual {p0, v2}, Lc/p/m;->f(Lc/p/s;)V

    .line 21
    :goto_8e
    iget-object v3, v2, Lc/p/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p0, v2}, Lc/p/m;->h(Lc/p/s;)V

    if-eqz p2, :cond_9e

    .line 23
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;

    invoke-static {v3, v0, v2}, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V

    goto :goto_a3

    .line 24
    :cond_9e
    iget-object v3, p0, Lc/p/m;->r:Lc/p/t;

    invoke-static {v3, v0, v2}, Lc/p/m;->d(Lc/p/t;Landroid/view/View;Lc/p/s;)V

    :goto_a3
    add-int/lit8 p1, p1, 0x1

    goto :goto_70

    :cond_a6
    :goto_a6
    if-nez p2, :cond_ea

    .line 25
    iget-object p1, p0, Lc/p/m;->F:Lc/d/a;

    if-eqz p1, :cond_ea

    .line 26
    invoke-virtual {p1}, Lc/d/g;->size()I

    move-result p1

    .line 27
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_b6
    if-ge v0, p1, :cond_ce

    .line 28
    iget-object v2, p0, Lc/p/m;->F:Lc/d/a;

    invoke-virtual {v2, v0}, Lc/d/g;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;

    iget-object v3, v3, Lc/p/t;->d:Lc/d/a;

    invoke-virtual {v3, v2}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_ce
    :goto_ce
    if-ge v1, p1, :cond_ea

    .line 30
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_e7

    .line 31
    iget-object v2, p0, Lc/p/m;->F:Lc/d/a;

    invoke-virtual {v2, v1}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;

    iget-object v3, v3, Lc/p/t;->d:Lc/d/a;

    invoke-virtual {v3, v2, v0}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e7
    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    :cond_ea
    return-void
.end method

.method k(Z)V
    .registers 2

    if-eqz p1, :cond_18

    .line 1
    iget-object p1, p0, Lc/p/m;->q:Lc/p/t;

    iget-object p1, p1, Lc/p/t;->a:Lc/d/a;

    invoke-virtual {p1}, Lc/d/g;->clear()V

    .line 2
    iget-object p1, p0, Lc/p/m;->q:Lc/p/t;

    iget-object p1, p1, Lc/p/t;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 3
    iget-object p1, p0, Lc/p/m;->q:Lc/p/t;

    iget-object p1, p1, Lc/p/t;->c:Lc/d/d;

    invoke-virtual {p1}, Lc/d/d;->b()V

    goto :goto_2d

    .line 4
    :cond_18
    iget-object p1, p0, Lc/p/m;->r:Lc/p/t;

    iget-object p1, p1, Lc/p/t;->a:Lc/d/a;

    invoke-virtual {p1}, Lc/d/g;->clear()V

    .line 5
    iget-object p1, p0, Lc/p/m;->r:Lc/p/t;

    iget-object p1, p1, Lc/p/t;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 6
    iget-object p1, p0, Lc/p/m;->r:Lc/p/t;

    iget-object p1, p1, Lc/p/t;->c:Lc/d/d;

    invoke-virtual {p1}, Lc/d/d;->b()V

    :goto_2d
    return-void
.end method

.method public l()Lc/p/m;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/p/m;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lc/p/m;->C:Ljava/util/ArrayList;

    .line 3
    new-instance v2, Lc/p/t;

    invoke-direct {v2}, Lc/p/t;-><init>()V

    iput-object v2, v1, Lc/p/m;->q:Lc/p/t;

    .line 4
    new-instance v2, Lc/p/t;

    invoke-direct {v2}, Lc/p/t;-><init>()V

    iput-object v2, v1, Lc/p/m;->r:Lc/p/t;

    .line 5
    iput-object v0, v1, Lc/p/m;->u:Ljava/util/ArrayList;

    .line 6
    iput-object v0, v1, Lc/p/m;->v:Ljava/util/ArrayList;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    return-object v0
.end method

.method public m(Landroid/view/ViewGroup;Lc/p/s;Lc/p/s;)Landroid/animation/Animator;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method protected n(Landroid/view/ViewGroup;Lc/p/t;Lc/p/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lc/p/t;",
            "Lc/p/t;",
            "Ljava/util/ArrayList<",
            "Lc/p/s;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lc/p/s;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-static {}, Lc/p/m;->w()Lc/d/a;

    move-result-object v8

    .line 2
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_17
    if-ge v12, v10, :cond_12b

    move-object/from16 v13, p4

    .line 4
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/p/s;

    move-object/from16 v14, p5

    .line 5
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/p/s;

    if-eqz v2, :cond_34

    .line 6
    iget-object v5, v2, Lc/p/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    const/4 v2, 0x0

    :cond_34
    if-eqz v3, :cond_3f

    .line 7
    iget-object v5, v3, Lc/p/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const/4 v3, 0x0

    :cond_3f
    if-nez v2, :cond_49

    if-nez v3, :cond_49

    :cond_43
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_125

    :cond_49
    if-eqz v2, :cond_56

    if-eqz v3, :cond_56

    .line 8
    invoke-virtual {v6, v2, v3}, Lc/p/m;->E(Lc/p/s;Lc/p/s;)Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_56

    :cond_54
    const/4 v5, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    const/4 v5, 0x1

    :goto_57
    if-eqz v5, :cond_43

    .line 9
    invoke-virtual {v6, v7, v2, v3}, Lc/p/m;->m(Landroid/view/ViewGroup;Lc/p/s;Lc/p/s;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_43

    if-eqz v3, :cond_e6

    .line 10
    iget-object v15, v3, Lc/p/s;->b:Landroid/view/View;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lc/p/m;->C()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_da

    .line 12
    array-length v11, v4

    if-lez v11, :cond_da

    .line 13
    new-instance v11, Lc/p/s;

    invoke-direct {v11, v15}, Lc/p/s;-><init>(Landroid/view/View;)V

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 14
    iget-object v5, v10, Lc/p/t;->a:Lc/d/a;

    invoke-virtual {v5, v15}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/p/s;

    if-eqz v5, :cond_a1

    const/4 v10, 0x0

    .line 15
    :goto_82
    array-length v13, v4

    if-ge v10, v13, :cond_a1

    .line 16
    iget-object v13, v11, Lc/p/s;->a:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Lc/p/s;->a:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    .line 17
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 18
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p5

    move/from16 v12, v18

    move-object/from16 v5, v19

    goto :goto_82

    :cond_a1
    move/from16 v18, v12

    .line 19
    invoke-virtual {v8}, Lc/d/g;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_a8
    if-ge v5, v4, :cond_d7

    .line 20
    invoke-virtual {v8, v5}, Lc/d/g;->i(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 21
    invoke-virtual {v8, v10}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/p/m$d;

    .line 22
    iget-object v12, v10, Lc/p/m$d;->c:Lc/p/s;

    if-eqz v12, :cond_d4

    iget-object v12, v10, Lc/p/m$d;->a:Landroid/view/View;

    if-ne v12, v15, :cond_d4

    iget-object v12, v10, Lc/p/m$d;->b:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lc/p/m;->t()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d4

    .line 24
    iget-object v10, v10, Lc/p/m$d;->c:Lc/p/s;

    invoke-virtual {v10, v11}, Lc/p/s;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d4

    const/4 v4, 0x0

    goto :goto_e3

    :cond_d4
    add-int/lit8 v5, v5, 0x1

    goto :goto_a8

    :cond_d7
    move-object/from16 v4, v17

    goto :goto_e3

    :cond_da
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v4, v17

    const/4 v11, 0x0

    :goto_e3
    move-object v10, v4

    move-object v5, v11

    goto :goto_f2

    :cond_e6
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    .line 25
    iget-object v4, v2, Lc/p/s;->b:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_f2
    if-eqz v10, :cond_125

    .line 26
    iget-object v4, v6, Lc/p/m;->D:Lc/p/p;

    if-eqz v4, :cond_10a

    .line 27
    invoke-virtual {v4, v7, v6, v2, v3}, Lc/p/p;->c(Landroid/view/ViewGroup;Lc/p/m;Lc/p/s;Lc/p/s;)J

    move-result-wide v2

    .line 28
    iget-object v4, v6, Lc/p/m;->C:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_10a
    move-wide v11, v0

    .line 30
    new-instance v13, Lc/p/m$d;

    invoke-virtual/range {p0 .. p0}, Lc/p/m;->t()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static/range {p1 .. p1}, Lc/p/c0;->d(Landroid/view/View;)Lc/p/m0;

    move-result-object v4

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lc/p/m$d;-><init>(Landroid/view/View;Ljava/lang/String;Lc/p/m;Lc/p/m0;Lc/p/s;)V

    .line 32
    invoke-virtual {v8, v10, v13}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, v6, Lc/p/m;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_125
    :goto_125
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_17

    .line 34
    :cond_12b
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_155

    const/4 v11, 0x0

    .line 35
    :goto_132
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_155

    .line 36
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 37
    iget-object v3, v6, Lc/p/m;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 38
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 39
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_132

    :cond_155
    return-void
.end method

.method protected o()V
    .registers 7

    .line 1
    iget v0, p0, Lc/p/m;->y:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lc/p/m;->y:I

    if-nez v0, :cond_6a

    .line 2
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 3
    iget-object v0, p0, Lc/p/m;->B:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_2e

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/p/m$f;

    invoke-interface {v5, p0}, Lc/p/m$f;->e(Lc/p/m;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_2e
    const/4 v0, 0x0

    .line 7
    :goto_2f
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;

    iget-object v3, v3, Lc/p/t;->c:Lc/d/d;

    invoke-virtual {v3}, Lc/d/d;->l()I

    move-result v3

    if-ge v0, v3, :cond_4b

    .line 8
    iget-object v3, p0, Lc/p/m;->q:Lc/p/t;

    iget-object v3, v3, Lc/p/t;->c:Lc/d/d;

    invoke-virtual {v3, v0}, Lc/d/d;->m(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_48

    .line 9
    invoke-static {v3, v2}, Landroidx/core/view/v;->w0(Landroid/view/View;Z)V

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4b
    const/4 v0, 0x0

    .line 10
    :goto_4c
    iget-object v3, p0, Lc/p/m;->r:Lc/p/t;

    iget-object v3, v3, Lc/p/t;->c:Lc/d/d;

    invoke-virtual {v3}, Lc/d/d;->l()I

    move-result v3

    if-ge v0, v3, :cond_68

    .line 11
    iget-object v3, p0, Lc/p/m;->r:Lc/p/t;

    iget-object v3, v3, Lc/p/t;->c:Lc/d/d;

    invoke-virtual {v3, v0}, Lc/d/d;->m(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_65

    .line 12
    invoke-static {v3, v2}, Landroidx/core/view/v;->w0(Landroid/view/View;Z)V

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 13
    :cond_68
    iput-boolean v1, p0, Lc/p/m;->A:Z

    :cond_6a
    return-void
.end method

.method public p()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lc/p/m;->d:J

    return-wide v0
.end method

.method public q()Lc/p/m$e;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/p/m;->E:Lc/p/m$e;

    return-object v0
.end method

.method public r()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/p/m;->e:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method s(Landroid/view/View;Z)Lc/p/s;
    .registers 9

    .line 1
    iget-object v0, p0, Lc/p/m;->s:Lc/p/q;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1, p2}, Lc/p/m;->s(Landroid/view/View;Z)Lc/p/s;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p2, :cond_e

    .line 3
    iget-object v0, p0, Lc/p/m;->u:Ljava/util/ArrayList;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lc/p/m;->v:Ljava/util/ArrayList;

    :goto_10
    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    .line 4
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v2, :cond_2e

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/p/s;

    if-nez v5, :cond_25

    return-object v1

    .line 6
    :cond_25
    iget-object v5, v5, Lc/p/s;->b:Landroid/view/View;

    if-ne v5, p1, :cond_2b

    move v3, v4

    goto :goto_2e

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2e
    :goto_2e
    if-ltz v3, :cond_3e

    if-eqz p2, :cond_35

    .line 7
    iget-object p1, p0, Lc/p/m;->v:Ljava/util/ArrayList;

    goto :goto_37

    :cond_35
    iget-object p1, p0, Lc/p/m;->u:Ljava/util/ArrayList;

    .line 8
    :goto_37
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lc/p/s;

    :cond_3e
    return-object v1
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/p/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lc/p/m;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lc/p/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/p/m;->G:Lc/p/g;

    return-object v0
.end method

.method public v()Lc/p/p;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/p/m;->D:Lc/p/p;

    return-object v0
.end method

.method public x()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lc/p/m;->c:J

    return-wide v0
.end method

.method public y()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/p/m;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public z()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/p/m;->h:Ljava/util/ArrayList;

    return-object v0
.end method
