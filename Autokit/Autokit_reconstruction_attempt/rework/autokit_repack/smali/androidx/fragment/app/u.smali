.class Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/m;

.field private final b:Landroidx/fragment/app/v;

.field private final c:Landroidx/fragment/app/Fragment;

.field private d:Z

.field private e:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/u;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/t;)V
    .registers 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Landroidx/fragment/app/u;->e:I

    .line 35
    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    .line 36
    iput-object p2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 37
    iput-object p3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 39
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;

    .line 40
    iput v0, p3, Landroidx/fragment/app/Fragment;->s:I

    .line 41
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->p:Z

    .line 42
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->m:Z

    .line 43
    iget-object p2, p3, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_21

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;

    goto :goto_22

    :cond_21
    move-object p2, p1

    :goto_22
    iput-object p2, p3, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    .line 44
    iget-object p2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;

    .line 45
    iget-object p1, p4, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;

    if-eqz p1, :cond_2f

    .line 46
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    goto :goto_36

    .line 47
    :cond_2f
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    :goto_36
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/m;Landroidx/fragment/app/v;Ljava/lang/ClassLoader;Landroidx/fragment/app/j;Landroidx/fragment/app/t;)V
    .registers 7

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/u;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 12
    iget-object p1, p5, Landroidx/fragment/app/t;->b:Ljava/lang/String;

    invoke-virtual {p4, p3, p1}, Landroidx/fragment/app/j;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 13
    iget-object p1, p5, Landroidx/fragment/app/t;->k:Landroid/os/Bundle;

    if-eqz p1, :cond_1c

    .line 14
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 15
    :cond_1c
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object p2, p5, Landroidx/fragment/app/t;->k:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V

    .line 16
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object p2, p5, Landroidx/fragment/app/t;->c:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;

    .line 17
    iget-boolean p2, p5, Landroidx/fragment/app/t;->d:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->o:Z

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->q:Z

    .line 19
    iget p2, p5, Landroidx/fragment/app/t;->e:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->x:I

    .line 20
    iget p2, p5, Landroidx/fragment/app/t;->f:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->y:I

    .line 21
    iget-object p2, p5, Landroidx/fragment/app/t;->g:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;

    .line 22
    iget-boolean p2, p5, Landroidx/fragment/app/t;->h:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->C:Z

    .line 23
    iget-boolean p2, p5, Landroidx/fragment/app/t;->i:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->n:Z

    .line 24
    iget-boolean p2, p5, Landroidx/fragment/app/t;->j:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->B:Z

    .line 25
    iget-boolean p2, p5, Landroidx/fragment/app/t;->l:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->A:Z

    .line 26
    invoke-static {}, Landroidx/lifecycle/f$c;->values()[Landroidx/lifecycle/f$c;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/t;->m:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/f$c;

    .line 27
    iget-object p1, p5, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;

    if-eqz p1, :cond_5f

    .line 28
    iget-object p2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    goto :goto_68

    .line 29
    :cond_5f
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    :goto_68
    const/4 p1, 0x2

    .line 30
    invoke-static {p1}, Landroidx/fragment/app/n;->E0(I)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Instantiated fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_81
    return-void
.end method

.method private l(Landroid/view/View;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_c
    if-eqz p1, :cond_1a

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-ne p1, v0, :cond_15

    return v1

    .line 4
    :cond_15
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_c

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private q()Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->C1(Landroid/os/Bundle;)V

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/m;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 4
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    .line 5
    :cond_19
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v1, :cond_22

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/u;->s()V

    .line 7
    :cond_22
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz v1, :cond_38

    if-nez v0, :cond_2f

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    :cond_2f
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 10
    :cond_38
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_4e

    if-nez v0, :cond_45

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    :cond_45
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;

    const-string v2, "android:view_registry_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    :cond_4e
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->K:Z

    if-nez v1, :cond_64

    if-nez v0, :cond_5b

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    :cond_5b
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->K:Z

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_64
    return-object v0
.end method


# virtual methods
.method a()V
    .registers 5

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->i1(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method

.method b()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->j(Landroidx/fragment/app/Fragment;)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method c()V
    .registers 7

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ATTACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;

    const-string v2, " that does not belong to this FragmentManager!"

    const-string v3, " declared target fragment "

    const-string v4, "Fragment "

    const/4 v5, 0x0

    if-eqz v1, :cond_60

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->m(Ljava/lang/String;)Landroidx/fragment/app/u;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    .line 6
    iput-object v5, v1, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;

    move-object v5, v0

    goto :goto_91

    .line 7
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_60
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    if-eqz v0, :cond_91

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/v;->m(Ljava/lang/String;)Landroidx/fragment/app/u;

    move-result-object v5

    if-eqz v5, :cond_6d

    goto :goto_91

    .line 10
    :cond_6d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    :goto_91
    if-eqz v5, :cond_a3

    .line 11
    sget-boolean v0, Landroidx/fragment/app/n;->P:Z

    if-nez v0, :cond_a0

    .line 12
    invoke-virtual {v5}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget v0, v0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a3

    .line 13
    :cond_a0
    invoke-virtual {v5}, Landroidx/fragment/app/u;->m()V

    .line 14
    :cond_a3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;

    invoke-virtual {v1}, Landroidx/fragment/app/n;->s0()Landroidx/fragment/app/k;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;

    invoke-virtual {v1}, Landroidx/fragment/app/n;->v0()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/m;->g(Landroidx/fragment/app/Fragment;Z)V

    .line 17
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->j1()V

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/m;->b(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method d()I
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;

    if-nez v1, :cond_9

    .line 2
    iget v0, v0, Landroidx/fragment/app/Fragment;->b:I

    return v0

    .line 3
    :cond_9
    iget v1, p0, Landroidx/fragment/app/u;->e:I

    .line 4
    sget-object v2, Landroidx/fragment/app/u$b;->a:[I

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/f$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_37

    if-eq v0, v6, :cond_33

    if-eq v0, v4, :cond_2e

    if-eq v0, v5, :cond_28

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_37

    :cond_28
    const/4 v0, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_37

    .line 7
    :cond_2e
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_37

    .line 8
    :cond_33
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9
    :cond_37
    :goto_37
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v8, :cond_67

    .line 10
    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v8, :cond_58

    .line 11
    iget v0, p0, Landroidx/fragment/app/u;->e:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_67

    .line 13
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_67

    .line 14
    :cond_58
    iget v8, p0, Landroidx/fragment/app/u;->e:I

    if-ge v8, v5, :cond_63

    .line 15
    iget v0, v0, Landroidx/fragment/app/Fragment;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_67

    .line 16
    :cond_63
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 17
    :cond_67
    :goto_67
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->m:Z

    if-nez v0, :cond_71

    .line 18
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_71
    const/4 v0, 0x0

    .line 19
    sget-boolean v8, Landroidx/fragment/app/n;->P:Z

    if-eqz v8, :cond_88

    iget-object v8, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v9, v8, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    if-eqz v9, :cond_88

    .line 20
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    .line 21
    invoke-static {v9, v0}, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Landroidx/fragment/app/c0;->l(Landroidx/fragment/app/u;)Landroidx/fragment/app/c0$e$b;

    move-result-object v0

    .line 23
    :cond_88
    sget-object v8, Landroidx/fragment/app/c0$e$b;->c:Landroidx/fragment/app/c0$e$b;

    if-ne v0, v8, :cond_92

    const/4 v0, 0x6

    .line 24
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_b0

    .line 25
    :cond_92
    sget-object v8, Landroidx/fragment/app/c0$e$b;->d:Landroidx/fragment/app/c0$e$b;

    if-ne v0, v8, :cond_9b

    .line 26
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_b0

    .line 27
    :cond_9b
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v0, Landroidx/fragment/app/Fragment;->n:Z

    if-eqz v4, :cond_b0

    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t0()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 29
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_b0

    .line 30
    :cond_ac
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 31
    :cond_b0
    :goto_b0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v2, :cond_be

    iget v0, v0, Landroidx/fragment/app/Fragment;->b:I

    if-ge v0, v3, :cond_be

    .line 32
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 33
    :cond_be
    invoke-static {v6}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeExpectedState() of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_de
    return v1
.end method

.method e()V
    .registers 5

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->Q:Z

    if-nez v1, :cond_38

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/m;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->m1(Landroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/m;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_42

    .line 7
    :cond_38
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->M1(Landroid/os/Bundle;)V

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    iput v1, v0, Landroidx/fragment/app/Fragment;->b:I

    :goto_42
    return-void
.end method

.method f()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_20
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->s1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    if-eqz v3, :cond_32

    move-object v1, v3

    goto/16 :goto_b0

    .line 6
    :cond_32
    iget v3, v2, Landroidx/fragment/app/Fragment;->y:I

    if-eqz v3, :cond_b0

    const/4 v1, -0x1

    if-eq v3, v1, :cond_92

    .line 7
    iget-object v1, v2, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;

    invoke-virtual {v1}, Landroidx/fragment/app/n;->n0()Landroidx/fragment/app/g;

    move-result-object v1

    .line 8
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->y:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/g;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_b0

    .line 9
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->q:Z

    if-eqz v3, :cond_52

    goto :goto_b0

    .line 10
    :cond_52
    :try_start_52
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_52 .. :try_end_5e} :catch_5f

    goto :goto_61

    :catch_5f
    const-string v0, "unknown"

    .line 11
    :goto_61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->y:I

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_b0
    :goto_b0
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-object v1, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    .line 15
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Landroidx/fragment/app/Fragment;->o1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    const/4 v2, 0x2

    if-eqz v0, :cond_16f

    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    sget v5, Lc/j/b;->fragment_container_view_tag:I

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v1, :cond_d2

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/u;->b()V

    .line 20
    :cond_d2
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v1, :cond_df

    .line 21
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_df
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->S(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 23
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->l0(Landroid/view/View;)V

    goto :goto_fd

    .line 24
    :cond_f1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    .line 25
    new-instance v1, Landroidx/fragment/app/u$a;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/u$a;-><init>(Landroidx/fragment/app/u;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 26
    :goto_fd
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->F1()V

    .line 27
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    iget-object v5, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v4, v5, v3}, Landroidx/fragment/app/m;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 28
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 29
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 30
    sget-boolean v4, Landroidx/fragment/app/n;->P:Z

    if-eqz v4, :cond_164

    .line 31
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->Y1(F)V

    .line 32
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    if-eqz v3, :cond_16f

    if-nez v0, :cond_16f

    .line 33
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15b

    .line 34
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->T1(Landroid/view/View;)V

    .line 35
    invoke-static {v2}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Saved focused view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Fragment "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    :cond_15b
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_16f

    .line 38
    :cond_164
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_16d

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16d

    const/4 v3, 0x1

    :cond_16d
    iput-boolean v3, v1, Landroidx/fragment/app/Fragment;->M:Z

    .line 39
    :cond_16f
    :goto_16f
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput v2, v0, Landroidx/fragment/app/Fragment;->b:I

    return-void
.end method

.method g()V
    .registers 6

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->n:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t0()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-nez v0, :cond_3d

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/v;->o()Landroidx/fragment/app/q;

    move-result-object v1

    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/q;->s(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v1, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v1, 0x1

    :goto_3e
    if-eqz v1, :cond_c5

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;

    .line 7
    instance-of v4, v1, Landroidx/lifecycle/y;

    if-eqz v4, :cond_53

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    invoke-virtual {v1}, Landroidx/fragment/app/v;->o()Landroidx/fragment/app/q;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/q;->p()Z

    move-result v2

    goto :goto_66

    .line 9
    :cond_53
    invoke-virtual {v1}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_66

    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/k;->f()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 11
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v2, v1

    :cond_66
    :goto_66
    if-nez v0, :cond_6a

    if-eqz v2, :cond_75

    .line 12
    :cond_6a
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->o()Landroidx/fragment/app/q;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/q;->j(Landroidx/fragment/app/Fragment;)V

    .line 13
    :cond_75
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p1()V

    .line 14
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/m;->d(Landroidx/fragment/app/Fragment;Z)V

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    invoke-virtual {v0}, Landroidx/fragment/app/v;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8b
    :goto_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/u;

    if-eqz v1, :cond_8b

    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 17
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 18
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    .line 19
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    goto :goto_8b

    .line 20
    :cond_b1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    if-eqz v1, :cond_bf

    .line 21
    iget-object v2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/v;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;

    .line 22
    :cond_bf
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/v;->q(Landroidx/fragment/app/u;)V

    goto :goto_df

    .line 23
    :cond_c5
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    if-eqz v0, :cond_db

    .line 24
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/v;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 25
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->C:Z

    if-eqz v1, :cond_db

    .line 26
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;

    .line 27
    :cond_db
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput v3, v0, Landroidx/fragment/app/Fragment;->b:I

    :goto_df
    return-void
.end method

.method h()V
    .registers 4

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    if-eqz v1, :cond_26

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_26
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->q1()V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/m;->n(Landroidx/fragment/app/Fragment;Z)V

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    .line 8
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    .line 9
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;

    .line 10
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-boolean v2, v0, Landroidx/fragment/app/Fragment;->p:Z

    return-void
.end method

.method i()V
    .registers 5

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ATTACHED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_19
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->r1()V

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/m;->e(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/fragment/app/Fragment;->b:I

    const/4 v2, 0x0

    .line 6
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;

    .line 7
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;

    .line 8
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;

    .line 9
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->n:Z

    if-eqz v2, :cond_3d

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->t0()Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v3, 0x1

    :cond_3d
    if-nez v3, :cond_4d

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    invoke-virtual {v1}, Landroidx/fragment/app/v;->o()Landroidx/fragment/app/q;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/q;->s(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 11
    :cond_4d
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initState called for fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    :cond_65
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->o0()V

    :cond_6a
    return-void
.end method

.method j()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v1, :cond_6c

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v1, :cond_6c

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->r:Z

    if-nez v0, :cond_6c

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    :cond_27
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->s1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->o1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v0, :cond_6c

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    sget v3, Lc/j/b;->fragment_container_view_tag:I

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v2, :cond_57

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_57
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->F1()V

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/fragment/app/m;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x2

    iput v1, v0, Landroidx/fragment/app/Fragment;->b:I

    :cond_6c
    return-void
.end method

.method k()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method m()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_20

    .line 2
    invoke-static {v1}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 5
    :try_start_22
    iput-boolean v2, p0, Landroidx/fragment/app/u;->d:Z

    .line 6
    :goto_24
    invoke-virtual {p0}, Landroidx/fragment/app/u;->d()I

    move-result v3

    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->b:I

    if-eq v3, v4, :cond_10c

    .line 7
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->b:I

    if-le v3, v4, :cond_8d

    .line 8
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->b:I

    add-int/2addr v3, v2

    packed-switch v3, :pswitch_data_162

    goto :goto_24

    .line 9
    :pswitch_3d
    invoke-virtual {p0}, Landroidx/fragment/app/u;->p()V

    goto :goto_24

    .line 10
    :pswitch_41
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x6

    iput v4, v3, Landroidx/fragment/app/Fragment;->b:I

    goto :goto_24

    .line 11
    :pswitch_47
    invoke-virtual {p0}, Landroidx/fragment/app/u;->u()V

    goto :goto_24

    .line 12
    :pswitch_4b
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v3, :cond_74

    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    if-eqz v3, :cond_74

    .line 13
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 14
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v4

    .line 15
    invoke-static {v3, v4}, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;

    move-result-object v3

    .line 16
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 17
    invoke-static {v4}, Landroidx/fragment/app/c0$e$c;->b(I)Landroidx/fragment/app/c0$e$c;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v4, p0}, Landroidx/fragment/app/c0;->b(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/u;)V

    .line 19
    :cond_74
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x4

    iput v4, v3, Landroidx/fragment/app/Fragment;->b:I

    goto :goto_24

    .line 20
    :pswitch_7a
    invoke-virtual {p0}, Landroidx/fragment/app/u;->a()V

    goto :goto_24

    .line 21
    :pswitch_7e
    invoke-virtual {p0}, Landroidx/fragment/app/u;->j()V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/u;->f()V

    goto :goto_24

    .line 23
    :pswitch_85
    invoke-virtual {p0}, Landroidx/fragment/app/u;->e()V

    goto :goto_24

    .line 24
    :pswitch_89
    invoke-virtual {p0}, Landroidx/fragment/app/u;->c()V

    goto :goto_24

    .line 25
    :cond_8d
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->b:I

    sub-int/2addr v3, v2

    packed-switch v3, :pswitch_data_176

    goto :goto_24

    .line 26
    :pswitch_96
    invoke-virtual {p0}, Landroidx/fragment/app/u;->n()V

    goto :goto_24

    .line 27
    :pswitch_9a
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x5

    iput v4, v3, Landroidx/fragment/app/Fragment;->b:I

    goto :goto_24

    .line 28
    :pswitch_a0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->v()V

    goto :goto_24

    :pswitch_a4
    const/4 v3, 0x3

    .line 29
    invoke-static {v3}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    :cond_bd
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v4, :cond_cc

    .line 32
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-nez v4, :cond_cc

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/u;->s()V

    .line 34
    :cond_cc
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v4, :cond_e9

    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    if-eqz v4, :cond_e9

    .line 35
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 36
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v5

    .line 37
    invoke-static {v4, v5}, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;

    move-result-object v4

    .line 38
    invoke-virtual {v4, p0}, Landroidx/fragment/app/c0;->d(Landroidx/fragment/app/u;)V

    .line 39
    :cond_e9
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput v3, v4, Landroidx/fragment/app/Fragment;->b:I

    goto/16 :goto_24

    .line 40
    :pswitch_ef
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-boolean v0, v3, Landroidx/fragment/app/Fragment;->p:Z

    .line 41
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput v1, v3, Landroidx/fragment/app/Fragment;->b:I

    goto/16 :goto_24

    .line 42
    :pswitch_f9
    invoke-virtual {p0}, Landroidx/fragment/app/u;->h()V

    .line 43
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput v2, v3, Landroidx/fragment/app/Fragment;->b:I

    goto/16 :goto_24

    .line 44
    :pswitch_102
    invoke-virtual {p0}, Landroidx/fragment/app/u;->g()V

    goto/16 :goto_24

    .line 45
    :pswitch_107
    invoke-virtual {p0}, Landroidx/fragment/app/u;->i()V

    goto/16 :goto_24

    .line 46
    :cond_10c
    sget-boolean v1, Landroidx/fragment/app/n;->P:Z

    if-eqz v1, :cond_159

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz v1, :cond_159

    .line 47
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v1, :cond_13d

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    if-eqz v1, :cond_13d

    .line 48
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 49
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;

    move-result-object v1

    .line 51
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v2, :cond_13a

    .line 52
    invoke-virtual {v1, p0}, Landroidx/fragment/app/c0;->c(Landroidx/fragment/app/u;)V

    goto :goto_13d

    .line 53
    :cond_13a
    invoke-virtual {v1, p0}, Landroidx/fragment/app/c0;->e(Landroidx/fragment/app/u;)V

    .line 54
    :cond_13d
    :goto_13d
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;

    if-eqz v1, :cond_14c

    .line 55
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/n;->C0(Landroidx/fragment/app/Fragment;)V

    .line 56
    :cond_14c
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->N:Z

    .line 57
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->A:Z

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->R0(Z)V
    :try_end_159
    .catchall {:try_start_22 .. :try_end_159} :catchall_15c

    .line 58
    :cond_159
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    return-void

    :catchall_15c
    move-exception v1

    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    .line 59
    goto :goto_161

    :goto_160
    throw v1

    :goto_161
    goto :goto_160

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_89
        :pswitch_85
        :pswitch_7e
        :pswitch_7a
        :pswitch_4b
        :pswitch_47
        :pswitch_41
        :pswitch_3d
    .end packed-switch

    :pswitch_data_176
    .packed-switch -0x1
        :pswitch_107
        :pswitch_102
        :pswitch_f9
        :pswitch_ef
        :pswitch_a4
        :pswitch_a0
        :pswitch_9a
        :pswitch_96
    .end packed-switch
.end method

.method n()V
    .registers 4

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->x1()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/m;->f(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method o(Ljava/lang/ClassLoader;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 4
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 7
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidx/fragment/app/Fragment;->k:I

    .line 8
    :cond_3f
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z

    .line 10
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/Boolean;

    goto :goto_5c

    .line 11
    :cond_52
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z

    .line 12
    :goto_5c
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z

    if-nez v0, :cond_64

    .line 13
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->J:Z

    :cond_64
    return-void
.end method

.method p()V
    .registers 5

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->R()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 4
    invoke-direct {p0, v0}, Landroidx/fragment/app/u;->l(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    const/4 v2, 0x2

    .line 6
    invoke-static {v2}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Restoring focused view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_49

    const-string v0, "succeeded"

    goto :goto_4b

    :cond_49
    const-string v0, "failed"

    .line 8
    :goto_4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    :cond_6b
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->T1(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->B1()V

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/m;->i(Landroidx/fragment/app/Fragment;Z)V

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    .line 14
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 15
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;

    return-void
.end method

.method r()Landroidx/fragment/app/t;
    .registers 5

    .line 1
    new-instance v0, Landroidx/fragment/app/t;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->b:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_40

    iget-object v1, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;

    if-nez v1, :cond_40

    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/u;->q()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    if-eqz v2, :cond_46

    if-nez v1, :cond_27

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;

    .line 6
    :cond_27
    iget-object v1, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;

    const-string v3, "android:target_state"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->k:I

    if-eqz v1, :cond_46

    .line 8
    iget-object v2, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;

    const-string v3, "android:target_req_state"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_46

    .line 9
    :cond_40
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/fragment/app/t;->n:Landroid/os/Bundle;

    :cond_46
    :goto_46
    return-object v0
.end method

.method s()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 6
    :cond_1d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a0;->e(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;

    :cond_33
    return-void
.end method

.method t(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/fragment/app/u;->e:I

    return-void
.end method

.method u()V
    .registers 4

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->D1()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/m;->k(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method v()V
    .registers 4

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->E1()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/m;->l(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
