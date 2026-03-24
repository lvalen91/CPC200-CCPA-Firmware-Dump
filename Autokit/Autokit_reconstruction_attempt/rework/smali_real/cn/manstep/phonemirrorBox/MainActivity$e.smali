.class Lcn/manstep/phonemirrorBox/MainActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->Z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/MainActivity;->p0(Lcn/manstep/phonemirrorBox/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$e$a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/MainActivity$e$a;-><init>(Lcn/manstep/phonemirrorBox/MainActivity$e;)V

    new-instance v2, Lcn/manstep/phonemirrorBox/MainActivity$e$b;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/MainActivity$e$b;-><init>(Lcn/manstep/phonemirrorBox/MainActivity$e;)V

    invoke-static {v0, v1, v2}, Lcn/manstep/phonemirrorBox/k0/k;->A2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcn/manstep/phonemirrorBox/k0/k;

    goto :goto_43

    .line 4
    :cond_2b
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->q0(Lcn/manstep/phonemirrorBox/MainActivity;Z)Z

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ATP"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/MyApplication;->e()V

    .line 7
    :cond_43
    :goto_43
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/MainActivity;->s0(Lcn/manstep/phonemirrorBox/MainActivity;)Landroid/widget/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "initAnimation->run: "

    const-string v2, "MainActivity"

    const-string v3, "x"

    if-nez v0, :cond_82

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/MainActivity;->s0(Lcn/manstep/phonemirrorBox/MainActivity;)Landroid/widget/ViewAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/MainActivity;->s0(Lcn/manstep/phonemirrorBox/MainActivity;)Landroid/widget/ViewAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_82
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/MainActivity;->s0(Lcn/manstep/phonemirrorBox/MainActivity;)Landroid/widget/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 10
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/MainActivity;->s0(Lcn/manstep/phonemirrorBox/MainActivity;)Landroid/widget/ViewAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/manstep/phonemirrorBox/p;->k:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Measured: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget v1, Lcn/manstep/phonemirrorBox/p;->l:I

    sget v2, Lcn/manstep/phonemirrorBox/p;->k:I

    if-le v1, v2, :cond_d2

    .line 13
    sput v4, Lcn/manstep/phonemirrorBox/p;->n:I

    .line 14
    sput v0, Lcn/manstep/phonemirrorBox/p;->o:I

    .line 15
    :cond_d2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/MainActivity;->t0(Lcn/manstep/phonemirrorBox/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_dc

    if-le v0, v4, :cond_ea

    .line 16
    :cond_dc
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcn/manstep/phonemirrorBox/c0;->q(II)Lcn/manstep/phonemirrorBox/c0;

    .line 17
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_ea

    .line 18
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Q()V

    :cond_ea
    return-void
.end method
