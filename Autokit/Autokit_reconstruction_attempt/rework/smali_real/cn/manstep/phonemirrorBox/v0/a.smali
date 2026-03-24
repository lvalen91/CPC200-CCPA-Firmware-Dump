.class public Lcn/manstep/phonemirrorBox/v0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/v0/d;


# static fields
.field private static i:Lcn/manstep/phonemirrorBox/v0/a;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/manstep/phonemirrorBox/v0/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/v0/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->d:Z

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->e:Ljava/lang/String;

    .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    .line 6
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->g:Z

    .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->h:Z

    .line 8
    new-instance v0, Lcn/manstep/phonemirrorBox/u0/e;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/u0/e;-><init>()V

    .line 9
    new-instance v1, Lcn/manstep/phonemirrorBox/v0/c;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/v0/c;-><init>()V

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    return-void
.end method

.method public static t()Lcn/manstep/phonemirrorBox/v0/a;
    .registers 3

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/a;->i:Lcn/manstep/phonemirrorBox/v0/a;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/v0/a;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/v0/a;->i:Lcn/manstep/phonemirrorBox/v0/a;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/v0/a;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/v0/a;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/v0/a;->i:Lcn/manstep/phonemirrorBox/v0/a;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcn/manstep/phonemirrorBox/v0/a;->i:Lcn/manstep/phonemirrorBox/v0/a;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->C()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public B()Z
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public C()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->g:Z

    return v0
.end method

.method public D()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->p()V

    goto :goto_c

    .line 4
    :cond_1c
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    :cond_1e
    return-void
.end method

.method public E()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->d:Z

    return-void
.end method

.method public F(Lcn/manstep/phonemirrorBox/v0/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public a()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->a()V

    goto :goto_b

    .line 4
    :cond_1b
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    .line 5
    :cond_1d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/v0/a;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcn/manstep/phonemirrorBox/v0/b;->d(Ljava/lang/String;)V

    goto :goto_23

    :cond_35
    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->b()V

    goto :goto_c

    .line 4
    :cond_1c
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    :cond_1e
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->h:Z

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 6

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2, p1, p2}, Lcn/manstep/phonemirrorBox/v0/d;->c(Ljava/lang/String;Z)V

    goto :goto_b

    .line 4
    :cond_1b
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    .line 5
    :cond_1d
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/a;->e:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->d()V

    goto :goto_c

    .line 4
    :cond_1c
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    :cond_1e
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->h:Z

    return-void
.end method

.method public e()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->e()V

    goto :goto_c

    .line 4
    :cond_1c
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    :cond_1e
    return-void
.end method

.method public f()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 4
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->f()V

    goto :goto_e

    .line 5
    :cond_1e
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    .line 6
    :cond_20
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 7
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->c()V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public g()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1d

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->g()V

    goto :goto_b

    .line 4
    :cond_1b
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    :cond_1d
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->d:Z

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 7
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->i()V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public h()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->h()V

    goto :goto_c

    .line 4
    :cond_1c
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    :cond_1e
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->g:Z

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 7
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->e()V

    .line 8
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->f()V

    goto :goto_27

    :cond_3a
    return-void
.end method

.method public i()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 4
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->i()V

    goto :goto_e

    .line 5
    :cond_1e
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    :cond_20
    return-void
.end method

.method public j()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->j()V

    goto :goto_c

    .line 4
    :cond_1c
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    .line 5
    :cond_1e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 6
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->k()V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public k()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 4
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->k()V

    goto :goto_e

    .line 5
    :cond_1e
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    .line 6
    :cond_20
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 7
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->g()V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public l()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->l()V

    goto :goto_c

    .line 4
    :cond_1c
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    :cond_1e
    return-void
.end method

.method public m()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1d

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->m()V

    goto :goto_b

    .line 4
    :cond_1b
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    :cond_1d
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->d:Z

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 7
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->j()V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public n()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->n()V

    goto :goto_c

    .line 4
    :cond_1c
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    .line 5
    :cond_1e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 6
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->h()V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public o()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->o()V

    goto :goto_c

    .line 4
    :cond_1c
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    :cond_1e
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->g:Z

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 7
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->b()V

    goto :goto_27

    :cond_37
    return-void
.end method

.method public p()V
    .registers 4

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 3
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->p()V

    goto :goto_c

    .line 4
    :cond_1c
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    .line 5
    :cond_1e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 6
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->e()V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public q(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/d;

    .line 2
    invoke-interface {v1, p1}, Lcn/manstep/phonemirrorBox/v0/d;->q(Landroid/content/Context;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public r(Lcn/manstep/phonemirrorBox/v0/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()V
    .registers 4

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_21

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/v0/d;

    .line 4
    invoke-interface {v2}, Lcn/manstep/phonemirrorBox/v0/d;->k()V

    goto :goto_f

    .line 5
    :cond_1f
    iput v1, p0, Lcn/manstep/phonemirrorBox/v0/a;->f:I

    .line 6
    :cond_21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/v0/b;

    .line 7
    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/v0/b;->a()V

    goto :goto_27

    :cond_37
    return-void
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public v()Z
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public w()Z
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public x()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->d:Z

    return v0
.end method

.method public z()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/v0/a;->h:Z

    return v0
.end method
