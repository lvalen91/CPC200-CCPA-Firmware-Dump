.class Landroidx/appcompat/app/g$j$a;
.super Landroidx/core/view/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/g$j;->d(Lc/a/o/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/g$j;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/g$j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$j$a;->a:Landroidx/appcompat/app/g$j;

    invoke-direct {p0}, Landroidx/core/view/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/g$j$a;->a:Landroidx/appcompat/app/g$j;

    iget-object p1, p1, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object p1, p1, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/g$j$a;->a:Landroidx/appcompat/app/g$j;

    iget-object p1, p1, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object v0, p1, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_17

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_30

    .line 4
    :cond_17
    iget-object p1, p1, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_30

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/g$j$a;->a:Landroidx/appcompat/app/g$j;

    iget-object p1, p1, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object p1, p1, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/v;->l0(Landroid/view/View;)V

    .line 6
    :cond_30
    :goto_30
    iget-object p1, p0, Landroidx/appcompat/app/g$j$a;->a:Landroidx/appcompat/app/g$j;

    iget-object p1, p1, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object p1, p1, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    .line 7
    iget-object p1, p0, Landroidx/appcompat/app/g$j$a;->a:Landroidx/appcompat/app/g$j;

    iget-object p1, p1, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iget-object p1, p1, Landroidx/appcompat/app/g;->t:Landroidx/core/view/z;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/z;->f(Landroidx/core/view/a0;)Landroidx/core/view/z;

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/g$j$a;->a:Landroidx/appcompat/app/g$j;

    iget-object p1, p1, Landroidx/appcompat/app/g$j;->b:Landroidx/appcompat/app/g;

    iput-object v0, p1, Landroidx/appcompat/app/g;->t:Landroidx/core/view/z;

    .line 9
    iget-object p1, p1, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/v;->l0(Landroid/view/View;)V

    return-void
.end method
