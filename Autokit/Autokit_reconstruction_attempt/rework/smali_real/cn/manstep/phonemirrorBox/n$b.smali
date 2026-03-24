.class Lcn/manstep/phonemirrorBox/n$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/n;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarButtonListener,onReceive: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_2e3

    .line 3
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_23
    const-string v0, "com.nwd.action.ACTION_KEY_VALUE"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    const-string p1, "extra_key_value"

    .line 6
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    const-string v0, "extra_key_type"

    .line 7
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    goto/16 :goto_2a3

    :cond_3a
    const-string v0, "com.microntek.irkeyDown"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "keyCode"

    if-eqz v0, :cond_50

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/n;->b(Lcn/manstep/phonemirrorBox/n;Z)Z

    .line 10
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto/16 :goto_2a3

    :cond_50
    const-string v0, "com.microntek.irkeyUp"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/n;->a(Lcn/manstep/phonemirrorBox/n;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {p1, v2}, Lcn/manstep/phonemirrorBox/n;->b(Lcn/manstep/phonemirrorBox/n;Z)Z

    goto/16 :goto_2a2

    .line 14
    :cond_67
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto/16 :goto_2a3

    :cond_6d
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/n;->c(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)V

    return-void

    :cond_7b
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    const/4 p1, 0x3

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    .line 19
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",bMuted="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarButtonListener"

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/n;->d(Lcn/manstep/phonemirrorBox/n;)Lcn/manstep/phonemirrorBox/n$c;

    return-void

    :cond_b4
    const-string v0, "com.winca.service.Setting.KEY_ACTION"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string p1, "com.winca.service.Setting.KEY_ACTION_EXTRA"

    .line 23
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto/16 :goto_2a3

    :cond_c4
    const-string v0, "android.intent.action.C3_HARDKEY"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 25
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/n;->e(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)I

    move-result p1

    goto/16 :goto_2a3

    :cond_d4
    const-string v0, "IKeyClick.KEY_CLICK"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 27
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/n;->f(Lcn/manstep/phonemirrorBox/n;Landroid/content/Intent;)I

    move-result p1

    goto/16 :goto_2a3

    :cond_e4
    const-string p2, "com.eryanet.action.hk.vr"

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x6

    const/4 v3, 0x5

    if-nez p2, :cond_28b

    const-string p2, "com.eryanet.link.connected"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f8

    goto/16 :goto_28b

    :cond_f8
    const-string p2, "com.eryanet.music.prev"

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v4, 0xcd

    if-eqz p2, :cond_116

    .line 30
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/c;->o()Z

    move-result p1

    if-nez p1, :cond_112

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 31
    :cond_112
    invoke-static {v4}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_116
    const-string p2, "com.eryanet.music.next"

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v5, 0xcc

    if-eqz p2, :cond_134

    .line 33
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/c;->o()Z

    move-result p1

    if-nez p1, :cond_130

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 34
    :cond_130
    invoke-static {v5}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_134
    const-string p2, "com.eryanet.media.playorpause"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_152

    .line 36
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/c;->o()Z

    move-result p1

    if-nez p1, :cond_14c

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_2a2

    :cond_14c
    const/16 p1, 0xcb

    .line 37
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_152
    const-string p2, "com.eryanet.media.play"

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_170

    .line 39
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/c;->o()Z

    move-result p1

    if-nez p1, :cond_16a

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_2a2

    :cond_16a
    const/16 p1, 0xc9

    .line 40
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_170
    const-string p2, "com.eryanet.media.pause"

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18e

    .line 42
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/c;->o()Z

    move-result p1

    if-nez p1, :cond_188

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_2a2

    :cond_188
    const/16 p1, 0xca

    .line 43
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_18e
    const-string p2, "com.bz.action.phone.pickup"

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v6, 0x12c

    if-eqz p2, :cond_1b0

    .line 45
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result p1

    if-nez p1, :cond_1ac

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 46
    :cond_1ac
    invoke-static {v6}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_1b0
    const-string p2, "com.bz.action.phone.hangup"

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v7, 0x12d

    if-eqz p2, :cond_1c8

    .line 48
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 49
    invoke-static {v7}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_1c8
    const-string p2, "android.intent.action.MEDIA_PREVIOUS_DOWN"

    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e4

    .line 51
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/c;->o()Z

    move-result p1

    if-nez p1, :cond_1e0

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 52
    :cond_1e0
    invoke-static {v4}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_1e4
    const-string p2, "android.intent.action.MEDIA_NEXT_DOWN"

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_200

    .line 54
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/c;->o()Z

    move-result p1

    if-nez p1, :cond_1fc

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 55
    :cond_1fc
    invoke-static {v5}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_200
    const-string p2, "android.intent.action.VOICE_ASSIST1_DOWN"

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v4, "ecarx-IHU3Q122-IHU3Q122-9(28)"

    if-eqz p2, :cond_225

    .line 57
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_2a2

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 58
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    .line 59
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_225
    const-string p2, "android.intent.action.VOICE_ASSIST_DOWN"

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23a

    .line 61
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 62
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    .line 63
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_23a
    const-string p2, "android.intent.action.CALL_DOWN"

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26b

    .line 65
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result p1

    if-eqz p1, :cond_24f

    .line 66
    invoke-static {v6}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    .line 67
    :cond_24f
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a2

    .line 68
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 69
    invoke-static {v7}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_2a2

    :cond_26b
    const-string p2, "android.intent.action.ENDCALL_DOWN"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 71
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result p1

    if-nez p1, :cond_287

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 72
    :cond_287
    invoke-static {v7}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_2a2

    .line 73
    :cond_28b
    :goto_28b
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->d()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 74
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 75
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    .line 76
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    return-void

    :cond_2a2
    :goto_2a2
    const/4 p1, -0x1

    .line 77
    :goto_2a3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/n;->d(Lcn/manstep/phonemirrorBox/n;)Lcn/manstep/phonemirrorBox/n$c;

    move-result-object p2

    if-eqz p2, :cond_2e3

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarButtonListener,onReceive: value = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIsLongPress = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/n;->g(Lcn/manstep/phonemirrorBox/n;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-eq p1, v1, :cond_2e3

    .line 79
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/n;->d(Lcn/manstep/phonemirrorBox/n;)Lcn/manstep/phonemirrorBox/n$c;

    move-result-object p2

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/n;->g(Lcn/manstep/phonemirrorBox/n;)Z

    move-result v0

    invoke-interface {p2, p1, v0}, Lcn/manstep/phonemirrorBox/n$c;->w(IZ)V

    .line 80
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/n$b;->a:Lcn/manstep/phonemirrorBox/n;

    invoke-static {p1, v2}, Lcn/manstep/phonemirrorBox/n;->h(Lcn/manstep/phonemirrorBox/n;Z)Z

    :cond_2e3
    return-void
.end method
