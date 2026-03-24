.class Landroidx/appcompat/app/l;
.super Landroidx/appcompat/app/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/l$d;,
        Landroidx/appcompat/app/l$c;,
        Landroidx/appcompat/app/l$e;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/b0;

.field b:Z

.field c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroidx/appcompat/widget/Toolbar$f;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroidx/appcompat/app/l$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$a;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->g:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Landroidx/appcompat/app/l$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$b;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/widget/Toolbar$f;

    .line 5
    new-instance v0, Landroidx/appcompat/widget/v0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/v0;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    .line 6
    new-instance v0, Landroidx/appcompat/app/l$e;

    invoke-direct {v0, p0, p3}, Landroidx/appcompat/app/l$e;-><init>(Landroidx/appcompat/app/l;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;

    .line 7
    iget-object p3, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {p3, v0}, Landroidx/appcompat/widget/b0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 8
    iget-object p3, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/widget/Toolbar$f;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {p1, p2}, Landroidx/appcompat/widget/b0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private x()Landroid/view/Menu;
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->d:Z

    if-nez v0, :cond_16

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    new-instance v1, Landroidx/appcompat/app/l$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/l$c;-><init>(Landroidx/appcompat/app/l;)V

    new-instance v2, Landroidx/appcompat/app/l$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/l$d;-><init>(Landroidx/appcompat/app/l;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/b0;->i(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/app/l;->d:Z

    .line 4
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->l()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->j()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    and-int/2addr p1, p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/b0;->x(I)V

    return-void
.end method

.method public g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->d()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->u()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public i(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->e:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->e:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    .line 4
    iget-object v2, p0, Landroidx/appcompat/app/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/a$b;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public j()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->j()I

    move-result v0

    return v0
.end method

.method public k()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->q()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/b0;->k(I)V

    return-void
.end method

.method public m()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->o()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/l;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->o()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/l;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public n(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/a;->n(Landroid/content/res/Configuration;)V

    return-void
.end method

.method o()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->o()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/l;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public p(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/l;->x()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    if-eqz p2, :cond_e

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_f

    :cond_e
    const/4 v2, -0x1

    .line 3
    :goto_f
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 5
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_24
    return v1
.end method

.method public q(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/l;->r()Z

    :cond_a
    return v0
.end method

.method public r()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->e()Z

    move-result v0

    return v0
.end method

.method public s(Z)V
    .registers 2

    return-void
.end method

.method public t(Z)V
    .registers 3

    const/16 v0, 0x8

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 1
    :goto_8
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/l;->A(II)V

    return-void
.end method

.method public u(Z)V
    .registers 2

    return-void
.end method

.method public v(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/b0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public y()Landroid/view/Window$Callback;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method z()V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/l;->x()Landroid/view/Menu;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/g;

    goto :goto_e

    :cond_d
    move-object v1, v2

    :goto_e
    if-eqz v1, :cond_13

    .line 3
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->d0()V

    .line 4
    :cond_13
    :try_start_13
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 5
    iget-object v3, p0, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroidx/appcompat/app/l;->c:Landroid/view/Window$Callback;

    .line 6
    invoke-interface {v3, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 7
    :cond_27
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_30

    :cond_2a
    if-eqz v1, :cond_2f

    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->c0()V

    :cond_2f
    return-void

    :catchall_30
    move-exception v0

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->c0()V

    .line 9
    :cond_36
    throw v0
.end method
