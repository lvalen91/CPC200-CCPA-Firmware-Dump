.class public Lcn/manstep/phonemirrorBox/n0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/n0/a$d;,
        Lcn/manstep/phonemirrorBox/n0/a$c;,
        Lcn/manstep/phonemirrorBox/n0/a$g;,
        Lcn/manstep/phonemirrorBox/n0/a$f;,
        Lcn/manstep/phonemirrorBox/n0/a$h;,
        Lcn/manstep/phonemirrorBox/n0/a$e;
    }
.end annotation


# static fields
.field public static m:Z


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcn/manstep/phonemirrorBox/n0/a$f;

.field volatile c:Z

.field private d:Ljava/util/Timer;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/n0/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/manstep/phonemirrorBox/n0/a$h;

.field private g:Ljava/lang/Thread;

.field private h:Ljava/lang/Thread;

.field private i:Ld/b/a/b;

.field public j:Lcn/manstep/phonemirrorBox/n0/a$d;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->a:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/n0/a$f;

    invoke-direct {v0, v1}, Lcn/manstep/phonemirrorBox/n0/a$f;-><init>(Lcn/manstep/phonemirrorBox/n0/a$a;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->b:Lcn/manstep/phonemirrorBox/n0/a$f;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->c:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->e:Ljava/util/List;

    .line 6
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a;->j:Lcn/manstep/phonemirrorBox/n0/a$d;

    .line 7
    new-instance v0, Lcn/manstep/phonemirrorBox/n0/a$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/n0/a$a;-><init>(Lcn/manstep/phonemirrorBox/n0/a;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->k:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lcn/manstep/phonemirrorBox/n0/a$b;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/n0/a$b;-><init>(Lcn/manstep/phonemirrorBox/n0/a;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->l:Ljava/lang/Runnable;

    .line 9
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/n0/a;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->a:Ljava/lang/ref/WeakReference;

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->b:Lcn/manstep/phonemirrorBox/n0/a$f;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/n0/a$f;->a(Lcn/manstep/phonemirrorBox/n0/a$f;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/n0/a;->o()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 13
    new-instance v0, Lcn/manstep/phonemirrorBox/n0/a$d;

    invoke-direct {v0, p0, p1}, Lcn/manstep/phonemirrorBox/n0/a$d;-><init>(Lcn/manstep/phonemirrorBox/n0/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->j:Lcn/manstep/phonemirrorBox/n0/a$d;

    :cond_4d
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/n0/a;)Ld/b/a/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/n0/a;->i:Ld/b/a/b;

    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/n0/a;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a;->p()V

    return-void
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/n0/a;Ld/b/a/b;)Ld/b/a/b;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a;->i:Ld/b/a/b;

    return-object p1
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/n0/a;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a;->r()V

    return-void
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/n0/a;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/n0/a;->e:Ljava/util/List;

    return-object p0
.end method

.method private i(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-string v0, "phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "android_id"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v5, p1

    const/16 p1, 0x20

    shl-long/2addr v5, p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    or-long/2addr v0, v5

    invoke-direct {v2, v3, v4, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hwrd_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-object p1
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.os.SystemProperties"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "get"

    .line 3
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p1, v2, v5

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    return-object p1
.end method

.method public static o()Z
    .registers 3

    const-string v0, "ro.board.platform"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/n0/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const-string v1, "ac8317,"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "Need Use Float Window!"

    .line 4
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private p()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->c:Z

    if-nez v0, :cond_9a

    const-string v0, "iPhone startService"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_9a

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/h;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/h;-><init>()V

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/h;->c(Landroid/content/Context;)V

    const-string v1, "wifi"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 6
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MAC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcn/manstep/phonemirrorBox/n0/a;->m(ILjava/lang/String;)V

    .line 9
    new-instance v0, Lcn/manstep/phonemirrorBox/n0/a$h;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a;->j:Lcn/manstep/phonemirrorBox/n0/a$d;

    invoke-direct {v0, v1}, Lcn/manstep/phonemirrorBox/n0/a$h;-><init>(Lcn/manstep/phonemirrorBox/n0/a$d;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->f:Lcn/manstep/phonemirrorBox/n0/a$h;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->f:Lcn/manstep/phonemirrorBox/n0/a$h;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/n0/a$h;->u()V

    .line 12
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a;->k:Ljava/lang/Runnable;

    const-string v2, "dataRecver"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->g:Ljava/lang/Thread;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a;->l:Ljava/lang/Runnable;

    const-string v2, "audio_dataRecver"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->h:Ljava/lang/Thread;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->c:Z

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iPhone Service started this"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_9a
    return-void
.end method

.method private r()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->c:Z

    if-eqz v0, :cond_84

    const-string v0, "iPhone stopService()"

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_23

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.manstep.hidetitle"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "WPARAM"

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    :cond_23
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/n0/a;->n()V

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->g:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 9
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_33
    .catchall {:try_start_2b .. :try_end_2e} :catchall_31

    .line 10
    :goto_2e
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a;->g:Ljava/lang/Thread;

    goto :goto_42

    :catchall_31
    move-exception v0

    goto :goto_3f

    :catch_33
    move-exception v0

    .line 11
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 12
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_31

    goto :goto_2e

    .line 13
    :goto_3f
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a;->g:Ljava/lang/Thread;

    .line 14
    throw v0

    .line 15
    :cond_42
    :goto_42
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_5d

    .line 16
    :try_start_46
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_49} :catch_4e
    .catchall {:try_start_46 .. :try_end_49} :catchall_4c

    .line 17
    :goto_49
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a;->h:Ljava/lang/Thread;

    goto :goto_5d

    :catchall_4c
    move-exception v0

    goto :goto_5a

    :catch_4e
    move-exception v0

    .line 18
    :try_start_4f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 19
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_4c

    goto :goto_49

    .line 20
    :goto_5a
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a;->h:Ljava/lang/Thread;

    .line 21
    throw v0

    .line 22
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->f:Lcn/manstep/phonemirrorBox/n0/a$h;

    if-eqz v0, :cond_81

    .line 23
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/n0/a$h;->g(Lcn/manstep/phonemirrorBox/n0/a$h;)Lcn/manstep/phonemirrorBox/n0/a$g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/n0/a$g;->b()V

    .line 24
    :try_start_68
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->f:Lcn/manstep/phonemirrorBox/n0/a$h;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_6d} :catch_72
    .catchall {:try_start_68 .. :try_end_6d} :catchall_70

    .line 25
    :goto_6d
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a;->f:Lcn/manstep/phonemirrorBox/n0/a$h;

    goto :goto_81

    :catchall_70
    move-exception v0

    goto :goto_7e

    :catch_72
    move-exception v0

    .line 26
    :try_start_73
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 27
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_70

    goto :goto_6d

    .line 28
    :goto_7e
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a;->f:Lcn/manstep/phonemirrorBox/n0/a$h;

    .line 29
    throw v0

    :cond_81
    :goto_81
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->c:Z

    :cond_84
    return-void
.end method


# virtual methods
.method public f(Lcn/manstep/phonemirrorBox/n0/a$e;)Lcn/manstep/phonemirrorBox/n0/a;
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1, p0}, Lcn/manstep/phonemirrorBox/n0/a$e;->g(Lcn/manstep/phonemirrorBox/n0/a;)V

    :cond_10
    return-object p0
.end method

.method public g(Landroid/content/Context;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->a:Ljava/lang/ref/WeakReference;

    .line 3
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public h()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/n0/a;->q()V

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/n0/a;->r()V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->j:Lcn/manstep/phonemirrorBox/n0/a$d;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/n0/a$d;->a()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->j:Lcn/manstep/phonemirrorBox/n0/a$d;

    :cond_10
    return-void
.end method

.method k()V
    .registers 1

    return-void
.end method

.method l()V
    .registers 1

    return-void
.end method

.method m(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method n()V
    .registers 1

    return-void
.end method

.method public q()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->d:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a;->d:Ljava/util/Timer;

    :cond_a
    return-void
.end method
