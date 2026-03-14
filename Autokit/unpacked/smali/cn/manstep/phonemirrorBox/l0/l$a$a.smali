.class Lcn/manstep/phonemirrorBox/l0/l$a$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/l$a;->onFinish()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcn/manstep/phonemirrorBox/l0/l$a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l$a;II)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iput p2, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->b:I
    iput p3, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->c:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 7
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->b:I
    const/16 v1, 22
    if-ge v0, v1, :L5
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->v2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/os/CountDownTimer;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v0
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/a;->b0(Z)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v0
    iget v2, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->c:I
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/x0/a;->a0(I)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/l0/l;->i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z
  .line 6
    iget v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->c:I
    if-eq v0, v1, :L3
    const/4 v1, 2
    if-eq v0, v1, :L2
    const/4 v1, 3
    if-eq v0, v1, :L1
    const/4 v1, 4
    if-eq v0, v1, :L0
    goto/16 :L4
  :L0
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->J()Landroidx/lifecycle/o;
    move-result-object v0
    iget v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->b:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;
    move-result-object v2
    invoke-virtual { v2 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Boolean;
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/l0/l;->E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z
    move-result v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v2, v2, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v3
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/x0/a;->J()Landroidx/lifecycle/o;
    move-result-object v3
    invoke-virtual { v3 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v3
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v4, v4, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/x0/a;->I()Landroidx/lifecycle/o;
    move-result-object v5
    invoke-virtual { v5 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-static { v4, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v4
    invoke-static { v2, v3, v4 }, Lcn/manstep/phonemirrorBox/l0/l;->G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;
    move-result-object v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v3, v3, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v4
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/x0/a;->J()Landroidx/lifecycle/o;
    move-result-object v4
    invoke-virtual { v4 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v3
    invoke-virtual { v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/f0/f;->n(ZLandroid/media/AudioAttributes;I)I
    goto/16 :L4
  :L1
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->O()Landroidx/lifecycle/o;
    move-result-object v0
    iget v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->b:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;
    move-result-object v2
    invoke-virtual { v2 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Boolean;
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/l0/l;->E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z
    move-result v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v2, v2, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v3
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/x0/a;->O()Landroidx/lifecycle/o;
    move-result-object v3
    invoke-virtual { v3 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v3
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v4, v4, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/x0/a;->N()Landroidx/lifecycle/o;
    move-result-object v5
    invoke-virtual { v5 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-static { v4, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v4
    invoke-static { v2, v3, v4 }, Lcn/manstep/phonemirrorBox/l0/l;->G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;
    move-result-object v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v3, v3, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v4
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/x0/a;->O()Landroidx/lifecycle/o;
    move-result-object v4
    invoke-virtual { v4 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v3
    invoke-virtual { v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/f0/g;->n(ZLandroid/media/AudioAttributes;I)I
    goto/16 :L4
  :L2
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->x()Landroidx/lifecycle/o;
    move-result-object v0
    iget v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->b:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;
    move-result-object v2
    invoke-virtual { v2 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Boolean;
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/l0/l;->E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z
    move-result v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v2, v2, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v3
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/x0/a;->x()Landroidx/lifecycle/o;
    move-result-object v3
    invoke-virtual { v3 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v3
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v4, v4, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/x0/a;->w()Landroidx/lifecycle/o;
    move-result-object v5
    invoke-virtual { v5 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-static { v4, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v4
    invoke-static { v2, v3, v4 }, Lcn/manstep/phonemirrorBox/l0/l;->G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;
    move-result-object v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v3, v3, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v4
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/x0/a;->x()Landroidx/lifecycle/o;
    move-result-object v4
    invoke-virtual { v4 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v3
    invoke-virtual { v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/f0/b;->n(ZLandroid/media/AudioAttributes;I)I
    goto :L4
  :L3
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->C()Landroidx/lifecycle/o;
    move-result-object v0
    iget v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->b:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 14
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;
    move-result-object v2
    invoke-virtual { v2 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Boolean;
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/l0/l;->E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z
    move-result v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v2, v2, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v3
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/x0/a;->C()Landroidx/lifecycle/o;
    move-result-object v3
    invoke-virtual { v3 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v3
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v4, v4, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/x0/a;->B()Landroidx/lifecycle/o;
    move-result-object v5
    invoke-virtual { v5 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-static { v4, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v4
    invoke-static { v2, v3, v4 }, Lcn/manstep/phonemirrorBox/l0/l;->G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;
    move-result-object v2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v3, v3, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v4
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/x0/a;->C()Landroidx/lifecycle/o;
    move-result-object v4
    invoke-virtual { v4 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/Integer;
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
    move-result v3
    invoke-virtual { v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/f0/e;->n(ZLandroid/media/AudioAttributes;I)I
  :L4
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->d:Lcn/manstep/phonemirrorBox/l0/l$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;
    iget v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a$a;->c:I
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/l0/l;->H2(Lcn/manstep/phonemirrorBox/l0/l;I)V
  :L5
    return-void
.end method
