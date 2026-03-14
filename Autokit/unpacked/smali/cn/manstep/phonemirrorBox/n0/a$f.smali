.class Lcn/manstep/phonemirrorBox/n0/a$f;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/n0/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "f"
.end annotation

.field private a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcn/manstep/phonemirrorBox/n0/a;",
      ">;"
    }
  .end annotation
.end field

.method private constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$f;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/n0/a$a;)V
  .registers 2
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/n0/a$f;-><init>()V
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/n0/a$f;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$f;->a:Ljava/lang/ref/WeakReference;
    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 9
  .line 1
    iget v0, p1, Landroid/os/Message;->what:I
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$f;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/n0/a;
    if-nez v1, :L0
    const-string p1, "RenderHandler.handleMessage: weak ref is null"
  .line 3
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
  :L0
  .line 4
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/n0/a;->j:Lcn/manstep/phonemirrorBox/n0/a$d;
    const/4 v3, 0
    const/4 v4, 1
    if-eqz v0, :L11
    const/4 v5, 3
    if-eq v0, v4, :L4
    const/4 v1, 2
    if-eq v0, v1, :L3
    if-eq v0, v5, :L1
    goto/16 :L16
  :L1
    if-eqz v2, :L16
  .line 5
    iget p1, p1, Landroid/os/Message;->arg1:I
    if-ne p1, v4, :L2
    const/4 v3, 1
  :L2
    invoke-virtual { v2, v3 }, Lcn/manstep/phonemirrorBox/n0/a$d;->e(Z)V
    goto/16 :L16
  :L3
    if-eqz v2, :L16
  .line 6
    iget v0, p1, Landroid/os/Message;->arg1:I
    iget p1, p1, Landroid/os/Message;->arg2:I
    invoke-virtual { v2, v0, p1 }, Lcn/manstep/phonemirrorBox/n0/a$d;->f(II)V
    goto :L16
  :L4
  .line 7
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a;->e(Lcn/manstep/phonemirrorBox/n0/a;)Ljava/util/List;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L5
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L6
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/n0/a$e;
  .line 8
    iget v6, p1, Landroid/os/Message;->arg1:I
    invoke-interface { v1, v6 }, Lcn/manstep/phonemirrorBox/n0/a$e;->d(I)V
    goto :L5
  :L6
    if-eqz v2, :L16
  .line 9
    iget p1, p1, Landroid/os/Message;->arg1:I
    if-eq p1, v5, :L10
    const/4 v0, 4
    if-eq p1, v0, :L9
    const/4 v0, 5
    if-eq p1, v0, :L8
    const/4 v0, 6
    if-eq p1, v0, :L7
    goto :L16
  :L7
  .line 10
    invoke-virtual { v2, v4 }, Lcn/manstep/phonemirrorBox/n0/a$d;->c(Z)V
    goto :L16
  :L8
  .line 11
    invoke-virtual { v2, v3 }, Lcn/manstep/phonemirrorBox/n0/a$d;->c(Z)V
    goto :L16
  :L9
  .line 12
    invoke-virtual { v2, v4 }, Lcn/manstep/phonemirrorBox/n0/a$d;->d(Z)V
    goto :L16
  :L10
  .line 13
    invoke-virtual { v2, v3 }, Lcn/manstep/phonemirrorBox/n0/a$d;->d(Z)V
    goto :L16
  :L11
  .line 14
    iget p1, p1, Landroid/os/Message;->arg1:I
    if-ne p1, v4, :L12
    const/4 v3, 1
  :L12
  .line 15
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a;->e(Lcn/manstep/phonemirrorBox/n0/a;)Ljava/util/List;
    move-result-object p1
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L13
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L14
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/n0/a$e;
  .line 16
    invoke-interface { v0, v3 }, Lcn/manstep/phonemirrorBox/n0/a$e;->f(Z)V
    goto :L13
  :L14
    if-eqz v3, :L15
  .line 17
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a;->b(Lcn/manstep/phonemirrorBox/n0/a;)V
    goto :L16
  :L15
  .line 18
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/n0/a;->d(Lcn/manstep/phonemirrorBox/n0/a;)V
  :L16
    return-void
.end method
