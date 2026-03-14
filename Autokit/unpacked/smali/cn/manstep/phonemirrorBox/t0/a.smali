.class public Lcn/manstep/phonemirrorBox/t0/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static volatile e:Lcn/manstep/phonemirrorBox/t0/a;

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

.method private constructor <init>(Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v0
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->d:J
  .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->a:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/t0/a;
  .catchall { :L0 .. :L3 } :L2
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/t0/a;->e:Lcn/manstep/phonemirrorBox/t0/a;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/t0/a;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/t0/a;->e:Lcn/manstep/phonemirrorBox/t0/a;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/t0/a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/t0/a;-><init>(Landroid/content/Context;)V
    sput-object v1, Lcn/manstep/phonemirrorBox/t0/a;->e:Lcn/manstep/phonemirrorBox/t0/a;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception p0
    monitor-exit v0
  :L3
    throw p0
  :L4
  .line 6
    sget-object p0, Lcn/manstep/phonemirrorBox/t0/a;->e:Lcn/manstep/phonemirrorBox/t0/a;
    return-object p0
.end method

.method public a([BII)I
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L6
  .catch Ljava/lang/Exception; { :L2 .. :L6 } :L6
  .registers 13
    const-string v0, ", "
    const-string v1, "UsbDataTester"
  .line 1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;
    const/4 v3, -1
    if-eqz v2, :L7
    const/4 v2, 4
  :L0
  .line 2
    invoke-static { v2 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object v4
  .line 3
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;
    invoke-virtual { v4 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object v6
    const/4 v7, 0
    invoke-virtual { v5, v6, v7, v2 }, Ljava/io/FileInputStream;->read([BII)I
    move-result v5
  :L1
    const-string v6, "Failed to read 4 bytes."
    if-ne v5, v2, :L5
  :L2
  .line 4
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { v4, v5 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
  .line 5
    invoke-virtual { v4 }, Ljava/nio/ByteBuffer;->getInt()I
    move-result v4
    int-to-long v4, v4
  .line 6
    invoke-static { v4, v5 }, Ljava/lang/Thread;->sleep(J)V
  .line 7
    invoke-static { v2 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object v4
  .line 8
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;
    invoke-virtual { v4 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object v8
    invoke-virtual { v5, v8, v7, v2 }, Ljava/io/FileInputStream;->read([BII)I
    move-result v5
    if-ne v5, v2, :L4
  .line 9
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { v4, v2 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
  .line 10
    invoke-virtual { v4 }, Ljava/nio/ByteBuffer;->getInt()I
    move-result v2
  .line 11
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;
    invoke-virtual { v4, p1, p2, v2 }, Ljava/io/FileInputStream;->read([BII)I
    move-result p1
    if-eq p1, v2, :L3
  .line 12
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "getData: "
    invoke-virtual { p2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { v1, p2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L3
    return p1
  :L4
  .line 13
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/t0/a;->e()V
  .line 14
    new-instance p1, Ljava/lang/NullPointerException;
    invoke-direct { p1, v6 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L5
  .line 15
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/t0/a;->e()V
  .line 16
    new-instance p1, Ljava/lang/NullPointerException;
    invoke-direct { p1, v6 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L6
    move-exception p1
  .line 17
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "getData: \n"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L7
    return v3
.end method

.method public c(I)V
  .catch Ljava/io/FileNotFoundException; { :L0 .. :L1 } :L2
  .registers 9
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;
    if-nez v0, :L3
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->m(Landroid/content/Context;)Ljava/io/File;
    move-result-object v0
  :L0
  .line 3
    new-instance v1, Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/File;
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v3
    const-string v4, "box_%x.data"
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Object;
    const/4 v6, 0
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    aput-object p1, v5, v6
    invoke-static { v3, v4, v5 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    invoke-direct { v2, v0, p1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-direct { v1, v2 }, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "getData: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "UsbDataTester"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L3
    return-void
.end method

.method public d([BIII)V
  .catch Ljava/io/FileNotFoundException; { :L1 .. :L2 } :L3
  .catch Ljava/lang/Exception; { :L5 .. :L8 } :L9
  .registers 14
    if-gtz p4, :L0
    return-void
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;
    const-wide/16 v1, 0
    const/4 v3, 0
    if-nez v0, :L4
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->m(Landroid/content/Context;)Ljava/io/File;
    move-result-object v0
  :L1
  .line 3
    iput-wide v1, p0, Lcn/manstep/phonemirrorBox/t0/a;->d:J
  .line 4
    new-instance v4, Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/File;
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v6
    const-string v7, "box_%x.data"
    const/4 v8, 1
    new-array v8, v8, [Ljava/lang/Object;
    invoke-static { p4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p4
    aput-object p4, v8, v3
    invoke-static { v6, v7, v8 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p4
    invoke-direct { v5, v0, p4 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-direct { v4, v5 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    iput-object v4, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;
  :L2
    goto :L4
  :L3
    move-exception p4
  .line 5
    invoke-virtual { p4 }, Ljava/io/FileNotFoundException;->printStackTrace()V
  :L4
  .line 6
    iget-object p4, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;
    if-eqz p4, :L10
  :L5
  .line 7
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v4
  .line 8
    iget-wide v6, p0, Lcn/manstep/phonemirrorBox/t0/a;->d:J
    cmp-long p4, v6, v1
    if-eqz p4, :L6
  .line 9
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->d:J
    sub-long v0, v4, v0
    long-to-int p4, v0
    goto :L7
  :L6
    const/4 p4, 0
  :L7
  .line 10
    iput-wide v4, p0, Lcn/manstep/phonemirrorBox/t0/a;->d:J
    const/4 v0, 4
  .line 11
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object v1
  .line 12
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { v1, v2 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
  .line 13
    invoke-virtual { v1, p4 }, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
  .line 14
    iget-object p4, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;
    invoke-virtual { v1 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object v1
    invoke-virtual { p4, v1, v3, v0 }, Ljava/io/FileOutputStream;->write([BII)V
  .line 15
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object p4
  .line 16
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { p4, v1 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
  .line 17
    invoke-virtual { p4, p3 }, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
  .line 18
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;
    invoke-virtual { p4 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object p4
    invoke-virtual { v1, p4, v3, v0 }, Ljava/io/FileOutputStream;->write([BII)V
  .line 19
    iget-object p4, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;
    invoke-virtual { p4, p1, p2, p3 }, Ljava/io/FileOutputStream;->write([BII)V
  :L8
    goto :L10
  :L9
    move-exception p1
  .line 20
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "putData: \n"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string p2, "UsbDataTester"
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L10
    return-void
.end method

.method public e()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L7
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;
    const/4 v1, 0
    if-eqz v0, :L4
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/io/FileOutputStream;->close()V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 3
    invoke-virtual { v0 }, Ljava/io/IOException;->printStackTrace()V
  :L3
  .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/t0/a;->b:Ljava/io/FileOutputStream;
  :L4
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;
    if-eqz v0, :L9
  :L5
  .line 6
    invoke-virtual { v0 }, Ljava/io/FileInputStream;->close()V
  :L6
    goto :L8
  :L7
    move-exception v0
  .line 7
    invoke-virtual { v0 }, Ljava/io/IOException;->printStackTrace()V
  :L8
  .line 8
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/t0/a;->c:Ljava/io/FileInputStream;
  :L9
    return-void
.end method
