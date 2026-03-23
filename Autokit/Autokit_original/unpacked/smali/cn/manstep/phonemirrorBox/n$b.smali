.class Lcn/manstep/phonemirrorBox/n$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/n;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/n;

.method constructor <init>(Lcn/manstep/phonemirrorBox/n;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 11
  .line 1
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object p1
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "CarButtonListener,onReceive: action = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-eqz p1, :L36
  .line 3
    invoke-virtual { p0 }, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    invoke-virtual { p0 }, Landroid/content/BroadcastReceiver;->abortBroadcast()V
  :L0
    const-string v0, "com.nwd.action.ACTION_KEY_VALUE"
  .line 5
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, -1
    const/4 v2, 0
    if-eqz v0, :L1
    const-string p1, "extra_key_value"
  .line 6
    invoke-virtual { p2, p1, v2 }, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B
    move-result p1
    const-string v0, "extra_key_type"
  .line 7
    invoke-virtual { p2, v0, v2 }, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B
    goto/16 :L35
  :L1
    const-string v0, "com.microntek.irkeyDown"
  .line 8
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const-string v3, "keyCode"
    if-eqz v0, :L2
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    const/4 v0, 1
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/n;->b(Lcn/manstep/phonemirrorBox/n;Z)Z
  .line 10
    invoke-virtual { p2, v3, v2 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    goto/16 :L35
  :L2
    const-string v0, "com.microntek.irkeyUp"
  .line 11
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/n;->a(Lcn/manstep/phonemirrorBox/n;)Z
    move-result p1
    if-eqz p1, :L3
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { p1, v2 }, Lcn/manstep/phonemirrorBox/n;->b(Lcn/manstep/phonemirrorBox/n;Z)Z
    goto/16 :L34
  :L3
  .line 14
    invoke-virtual { p2, v3, v2 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    goto/16 :L35
  :L4
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"
  .line 15
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/n;->c(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)V
    return-void
  :L5
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"
  .line 17
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
    const/4 p1, 3
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"
  .line 18
    invoke-virtual { p2, v0, p1 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    const-string v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"
  .line 19
    invoke-virtual { p2, v0, v2 }, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result p2
  .line 20
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onReceive: streamType="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ",bMuted="
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string p2, "CarButtonListener"
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/n;->d(Lcn/manstep/phonemirrorBox/n;)Lcn/manstep/phonemirrorBox/n$c;
    return-void
  :L6
    const-string v0, "com.winca.service.Setting.KEY_ACTION"
  .line 22
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
    const-string p1, "com.winca.service.Setting.KEY_ACTION_EXTRA"
  .line 23
    invoke-virtual { p2, p1, v2 }, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result p1
    goto/16 :L35
  :L7
    const-string v0, "android.intent.action.C3_HARDKEY"
  .line 24
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
  .line 25
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/n;->e(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)I
    move-result p1
    goto/16 :L35
  :L8
    const-string v0, "IKeyClick.KEY_CLICK"
  .line 26
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
  .line 27
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/n;->f(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)I
    move-result p1
    goto/16 :L35
  :L9
    const-string p2, "com.eryanet.action.hk.vr"
  .line 28
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    const/4 v0, 6
    const/4 v3, 5
    if-nez p2, :L33
    const-string p2, "com.eryanet.link.connected"
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L10
    goto/16 :L33
  :L10
    const-string p2, "com.eryanet.music.prev"
  .line 29
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    const/16 v4, 205
    if-eqz p2, :L12
  .line 30
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->o()Z
    move-result p1
    if-nez p1, :L11
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L34
  :L11
  .line 31
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L12
    const-string p2, "com.eryanet.music.next"
  .line 32
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    const/16 v5, 204
    if-eqz p2, :L14
  .line 33
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->o()Z
    move-result p1
    if-nez p1, :L13
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L34
  :L13
  .line 34
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L14
    const-string p2, "com.eryanet.media.playorpause"
  .line 35
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L16
  .line 36
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->o()Z
    move-result p1
    if-nez p1, :L15
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L34
  :L15
    const/16 p1, 203
  .line 37
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L16
    const-string p2, "com.eryanet.media.play"
  .line 38
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L18
  .line 39
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->o()Z
    move-result p1
    if-nez p1, :L17
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L34
  :L17
    const/16 p1, 201
  .line 40
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L18
    const-string p2, "com.eryanet.media.pause"
  .line 41
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L20
  .line 42
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->o()Z
    move-result p1
    if-nez p1, :L19
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L34
  :L19
    const/16 p1, 202
  .line 43
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L20
    const-string p2, "com.bz.action.phone.pickup"
  .line 44
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    const/16 v6, 300
    if-eqz p2, :L22
  .line 45
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result p1
    if-nez p1, :L21
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result p1
    if-eqz p1, :L34
  :L21
  .line 46
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L22
    const-string p2, "com.bz.action.phone.hangup"
  .line 47
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    const/16 v7, 301
    if-eqz p2, :L23
  .line 48
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result p1
    if-eqz p1, :L34
  .line 49
    invoke-static { v7 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L23
    const-string p2, "android.intent.action.MEDIA_PREVIOUS_DOWN"
  .line 50
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L25
  .line 51
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->o()Z
    move-result p1
    if-nez p1, :L24
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L34
  :L24
  .line 52
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L25
    const-string p2, "android.intent.action.MEDIA_NEXT_DOWN"
  .line 53
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L27
  .line 54
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/f0/c;->o()Z
    move-result p1
    if-nez p1, :L26
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L34
  :L26
  .line 55
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L27
    const-string p2, "android.intent.action.VOICE_ASSIST1_DOWN"
  .line 56
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    const-string v4, "ecarx-IHU3Q122-IHU3Q122-9(28)"
    if-eqz p2, :L28
  .line 57
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L34
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v4, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L34
  .line 58
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  .line 59
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L28
    const-string p2, "android.intent.action.VOICE_ASSIST_DOWN"
  .line 60
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L29
  .line 61
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L34
  .line 62
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  .line 63
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L29
    const-string p2, "android.intent.action.CALL_DOWN"
  .line 64
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :L31
  .line 65
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result p1
    if-eqz p1, :L30
  .line 66
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  :L30
  .line 67
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v4, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-nez p1, :L34
  .line 68
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result p1
    if-eqz p1, :L34
  .line 69
    invoke-static { v7 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L34
  :L31
    const-string p2, "android.intent.action.ENDCALL_DOWN"
  .line 70
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L34
  .line 71
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result p1
    if-nez p1, :L32
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result p1
    if-eqz p1, :L34
  :L32
  .line 72
    invoke-static { v7 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L34
  :L33
  .line 73
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u;->d()Z
    move-result p1
    if-eqz p1, :L34
  .line 74
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L34
  .line 75
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  .line 76
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    return-void
  :L34
    const/4 p1, -1
  :L35
  .line 77
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/n;->d(Lcn/manstep/phonemirrorBox/n;)Lcn/manstep/phonemirrorBox/n$c;
    move-result-object p2
    if-eqz p2, :L36
  .line 78
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "CarButtonListener,onReceive: value = "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ", mIsLongPress = "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/n;->g(Lcn/manstep/phonemirrorBox/n;)Z
    move-result v0
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-eq p1, v1, :L36
  .line 79
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/n;->d(Lcn/manstep/phonemirrorBox/n;)Lcn/manstep/phonemirrorBox/n$c;
    move-result-object p2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/n;->g(Lcn/manstep/phonemirrorBox/n;)Z
    move-result v0
    invoke-interface { p2, p1, v0 }, Lcn/manstep/phonemirrorBox/n$c;->w(IZ)V
  .line 80
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;
    invoke-static { p1, v2 }, Lcn/manstep/phonemirrorBox/n;->h(Lcn/manstep/phonemirrorBox/n;Z)Z
  :L36
    return-void
.end method
