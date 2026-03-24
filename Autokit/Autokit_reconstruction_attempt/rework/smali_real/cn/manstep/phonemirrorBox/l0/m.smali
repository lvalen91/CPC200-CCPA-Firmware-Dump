.class public Lcn/manstep/phonemirrorBox/l0/m;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/l0/m$b;
    }
.end annotation


# instance fields
.field protected a0:Landroidx/lifecycle/w$b;

.field protected b0:Lcn/manstep/phonemirrorBox/l0/m$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public E0(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->E0(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/w$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_15

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_15
    invoke-direct {p1, v0}, Landroidx/lifecycle/w$a;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;

    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 4
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/m$a;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/l0/m$a;-><init>(Lcn/manstep/phonemirrorBox/l0/m;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method protected g2()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/m;->b0:Lcn/manstep/phonemirrorBox/l0/m$b;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/l0/m$b;->a()V

    .line 3
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/w;->o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    invoke-virtual {v0}, Landroidx/fragment/app/w;->i()I

    return-void
.end method
