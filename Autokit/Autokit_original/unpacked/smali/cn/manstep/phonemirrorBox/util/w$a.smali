.class final Lcn/manstep/phonemirrorBox/util/w$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/w;->b(Landroid/content/Context;Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.field final synthetic b:Landroid/content/Context;

.method constructor <init>(Landroid/content/Context;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/w$a;->b:Landroid/content/Context;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    new-instance v0, Landroid/content/Intent;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/w$a;->b:Landroid/content/Context;
    const-class v2, Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { v0, v1, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const v1, 268468224
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/w$a;->b:Landroid/content/Context;
    invoke-virtual { v1, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  .line 4
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v0
    invoke-static { v0 }, Landroid/os/Process;->killProcess(I)V
    const/4 v0, 0
  .line 5
    invoke-static { v0 }, Ljava/lang/System;->exit(I)V
    return-void
.end method
