.class public Landroidx/lifecycle/k;
.super Landroidx/lifecycle/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/k$a;
    }
.end annotation


# instance fields
.field private a:Lc/b/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/b/a<",
            "Landroidx/lifecycle/i;",
            "Landroidx/lifecycle/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/lifecycle/f$c;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/f$c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/j;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;Z)V

    return-void
.end method

.method private constructor <init>(Landroidx/lifecycle/j;Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Landroidx/lifecycle/f;-><init>()V

    .line 3
    new-instance v0, Lc/b/a/b/a;

    invoke-direct {v0}, Lc/b/a/b/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/lifecycle/k;->d:I

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/k;->e:Z

    .line 6
    iput-boolean v0, p0, Landroidx/lifecycle/k;->f:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/k;->g:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/k;->c:Ljava/lang/ref/WeakReference;

    .line 9
    sget-object p1, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;

    iput-object p1, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    .line 10
    iput-boolean p2, p0, Landroidx/lifecycle/k;->h:Z

    return-void
.end method

.method private d(Landroidx/lifecycle/j;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    .line 2
    invoke-virtual {v0}, Lc/b/a/b/b;->a()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    iget-boolean v1, p0, Landroidx/lifecycle/k;->f:Z

    if-nez v1, :cond_65

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/k$a;

    .line 6
    :goto_1c
    iget-object v3, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    iget-object v4, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Landroidx/lifecycle/k;->f:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc/b/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8
    iget-object v3, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-static {v3}, Landroidx/lifecycle/f$b;->a(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 9
    invoke-virtual {v3}, Landroidx/lifecycle/f$b;->b()Landroidx/lifecycle/f$c;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/k;->n(Landroidx/lifecycle/f$c;)V

    .line 10
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/k$a;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/k;->m()V

    goto :goto_1c

    .line 12
    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event down from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_65
    return-void
.end method

.method private e(Landroidx/lifecycle/i;)Landroidx/lifecycle/f$c;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    invoke-virtual {v0, p1}, Lc/b/a/b/a;->i(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/k$a;

    iget-object p1, p1, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    goto :goto_13

    :cond_12
    move-object p1, v0

    .line 3
    :goto_13
    iget-object v1, p0, Landroidx/lifecycle/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v0, p0, Landroidx/lifecycle/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/f$c;

    .line 4
    :cond_29
    iget-object v1, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    invoke-static {v1, p1}, Landroidx/lifecycle/k;->k(Landroidx/lifecycle/f$c;Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$c;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/lifecycle/k;->k(Landroidx/lifecycle/f$c;Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$c;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/k;->h:Z

    if-eqz v0, :cond_2b

    .line 2
    invoke-static {}, Lc/b/a/a/a;->b()Lc/b/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2b

    .line 3
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be called on the main thread"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_2b
    return-void
.end method

.method private g(Landroidx/lifecycle/j;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    .line 2
    invoke-virtual {v0}, Lc/b/a/b/b;->d()Lc/b/a/b/b$d;

    move-result-object v0

    .line 3
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-boolean v1, p0, Landroidx/lifecycle/k;->f:Z

    if-nez v1, :cond_63

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/k$a;

    .line 6
    :goto_1c
    iget-object v3, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    iget-object v4, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-boolean v3, p0, Landroidx/lifecycle/k;->f:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc/b/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8
    iget-object v3, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-direct {p0, v3}, Landroidx/lifecycle/k;->n(Landroidx/lifecycle/f$c;)V

    .line 9
    iget-object v3, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-static {v3}, Landroidx/lifecycle/f$b;->c(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 10
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/k$a;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/k;->m()V

    goto :goto_1c

    .line 12
    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event up from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_63
    return-void
.end method

.method private i()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    invoke-virtual {v0}, Lc/b/a/b/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 2
    :cond_a
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    invoke-virtual {v0}, Lc/b/a/b/b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/k$a;

    iget-object v0, v0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    .line 3
    iget-object v2, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    invoke-virtual {v2}, Lc/b/a/b/b;->e()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/k$a;

    iget-object v2, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    if-ne v0, v2, :cond_2d

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    if-ne v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method static k(Landroidx/lifecycle/f$c;Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$c;
    .registers 3

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_9

    move-object p0, p1

    :cond_9
    return-object p0
.end method

.method private l(Landroidx/lifecycle/f$c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    if-ne v0, p1, :cond_5

    return-void

    .line 2
    :cond_5
    iput-object p1, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    .line 3
    iget-boolean p1, p0, Landroidx/lifecycle/k;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    iget p1, p0, Landroidx/lifecycle/k;->d:I

    if-eqz p1, :cond_11

    goto :goto_1a

    .line 4
    :cond_11
    iput-boolean v0, p0, Landroidx/lifecycle/k;->e:Z

    .line 5
    invoke-direct {p0}, Landroidx/lifecycle/k;->p()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroidx/lifecycle/k;->e:Z

    return-void

    .line 7
    :cond_1a
    :goto_1a
    iput-boolean v0, p0, Landroidx/lifecycle/k;->f:Z

    return-void
.end method

.method private m()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private n(Landroidx/lifecycle/f$c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private p()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/j;

    if-eqz v0, :cond_4f

    .line 2
    :cond_a
    :goto_a
    invoke-direct {p0}, Landroidx/lifecycle/k;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4c

    .line 3
    iput-boolean v2, p0, Landroidx/lifecycle/k;->f:Z

    .line 4
    iget-object v1, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    iget-object v2, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    invoke-virtual {v2}, Lc/b/a/b/b;->b()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/k$a;

    iget-object v2, v2, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_2c

    .line 5
    invoke-direct {p0, v0}, Landroidx/lifecycle/k;->d(Landroidx/lifecycle/j;)V

    .line 6
    :cond_2c
    iget-object v1, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    invoke-virtual {v1}, Lc/b/a/b/b;->e()Ljava/util/Map$Entry;

    move-result-object v1

    .line 7
    iget-boolean v2, p0, Landroidx/lifecycle/k;->f:Z

    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    iget-object v2, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/k$a;

    iget-object v1, v1, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_a

    .line 9
    invoke-direct {p0, v0}, Landroidx/lifecycle/k;->g(Landroidx/lifecycle/j;)V

    goto :goto_a

    .line 10
    :cond_4c
    iput-boolean v2, p0, Landroidx/lifecycle/k;->f:Z

    return-void

    .line 11
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_58

    :goto_57
    throw v0

    :goto_58
    goto :goto_57
.end method


# virtual methods
.method public a(Landroidx/lifecycle/i;)V
    .registers 8

    const-string v0, "addObserver"

    .line 1
    invoke-direct {p0, v0}, Landroidx/lifecycle/k;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    sget-object v1, Landroidx/lifecycle/f$c;->b:Landroidx/lifecycle/f$c;

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    sget-object v1, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;

    .line 3
    :goto_e
    new-instance v0, Landroidx/lifecycle/k$a;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/k$a;-><init>(Landroidx/lifecycle/i;Landroidx/lifecycle/f$c;)V

    .line 4
    iget-object v1, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    invoke-virtual {v1, p1, v0}, Lc/b/a/b/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/k$a;

    if-eqz v1, :cond_1e

    return-void

    .line 5
    :cond_1e
    iget-object v1, p0, Landroidx/lifecycle/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/j;

    if-nez v1, :cond_29

    return-void

    .line 6
    :cond_29
    iget v2, p0, Landroidx/lifecycle/k;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_35

    iget-boolean v2, p0, Landroidx/lifecycle/k;->e:Z

    if-eqz v2, :cond_33

    goto :goto_35

    :cond_33
    const/4 v2, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v2, 0x1

    .line 7
    :goto_36
    invoke-direct {p0, p1}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/i;)Landroidx/lifecycle/f$c;

    move-result-object v4

    .line 8
    iget v5, p0, Landroidx/lifecycle/k;->d:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/k;->d:I

    .line 9
    :goto_3f
    iget-object v5, v0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_80

    iget-object v4, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    .line 10
    invoke-virtual {v4, p1}, Lc/b/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 11
    iget-object v4, v0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-direct {p0, v4}, Landroidx/lifecycle/k;->n(Landroidx/lifecycle/f$c;)V

    .line 12
    iget-object v4, v0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-static {v4}, Landroidx/lifecycle/f$b;->c(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 13
    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/k$a;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/k;->m()V

    .line 15
    invoke-direct {p0, p1}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/i;)Landroidx/lifecycle/f$c;

    move-result-object v4

    goto :goto_3f

    .line 16
    :cond_67
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event up from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_80
    if-nez v2, :cond_85

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/k;->p()V

    .line 18
    :cond_85
    iget p1, p0, Landroidx/lifecycle/k;->d:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/k;->d:I

    return-void
.end method

.method public b()Landroidx/lifecycle/f$c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    return-object v0
.end method

.method public c(Landroidx/lifecycle/i;)V
    .registers 3

    const-string v0, "removeObserver"

    .line 1
    invoke-direct {p0, v0}, Landroidx/lifecycle/k;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/k;->a:Lc/b/a/b/a;

    invoke-virtual {v0, p1}, Lc/b/a/b/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Landroidx/lifecycle/f$b;)V
    .registers 3

    const-string v0, "handleLifecycleEvent"

    .line 1
    invoke-direct {p0, v0}, Landroidx/lifecycle/k;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/lifecycle/f$b;->b()Landroidx/lifecycle/f$c;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/lifecycle/k;->l(Landroidx/lifecycle/f$c;)V

    return-void
.end method

.method public j(Landroidx/lifecycle/f$c;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "markState"

    .line 1
    invoke-direct {p0, v0}, Landroidx/lifecycle/k;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/k;->o(Landroidx/lifecycle/f$c;)V

    return-void
.end method

.method public o(Landroidx/lifecycle/f$c;)V
    .registers 3

    const-string v0, "setCurrentState"

    .line 1
    invoke-direct {p0, v0}, Landroidx/lifecycle/k;->f(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/lifecycle/k;->l(Landroidx/lifecycle/f$c;)V

    return-void
.end method
