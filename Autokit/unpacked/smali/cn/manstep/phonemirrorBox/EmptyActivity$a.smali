.class Lcn/manstep/phonemirrorBox/EmptyActivity$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/EmptyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/EmptyActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/EmptyActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/EmptyActivity$a;->b:Lcn/manstep/phonemirrorBox/EmptyActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/EmptyActivity$a;->b:Lcn/manstep/phonemirrorBox/EmptyActivity;
    invoke-virtual { v0 }, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/EmptyActivity$a;->b:Lcn/manstep/phonemirrorBox/EmptyActivity;
    invoke-virtual { v1 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
    if-eqz v0, :L0
    const v1, 268468224
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/EmptyActivity$a;->b:Lcn/manstep/phonemirrorBox/EmptyActivity;
    invoke-virtual { v1, v0 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
  :L0
  .line 4
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v0
    invoke-static { v0 }, Landroid/os/Process;->killProcess(I)V
    const/4 v0, 0
  .line 5
    invoke-static { v0 }, Ljava/lang/System;->exit(I)V
    return-void
.end method
