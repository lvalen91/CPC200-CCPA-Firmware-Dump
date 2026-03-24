.class public Lcn/manstep/phonemirrorBox/l0/t;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/l0/t$e;
    }
.end annotation


# instance fields
.field private a0:Lcn/manstep/phonemirrorBox/x0/h;

.field private b0:Lcn/manstep/phonemirrorBox/i0/w;

.field private c0:Ljava/lang/String;

.field private d0:Ljava/lang/String;

.field private e0:I

.field private f0:Lcn/manstep/phonemirrorBox/l0/t$e;

.field private g0:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/l0/t;->e0:I

    return-void
.end method

.method static synthetic g2(Lcn/manstep/phonemirrorBox/l0/t;)Landroidx/fragment/app/n;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/t;->g0:Landroidx/fragment/app/n;

    return-object p0
.end method

.method static synthetic h2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/l0/t$e;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/t;->f0:Lcn/manstep/phonemirrorBox/l0/t$e;

    return-object p0
.end method

.method static synthetic i2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/i0/w;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/t;->b0:Lcn/manstep/phonemirrorBox/i0/w;

    return-object p0
.end method

.method public static j2(Landroidx/fragment/app/n;)Lcn/manstep/phonemirrorBox/l0/t;
    .registers 2

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/t;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/l0/t;-><init>()V

    .line 2
    iput-object p0, v0, Lcn/manstep/phonemirrorBox/l0/t;->g0:Landroidx/fragment/app/n;

    return-object v0
.end method


# virtual methods
.method public B0(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->B0(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->b0:Lcn/manstep/phonemirrorBox/i0/w;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/w;->v:Landroid/widget/Button;

    new-instance v0, Lcn/manstep/phonemirrorBox/l0/t$b;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/l0/t$b;-><init>(Lcn/manstep/phonemirrorBox/l0/t;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->b0:Lcn/manstep/phonemirrorBox/i0/w;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/w;->w:Landroid/widget/Button;

    new-instance v0, Lcn/manstep/phonemirrorBox/l0/t$c;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/l0/t$c;-><init>(Lcn/manstep/phonemirrorBox/l0/t;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public E0(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->E0(Landroid/content/Context;)V

    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0c0055

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/i0/w;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->b0:Lcn/manstep/phonemirrorBox/i0/w;

    .line 2
    new-instance p1, Landroidx/lifecycle/w$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p2

    if-nez p2, :cond_16

    const/4 p2, 0x0

    goto :goto_1e

    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    :goto_1e
    invoke-direct {p1, p2}, Landroidx/lifecycle/w$a;-><init>(Landroid/app/Application;)V

    .line 3
    new-instance p2, Landroidx/lifecycle/w;

    invoke-direct {p2, p0, p1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V

    const-class p1, Lcn/manstep/phonemirrorBox/x0/h;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/x0/h;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->a0:Lcn/manstep/phonemirrorBox/x0/h;

    .line 4
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/t;->b0:Lcn/manstep/phonemirrorBox/i0/w;

    invoke-virtual {p2, p1}, Lcn/manstep/phonemirrorBox/i0/w;->L(Lcn/manstep/phonemirrorBox/x0/h;)V

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->b0:Lcn/manstep/phonemirrorBox/i0/w;

    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->G(Landroidx/lifecycle/j;)V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->b0:Lcn/manstep/phonemirrorBox/i0/w;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;

    iget p2, p0, Lcn/manstep/phonemirrorBox/l0/t;->e0:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->a0:Lcn/manstep/phonemirrorBox/x0/h;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/t;->c0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/h;->m(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->a0:Lcn/manstep/phonemirrorBox/x0/h;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/t;->d0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/h;->l(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->b0:Lcn/manstep/phonemirrorBox/i0/w;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->t()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e1()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->e1()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/manstep/phonemirrorBox/l0/t$d;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/l0/t$d;-><init>(Lcn/manstep/phonemirrorBox/l0/t;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->b0:Lcn/manstep/phonemirrorBox/i0/w;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;

    new-instance p2, Lcn/manstep/phonemirrorBox/l0/t$a;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/l0/t$a;-><init>(Lcn/manstep/phonemirrorBox/l0/t;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public k2(Lcn/manstep/phonemirrorBox/l0/t$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->f0:Lcn/manstep/phonemirrorBox/l0/t$e;

    return-void
.end method

.method public l2(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->e0:I

    return-void
.end method

.method public m2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t;->c0:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/t;->d0:Ljava/lang/String;

    return-void
.end method
