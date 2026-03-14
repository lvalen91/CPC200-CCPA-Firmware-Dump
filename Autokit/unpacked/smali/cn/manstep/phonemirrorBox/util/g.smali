.class public Lcn/manstep/phonemirrorBox/util/g;
.super Landroid/app/Dialog;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/util/g$c;
  }
.end annotation

.method public constructor <init>(Landroid/content/Context;I)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
    return-void
.end method

.method public static a(Landroid/content/Context;II)V
  .registers 4
    if-eqz p0, :L0
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/g$c;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;-><init>(Landroid/content/Context;)V
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;->c(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/g$c;
    const/4 p0, 1
  .line 3
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;->b(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 4
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;->a(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/g$c;->d()Lcn/manstep/phonemirrorBox/util/g;
    move-result-object p1
    invoke-virtual { p1, p0, p2 }, Lcn/manstep/phonemirrorBox/util/g;->c(ZI)V
  :L0
    return-void
.end method

.method public static d(Landroid/content/Context;I)V
  .registers 3
    if-eqz p0, :L0
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/g$c;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;-><init>(Landroid/content/Context;)V
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;->c(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/g$c;
    const/4 p0, 1
  .line 3
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;->b(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 4
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$c;->a(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/g$c;->d()Lcn/manstep/phonemirrorBox/util/g;
    move-result-object p1
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/util/g;->b(Z)V
  :L0
    return-void
.end method

.method public b(Z)V
  .registers 5
  .line 1
    invoke-super { p0 }, Landroid/app/Dialog;->show()V
    if-eqz p1, :L0
  .line 2
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    new-instance v0, Lcn/manstep/phonemirrorBox/util/g$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$a;-><init>(Lcn/manstep/phonemirrorBox/util/g;)V
    const-wide/16 v1, 3000
    invoke-virtual { p1, v0, v1, v2 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L0
    return-void
.end method

.method public c(ZI)V
  .registers 6
  .line 1
    invoke-super { p0 }, Landroid/app/Dialog;->show()V
    if-eqz p1, :L0
  .line 2
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    new-instance v0, Lcn/manstep/phonemirrorBox/util/g$b;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/util/g$b;-><init>(Lcn/manstep/phonemirrorBox/util/g;)V
    int-to-long v1, p2
    invoke-virtual { p1, v0, v1, v2 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L0
    return-void
.end method

.method public show()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/app/Dialog;->show()V
    return-void
.end method
