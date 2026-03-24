.class Landroidx/fragment/app/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/m$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroidx/fragment/app/n;


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    return-void
.end method


# virtual methods
.method a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p3, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/n$l;->a(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method b(Landroidx/fragment/app/Fragment;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->s0()Landroidx/fragment/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/m;->b(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_1e
    iget-object v1, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/m$a;

    if-eqz p2, :cond_36

    .line 7
    iget-boolean v3, v2, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v3, :cond_24

    .line 8
    :cond_36
    iget-object v2, v2, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v3, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v2, v3, p1, v0}, Landroidx/fragment/app/n$l;->b(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_24

    :cond_3e
    return-void
.end method

.method c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/m;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p3, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/n$l;->c(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method d(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->d(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p2, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/n$l;->d(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method e(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->e(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p2, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/n$l;->e(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method f(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->f(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p2, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/n$l;->f(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method g(Landroidx/fragment/app/Fragment;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->s0()Landroidx/fragment/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/m;->g(Landroidx/fragment/app/Fragment;Z)V

    .line 6
    :cond_1e
    iget-object v1, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/m$a;

    if-eqz p2, :cond_36

    .line 7
    iget-boolean v3, v2, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v3, :cond_24

    .line 8
    :cond_36
    iget-object v2, v2, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v3, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v2, v3, p1, v0}, Landroidx/fragment/app/n$l;->g(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_24

    :cond_3e
    return-void
.end method

.method h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/m;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p3, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/n$l;->h(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method i(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->i(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p2, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/n$l;->i(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/m;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p3, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/n$l;->j(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method k(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->k(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p2, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/n$l;->k(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method l(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->l(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p2, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/n$l;->l(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/m;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p4, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroidx/fragment/app/n$l;->m(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_34
    return-void
.end method

.method n(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->u0()Landroidx/fragment/app/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->n(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$a;

    if-eqz p2, :cond_2c

    .line 6
    iget-boolean v2, v1, Landroidx/fragment/app/m$a;->b:Z

    if-eqz v2, :cond_1a

    .line 7
    :cond_2c
    iget-object v1, v1, Landroidx/fragment/app/m$a;->a:Landroidx/fragment/app/n$l;

    iget-object v2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/n$l;->n(Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    goto :goto_1a

    :cond_34
    return-void
.end method
