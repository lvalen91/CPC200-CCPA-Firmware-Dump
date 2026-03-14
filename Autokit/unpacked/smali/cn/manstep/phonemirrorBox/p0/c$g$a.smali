.class Lcn/manstep/phonemirrorBox/p0/c$g$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/p0/c$g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>(Lcn/manstep/phonemirrorBox/p0/c$g;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 5
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
    const-string v0, "com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_EVT"
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L9
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result p1
    if-nez p1, :L0
    return-void
  :L0
    const-string p1, "com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_DATA"
    const/4 v0, 0
  .line 3
    invoke-virtual { p2, p1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    const/16 v1, 100
    if-nez p1, :L1
    const-string p1, "com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_THIRD_PARTY_DATA"
  .line 4
    invoke-virtual { p2, p1, v0 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    add-int/2addr p1, v1
  :L1
    const/16 p2, 107
    if-eq p1, p2, :L8
    const/16 p2, 108
    if-eq p1, p2, :L7
    const/16 p2, 104
    const/16 v0, 105
    packed-switch p1, :L10
    packed-switch p1, :L11
    goto :L9
  :L2
  .line 5
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  .line 6
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L9
  :L3
  .line 7
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L9
  :L4
  .line 8
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L9
  :L5
    const/16 p1, 103
  .line 9
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L9
  :L6
    const/16 p1, 102
  .line 10
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L9
  :L7
    const/16 p1, 101
  .line 11
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L9
  :L8
  .line 12
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  :L9
    return-void
  :L10
  .packed-switch 1
    :L8
    :L7
    :L6
    :L5
    :L4
    :L3
  .end packed-switch
  :L11
  .packed-switch 101
    :L8
    :L7
    :L6
    :L5
    :L2
  .end packed-switch
.end method
