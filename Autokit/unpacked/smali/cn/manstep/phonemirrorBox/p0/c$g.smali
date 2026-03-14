.class Lcn/manstep/phonemirrorBox/p0/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/p0/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "g"
.end annotation

.field private a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private b:Landroid/content/BroadcastReceiver;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/p0/c$g$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/p0/c$g$a;-><init>(Lcn/manstep/phonemirrorBox/p0/c$g;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c$g;->b:Landroid/content/BroadcastReceiver;
  .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c$g;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method a()V
  .registers 4
  .line 1
    new-instance v0, Landroid/content/IntentFilter;
    invoke-direct { v0 }, Landroid/content/IntentFilter;-><init>()V
    const-string v1, "com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_EVT"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/p0/c$g;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :L0
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/p0/c$g;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/p0/c$g;->b:Landroid/content/BroadcastReceiver;
    invoke-virtual { v1, v2, v0 }, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
  :L0
    return-void
.end method

.method b()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c$g;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c$g;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/p0/c$g;->b:Landroid/content/BroadcastReceiver;
    invoke-virtual { v0, v1 }, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
  :L0
    return-void
.end method
