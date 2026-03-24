.class Lcn/manstep/phonemirrorBox/p0/c$g$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/p0/c$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/p0/c$g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_EVT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    :cond_13
    const-string p1, "com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_DATA"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x64

    if-nez p1, :cond_25

    const-string p1, "com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_THIRD_PARTY_DATA"

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v1

    :cond_25
    const/16 p2, 0x6b

    if-eq p1, p2, :cond_59

    const/16 p2, 0x6c

    if-eq p1, p2, :cond_53

    const/16 p2, 0x68

    const/16 v0, 0x69

    packed-switch p1, :pswitch_data_5e

    packed-switch p1, :pswitch_data_6e

    goto :goto_5c

    .line 5
    :pswitch_38
    invoke-static {p2}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    .line 6
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_5c

    .line 7
    :pswitch_3f
    invoke-static {p2}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_5c

    .line 8
    :pswitch_43
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_5c

    :pswitch_47
    const/16 p1, 0x67

    .line 9
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_5c

    :pswitch_4d
    const/16 p1, 0x66

    .line 10
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_5c

    :cond_53
    :pswitch_53
    const/16 p1, 0x65

    .line 11
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_5c

    .line 12
    :cond_59
    :pswitch_59
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    :cond_5c
    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_43
        :pswitch_3f
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x65
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_38
    .end packed-switch
.end method
