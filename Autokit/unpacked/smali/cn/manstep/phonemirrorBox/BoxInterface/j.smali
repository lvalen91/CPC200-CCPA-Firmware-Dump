.class public Lcn/manstep/phonemirrorBox/BoxInterface/j;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static n:[B

.field private a:Z

.field private b:Landroid/hardware/usb/UsbDeviceConnection;

.field private c:Landroid/hardware/usb/UsbEndpoint;

.field private d:Landroid/hardware/usb/UsbEndpoint;

.field private e:Landroid/hardware/usb/UsbManager;

.field private f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

.field private g:Z

.field private h:Landroid/hardware/usb/UsbDevice;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private final m:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 3
    const/16 v0, 16384
    new-array v0, v0, [B
  .line 1
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i:Z
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j:Z
  .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I
  .line 7
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->l:I
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->d0()Z
    move-result v0
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z
  .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->m:Ljava/lang/ref/WeakReference;
  .line 10
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z
    if-eqz v0, :L0
  .line 11
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    goto :L1
  :L0
    const-string v0, "usb"
  .line 12
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/hardware/usb/UsbManager;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e:Landroid/hardware/usb/UsbManager;
  :L1
  .line 13
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I
    const/4 v1, 2
    if-ne v0, v1, :L2
  .line 14
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/t0/a;->b(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/t0/a;
    move-result-object p1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->l:I
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/t0/a;->c(I)V
  :L2
    return-void
.end method

.method private c()I
  .registers 11
    const/16 v0, 16
    new-array v0, v0, [Ljava/lang/String;
  .line 1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->getDeviceList([Ljava/lang/String;)I
    move-result v1
    const/4 v2, 0
    if-lez v1, :L6
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
  :L0
    if-ge v3, v1, :L5
  .line 2
    aget-object v6, v0, v3
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->getVidPid(Ljava/lang/String;)[I
    move-result-object v6
  .line 3
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "evaluateUsbDevices: vid="
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    aget v8, v6, v2
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v8, ", pid="
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v8, 1
    aget v9, v6, v8
    invoke-virtual { v7, v9 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    const-string v9, "UsbManager"
    invoke-static { v9, v7 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 4
    aget v7, v6, v2
    aget v9, v6, v8
    invoke-direct { p0, v7, v9 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j(II)Z
    move-result v7
    if-eqz v7, :L1
    const/4 v4, 1
    goto :L3
  :L1
  .line 5
    aget v7, v6, v2
    aget v9, v6, v8
    invoke-direct { p0, v7, v9 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k(II)Z
    move-result v7
    if-eqz v7, :L2
    const/4 v5, 1
    goto :L3
  :L2
  .line 6
    aget v7, v6, v2
    invoke-direct { p0, v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->m(I)Z
    move-result v7
    if-nez v7, :L4
  .line 7
    aget v7, v6, v2
    aget v6, v6, v8
    invoke-direct { p0, v7, v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->h(II)Z
    move-result v6
    if-eqz v6, :L3
    return v8
  :L3
    add-int/lit8 v3, v3, 1
    goto :L0
  :L4
  .line 8
    aget v2, v6, v2
  .line 9
    aget v0, v6, v8
    move v1, v0
    move v0, v2
    move v2, v4
    goto :L7
  :L5
    move v2, v4
    const/4 v0, 0
    const/4 v1, 0
    goto :L7
  :L6
    const/4 v0, 0
    const/4 v1, 0
    const/4 v5, 0
  :L7
  .line 10
    invoke-direct { p0, v2, v5, v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f(ZZII)I
    move-result v0
    return v0
.end method

.method private d(Ljava/util/HashMap;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Landroid/hardware/usb/UsbDevice;",
      ">;)I"
    }
  .end annotation
  .registers 10
  .line 1
    invoke-virtual { p1 }, Ljava/util/HashMap;->values()Ljava/util/Collection;
    move-result-object p1
    invoke-interface { p1 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object p1
    const/4 v0, 0
    const/4 v1, 0
  :L0
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L3
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/hardware/usb/UsbDevice;
  .line 2
    invoke-virtual { v2 }, Landroid/hardware/usb/UsbDevice;->getVendorId()I
    move-result v3
  .line 3
    invoke-virtual { v2 }, Landroid/hardware/usb/UsbDevice;->getProductId()I
    move-result v4
  .line 4
    invoke-virtual { v2 }, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I
    move-result v5
  .line 5
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "UsbManager,evaluateUsbDevices: usb: "
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0, v3, v4, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e(III)Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 6
    invoke-direct { p0, v3, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j(II)Z
    move-result v6
    const/4 v7, 1
    if-eqz v6, :L1
    const/4 v0, 1
    goto :L0
  :L1
  .line 7
    invoke-direct { p0, v3, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k(II)Z
    move-result v4
    if-eqz v4, :L2
    const/4 v1, 1
    goto :L0
  :L2
  .line 8
    invoke-direct { p0, v3, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n(II)Z
    move-result v3
    if-nez v3, :L4
  .line 9
    invoke-direct { p0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i(Landroid/hardware/usb/UsbDevice;)Z
    move-result v2
    if-eqz v2, :L0
    return v7
  :L3
    const/4 v2, 0
  :L4
  .line 10
    invoke-direct { p0, v0, v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g(ZZLandroid/hardware/usb/UsbDevice;)I
    move-result p1
    return p1
.end method

.method private e(III)Ljava/lang/String;
  .registers 8
  .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    const/4 v1, 5
    new-array v1, v1, [Ljava/lang/Object;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const/4 v3, 0
    aput-object v2, v1, v3
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    const/4 v2, 1
    aput-object p1, v1, v2
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    const/4 v2, 2
    aput-object p1, v1, v2
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    const/4 p2, 3
    aput-object p1, v1, p2
    invoke-static { p3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    const/4 p2, 4
    aput-object p1, v1, p2
    const-string p1, "vid=%d(0x%04X),pid=%d(0x%04X),interfaceCnt=%d"
    invoke-static { v0, p1, v1 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method private f(ZZII)I
  .registers 6
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i:Z
    if-eq v0, p1, :L2
  .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i:Z
    if-eqz p1, :L0
    const/4 p1, 3
    goto :L1
  :L0
    const/4 p1, 4
  :L1
    return p1
  :L2
  .line 3
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j:Z
    if-eq p1, p2, :L5
  .line 4
    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j:Z
    if-eqz p2, :L3
    const/4 p1, 5
    goto :L4
  :L3
    const/4 p1, 6
  :L4
    return p1
  :L5
    if-nez p3, :L6
    if-eqz p4, :L8
  :L6
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    if-eqz p1, :L8
  .line 6
    invoke-virtual { p1, p3, p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->openDevice(II)I
    move-result p1
    if-nez p1, :L7
    const/4 p1, 1
  .line 7
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    const/4 p1, 7
    return p1
  :L7
  .line 8
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "handleConnectionState: openDevice="
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->getError(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ", vid="
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ", pid="
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string p2, "UsbManager"
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L8
  .line 9
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    if-eqz p1, :L9
  .line 10
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b()V
  :L9
    const/4 p1, 0
  .line 11
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    return p1
.end method

.method private g(ZZLandroid/hardware/usb/UsbDevice;)I
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i:Z
    if-eq v0, p1, :L2
  .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i:Z
    if-eqz p1, :L0
    const/4 p1, 3
    goto :L1
  :L0
    const/4 p1, 4
  :L1
    return p1
  :L2
  .line 3
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j:Z
    if-eq p1, p2, :L5
  .line 4
    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j:Z
    if-eqz p2, :L3
    const/4 p1, 5
    goto :L4
  :L3
    const/4 p1, 6
  :L4
    return p1
  :L5
    if-eqz p3, :L6
  .line 5
    invoke-direct { p0, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->o(Landroid/hardware/usb/UsbDevice;)I
    move-result p1
    if-lez p1, :L6
    return p1
  :L6
  .line 6
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    if-eqz p1, :L7
  .line 7
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b()V
  :L7
    const/4 p1, 0
  .line 8
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    const-string p2, "UsbManager"
    const-string p3, "handleConnectionState() usbConnected = false"
  .line 9
    invoke-static { p2, p3 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    return p1
.end method

.method private h(II)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .catch Ljava/lang/Error; { :L0 .. :L1 } :L2
  .registers 10
    const-string v0, "UsbManager"
    const/4 v1, 1
  :L0
  .line 1
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    const-string v3, "0x%04X"
    new-array v4, v1, [Ljava/lang/Object;
    const/4 v5, 0
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    aput-object v6, v4, v5
    invoke-static { v2, v3, v4 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/JniTools;->box(Ljava/lang/String;)Z
    move-result v2
  :L1
    goto :L5
  :L2
    move-exception v2
    goto :L4
  :L3
    move-exception v2
  :L4
  .line 2
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "handleInvalidDevice: JniTools.box\n"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v2, 1
  :L5
    if-eqz v2, :L6
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v3
    invoke-virtual { v3, p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->y(II)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/p;->a()I
    move-result v3
    add-int/2addr v3, v1
    sput v3, Lcn/manstep/phonemirrorBox/p;->r:I
    const-string v1, "handleInvalidDevice: VID ERROR"
  .line 5
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->h:Landroid/hardware/usb/UsbDevice;
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->o(Landroid/hardware/usb/UsbDevice;)I
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    if-eqz v0, :L6
  .line 8
    invoke-virtual { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->openDevice(II)I
  :L6
    return v2
.end method

.method private i(Landroid/hardware/usb/UsbDevice;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .catch Ljava/lang/Error; { :L0 .. :L1 } :L2
  .registers 9
    const-string v0, "UsbManager"
    const/4 v1, 1
  :L0
  .line 1
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    const-string v3, "0x%04X"
    new-array v4, v1, [Ljava/lang/Object;
    const/4 v5, 0
    invoke-virtual { p1 }, Landroid/hardware/usb/UsbDevice;->getVendorId()I
    move-result v6
    invoke-static { v6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    aput-object v6, v4, v5
    invoke-static { v2, v3, v4 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/JniTools;->box(Ljava/lang/String;)Z
    move-result v2
  :L1
    goto :L5
  :L2
    move-exception v2
    goto :L4
  :L3
    move-exception v2
  :L4
  .line 2
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "handleInvalidDevice: JniTools.box\n"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v2, 1
  :L5
    if-eqz v2, :L6
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v3
    invoke-virtual { p1 }, Landroid/hardware/usb/UsbDevice;->getVendorId()I
    move-result v4
    invoke-virtual { p1 }, Landroid/hardware/usb/UsbDevice;->getProductId()I
    move-result v5
    invoke-virtual { v3, v4, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->y(II)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/p;->a()I
    move-result v3
    add-int/2addr v3, v1
    sput v3, Lcn/manstep/phonemirrorBox/p;->r:I
    const-string v1, "handleInvalidDevice: VID ERROR"
  .line 5
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->o(Landroid/hardware/usb/UsbDevice;)I
  :L6
    return v2
.end method

.method private j(II)Z
  .registers 4
    const/16 v0, 1317
    if-ne p1, v0, :L1
    const p1, 42149
    if-eq p2, p1, :L0
    const p1, 42150
    if-ne p2, p1, :L1
  :L0
    const/4 p1, 1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    return p1
.end method

.method private k(II)Z
  .registers 4
    const/16 v0, 7531
    if-ne p1, v0, :L0
    const p1, 42149
    if-ne p2, p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method private m(I)Z
  .registers 8
    const/4 v0, 0
    const/4 v1, 1
    if-lez p1, :L2
  .line 1
    sget-object v2, Lcn/manstep/phonemirrorBox/m;->b:[I
    array-length v3, v2
    const/4 v4, 0
  :L0
    if-ge v4, v3, :L2
    aget v5, v2, v4
    if-ne p1, v5, :L1
    return v1
  :L1
    add-int/lit8 v4, v4, 1
    goto :L0
  :L2
    if-lez p1, :L3
    const/16 v2, 4884
    if-ne p1, v2, :L3
    const/4 v0, 1
  :L3
    return v0
.end method

.method private n(II)Z
  .registers 10
    const/4 v0, 0
    const/4 v1, 3
    const/4 v2, 1
    if-lez p1, :L2
    if-gt p2, v1, :L2
  .line 1
    sget-object v3, Lcn/manstep/phonemirrorBox/m;->b:[I
    array-length v4, v3
    const/4 v5, 0
  :L0
    if-ge v5, v4, :L2
    aget v6, v3, v5
    if-ne p1, v6, :L1
    return v2
  :L1
    add-int/lit8 v5, v5, 1
    goto :L0
  :L2
    if-lez p1, :L3
    const/16 v3, 4884
    if-ne p1, v3, :L3
    if-gt p2, v1, :L3
    const/4 v0, 1
  :L3
    return v0
.end method

.method private o(Landroid/hardware/usb/UsbDevice;)I
  .catchall { :L2 .. :L6 } :L5
  .registers 8
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I
    move-result v2
    if-ge v1, v2, :L8
  .line 2
    invoke-virtual { p1, v1 }, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;
    move-result-object v2
  .line 3
    invoke-virtual { v2 }, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I
    move-result v3
    const/4 v4, 2
    if-lt v3, v4, :L7
  .line 4
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    if-nez v1, :L8
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e:Landroid/hardware/usb/UsbManager;
    invoke-virtual { v1, p1 }, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    move-result v1
  .line 6
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "UsbManager,checkUsbConnected: VID="
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Landroid/hardware/usb/UsbDevice;->getVendorId()I
    move-result v5
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, ", hasPermission="
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v5, ", InterfaceClass="
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I
    move-result v5
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-nez v1, :L1
  .line 7
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->h:Landroid/hardware/usb/UsbDevice;
    return v4
  :L1
  .line 8
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b()V
  .line 9
    monitor-enter p0
  :L2
  .line 10
    invoke-direct { p0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->t(Landroid/hardware/usb/UsbInterface;)V
  .line 11
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e:Landroid/hardware/usb/UsbManager;
    invoke-virtual { v1, p1 }, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    move-result-object v1
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;
    const-string v1, "UsbManager,checkUsbConnected: Open Usb Device!!!"
  .line 12
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { p1 }, Landroid/hardware/usb/UsbDevice;->getVendorId()I
    move-result v3
    invoke-virtual { p1 }, Landroid/hardware/usb/UsbDevice;->getProductId()I
    move-result p1
    invoke-virtual { v1, v3, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->y(II)V
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz p1, :L3
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;
    const/4 v1, 1
    invoke-virtual { p1, v2, v1 }, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
  .line 16
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "usbconnection:"
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 17
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
  .line 18
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v1, "InsertBoxAutoStart"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result p1
    if-eqz p1, :L4
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->m:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/content/Context;
    const/4 v1, 0
    invoke-static { p1, v1 }, Lcn/manstep/phonemirrorBox/util/f;->f(Landroid/content/Context;Landroid/os/Bundle;)V
    goto :L4
  :L3
    const-string p1, "usbconnection == null"
  .line 20
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L4
  .line 21
    monitor-exit p0
    goto :L8
  :L5
    move-exception p1
    monitor-exit p0
  :L6
    throw p1
  :L7
    add-int/lit8 v1, v1, 1
    goto/16 :L0
  :L8
  .line 22
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    if-eqz p1, :L9
    const/4 p1, 7
    return p1
  :L9
    return v0
.end method

.method private t(Landroid/hardware/usb/UsbInterface;)V
  .registers 6
    const/4 v0, 0
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I
    move-result v1
    if-ge v0, v1, :L3
  .line 2
    invoke-virtual { p1, v0 }, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;
    move-result-object v1
  .line 3
    invoke-virtual { v1 }, Landroid/hardware/usb/UsbEndpoint;->getType()I
    move-result v2
    const/4 v3, 2
    if-ne v2, v3, :L2
  .line 4
    invoke-virtual { v1 }, Landroid/hardware/usb/UsbEndpoint;->getDirection()I
    move-result v2
    const/16 v3, 128
    if-ne v2, v3, :L1
  .line 5
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->c:Landroid/hardware/usb/UsbEndpoint;
    goto :L2
  :L1
  .line 6
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->d:Landroid/hardware/usb/UsbEndpoint;
  :L2
    add-int/lit8 v0, v0, 1
    goto :L0
  :L3
    return-void
.end method

.method public a()I
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I
    const/4 v1, 2
    if-ne v1, v0, :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    const/4 v0, 7
    return v0
  :L0
  .line 3
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z
    const/4 v1, 0
    if-eqz v0, :L2
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    if-nez v0, :L1
    return v1
  :L1
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->release()V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->init()I
  .line 7
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->c()I
    move-result v0
    return v0
  :L2
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e:Landroid/hardware/usb/UsbManager;
    if-nez v0, :L3
    return v1
  :L3
  .line 9
    invoke-virtual { v0 }, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;
    move-result-object v0
  .line 10
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/j;->d(Ljava/util/HashMap;)I
    move-result v0
    return v0
.end method

.method public b()V
  .catchall { :L0 .. :L4 } :L3
  .registers 4
    const-string v0, "UsbManager"
  .line 1
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "closeUsb: usbConnected="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    monitor-enter p0
    const/4 v0, 0
  :L0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;
    if-eqz v0, :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;
    invoke-virtual { v0 }, Landroid/hardware/usb/UsbDeviceConnection;->close()V
  :L1
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    if-eqz v0, :L2
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->release()V
  :L2
  .line 8
    monitor-exit p0
    return-void
  :L3
    move-exception v0
    monitor-exit p0
  :L4
    throw v0
.end method

.method public l()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    return v0
.end method

.method public p([BI)Z
  .registers 10
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    const/4 v1, 0
    if-eqz v0, :L10
    move v0, p2
    const/4 v2, 0
  :L0
    const/4 v3, 1
    if-lez v0, :L7
    const/16 v4, 16384
  .line 2
    invoke-static { v0, v4 }, Ljava/lang/Math;->min(II)I
    move-result v0
    const/4 v4, 2
  .line 3
    iget v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I
    if-ne v4, v5, :L1
  .line 4
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->m:Ljava/lang/ref/WeakReference;
    invoke-virtual { v4 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/content/Context;
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/t0/a;->b(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/t0/a;
    move-result-object v4
    sget-object v5, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B
    invoke-virtual { v4, v5, v1, v0 }, Lcn/manstep/phonemirrorBox/t0/a;->a([BII)I
    move-result v4
    goto :L3
  :L1
  .line 5
    iget-boolean v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z
    if-eqz v4, :L2
  .line 6
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    sget-object v5, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B
    invoke-virtual { v4, v5, v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->bulkTransferIn([BII)I
    move-result v4
    goto :L3
  :L2
  .line 7
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->c:Landroid/hardware/usb/UsbEndpoint;
    sget-object v6, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B
    invoke-virtual { v4, v5, v6, v0, v1 }, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    move-result v4
  :L3
    const-string v5, "[USB Error], usbConnected = "
    if-gez v4, :L4
  .line 8
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "UsbManager,readUsb: ret = "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L7
  :L4
    if-le v4, v0, :L5
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "UsbManager,readUsb: ret="
    invoke-virtual { p1, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, ",iRecv="
    invoke-virtual { p1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L7
  :L5
  .line 10
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I
    if-ne v3, v0, :L6
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->m:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/t0/a;->b(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/t0/a;
    move-result-object v0
    sget-object v3, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B
    iget v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->l:I
    invoke-virtual { v0, v3, v1, v4, v5 }, Lcn/manstep/phonemirrorBox/t0/a;->d([BIII)V
  :L6
  .line 12
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B
    invoke-static { v0, v1, p1, v2, v4 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    add-int/2addr v2, v4
    sub-int v0, p2, v2
    goto/16 :L0
  :L7
    if-ne v2, p2, :L8
    const/4 p1, 1
    goto :L9
  :L8
    const/4 p1, 0
  :L9
  .line 13
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    if-ne v2, p2, :L10
    const/4 v1, 1
  :L10
    return v1
.end method

.method public q(Landroid/app/PendingIntent;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e:Landroid/hardware/usb/UsbManager;
    if-eqz v0, :L0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->h:Landroid/hardware/usb/UsbDevice;
    if-eqz v1, :L0
  .line 2
    invoke-virtual { v0, v1, p1 }, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
  :L0
    return-void
.end method

.method public r(Z)V
  .registers 4
    if-eqz p1, :L0
    const/4 v0, 1
  .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I
    goto :L1
  :L0
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I
  :L1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "saveUsbData: is="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string p1, ", flag="
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "UsbManager"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public s(I)V
  .registers 4
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->l:I
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "setAesRandomNum: l="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "UsbManager"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method public u([BI)Z
  .catchall { :L3 .. :L15 } :L8
  .registers 12
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I
    const/4 v1, 1
    const/4 v2, 2
    if-ne v2, v0, :L0
    return v1
  :L0
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    const/4 v2, 0
    if-eqz v0, :L16
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;
    if-nez v0, :L1
    move-object v0, p0
  :L1
    monitor-enter v0
    move v3, p2
    const/4 v4, 0
  :L2
    if-lez v3, :L9
    const/16 v5, 16384
  :L3
  .line 4
    invoke-static { v3, v5 }, Ljava/lang/Math;->min(II)I
    move-result v3
  .line 5
    new-array v5, v3, [B
  .line 6
    invoke-static { p1, v4, v5, v2, v3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 7
    iget-boolean v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z
    const/16 v7, 4000
    if-eqz v6, :L4
  .line 8
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;
    invoke-virtual { v6, v5, v3, v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->bulkTransferOut([BII)I
    move-result v5
    goto :L5
  :L4
  .line 9
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->d:Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual { v6, v8, v5, v3, v7 }, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    move-result v5
  :L5
    if-ltz v5, :L7
    if-le v5, v3, :L6
    goto :L7
  :L6
    add-int/2addr v4, v5
    sub-int v3, p2, v4
    goto :L2
  :L7
    const-string p1, "UsbManager"
  .line 10
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "write usb iSend = "
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { p1, v3 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    const-string p1, "UsbManager"
  .line 11
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "write usb ret = "
    invoke-virtual { v3, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { p1, v3 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto :L9
  :L8
    move-exception p1
    goto :L14
  :L9
    if-ne v4, p2, :L10
    const/4 p1, 1
    goto :L11
  :L10
    const/4 p1, 0
  :L11
  .line 12
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z
    if-ne v4, p2, :L12
    goto :L13
  :L12
    const/4 v1, 0
  :L13
  .line 13
    monitor-exit v0
    return v1
  :L14
  .line 14
    monitor-exit v0
  :L15
    throw p1
  :L16
    return v2
.end method
