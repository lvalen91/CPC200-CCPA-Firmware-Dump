.class public Lcn/manstep/phonemirrorBox/t0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile e:Lcn/manstep/phonemirrorBox/t0/a;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/io/FileOutputStream;

.field private c:Ljava/io/FileInputStream;

.field private d:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->d:J

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/t0/a;
    .registers 3

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/t0/a;->e:Lcn/manstep/phonemirrorBox/t0/a;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/t0/a;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/t0/a;->e:Lcn/manstep/phonemirrorBox/t0/a;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/t0/a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/t0/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/manstep/phonemirrorBox/t0/a;->e:Lcn/manstep/phonemirrorBox/t0/a;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 6
    :cond_17
    :goto_17
    sget-object p0, Lcn/manstep/phonemirrorBox/t0/a;->e:Lcn/manstep/phonemirrorBox/t0/a;

    return-object p0
.end method


# virtual methods
.method public a([BII)I
    .registers 13

    const-string v0, ", "

    const-string v1, "UsbDataTester"

    .line 1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;

    const/4 v3, -0x1

    if-eqz v2, :cond_97

    const/4 v2, 0x4

    .line 2
    :try_start_a
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 3
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_7e

    const-string v6, "Failed to read 4 bytes."

    if-ne v5, v2, :cond_75

    .line 4
    :try_start_1d
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v4, v4

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 7
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v5, v8, v7, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-ne v5, v2, :cond_6c

    .line 9
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 11
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;

    invoke-virtual {v4, p1, p2, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    if-eq p1, v2, :cond_6b

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getData: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    return p1

    .line 13
    :cond_6c
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/t0/a;->e()V

    .line 14
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_75
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/t0/a;->e()V

    .line 16
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_7e} :catch_7e

    :catch_7e
    move-exception p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getData: \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    return v3
.end method

.method public c(I)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;

    if-nez v0, :cond_4c

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/n;->m(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 3
    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "box_%x.data"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_30} :catch_31

    goto :goto_4c

    :catch_31
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getData: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbDataTester"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public d([BIII)V
    .registers 14

    if-gtz p4, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_3c

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/n;->m(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 3
    :try_start_16
    iput-wide v1, p0, Lcn/manstep/phonemirrorBox/t0/a;->d:J

    .line 4
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "box_%x.data"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v8, v3

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v5, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p4

    .line 5
    invoke-virtual {p4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 6
    :cond_3c
    :goto_3c
    iget-object p4, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;

    if-eqz p4, :cond_9f

    .line 7
    :try_start_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 8
    iget-wide v6, p0, Lcn/manstep/phonemirrorBox/t0/a;->d:J

    cmp-long p4, v6, v1

    if-eqz p4, :cond_50

    .line 9
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->d:J

    sub-long v0, v4, v0

    long-to-int p4, v0

    goto :goto_51

    :cond_50
    const/4 p4, 0x0

    .line 10
    :goto_51
    iput-wide v4, p0, Lcn/manstep/phonemirrorBox/t0/a;->d:J

    const/4 v0, 0x4

    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 12
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    iget-object p4, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p4, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 15
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 16
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 18
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4

    invoke-virtual {v1, p4, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 19
    iget-object p4, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_83} :catch_84

    goto :goto_9f

    :catch_84
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "putData: \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsbDataTester"

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :goto_d
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;

    .line 5
    :cond_f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1d

    .line 6
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    :goto_1b
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;

    :cond_1d
    return-void
.end method
