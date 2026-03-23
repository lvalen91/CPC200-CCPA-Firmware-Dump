.class public Lcn/manstep/phonemirrorBox/l0/o;
.super Lcn/manstep/phonemirrorBox/l0/m;
.implements Lcn/manstep/phonemirrorBox/x0/d$d;
.implements Lcn/manstep/phonemirrorBox/util/l$d;
.source "SourceFile"

.field private c0:Lcn/manstep/phonemirrorBox/i0/m;

.field private d0:Lcn/manstep/phonemirrorBox/x0/e;

.field private e0:Lcn/manstep/phonemirrorBox/x0/d;

.field private f0:Landroid/hardware/usb/UsbManager;

.field private g0:Landroid/content/BroadcastReceiver;

.field private h0:Lcn/manstep/phonemirrorBox/util/l;

.field private i0:Lcn/manstep/phonemirrorBox/x0/i;

.field private j0:Lcn/manstep/phonemirrorBox/x0/k;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/m;-><init>()V
    return-void
.end method

.method static synthetic h2(Lcn/manstep/phonemirrorBox/l0/o;)Lcn/manstep/phonemirrorBox/util/l;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/o;->h0:Lcn/manstep/phonemirrorBox/util/l;
    return-object p0
.end method

.method static synthetic i2(Lcn/manstep/phonemirrorBox/l0/o;)Lcn/manstep/phonemirrorBox/i0/m;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    return-object p0
.end method

