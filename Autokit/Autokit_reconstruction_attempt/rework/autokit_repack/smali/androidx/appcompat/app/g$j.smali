.class Landroidx/appcompat/app/g$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/a/o/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field private a:Lc/a/o/b$a;

.field final synthetic b:Landroidx/appcompat/app/g;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/g;Lc/a/o/b$a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/g$j;->a:Lc/a/o/b$a;

    return-void
.end method


# virtual methods
.method public a(Lc/a/o/b;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object v0, v0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/v;->l0(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g$j;->a:Lc/a/o/b$a;

    invoke-interface {v0, p1, p2}, Lc/a/o/b$a;->a(Lc/a/o/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Lc/a/o/b;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$j;->a:Lc/a/o/b$a;

    invoke-interface {v0, p1, p2}, Lc/a/o/b$a;->b(Lc/a/o/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c(Lc/a/o/b;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$j;->a:Lc/a/o/b$a;

    invoke-interface {v0, p1, p2}, Lc/a/o/b$a;->c(Lc/a/o/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public d(Lc/a/o/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$j;->a:Lc/a/o/b$a;

    invoke-interface {v0, p1}, Lc/a/o/b$a;->d(Lc/a/o/b;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object v0, p1, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_18

    .line 3
    iget-object p1, p1, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object v0, v0, Landroidx/appcompat/app/g;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_18
    iget-object p1, p0, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object v0, p1, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_3b

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/g;->b0()V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object v0, p1, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/view/v;->d(Landroid/view/View;)Landroidx/core/view/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/z;->a(F)Landroidx/core/view/z;

    iput-object v0, p1, Landroidx/appcompat/app/g;->t:Landroidx/core/view/z;

    .line 7
    iget-object p1, p0, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object p1, p1, Landroidx/appcompat/app/g;->t:Landroidx/core/view/z;

    new-instance v0, Landroidx/appcompat/app/g$j$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/g$j$a;-><init>(Landroidx/appcompat/app/g$j;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/z;->f(Landroidx/core/view/a0;)Landroidx/core/view/z;

    .line 8
    :cond_3b
    iget-object p1, p0, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object v0, p1, Landroidx/appcompat/app/g;->i:Landroidx/appcompat/app/e;

    if-eqz v0, :cond_46

    .line 9
    iget-object p1, p1, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/e;->onSupportActionModeFinished(Lc/a/o/b;)V

    .line 10
    :cond_46
    iget-object p1, p0, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    .line 11
    iget-object p1, p1, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/v;->l0(Landroid/view/View;)V

    return-void
.end method
