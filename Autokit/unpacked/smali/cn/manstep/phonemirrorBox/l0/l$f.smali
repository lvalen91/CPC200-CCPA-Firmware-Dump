.class Lcn/manstep/phonemirrorBox/l0/l$f;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/l;->W2()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/l;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 10
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    new-instance v1, Lcn/manstep/phonemirrorBox/j0/a$a;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/j0/a$a;-><init>()V
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/l0/l;->B2(Lcn/manstep/phonemirrorBox/l0/l;Lcn/manstep/phonemirrorBox/j0/a$a;)Lcn/manstep/phonemirrorBox/j0/a$a;
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/x0/a;->K()Landroidx/lifecycle/o;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual { v1 }, Ljava/lang/Integer;->intValue()I
    move-result v1
    iput v1, v0, Lcn/manstep/phonemirrorBox/j0/a$a;->a:I
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/x0/a;->F()Landroidx/lifecycle/o;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual { v1 }, Ljava/lang/Integer;->intValue()I
    move-result v1
    iput v1, v0, Lcn/manstep/phonemirrorBox/j0/a$a;->b:I
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/x0/a;->L()Landroidx/lifecycle/o;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual { v1 }, Ljava/lang/Integer;->intValue()I
    move-result v1
    iput v1, v0, Lcn/manstep/phonemirrorBox/j0/a$a;->c:I
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v0
    iget v0, v0, Lcn/manstep/phonemirrorBox/j0/a$a;->b:I
    const/4 v1, 3
    const/4 v2, 0
    if-eq v0, v1, :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v0
    iput v2, v0, Lcn/manstep/phonemirrorBox/j0/a$a;->c:I
  :L0
  .line 7
    new-instance v0, Lcn/manstep/phonemirrorBox/j0/a;
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v3
    const-string v4, "RecordSource"
    const/4 v5, 1
    invoke-virtual { v3, v4, v5 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v3
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v4
    invoke-direct { v0, v3, v4 }, Lcn/manstep/phonemirrorBox/j0/a;-><init>(ILcn/manstep/phonemirrorBox/j0/a$a;)V
  .line 8
    new-instance v3, Ld/b/a/a;
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v4
    iget v4, v4, Lcn/manstep/phonemirrorBox/j0/a$a;->a:I
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v6
    iget v6, v6, Lcn/manstep/phonemirrorBox/j0/a$a;->b:I
    if-ne v6, v5, :L1
    const/16 v6, 16
    goto :L2
  :L1
    const/16 v6, 12
  :L2
    const/4 v7, 2
    invoke-direct { v3, v4, v6, v7 }, Ld/b/a/a;-><init>(III)V
  .line 9
    invoke-virtual { v0, v3 }, Ld/b/a/c;->h(Ld/b/a/a;)V
  .line 10
    invoke-virtual { v0 }, Ld/b/a/c;->i()V
  .line 11
    invoke-virtual { v0 }, Ld/b/a/c;->n()I
    move-result v3
  .line 12
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v4
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v6
    new-array v7, v7, [Ljava/lang/Object;
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v8 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v8
    iget v8, v8, Lcn/manstep/phonemirrorBox/j0/a$a;->a:I
    invoke-static { v8 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    aput-object v8, v7, v2
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v7, v5
    const-string v3, "src_%d_%d.pcm"
    invoke-static { v6, v3, v7 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    iput-object v3, v4, Lcn/manstep/phonemirrorBox/j0/a$a;->d:Ljava/lang/String;
  .line 13
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "record->run: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const-string v4, "AudioDebug"
    invoke-static { v4, v3 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 14
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v4
    iget-object v4, v4, Lcn/manstep/phonemirrorBox/j0/a$a;->d:Ljava/lang/String;
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/l0/l;->y2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/String;)Ljava/lang/String;
  .line 15
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-virtual { v3 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v3
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/l0/l;->x2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/util/n;->d(Landroid/content/Context;Ljava/lang/String;)V
  .line 16
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
    move-result-object v3
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/j0/a;->y(Lcn/manstep/phonemirrorBox/j0/a$a;)V
  .line 17
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/j0/a;->x()Z
    move-result v3
    if-eqz v3, :L3
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->C2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/l0/l$p;
    move-result-object v0
    invoke-virtual { v0, v5 }, Landroid/os/Handler;->sendEmptyMessage(I)Z
    return-void
  :L3
  .line 19
    invoke-virtual { v0 }, Ld/b/a/c;->c()I
    move-result v3
  .line 20
    new-array v4, v3, [B
  :L4
  .line 21
    invoke-virtual { v0 }, Ld/b/a/c;->o()Z
    move-result v5
    if-eqz v5, :L6
  .line 22
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/l0/l;->k2(Lcn/manstep/phonemirrorBox/l0/l;)Z
    move-result v5
    if-nez v5, :L5
    goto :L6
  :L5
  .line 23
    invoke-virtual { v0, v4, v2, v3 }, Lcn/manstep/phonemirrorBox/j0/a;->f([BII)Z
    move-result v5
    if-eqz v5, :L4
  .line 24
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/l0/l;->D2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/widget/WaveformView;
    move-result-object v5
    if-eqz v5, :L6
  .line 25
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l$f;->b:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/l0/l;->D2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/widget/WaveformView;
    move-result-object v5
    invoke-virtual { v0 }, Ld/b/a/c;->n()I
    move-result v6
    invoke-virtual { v5, v4, v3, v6 }, Lcn/manstep/phonemirrorBox/widget/WaveformView;->e([BII)V
    goto :L4
  :L6
  .line 26
    invoke-virtual { v0 }, Ld/b/a/c;->q()I
    move-result v2
    if-ne v2, v1, :L7
  .line 27
    invoke-virtual { v0 }, Ld/b/a/c;->k()V
  :L7
    return-void
.end method
