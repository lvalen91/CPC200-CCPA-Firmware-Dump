.class Lcn/manstep/phonemirrorBox/l0/l$p;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/l0/l;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "p"
.end annotation

.field private final a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcn/manstep/phonemirrorBox/l0/l;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;
    move-result-object v0
    if-eqz v0, :L6
  .line 3
    iget p1, p1, Landroid/os/Message;->what:I
    if-eqz p1, :L5
    const/4 v0, 1
    if-eq p1, v0, :L4
    const/4 v0, 2
    if-eq p1, v0, :L3
    const/4 v0, 3
    if-eq p1, v0, :L2
    const/4 v0, 4
    if-eq p1, v0, :L1
    const/4 v0, 5
    if-eq p1, v0, :L0
    goto/16 :L6
  :L0
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;
    move-result-object p1
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->B:Landroid/widget/CheckBox;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->performClick()Z
    goto :L6
  :L1
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;
    move-result-object p1
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->x:Landroid/widget/CheckBox;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->performClick()Z
    goto :L6
  :L2
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;
    move-result-object p1
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->y:Landroid/widget/CheckBox;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->performClick()Z
    goto :L6
  :L3
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;
    move-result-object p1
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->A:Landroid/widget/CheckBox;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->performClick()Z
    goto :L6
  :L4
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;
    move-result-object p1
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->C:Landroid/widget/CheckBox;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->performClick()Z
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object p1
    const/4 v0, 0
    const-string v1, "\u5f55\u97f3\u521b\u5efa\u5931\u8d25"
    invoke-static { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/widget/Toast;->show()V
    goto :L6
  :L5
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;
    move-result-object p1
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->z:Landroid/widget/CheckBox;
    invoke-virtual { p1 }, Landroid/widget/CheckBox;->performClick()Z
  :L6
    return-void
.end method
