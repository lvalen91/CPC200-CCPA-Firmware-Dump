.class Lcn/manstep/phonemirrorBox/v0/e$c$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/v0/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/v0/e$c;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/v0/e$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a2

    const-string p1, "cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_DATA"

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uilogic,onReceive: KeyControl: cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_196

    const/16 v1, 0x7d1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_17b

    packed-switch p1, :pswitch_data_1a4

    const-string v1, ""

    const-string v3, "cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_DATA_STRING"

    packed-switch p1, :pswitch_data_1ee

    goto/16 :goto_1a2

    .line 4
    :pswitch_3c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->i(Lcn/manstep/phonemirrorBox/v0/e;)V

    goto/16 :goto_1a2

    .line 5
    :pswitch_45
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_1a2

    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-eqz p1, :cond_1a2

    .line 6
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Q0()Z

    goto/16 :goto_1a2

    .line 7
    :pswitch_54
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_1a2

    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-eqz p1, :cond_1a2

    const/16 p1, 0x19

    .line 8
    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 9
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z

    goto/16 :goto_1a2

    .line 10
    :pswitch_68
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_1a2

    .line 11
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m0()Z

    goto/16 :goto_1a2

    .line 12
    :pswitch_71
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uilogic,broadcastReceiverControl: Bluetooth Pin Code = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-nez p1, :cond_8c

    goto :goto_8d

    :cond_8c
    move-object v1, p1

    .line 14
    :goto_8d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->h(Lcn/manstep/phonemirrorBox/v0/e;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/b0;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_1a2

    .line 16
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_1a2

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p0([B)Z

    goto/16 :goto_1a2

    :pswitch_b1
    const-string p1, "broadcastReceiverControl,AudioRecoder: Receive AUTO_BOX_CONTROL_CMD_RECORD_START"

    .line 18
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    if-eqz p1, :cond_1a2

    .line 20
    invoke-virtual {p1, v0}, Ld/b/a/c;->j(Z)V

    goto/16 :goto_1a2

    .line 21
    :pswitch_bf
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uilogic,broadcastReceiverControl: sBluetooth = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-nez p1, :cond_da

    goto :goto_db

    :cond_da
    move-object v1, p1

    .line 23
    :goto_db
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->h(Lcn/manstep/phonemirrorBox/v0/e;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/b0;->r(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_1a2

    .line 25
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_1a2

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n0([B)Z

    goto/16 :goto_1a2

    :pswitch_ff
    const/16 p1, 0x10

    .line 27
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_1a2

    :pswitch_106
    const/16 p1, 0x11

    .line 28
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_1a2

    :pswitch_10d
    add-int/lit8 p1, p1, -0x1e

    add-int/lit16 p1, p1, 0x190

    .line 29
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_1a2

    :pswitch_116
    const/16 p1, 0x6a

    .line 30
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_1a2

    :pswitch_11d
    add-int/lit8 p1, p1, -0xf

    add-int/lit16 p1, p1, 0x12c

    .line 31
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_1a2

    :pswitch_126
    const/16 p1, 0xcd

    .line 32
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_1a2

    :pswitch_12d
    const/16 p1, 0xcc

    .line 33
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_1a2

    :pswitch_134
    const/16 p1, 0xcb

    .line 34
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_1a2

    :pswitch_13b
    const/16 p1, 0xca

    .line 35
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    :pswitch_141
    const/16 p1, 0xc9

    .line 36
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    :pswitch_147
    const/16 p1, 0xc8

    .line 37
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    :pswitch_14d
    const/16 p1, 0x69

    .line 38
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    :pswitch_153
    const/16 p1, 0x68

    .line 39
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    :pswitch_159
    const/16 p1, 0x67

    .line 40
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    :pswitch_15f
    const/16 p1, 0x66

    .line 41
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    :pswitch_165
    const/16 p1, 0x65

    .line 42
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    :pswitch_16b
    const/16 p1, 0x64

    .line 43
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    :pswitch_171
    const/4 p1, 0x6

    .line 44
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    :pswitch_176
    const/4 p1, 0x5

    .line 45
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_1a2

    .line 46
    :cond_17b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->j(Lcn/manstep/phonemirrorBox/v0/e;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/v0/e$c$a;->a:Lcn/manstep/phonemirrorBox/v0/e$c;

    iget-object p2, p2, Lcn/manstep/phonemirrorBox/v0/e$c;->c:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/v0/e;->j(Lcn/manstep/phonemirrorBox/v0/e;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x4

    const/16 v1, 0x27

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1a2

    :cond_196
    const/4 p1, -0x1

    const-string v0, "CMD"

    .line 47
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1a2

    .line 48
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    :cond_1a2
    :goto_1a2
    return-void

    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_176
        :pswitch_171
        :pswitch_16b
        :pswitch_165
        :pswitch_15f
        :pswitch_159
        :pswitch_153
        :pswitch_14d
        :pswitch_147
        :pswitch_141
        :pswitch_13b
        :pswitch_134
        :pswitch_12d
        :pswitch_126
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_116
        :pswitch_10d
        :pswitch_10d
        :pswitch_10d
        :pswitch_10d
        :pswitch_106
        :pswitch_ff
    .end packed-switch

    :pswitch_data_1ee
    .packed-switch 0x64
        :pswitch_bf
        :pswitch_b1
        :pswitch_71
        :pswitch_68
        :pswitch_54
        :pswitch_45
        :pswitch_3c
    .end packed-switch
.end method
