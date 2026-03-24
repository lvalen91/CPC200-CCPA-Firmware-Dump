.class Lcn/manstep/phonemirrorBox/l0/o$h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/o;->l2(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/l0/o;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/o;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$h;->a:Lcn/manstep/phonemirrorBox/l0/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DebugFragment"

    invoke-static {v0, p2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_48

    goto :goto_41

    :sswitch_22
    const-string p2, "android.intent.action.MEDIA_BAD_REMOVAL"

    :goto_24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_41

    :sswitch_29
    const-string p2, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    goto :goto_24

    :sswitch_2c
    const-string p2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    goto :goto_24

    :sswitch_2f
    const-string p2, "android.intent.action.MEDIA_EJECT"

    goto :goto_24

    :sswitch_32
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_24

    :sswitch_35
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    goto :goto_24

    :sswitch_38
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    goto :goto_24

    :sswitch_3b
    const-string p2, "android.intent.action.MEDIA_REMOVED"

    goto :goto_24

    :sswitch_3e
    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    goto :goto_24

    .line 4
    :goto_41
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$h;->a:Lcn/manstep/phonemirrorBox/l0/o;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/o;->k2(Lcn/manstep/phonemirrorBox/l0/o;)V

    return-void

    nop

    :sswitch_data_48
    .sparse-switch
        -0x7e02a835 -> :sswitch_3e
        -0x6342a1e0 -> :sswitch_3b
        -0x5fdc9a67 -> :sswitch_38
        -0x5a4113c8 -> :sswitch_35
        -0x39738481 -> :sswitch_32
        -0x254e496f -> :sswitch_2f
        0x4189e133 -> :sswitch_2c
        0x5fafef01 -> :sswitch_29
        0x79e65f52 -> :sswitch_22
    .end sparse-switch
.end method
