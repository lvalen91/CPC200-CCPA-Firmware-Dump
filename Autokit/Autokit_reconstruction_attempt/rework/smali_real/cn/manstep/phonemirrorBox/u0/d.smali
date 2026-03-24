.class public Lcn/manstep/phonemirrorBox/u0/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZlinkReceiver,onKeyDown: cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_ba

    const/4 v0, 0x4

    if-eq p1, v0, :cond_b4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_ae

    const/4 v1, 0x6

    if-eq p1, v1, :cond_a8

    const/16 v2, 0x13

    if-eq p1, v2, :cond_a2

    const/16 v2, 0x14

    if-eq p1, v2, :cond_9c

    const/16 v2, 0x42

    if-eq p1, v2, :cond_91

    const/16 v2, 0x55

    if-eq p1, v2, :cond_8b

    const/16 v2, 0x57

    if-eq p1, v2, :cond_85

    const/16 v2, 0x58

    if-eq p1, v2, :cond_7f

    const/16 v2, 0x7e

    if-eq p1, v2, :cond_79

    const/16 v2, 0x7f

    if-eq p1, v2, :cond_73

    packed-switch p1, :pswitch_data_c6

    packed-switch p1, :pswitch_data_d0

    goto/16 :goto_c5

    :pswitch_4b
    const/16 p1, 0xc8

    .line 2
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto/16 :goto_c5

    :pswitch_52
    const/16 p1, 0x193

    .line 3
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto/16 :goto_c5

    :pswitch_59
    const/16 p1, 0x192

    .line 4
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto/16 :goto_c5

    :pswitch_60
    const/16 p1, 0x191

    .line 5
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :pswitch_66
    const/16 p1, 0x190

    .line 6
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    .line 7
    :pswitch_6c
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    .line 8
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_73
    const/16 p1, 0xca

    .line 9
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_79
    const/16 p1, 0xc9

    .line 10
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_7f
    const/16 p1, 0xcd

    .line 11
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_85
    const/16 p1, 0xcc

    .line 12
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_8b
    const/16 p1, 0xcb

    .line 13
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_91
    const/16 p1, 0x68

    .line 14
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    const/16 p1, 0x69

    .line 15
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_9c
    const/16 p1, 0x67

    .line 16
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_a2
    const/16 p1, 0x66

    .line 17
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_a8
    const/16 p1, 0x12d

    .line 18
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_ae
    const/16 p1, 0x12c

    .line 19
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_b4
    const/16 p1, 0x6a

    .line 20
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_ba
    :pswitch_ba
    const/16 p1, 0x65

    .line 21
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_c5

    :cond_c0
    :pswitch_c0
    const/16 p1, 0x64

    .line 22
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    :goto_c5
    return-void

    :pswitch_data_c6
    .packed-switch 0x5dc
        :pswitch_6c
        :pswitch_c0
        :pswitch_ba
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x5e0
        :pswitch_66
        :pswitch_60
        :pswitch_59
        :pswitch_52
        :pswitch_4b
    .end packed-switch
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zjinnova.zlink"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zjinnova.zlink.action.BACKCAR_START"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zjinnova.zlink.action.BACKCAR_STOP"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zjinnova.zlink.action.OUT_DARK_START"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zjinnova.zlink.action.OUT_DARK_STOP"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZlinkReceiver,onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_70

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    sparse-switch v1, :sswitch_data_72

    goto :goto_56

    :sswitch_25
    const-string v1, "com.zjinnova.zlink.action.OUT_DARK_START"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 v0, 0x0

    goto :goto_56

    :sswitch_2f
    const-string v1, "com.zjinnova.zlink.action.OUT_DARK_STOP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 v0, 0x1

    goto :goto_56

    :sswitch_39
    const-string v1, "com.zjinnova.zlink"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 v0, 0x4

    goto :goto_56

    :sswitch_43
    const-string v1, "com.zjinnova.zlink.action.BACKCAR_STOP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 v0, 0x3

    goto :goto_56

    :sswitch_4d
    const-string v1, "com.zjinnova.zlink.action.BACKCAR_START"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 v0, 0x2

    :cond_56
    :goto_56
    if-eq v0, v3, :cond_59

    goto :goto_70

    :cond_59
    const-string p1, "command"

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "REQ_SPEC_FUNC_CMD"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    const-string p1, "specFuncCode"

    .line 6
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/u0/d;->a(I)V

    :cond_70
    :goto_70
    return-void

    nop

    :sswitch_data_72
    .sparse-switch
        0x1ab8f192 -> :sswitch_4d
        0x21e4f0b2 -> :sswitch_43
        0x3a595d54 -> :sswitch_39
        0x3cfa55fc -> :sswitch_2f
        0x62503588 -> :sswitch_25
    .end sparse-switch
.end method
