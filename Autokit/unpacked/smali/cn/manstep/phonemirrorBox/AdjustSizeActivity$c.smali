.class Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AdjustSizeActivity;->N()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AdjustSizeActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    const/4 v1, 0
    invoke-virtual { v0, v1, v1 }, Landroid/app/Activity;->overridePendingTransition(II)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    invoke-virtual { v0 }, Landroid/app/Activity;->finish()V
  .line 3
    new-instance v0, Landroid/content/Intent;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    const-class v3, Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { v0, v2, v3 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const v2, 335642624
  .line 4
    invoke-virtual { v0, v2 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    invoke-virtual { v2, v1, v1 }, Landroid/app/Activity;->overridePendingTransition(II)V
    const-wide/16 v2, 1000
  :L0
  .line 6
    invoke-static { v2, v3 }, Ljava/lang/Thread;->sleep(J)V
  :L1
    goto :L3
  :L2
    move-exception v2
  .line 7
    invoke-virtual { v2 }, Ljava/lang/InterruptedException;->printStackTrace()V
  :L3
  .line 8
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    invoke-virtual { v2, v0 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
  .line 9
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v0
    invoke-static { v0 }, Landroid/os/Process;->killProcess(I)V
  .line 10
    invoke-static { v1 }, Ljava/lang/System;->exit(I)V
    return-void
.end method
