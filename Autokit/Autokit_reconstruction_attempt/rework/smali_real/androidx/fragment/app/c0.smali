.class abstract Landroidx/fragment/app/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c0$d;,
        Landroidx/fragment/app/c0$e;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/c0$e;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/c0$e;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->d:Z

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method private a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_3
    new-instance v1, Lc/g/g/b;

    invoke-direct {v1}, Lc/g/g/b;-><init>()V

    .line 3
    invoke-virtual {p3}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/fragment/app/c0;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 4
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/c0$e;->k(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;)V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_17
    new-instance v2, Landroidx/fragment/app/c0$d;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/c0$d;-><init>(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;Lc/g/g/b;)V

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p1, Landroidx/fragment/app/c0$a;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/c0$a;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/c0$d;)V

    invoke-virtual {v2, p1}, Landroidx/fragment/app/c0$e;->a(Ljava/lang/Runnable;)V

    .line 9
    new-instance p1, Landroidx/fragment/app/c0$b;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/c0$b;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/c0$d;)V

    invoke-virtual {v2, p1}, Landroidx/fragment/app/c0$e;->a(Ljava/lang/Runnable;)V

    .line 10
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c0$e;

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->h()Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method private i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c0$e;

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->h()Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method static n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/n;->x0()Landroidx/fragment/app/d0;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Landroidx/fragment/app/c0;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/d0;)Landroidx/fragment/app/c0;

    move-result-object p0

    return-object p0
.end method

.method static o(Landroid/view/ViewGroup;Landroidx/fragment/app/d0;)Landroidx/fragment/app/c0;
    .registers 4

    .line 1
    sget v0, Lc/j/b;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/fragment/app/c0;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Landroidx/fragment/app/c0;

    return-object v0

    .line 4
    :cond_d
    invoke-interface {p1, p0}, Landroidx/fragment/app/d0;->a(Landroid/view/ViewGroup;)Landroidx/fragment/app/c0;

    move-result-object p1

    .line 5
    sget v0, Lc/j/b;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method private q()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c0$e;

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/c0$e$b;->c:Landroidx/fragment/app/c0$e$b;

    if-ne v2, v3, :cond_6

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->L1()Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/c0$e$c;->b(I)Landroidx/fragment/app/c0$e$c;

    move-result-object v2

    .line 6
    sget-object v3, Landroidx/fragment/app/c0$e$b;->b:Landroidx/fragment/app/c0$e$b;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/c0$e;->k(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;)V

    goto :goto_6

    :cond_30
    return-void
.end method


# virtual methods
.method b(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/u;)V
    .registers 5

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_1b
    sget-object v0, Landroidx/fragment/app/c0$e$b;->c:Landroidx/fragment/app/c0$e$b;

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V

    return-void
.end method

.method c(Landroidx/fragment/app/u;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_1b
    sget-object v0, Landroidx/fragment/app/c0$e$c;->d:Landroidx/fragment/app/c0$e$c;

    sget-object v1, Landroidx/fragment/app/c0$e$b;->b:Landroidx/fragment/app/c0$e$b;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V

    return-void
.end method

.method d(Landroidx/fragment/app/u;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_1b
    sget-object v0, Landroidx/fragment/app/c0$e$c;->b:Landroidx/fragment/app/c0$e$c;

    sget-object v1, Landroidx/fragment/app/c0$e$b;->d:Landroidx/fragment/app/c0$e$b;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V

    return-void
.end method

.method e(Landroidx/fragment/app/u;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_1b
    sget-object v0, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;

    sget-object v1, Landroidx/fragment/app/c0$e$b;->b:Landroidx/fragment/app/c0$e$b;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V

    return-void
.end method

.method abstract f(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/c0$e;",
            ">;Z)V"
        }
    .end annotation
.end method

.method g()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/v;->S(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->j()V

    .line 4
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->d:Z

    return-void

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6
    :try_start_17
    iget-object v2, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_90

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c0$e;

    const/4 v4, 0x2

    .line 10
    invoke-static {v4}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    :cond_52
    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->b()V

    .line 13
    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->i()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 14
    iget-object v4, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 15
    :cond_61
    invoke-direct {p0}, Landroidx/fragment/app/c0;->q()V

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 18
    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/c0$e;

    .line 20
    invoke-virtual {v4}, Landroidx/fragment/app/c0$e;->l()V

    goto :goto_79

    .line 21
    :cond_89
    iget-boolean v3, p0, Landroidx/fragment/app/c0;->d:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/c0;->f(Ljava/util/List;Z)V

    .line 22
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->d:Z

    .line 23
    :cond_90
    monitor-exit v0

    return-void

    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_17 .. :try_end_94} :catchall_92

    goto :goto_96

    :goto_95
    throw v1

    :goto_96
    goto :goto_95
.end method

.method j()V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/v;->S(Landroid/view/View;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3
    :try_start_9
    invoke-direct {p0}, Landroidx/fragment/app/c0;->q()V

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c0$e;

    .line 5
    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->l()V

    goto :goto_12

    .line 6
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c0$e;

    .line 8
    invoke-static {v4}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpecialEffectsController: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4f

    const-string v5, ""

    goto :goto_67

    .line 10
    :cond_4f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Cancelling running operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    :cond_75
    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->b()V

    goto :goto_2d

    .line 12
    :cond_79
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c0$e;

    .line 14
    invoke-static {v4}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a5

    const-string v6, ""

    goto :goto_bd

    .line 16
    :cond_a5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not attached to window. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_bd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Cancelling pending operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    :cond_cb
    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->b()V

    goto :goto_84

    .line 18
    :cond_cf
    monitor-exit v1

    return-void

    :catchall_d1
    move-exception v0

    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_9 .. :try_end_d3} :catchall_d1

    goto :goto_d5

    :goto_d4
    throw v0

    :goto_d5
    goto :goto_d4
.end method

.method k()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->g()V

    :cond_a
    return-void
.end method

.method l(Landroidx/fragment/app/u;)Landroidx/fragment/app/c0$e$b;
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/fragment/app/c0;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_f
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/fragment/app/c0;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;

    move-result-object p1

    return-object p1

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public m()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method p()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0}, Landroidx/fragment/app/c0;->q()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->e:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_3f

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/c0$e;

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-static {v3}, Landroidx/fragment/app/c0$e$c;->c(Landroid/view/View;)Landroidx/fragment/app/c0$e$c;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v4

    sget-object v5, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;

    if-ne v4, v5, :cond_3c

    sget-object v4, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;

    if-eq v3, v4, :cond_3c

    .line 8
    invoke-virtual {v2}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->v0()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/fragment/app/c0;->e:Z

    goto :goto_3f

    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 10
    :cond_3f
    :goto_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    goto :goto_45

    :goto_44
    throw v1

    :goto_45
    goto :goto_44
.end method

.method r(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/c0;->d:Z

    return-void
.end method
