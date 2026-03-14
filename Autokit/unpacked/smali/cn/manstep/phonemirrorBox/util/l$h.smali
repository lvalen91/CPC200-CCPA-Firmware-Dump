.class Lcn/manstep/phonemirrorBox/util/l$h;
.super Ljava/util/TimerTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/util/l;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "h"
.end annotation

.field private final b:Landroid/hardware/usb/UsbManager;

.field private c:I

.field private final d:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Lcn/manstep/phonemirrorBox/util/l;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Lcn/manstep/phonemirrorBox/util/l;Landroid/hardware/usb/UsbManager;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/util/TimerTask;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/l$h;->c:I
  .line 3
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/l$h;->b:Landroid/hardware/usb/UsbManager;
  .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;
    invoke-direct { p2, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/l$h;->d:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public run()V
  .registers 16
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "DeviceCheck,UsbCheckTask: check usb "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/util/l$h;->c:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$h;->b:Landroid/hardware/usb/UsbManager;
    invoke-virtual { v0 }, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;
    move-result-object v0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/l$h;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/l;->k(Lcn/manstep/phonemirrorBox/util/l;)Ljava/util/ArrayList;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/ArrayList;->clear()V
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "DeviceCheck,UsbCheckTask: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/util/HashMap;->size()I
    move-result v3
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    invoke-virtual { v0 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/4 v1, 0
    const/4 v3, 0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    const/4 v5, 2
    const/4 v6, 1
    if-eqz v4, :L8
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/hardware/usb/UsbDevice;
  .line 6
    invoke-virtual { v4 }, Landroid/hardware/usb/UsbDevice;->getVendorId()I
    move-result v7
  .line 7
    invoke-virtual { v4 }, Landroid/hardware/usb/UsbDevice;->getProductId()I
    move-result v8
  .line 8
    iget-object v9, p0, Lcn/manstep/phonemirrorBox/util/l$h;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v9 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { v9 }, Lcn/manstep/phonemirrorBox/util/l;->k(Lcn/manstep/phonemirrorBox/util/l;)Ljava/util/ArrayList;
    move-result-object v9
    new-array v10, v6, [Ljava/lang/Object;
    invoke-static { v7 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v11
    aput-object v11, v10, v1
    const-string v11, "0x%X"
    invoke-static { v11, v10 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v10
    invoke-virtual { v9, v10 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 9
    iget-object v9, p0, Lcn/manstep/phonemirrorBox/util/l$h;->b:Landroid/hardware/usb/UsbManager;
    invoke-virtual { v9, v4 }, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    move-result v9
  .line 10
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct { v10 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v10, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v10, v7 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v7, ","
    invoke-virtual { v10, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v10, v8 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v10, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v10, v9 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v10, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;
    move-result-object v8
    invoke-virtual { v10, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v10 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static { v8 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 11
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct { v8 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v8, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I
    move-result v10
    invoke-virtual { v8, v10 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v10, " "
    invoke-virtual { v8, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I
    move-result v11
    invoke-virtual { v8, v11 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I
    move-result v10
    invoke-virtual { v8, v10 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v8 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static { v8 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v8, 0
    const/4 v10, 0
  :L1
  .line 12
    invoke-virtual { v4 }, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I
    move-result v11
    if-ge v8, v11, :L5
  .line 13
    invoke-virtual { v4, v8 }, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;
    move-result-object v10
  .line 14
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct { v11 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v11, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v11, v8 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v12, ":"
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v10 }, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I
    move-result v13
    invoke-virtual { v11, v13 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v11, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v10 }, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I
    move-result v13
    invoke-virtual { v11, v13 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v11, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v10 }, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I
    move-result v13
    invoke-virtual { v11, v13 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v11 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-static { v11 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 15
    invoke-virtual { v10 }, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I
    move-result v11
    const/16 v13, 8
    if-ne v11, v13, :L2
    invoke-virtual { v10 }, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I
    move-result v11
    const/4 v13, 6
    if-ne v11, v13, :L2
    const/4 v11, 1
    goto :L3
  :L2
    const/4 v11, 0
  :L3
  .line 16
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v14, 21
    if-lt v13, v14, :L4
  .line 17
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct { v13 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v13, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13, v8 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v13, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v10 }, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;
    move-result-object v10
    invoke-virtual { v13, v10 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    invoke-static { v10 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L4
    add-int/lit8 v8, v8, 1
    move v10, v11
    goto :L1
  :L5
    if-eqz v10, :L6
    goto/16 :L0
  :L6
  .line 18
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/util/l$h;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v7 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lcn/manstep/phonemirrorBox/util/l;
    invoke-virtual { v4 }, Landroid/hardware/usb/UsbDevice;->getVendorId()I
    move-result v8
    invoke-static { v7, v8 }, Lcn/manstep/phonemirrorBox/util/l;->l(Lcn/manstep/phonemirrorBox/util/l;I)I
    if-eqz v9, :L7
  .line 19
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/util/l$h;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v3 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lcn/manstep/phonemirrorBox/util/l;
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-static { v3, v1, v4 }, Lcn/manstep/phonemirrorBox/util/l;->b(Lcn/manstep/phonemirrorBox/util/l;ILjava/lang/Object;)V
    const/4 v3, 1
    goto/16 :L0
  :L7
  .line 20
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/util/l$h;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v6 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lcn/manstep/phonemirrorBox/util/l;
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-static { v6, v1, v7 }, Lcn/manstep/phonemirrorBox/util/l;->b(Lcn/manstep/phonemirrorBox/util/l;ILjava/lang/Object;)V
  .line 21
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/util/l$h;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v6 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { v6, v5, v4 }, Lcn/manstep/phonemirrorBox/util/l;->b(Lcn/manstep/phonemirrorBox/util/l;ILjava/lang/Object;)V
    goto/16 :L0
  :L8
  .line 22
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/l$h;->c:I
    if-ge v0, v5, :L9
    add-int/2addr v0, v6
  .line 23
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/l$h;->c:I
    goto :L10
  :L9
    if-nez v3, :L10
  .line 24
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$h;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/util/l;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-static { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/l;->b(Lcn/manstep/phonemirrorBox/util/l;ILjava/lang/Object;)V
  :L10
    return-void
.end method
