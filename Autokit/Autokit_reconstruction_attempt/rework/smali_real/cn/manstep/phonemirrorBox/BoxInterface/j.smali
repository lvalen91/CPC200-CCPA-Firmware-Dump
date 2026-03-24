.class public Lcn/manstep/phonemirrorBox/BoxInterface/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final n:[B


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

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
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->d0()Z

    move-result v0

    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z

    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->m:Ljava/lang/ref/WeakReference;

    .line 10
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z

    if-eqz v0, :cond_35

    .line 11
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    goto :goto_3f

    :cond_35
    const-string v0, "usb"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e:Landroid/hardware/usb/UsbManager;

    .line 13
    :goto_3f
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 14
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/t0/a;->b(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/t0/a;

    move-result-object p1

    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->l:I

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/t0/a;->c(I)V

    :cond_4d
    return-void
.end method

.method private c()I
    .registers 11

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->getDeviceList([Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_75

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v3, v1, :cond_71

    .line 2
    aget-object v6, v0, v3

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->getVidPid(Ljava/lang/String;)[I

    move-result-object v6

    .line 3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "evaluateUsbDevices: vid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget v9, v6, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "UsbManager"

    invoke-static {v9, v7}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    aget v7, v6, v2

    aget v9, v6, v8

    invoke-direct {p0, v7, v9}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j(II)Z

    move-result v7

    if-eqz v7, :cond_47

    const/4 v4, 0x1

    goto :goto_66

    .line 5
    :cond_47
    aget v7, v6, v2

    aget v9, v6, v8

    invoke-direct {p0, v7, v9}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k(II)Z

    move-result v7

    if-eqz v7, :cond_53

    const/4 v5, 0x1

    goto :goto_66

    .line 6
    :cond_53
    aget v7, v6, v2

    invoke-direct {p0, v7}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->m(I)Z

    move-result v7

    if-nez v7, :cond_69

    .line 7
    aget v7, v6, v2

    aget v6, v6, v8

    invoke-direct {p0, v7, v6}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->h(II)Z

    move-result v6

    if-eqz v6, :cond_66

    return v8

    :cond_66
    :goto_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 8
    :cond_69
    aget v2, v6, v2

    .line 9
    aget v0, v6, v8

    move v1, v0

    move v0, v2

    move v2, v4

    goto :goto_78

    :cond_71
    move v2, v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_78

    :cond_75
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 10
    :goto_78
    invoke-direct {p0, v2, v5, v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f(ZZII)I

    move-result v0

    return v0
.end method

.method private d(Ljava/util/HashMap;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 2
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    .line 3
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    .line 4
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsbManager,evaluateUsbDevices: usb: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v4, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v3, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j(II)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_43

    const/4 v0, 0x1

    goto :goto_a

    .line 7
    :cond_43
    invoke-direct {p0, v3, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k(II)Z

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v1, 0x1

    goto :goto_a

    .line 8
    :cond_4b
    invoke-direct {p0, v3, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n(II)Z

    move-result v3

    if-nez v3, :cond_59

    .line 9
    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v7

    :cond_58
    const/4 v2, 0x0

    .line 10
    :cond_59
    invoke-direct {p0, v0, v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g(ZZLandroid/hardware/usb/UsbDevice;)I

    move-result p1

    return p1
.end method

.method private e(III)Ljava/lang/String;
    .registers 8

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    const-string p1, "vid=%d(0x%04X),pid=%d(0x%04X),interfaceCnt=%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(ZZII)I
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i:Z

    if-eq v0, p1, :cond_c

    .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x3

    goto :goto_b

    :cond_a
    const/4 p1, 0x4

    :goto_b
    return p1

    .line 3
    :cond_c
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j:Z

    if-eq p1, p2, :cond_18

    .line 4
    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j:Z

    if-eqz p2, :cond_16

    const/4 p1, 0x5

    goto :goto_17

    :cond_16
    const/4 p1, 0x6

    :goto_17
    return p1

    :cond_18
    if-nez p3, :cond_1c

    if-eqz p4, :cond_55

    .line 5
    :cond_1c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    if-eqz p1, :cond_55

    .line 6
    invoke-virtual {p1, p3, p4}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->openDevice(II)I

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    const/4 p1, 0x7

    return p1

    .line 8
    :cond_2b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleConnectionState: openDevice="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->getError(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", vid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsbManager"

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_55
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    if-eqz p1, :cond_5c

    .line 10
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b()V

    :cond_5c
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    return p1
.end method

.method private g(ZZLandroid/hardware/usb/UsbDevice;)I
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i:Z

    if-eq v0, p1, :cond_c

    .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->i:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x3

    goto :goto_b

    :cond_a
    const/4 p1, 0x4

    :goto_b
    return p1

    .line 3
    :cond_c
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j:Z

    if-eq p1, p2, :cond_18

    .line 4
    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->j:Z

    if-eqz p2, :cond_16

    const/4 p1, 0x5

    goto :goto_17

    :cond_16
    const/4 p1, 0x6

    :goto_17
    return p1

    :cond_18
    if-eqz p3, :cond_21

    .line 5
    invoke-direct {p0, p3}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->o(Landroid/hardware/usb/UsbDevice;)I

    move-result p1

    if-lez p1, :cond_21

    return p1

    .line 6
    :cond_21
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    if-eqz p1, :cond_28

    .line 7
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b()V

    :cond_28
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    const-string p2, "UsbManager"

    const-string p3, "handleConnectionState() usbConnected = false"

    .line 9
    invoke-static {p2, p3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private h(II)Z
    .registers 10

    const-string v0, "UsbManager"

    const/4 v1, 0x1

    .line 1
    :try_start_3
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "0x%04X"

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/JniTools;->box(Ljava/lang/String;)Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_1b
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_18} :catch_19

    goto :goto_35

    :catch_19
    move-exception v2

    goto :goto_1c

    :catch_1b
    move-exception v2

    .line 2
    :goto_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInvalidDevice: JniTools.box\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_35
    if-eqz v2, :cond_56

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->y(II)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/p;->a()I

    move-result v3

    add-int/2addr v3, v1

    sput v3, Lcn/manstep/phonemirrorBox/p;->r:I

    const-string v1, "handleInvalidDevice: VID ERROR"

    .line 5
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->h:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->o(Landroid/hardware/usb/UsbDevice;)I

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    if-eqz v0, :cond_56

    .line 8
    invoke-virtual {v0, p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->openDevice(II)I

    :cond_56
    return v2
.end method

.method private i(Landroid/hardware/usb/UsbDevice;)Z
    .registers 9

    const-string v0, "UsbManager"

    const/4 v1, 0x1

    .line 1
    :try_start_3
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "0x%04X"

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/JniTools;->box(Ljava/lang/String;)Z

    move-result v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_1c} :catch_1d

    goto :goto_39

    :catch_1d
    move-exception v2

    goto :goto_20

    :catch_1f
    move-exception v2

    .line 2
    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInvalidDevice: JniTools.box\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_39
    if-eqz v2, :cond_59

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->y(II)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/p;->a()I

    move-result v3

    add-int/2addr v3, v1

    sput v3, Lcn/manstep/phonemirrorBox/p;->r:I

    const-string v1, "handleInvalidDevice: VID ERROR"

    .line 5
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->o(Landroid/hardware/usb/UsbDevice;)I

    :cond_59
    return v2
.end method

.method private j(II)Z
    .registers 4

    const/16 v0, 0x525

    if-ne p1, v0, :cond_10

    const p1, 0xa4a5

    if-eq p2, p1, :cond_e

    const p1, 0xa4a6

    if-ne p2, p1, :cond_10

    :cond_e
    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private k(II)Z
    .registers 4

    const/16 v0, 0x1d6b

    if-ne p1, v0, :cond_b

    const p1, 0xa4a5

    if-ne p2, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private m(I)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_12

    .line 1
    sget-object v2, Lcn/manstep/phonemirrorBox/m;->b:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_12

    aget v5, v2, v4

    if-ne p1, v5, :cond_f

    return v1

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_12
    if-lez p1, :cond_19

    const/16 v2, 0x1314

    if-ne p1, v2, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private n(II)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez p1, :cond_15

    if-gt p2, v1, :cond_15

    .line 1
    sget-object v3, Lcn/manstep/phonemirrorBox/m;->b:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v4, :cond_15

    aget v6, v3, v5

    if-ne p1, v6, :cond_12

    return v2

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_15
    if-lez p1, :cond_1e

    const/16 v3, 0x1314

    if-ne p1, v3, :cond_1e

    if-gt p2, v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method private o(Landroid/hardware/usb/UsbDevice;)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v1, v2, :cond_ba

    .line 2
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_b6

    .line 4
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    if-nez v1, :cond_ba

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsbManager,checkUsbConnected: VID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", hasPermission="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", InterfaceClass="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-nez v1, :cond_4e

    .line 7
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->h:Landroid/hardware/usb/UsbDevice;

    return v4

    .line 8
    :cond_4e
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b()V

    .line 9
    monitor-enter p0

    .line 10
    :try_start_52
    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->t(Landroid/hardware/usb/UsbInterface;)V

    .line 11
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;

    const-string v1, "UsbManager,checkUsbConnected: Open Usb Device!!!"

    .line 12
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    invoke-virtual {v1, v3, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->y(II)V

    .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p1, :cond_ac

    .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbconnection:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 17
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    .line 18
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v1, "InsertBoxAutoStart"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/util/f;->f(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_b1

    :cond_ac
    const-string p1, "usbconnection == null"

    .line 20
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 21
    :cond_b1
    :goto_b1
    monitor-exit p0

    goto :goto_ba

    :catchall_b3
    move-exception p1

    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_52 .. :try_end_b5} :catchall_b3

    throw p1

    :cond_b6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 22
    :cond_ba
    :goto_ba
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    if-eqz p1, :cond_c0

    const/4 p1, 0x7

    return p1

    :cond_c0
    return v0
.end method

.method private t(Landroid/hardware/usb/UsbInterface;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 2
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    .line 4
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1d

    .line 5
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->c:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1f

    .line 6
    :cond_1d
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->d:Landroid/hardware/usb/UsbEndpoint;

    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    const/4 v0, 0x7

    return v0

    .line 3
    :cond_a
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    if-nez v0, :cond_14

    return v1

    .line 5
    :cond_14
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->release()V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->init()I

    .line 7
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->c()I

    move-result v0

    return v0

    .line 8
    :cond_21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_26

    return v1

    .line 9
    :cond_26
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/j;->d(Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public b()V
    .registers 4

    const-string v0, "UsbManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeUsb: usbConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    const/4 v0, 0x0

    .line 3
    :try_start_1a
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_25

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 6
    :cond_25
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    if-eqz v0, :cond_2e

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->release()V

    .line 8
    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_30

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

    const/4 v1, 0x0

    if-eqz v0, :cond_b2

    move v0, p2

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x1

    if-lez v0, :cond_a8

    const/16 v4, 0x4000

    .line 2
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v4, 0x2

    .line 3
    iget v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I

    if-ne v4, v5, :cond_28

    .line 4
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/t0/a;->b(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/t0/a;

    move-result-object v4

    sget-object v5, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B

    invoke-virtual {v4, v5, v1, v0}, Lcn/manstep/phonemirrorBox/t0/a;->a([BII)I

    move-result v4

    goto :goto_3f

    .line 5
    :cond_28
    iget-boolean v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z

    if-eqz v4, :cond_35

    .line 6
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    sget-object v5, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B

    invoke-virtual {v4, v5, v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->bulkTransferIn([BII)I

    move-result v4

    goto :goto_3f

    .line 7
    :cond_35
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->c:Landroid/hardware/usb/UsbEndpoint;

    sget-object v6, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    :goto_3f
    const-string v5, "[USB Error], usbConnected = "

    if-gez v4, :cond_60

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UsbManager,readUsb: ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_a8

    :cond_60
    if-le v4, v0, :cond_87

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsbManager,readUsb: ret="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",iRecv="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_a8

    .line 10
    :cond_87
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I

    if-ne v3, v0, :cond_9e

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/t0/a;->b(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/t0/a;

    move-result-object v0

    sget-object v3, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B

    iget v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->l:I

    invoke-virtual {v0, v3, v1, v4, v5}, Lcn/manstep/phonemirrorBox/t0/a;->d([BIII)V

    .line 12
    :cond_9e
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->n:[B

    invoke-static {v0, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    sub-int v0, p2, v2

    goto/16 :goto_7

    :cond_a8
    :goto_a8
    if-ne v2, p2, :cond_ac

    const/4 p1, 0x1

    goto :goto_ad

    :cond_ac
    const/4 p1, 0x0

    .line 13
    :goto_ad
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    if-ne v2, p2, :cond_b2

    const/4 v1, 0x1

    :cond_b2
    return v1
.end method

.method public q(Landroid/app/PendingIntent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->e:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->h:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_b

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    :cond_b
    return-void
.end method

.method public r(Z)V
    .registers 4

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I

    .line 3
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveUsbData: is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", flag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbManager"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s(I)V
    .registers 4

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->l:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAesRandomNum: l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbManager"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u([BI)Z
    .registers 12

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->k:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v2, v0, :cond_7

    return v1

    .line 2
    :cond_7
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7d

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_11

    move-object v0, p0

    :cond_11
    monitor-enter v0

    move v3, p2

    const/4 v4, 0x0

    :goto_14
    if-lez v3, :cond_6e

    const/16 v5, 0x4000

    .line 4
    :try_start_18
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    new-array v5, v3, [B

    .line 6
    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-boolean v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->g:Z

    const/16 v7, 0xfa0

    if-eqz v6, :cond_2e

    .line 8
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->f:Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;

    invoke-virtual {v6, v5, v3, v7}, Lcn/manstep/phonemirrorBox/BoxInterface/BoxConnection;->bulkTransferOut([BII)I

    move-result v5

    goto :goto_36

    .line 9
    :cond_2e
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->b:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v8, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->d:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v6, v8, v5, v3, v7}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v5

    :goto_36
    if-ltz v5, :cond_3f

    if-le v5, v3, :cond_3b

    goto :goto_3f

    :cond_3b
    add-int/2addr v4, v5

    sub-int v3, p2, v4

    goto :goto_14

    :cond_3f
    :goto_3f
    const-string p1, "UsbManager"

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write usb iSend = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "UsbManager"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write usb ret = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    :catchall_6c
    move-exception p1

    goto :goto_7b

    :cond_6e
    :goto_6e
    if-ne v4, p2, :cond_72

    const/4 p1, 0x1

    goto :goto_73

    :cond_72
    const/4 p1, 0x0

    .line 12
    :goto_73
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/j;->a:Z

    if-ne v4, p2, :cond_78

    goto :goto_79

    :cond_78
    const/4 v1, 0x0

    .line 13
    :goto_79
    monitor-exit v0

    return v1

    .line 14
    :goto_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_18 .. :try_end_7c} :catchall_6c

    throw p1

    :cond_7d
    return v2
.end method