.method static synthetic j2(Lcn/manstep/phonemirrorBox/l0/o;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/o;->m2()V
    return-void
.end method

.method static synthetic k2(Lcn/manstep/phonemirrorBox/l0/o;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/o;->n2()V
    return-void
.end method

.method private l2(Landroid/content/Context;)V
  .registers 4
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/o$h;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/l0/o$h;-><init>(Lcn/manstep/phonemirrorBox/l0/o;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->g0:Landroid/content/BroadcastReceiver;
  .line 2
    new-instance v0, Landroid/content/IntentFilter;
    invoke-direct { v0 }, Landroid/content/IntentFilter;-><init>()V
    const-string v1, "android.intent.action.MEDIA_EJECT"
  .line 3
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"
  .line 4
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "android.intent.action.MEDIA_REMOVED"
  .line 5
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"
  .line 6
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "android.intent.action.MEDIA_MOUNTED"
  .line 7
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"
  .line 8
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"
  .line 9
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"
  .line 10
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"
  .line 11
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const/16 v1, 1000
  .line 12
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->setPriority(I)V
  .line 13
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/o;->g0:Landroid/content/BroadcastReceiver;
    invoke-virtual { p1, v1, v0 }, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    return-void
.end method

.method private m2()V
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->f0:Landroid/hardware/usb/UsbManager;
    invoke-virtual { v0 }, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/hardware/usb/UsbDevice;
  .line 3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "requestUsbPermission: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Landroid/hardware/usb/UsbDevice;->getVendorId()I
    move-result v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ", hasPermission="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/o;->f0:Landroid/hardware/usb/UsbManager;
    invoke-virtual { v3, v1 }, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    move-result v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const-string v3, "DebugFragment"
    invoke-static { v3, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/o;->f0:Landroid/hardware/usb/UsbManager;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v3
    new-instance v4, Landroid/content/Intent;
    const-string v5, "cn.manstep.phonemirrorBox.USB_PERMISSION"
    invoke-direct { v4, v5 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const/4 v5, 0
    invoke-static { v3, v5, v4, v5 }, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v3
    invoke-virtual { v2, v1, v3 }, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    goto :L0
  :L1
    return-void
.end method

.method private n2()V
  .registers 9
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/o;->f0:Landroid/hardware/usb/UsbManager;
    invoke-virtual { v1 }, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;
    move-result-object v1
  .line 3
    invoke-virtual { v1 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/hardware/usb/UsbDevice;
  .line 4
    invoke-virtual { v2 }, Landroid/hardware/usb/UsbDevice;->getVendorId()I
    move-result v3
  .line 5
    invoke-virtual { v2 }, Landroid/hardware/usb/UsbDevice;->getProductId()I
    move-result v2
  .line 6
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v4
    if-lez v4, :L1
    const-string v4, "\n"
  .line 7
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
  .line 8
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    const/4 v5, 4
    new-array v5, v5, [Ljava/lang/Object;
    const/4 v6, 0
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    aput-object v7, v5, v6
    const/4 v6, 1
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v5, v6
    const/4 v3, 2
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    aput-object v6, v5, v3
    const/4 v3, 3
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v5, v3
    const-string v2, "%d(0x%04X), %d(0x%04X)"
    invoke-static { v4, v2, v5 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
  .line 9
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L0
  :L2
  .line 10
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "usbDevices: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "DebugFragment"
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 11
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/o;->d0:Lcn/manstep/phonemirrorBox/x0/e;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/x0/e;->H(Ljava/lang/String;)V
    return-void
.end method

.method public E0(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/m;->E0(Landroid/content/Context;)V
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/o;->l2(Landroid/content/Context;)V
  .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;
    move-result-object v0
    invoke-direct { p1, p0, v0 }, Lcn/manstep/phonemirrorBox/util/l;-><init>(Lcn/manstep/phonemirrorBox/util/l$d;Landroidx/fragment/app/n;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->h0:Lcn/manstep/phonemirrorBox/util/l;
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
    const p3, 2131492937
    const/4 v0, 0
  .line 1
    invoke-static { p1, p3, p2, v0 }, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/i0/m;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroidx/databinding/ViewDataBinding;->G(Landroidx/lifecycle/j;)V
  .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/x0/e;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p2
    invoke-virtual { p2 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object p2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object p3
    invoke-direct { p1, p2, p3 }, Lcn/manstep/phonemirrorBox/x0/e;-><init>(Landroid/app/Application;Landroidx/fragment/app/n;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->d0:Lcn/manstep/phonemirrorBox/x0/e;
  .line 4
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/i0/m;->M(Lcn/manstep/phonemirrorBox/x0/e;)V
  .line 5
    new-instance p1, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p2
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;
    invoke-direct { p1, p2, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p2, Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p1, p2 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/x0/d;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->e0:Lcn/manstep/phonemirrorBox/x0/d;
  .line 6
    invoke-virtual { p1, p0 }, Lcn/manstep/phonemirrorBox/x0/d;->u(Lcn/manstep/phonemirrorBox/x0/d$d;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/o;->e0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/i0/m;->L(Lcn/manstep/phonemirrorBox/x0/d;)V
  .line 8
    new-instance p1, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p2
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;
    invoke-direct { p1, p2, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p2, Lcn/manstep/phonemirrorBox/x0/i;
    invoke-virtual { p1, p2 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/x0/i;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->i0:Lcn/manstep/phonemirrorBox/x0/i;
  .line 9
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/i0/m;->N(Lcn/manstep/phonemirrorBox/x0/i;)V
  .line 10
    new-instance p1, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p2
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/l0/m;->a0:Landroidx/lifecycle/w$b;
    invoke-direct { p1, p2, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p2, Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p1, p2 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/x0/k;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->j0:Lcn/manstep/phonemirrorBox/x0/k;
  .line 11
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/i0/m;->O(Lcn/manstep/phonemirrorBox/x0/k;)V
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    invoke-virtual { p1 }, Landroidx/databinding/ViewDataBinding;->t()Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public M0()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->h0:Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/l;->t()V
  .line 2
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->M0()V
    return-void
.end method

.method public O0()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->O0()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    return-void
.end method

.method public P0()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->e0:Lcn/manstep/phonemirrorBox/x0/d;
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/x0/d;->z(Lcn/manstep/phonemirrorBox/x0/d$d;)V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->e0:Lcn/manstep/phonemirrorBox/x0/d;
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->i0:Lcn/manstep/phonemirrorBox/x0/i;
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->j0:Lcn/manstep/phonemirrorBox/x0/k;
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->g0:Landroid/content/BroadcastReceiver;
    if-eqz v0, :L0
  .line 6
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/o;->g0:Landroid/content/BroadcastReceiver;
    invoke-virtual { v0, v1 }, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
  :L0
  .line 7
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->P0()V
    return-void
.end method

.method public d(ZI)V
  .registers 4
    if-eqz p1, :L0
    return-void
  :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    if-eqz p1, :L3
    if-gez p2, :L2
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->C:Landroid/widget/TextView;
    invoke-static { p2 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/4 p1, -1
    if-eq p2, p1, :L1
    const/4 p1, -2
    if-ne p2, p1, :L3
  :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    const p2, 2131689929
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/widget/a;->c(Landroid/content/Context;I)V
    goto :L3
  :L2
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->C:Landroid/widget/TextView;
    invoke-static { p2 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 5
    sput p2, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    sget p2, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    const-string v0, "RecordDelay"
    invoke-virtual { p1, v0, p2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  :L3
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->y:Lcn/manstep/phonemirrorBox/widget/WaveformView;
    const/16 p2, 8
    invoke-virtual { p1, p2 }, Landroid/view/View;->setVisibility(I)V
    return-void
.end method

.method public f(I)V
  .registers 2
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/l0/m;->g1(Landroid/view/View;Landroid/os/Bundle;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object p1
    const-string p2, "usb"
    invoke-virtual { p1, p2 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/hardware/usb/UsbManager;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->f0:Landroid/hardware/usb/UsbManager;
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->v:Landroid/widget/ImageView;
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/o$a;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/o$a;-><init>(Lcn/manstep/phonemirrorBox/l0/o;)V
    invoke-virtual { p1, p2 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    sget p2, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I
    const-string v0, "RecordDelay"
    invoke-virtual { p1, v0, p2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
  .line 5
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p2, p2, Lcn/manstep/phonemirrorBox/i0/m;->C:Landroid/widget/TextView;
    invoke-static { p1 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->C:Landroid/widget/TextView;
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/o$b;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/o$b;-><init>(Lcn/manstep/phonemirrorBox/l0/o;)V
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->B:Landroid/widget/LinearLayout;
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/o$c;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/o$c;-><init>(Lcn/manstep/phonemirrorBox/l0/o;)V
    invoke-virtual { p1, p2 }, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 8
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/o;->n2()V
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->H:Landroid/widget/TextView;
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/o$d;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/o$d;-><init>(Lcn/manstep/phonemirrorBox/l0/o;)V
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string p2, "BootDelay"
    const/4 v0, 0
    invoke-virtual { p1, p2, v0 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
  .line 11
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p2, p2, Lcn/manstep/phonemirrorBox/i0/m;->F:Landroid/widget/SeekBar;
    const/16 v0, 240
    invoke-virtual { p2, v0 }, Landroid/widget/SeekBar;->setMax(I)V
  .line 12
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p2, p2, Lcn/manstep/phonemirrorBox/i0/m;->F:Landroid/widget/SeekBar;
    invoke-virtual { p2, p1 }, Landroid/widget/SeekBar;->setProgress(I)V
  .line 13
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p2, p2, Lcn/manstep/phonemirrorBox/i0/m;->G:Landroid/widget/TextView;
    invoke-static { p1 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->F:Landroid/widget/SeekBar;
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/o$e;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/o$e;-><init>(Lcn/manstep/phonemirrorBox/l0/o;)V
    invoke-virtual { p1, p2 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->A()Z
    move-result p2
    if-eqz p2, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/c0;->h()I
    move-result p2
    goto :L1
  :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/c0;->f()I
    move-result p2
  :L1
    const-string v0, "DPI"
    invoke-virtual { p1, v0, p2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
    const/16 p2, 10
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/m;->A:Landroid/widget/SeekBar;
    const/16 v1, 72
    invoke-virtual { v0, v1 }, Landroid/widget/SeekBar;->setMax(I)V
  .line 17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/m;->A:Landroid/widget/SeekBar;
    div-int/lit8 v1, p1, 10
    invoke-virtual { v0, v1 }, Landroid/widget/SeekBar;->setProgress(I)V
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/m;->z:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " dpi"
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->A:Landroid/widget/SeekBar;
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/o$f;
    invoke-direct { v0, p0, p2 }, Lcn/manstep/phonemirrorBox/l0/o$f;-><init>(Lcn/manstep/phonemirrorBox/l0/o;I)V
    invoke-virtual { p1, v0 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
  .line 20
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/m;->E:Landroid/widget/LinearLayout;
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/o$g;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/o$g;-><init>(Lcn/manstep/phonemirrorBox/l0/o;)V
    invoke-virtual { p1, p2 }, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public j([BI)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->c0:Lcn/manstep/phonemirrorBox/i0/m;
    if-eqz v0, :L0
  .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/m;->y:Lcn/manstep/phonemirrorBox/widget/WaveformView;
    invoke-virtual { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/widget/WaveformView;->d([BI)V
  :L0
    return-void
.end method

.method public k()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->d0:Lcn/manstep/phonemirrorBox/x0/e;
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/e;->D(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/o;->d0:Lcn/manstep/phonemirrorBox/x0/e;
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->q()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/e;->I(Ljava/lang/String;)V
    return-void
.end method

.method public m(I)V
  .registers 3
    if-nez p1, :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->d0:Lcn/manstep/phonemirrorBox/x0/e;
    const-string v0, ""
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/x0/e;->D(Ljava/lang/String;)V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o;->d0:Lcn/manstep/phonemirrorBox/x0/e;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/x0/e;->I(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method public p(ZII)V
  .registers 4
    return-void
.end method

.method public q(ZLjava/lang/String;)V
  .registers 3
    return-void
.end method
