.class Lcn/manstep/phonemirrorBox/l0/l$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/l;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/l0/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$k;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$k;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/l0/l;->l2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$k;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/a;->e0(Z)V

    if-eqz p2, :cond_1f

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$k;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->n2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/util/u;

    move-result-object p1

    new-instance p2, Lcn/manstep/phonemirrorBox/l0/l$k$a;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/l0/l$k$a;-><init>(Lcn/manstep/phonemirrorBox/l0/l$k;)V

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/util/u;->a(Ljava/lang/Runnable;)V

    goto :goto_49

    .line 4
    :cond_1f
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$k;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/a;->D()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_49

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$k;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->o2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/e;

    move-result-object p1

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l$k;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/n;->u(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/e;->E(Z)V

    :cond_49
    :goto_49
    return-void
.end method
