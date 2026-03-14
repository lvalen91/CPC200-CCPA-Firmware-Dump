.class public Lcn/manstep/phonemirrorBox/v0/c;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/v0/d;
.source "SourceFile"

.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-string v0, ""
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/c;->b:Ljava/lang/String;
    return-void
.end method

.method public a()V
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/c;->b:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 4
    const/4 v3, 3
    const/4 v4, 2
    const/4 v5, 1
    sparse-switch v1, :L13
    goto :L5
  :L0
    const-string v1, "iPhoneMirror"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 4
    goto :L6
  :L1
    const-string v1, "HiCar"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 2
    goto :L6
  :L2
    const-string v1, "AndroidMirror"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 3
    goto :L6
  :L3
    const-string v1, "AndroidAuto"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 0
    goto :L6
  :L4
    const-string v1, "CarPlay"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 1
    goto :L6
  :L5
    const/4 v0, -1
  :L6
    if-eqz v0, :L11
    if-eq v0, v5, :L10
    if-eq v0, v4, :L9
    if-eq v0, v3, :L8
    if-eq v0, v2, :L7
    goto :L12
  :L7
    const/16 v0, 17
  .line 2
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    goto :L12
  :L8
    const/16 v0, 15
  .line 3
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    goto :L12
  :L9
    const/16 v0, 22
  .line 4
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    goto :L12
  :L10
    const/4 v0, 5
  .line 5
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    goto :L12
  :L11
  .line 6
    invoke-virtual { p0, v5 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
  :L12
    return-void
  :L13
  .sparse-switch
    -2076963576 -> :L4
    -1690148706 -> :L3
    -402854162 -> :L2
    69689075 -> :L1
    1104135844 -> :L0
  .end sparse-switch
.end method

.method public b()V
  .registers 2
    const/4 v0, 6
  .line 1
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/c;->b:Ljava/lang/String;
    const/16 p1, 11
  .line 2
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    return-void
.end method

.method public d()V
  .registers 2
    const/4 v0, 7
  .line 1
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    return-void
.end method

.method public e()V
  .registers 1
    return-void
.end method

.method public f()V
  .registers 2
    const/4 v0, 4
  .line 1
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    return-void
.end method

.method public g()V
  .registers 2
    const/16 v0, 19
  .line 1
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    return-void
.end method

.method public h()V
  .registers 1
    return-void
.end method

.method public i()V
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/c;->b:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 4
    const/4 v3, 3
    const/4 v4, 1
    const/4 v5, 2
    sparse-switch v1, :L12
    goto :L5
  :L0
    const-string v1, "iPhoneMirror"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 4
    goto :L6
  :L1
    const-string v1, "HiCar"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 2
    goto :L6
  :L2
    const-string v1, "AndroidMirror"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 3
    goto :L6
  :L3
    const-string v1, "AndroidAuto"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 0
    goto :L6
  :L4
    const-string v1, "CarPlay"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 1
    goto :L6
  :L5
    const/4 v0, -1
  :L6
    if-eqz v0, :L10
    if-eq v0, v4, :L10
    if-eq v0, v5, :L9
    if-eq v0, v3, :L8
    if-eq v0, v2, :L7
    goto :L11
  :L7
    const/16 v0, 18
  .line 2
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    goto :L11
  :L8
    const/16 v0, 16
  .line 3
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    goto :L11
  :L9
    const/16 v0, 23
  .line 4
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    goto :L11
  :L10
  .line 5
    invoke-virtual { p0, v5 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
  :L11
    return-void
  :L12
  .sparse-switch
    -2076963576 -> :L4
    -1690148706 -> :L3
    -402854162 -> :L2
    69689075 -> :L1
    1104135844 -> :L0
  .end sparse-switch
.end method

.method public j()V
  .registers 2
    const/16 v0, 8
  .line 1
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    return-void
.end method

.method public k()V
  .registers 2
    const/4 v0, 3
  .line 1
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    return-void
.end method

.method public l()V
  .registers 1
    return-void
.end method

.method public m()V
  .registers 2
    const/16 v0, 20
  .line 1
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    return-void
.end method

.method public n()V
  .registers 2
    const/16 v0, 9
  .line 1
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    const/16 v0, 10
  .line 2
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    return-void
.end method

.method public o()V
  .registers 1
    return-void
.end method

.method public p()V
  .registers 2
    const/16 v0, 12
  .line 1
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V
    return-void
.end method

.method public q(Landroid/content/Context;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/c;->a:Landroid/content/Context;
    return-void
.end method

.method public r(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/c;->a:Landroid/content/Context;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroid/content/Intent;
    const-string v1, "cn.manstep.phonemirrorBox.AUTO_BOX_MODE_CHANGE_EVT"
    invoke-direct { v0, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v1, "cn.manstep.phonemirrorBox.AUTO_BOX_MODE_CHANGE_DATA"
  .line 3
    invoke-virtual { v0, v1, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/c;->a:Landroid/content/Context;
    invoke-virtual { p1, v0 }, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
  :L0
    return-void
.end method
