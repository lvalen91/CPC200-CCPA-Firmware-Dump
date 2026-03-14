.class Lcn/manstep/phonemirrorBox/k0/g$d;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/k0/g;->A2()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/g;

.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/g$d;->b:Lcn/manstep/phonemirrorBox/k0/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/g$d;->b:Lcn/manstep/phonemirrorBox/k0/g;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    const-string v1, "activity"
    invoke-virtual { v0, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/ActivityManager;
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/g$d;->b:Lcn/manstep/phonemirrorBox/k0/g;
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    const/4 v0, 0
  .line 3
    invoke-static { v0 }, Ljava/lang/System;->exit(I)V
  :L1
    goto :L3
  :L2
  .line 4
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v0
    invoke-static { v0 }, Landroid/os/Process;->killProcess(I)V
    const/4 v0, 1
  .line 5
    invoke-static { v0 }, Ljava/lang/System;->exit(I)V
  :L3
    return-void
.end method
