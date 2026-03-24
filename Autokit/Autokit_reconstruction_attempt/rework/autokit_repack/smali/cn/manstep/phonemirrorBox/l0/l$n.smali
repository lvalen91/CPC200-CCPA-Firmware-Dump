.class Lcn/manstep/phonemirrorBox/l0/l$n;
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
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;Landroid/widget/CheckBox;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/a;->b0(Z)V

    if-nez p2, :cond_98

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->v2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/a;->a0(I)V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/a;->y()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/a;->y()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->s2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setMode(I)V

    .line 6
    :cond_4d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/a;->M()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/a;->M()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->s2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 8
    :cond_7c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/l0/l;->i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/b;->g()V

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object p1

    invoke-virtual {p1}, Ld/b/a/b;->i()V

    .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_17e

    .line 12
    :cond_98
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;

    move-result-object p1

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->w:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_af

    .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->v2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 14
    :cond_af
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/x0/a;->a0(I)V

    .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/a;->y()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e9

    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/a;->y()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e9

    .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->s2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 17
    :cond_e9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/a;->M()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_119

    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/a;->M()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_119

    .line 18
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->s2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 19
    :cond_119
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/l0/l;->i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z

    .line 20
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/l0/l;->E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z

    move-result v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/x0/a;->x()Landroidx/lifecycle/o;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/a;->w()Landroidx/lifecycle/o;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcn/manstep/phonemirrorBox/l0/l;->G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;

    move-result-object v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/x0/a;->x()Landroidx/lifecycle/o;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcn/manstep/phonemirrorBox/f0/b;->n(ZLandroid/media/AudioAttributes;I)I

    .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$n;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/l0/l;->H2(Lcn/manstep/phonemirrorBox/l0/l;I)V

    :goto_17e
    return-void
.end method
