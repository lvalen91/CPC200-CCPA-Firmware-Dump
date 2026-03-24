.class Landroidx/appcompat/app/o$a;
.super Landroidx/core/view/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/o;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/o;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/o$a;->a:Landroidx/appcompat/app/o;

    invoke-direct {p0}, Landroidx/core/view/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/o$a;->a:Landroidx/appcompat/app/o;

    iget-boolean v0, p1, Landroidx/appcompat/app/o;->q:Z

    if-eqz v0, :cond_15

    iget-object p1, p1, Landroidx/appcompat/app/o;->g:Landroid/view/View;

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/o$a;->a:Landroidx/appcompat/app/o;

    iget-object p1, p1, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4
    :cond_15
    iget-object p1, p0, Landroidx/appcompat/app/o$a;->a:Landroidx/appcompat/app/o;

    iget-object p1, p1, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/o$a;->a:Landroidx/appcompat/app/o;

    iget-object p1, p1, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/o$a;->a:Landroidx/appcompat/app/o;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/o;->v:Lc/a/o/h;

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/o;->z()V

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/o$a;->a:Landroidx/appcompat/app/o;

    iget-object p1, p1, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_37

    .line 9
    invoke-static {p1}, Landroidx/core/view/v;->l0(Landroid/view/View;)V

    :cond_37
    return-void
.end method
