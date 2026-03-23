.class public Lcom/yalantis/ucrop/task/BitmapLoadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
  }
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroid/os/AsyncTask<",
    "Ljava/lang/Void;",
    "Ljava/lang/Void;",
    "Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;",
    ">;"
  }
.end annotation

.field private final static TAG:Ljava/lang/String; = "BitmapWorkerTask"

.field private final mBitmapLoadCallback:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

.field private final mContext:Landroid/content/Context;

.field private mInputUri:Landroid/net/Uri;

.field private mOutputUri:Landroid/net/Uri;

.field private final mRequiredHeight:I

.field private final mRequiredWidth:I

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcom/yalantis/ucrop/callback/BitmapLoadCallback;)V
  .registers 7
  .line 1
    invoke-direct { p0 }, Landroid/os/AsyncTask;-><init>()V
  .line 2
    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;
  .line 3
    iput-object p2, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
  .line 4
    iput-object p3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;
  .line 5
    iput p4, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mRequiredWidth:I
  .line 6
    iput p5, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mRequiredHeight:I
  .line 7
    iput-object p6, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mBitmapLoadCallback:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;
    return-void
.end method

.method private copyFile(Landroid/net/Uri;Landroid/net/Uri;)V
  .catchall { :L0 .. :L1 } :L10
  .catchall { :L1 .. :L2 } :L9
  .catchall { :L3 .. :L5 } :L7
  .catchall { :L8 .. :L9 } :L7
  .registers 6
    if-eqz p2, :L12
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;
    invoke-virtual { v1 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v1
    invoke-virtual { v1, p1 }, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    move-result-object p1
  :L1
  .line 2
    new-instance v1, Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;
    invoke-virtual { p2 }, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object p2
    invoke-direct { v2, p2 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-direct { v1, v2 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  :L2
    if-eqz p1, :L8
    const/16 p2, 1024
  :L3
    new-array p2, p2, [B
  :L4
  .line 3
    invoke-virtual { p1, p2 }, Ljava/io/InputStream;->read([B)I
    move-result v0
    if-lez v0, :L6
    const/4 v2, 0
  .line 4
    invoke-virtual { v1, p2, v2, v0 }, Ljava/io/OutputStream;->write([BII)V
  :L5
    goto :L4
  :L6
  .line 5
    invoke-static { v1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
  .line 6
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
  .line 7
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;
    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    return-void
  :L7
    move-exception p2
    move-object v0, v1
    goto :L11
  :L8
  .line 8
    new-instance p2, Ljava/lang/NullPointerException;
    const-string v0, "InputStream for given input Uri is null"
    invoke-direct { p2, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p2
  :L9
    move-exception p2
    goto :L11
  :L10
    move-exception p2
    move-object p1, v0
  :L11
  .line 9
    invoke-static { v0 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
  .line 10
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
  .line 11
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;
    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    throw p2
  :L12
  .line 12
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "Output Uri is null - cannot copy image"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    goto :L14
  :L13
    throw p1
  :L14
    goto :L13
.end method

.method private downloadFile(Landroid/net/Uri;Landroid/net/Uri;)V
  .catchall { :L0 .. :L1 } :L8
  .catchall { :L1 .. :L2 } :L7
  .catchall { :L2 .. :L3 } :L6
  .catchall { :L5 .. :L6 } :L6
  .registers 8
    if-eqz p2, :L11
  .line 1
    new-instance v0, Lokhttp3/OkHttpClient;
    invoke-direct { v0 }, Lokhttp3/OkHttpClient;-><init>()V
    const/4 v1, 0
  :L0
  .line 2
    new-instance v2, Lokhttp3/Request$Builder;
    invoke-direct { v2 }, Lokhttp3/Request$Builder;-><init>()V
  .line 3
    invoke-virtual { p1 }, Landroid/net/Uri;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v2, p1 }, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    move-result-object p1
  .line 4
    invoke-virtual { p1 }, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    move-result-object p1
  .line 5
    invoke-virtual { v0, p1 }, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;
    move-result-object p1
    invoke-interface { p1 }, Lokhttp3/Call;->execute()Lokhttp3/Response;
    move-result-object p1
  :L1
  .line 6
    invoke-virtual { p1 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object v2
    invoke-virtual { v2 }, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;
    move-result-object v2
  :L2
  .line 7
    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;
    invoke-virtual { v3 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v3
    invoke-virtual { v3, p2 }, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    move-result-object p2
    if-eqz p2, :L5
  .line 8
    invoke-static { p2 }, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;
    move-result-object v1
  .line 9
    invoke-interface { v2, v1 }, Lokio/BufferedSource;->readAll(Lokio/Sink;)J
  :L3
  .line 10
    invoke-static { v2 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
  .line 11
    invoke-static { v1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
    if-eqz p1, :L4
  .line 12
    invoke-virtual { p1 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object p1
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
  :L4
  .line 13
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/Dispatcher;->cancelAll()V
  .line 14
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;
    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    return-void
  :L5
  .line 15
    new-instance p2, Ljava/lang/NullPointerException;
    const-string v3, "OutputStream for given output Uri is null"
    invoke-direct { p2, v3 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p2
  :L6
    move-exception p2
    move-object v4, v2
    move-object v2, p1
    move-object p1, v1
    move-object v1, v4
    goto :L9
  :L7
    move-exception p2
    move-object v2, p1
    move-object p1, v1
    goto :L9
  :L8
    move-exception p2
    move-object p1, v1
    move-object v2, p1
  :L9
  .line 16
    invoke-static { v1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
  .line 17
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
    if-eqz v2, :L10
  .line 18
    invoke-virtual { v2 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object p1
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
  :L10
  .line 19
    invoke-virtual { v0 }, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;
    move-result-object p1
    invoke-virtual { p1 }, Lokhttp3/Dispatcher;->cancelAll()V
  .line 20
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;
    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    throw p2
  :L11
  .line 21
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "Output Uri is null - cannot download image"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private processInputUri()V
  .catch Ljava/lang/NullPointerException; { :L1 .. :L2 } :L4
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L3
  .catch Ljava/lang/NullPointerException; { :L8 .. :L9 } :L11
  .catch Ljava/io/IOException; { :L8 .. :L9 } :L10
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    invoke-virtual { v0 }, Landroid/net/Uri;->getScheme()Ljava/lang/String;
    move-result-object v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Uri scheme: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const-string v1, "http"
  .line 3
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L8
    const-string v1, "https"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
    goto :L8
  :L0
    const-string v1, "content"
  .line 4
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L6
  .line 5
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;
    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    invoke-static { v0, v1 }, Lcom/yalantis/ucrop/util/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    move-result-object v0
  .line 6
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L1
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, v0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual { v1 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L1
  .line 7
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, v0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-static { v1 }, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    move-result-object v0
    iput-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    goto :L9
  :L1
  .line 8
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;
    invoke-direct { p0, v0, v1 }, Lcom/yalantis/ucrop/task/BitmapLoadTask;->copyFile(Landroid/net/Uri;Landroid/net/Uri;)V
  :L2
    goto :L9
  :L3
    move-exception v0
    goto :L5
  :L4
    move-exception v0
  :L5
  .line 9
    throw v0
  :L6
    const-string v1, "file"
  .line 10
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L7
    goto :L9
  :L7
  .line 11
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Invalid Uri scheme "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 12
    new-instance v1, Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Invalid Uri scheme"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v1
  :L8
  .line 13
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;
    invoke-direct { p0, v0, v1 }, Lcom/yalantis/ucrop/task/BitmapLoadTask;->downloadFile(Landroid/net/Uri;Landroid/net/Uri;)V
  :L9
    return-void
  :L10
    move-exception v0
    goto :L12
  :L11
    move-exception v0
  :L12
  .line 14
    throw v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
  .catch Ljava/lang/NullPointerException; { :L0 .. :L1 } :L18
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L17
  .catch Ljava/io/FileNotFoundException; { :L1 .. :L2 } :L16
  .catch Ljava/lang/OutOfMemoryError; { :L5 .. :L6 } :L7
  .registers 10
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    if-nez p1, :L0
  .line 3
    new-instance p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    new-instance v0, Ljava/lang/NullPointerException;
    const-string v1, "Input Uri cannot be null"
    invoke-direct { v0, v1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    invoke-direct { p1, v0 }, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V
    return-object p1
  :L0
  .line 4
    invoke-direct { p0 }, Lcom/yalantis/ucrop/task/BitmapLoadTask;->processInputUri()V
  :L1
  .line 5
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;
    invoke-virtual { p1 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object p1
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    const-string v1, "r"
    invoke-virtual { p1, v0, v1 }, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    move-result-object p1
  :L2
    const-string v0, "]"
    if-eqz p1, :L15
  .line 6
    invoke-virtual { p1 }, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    move-result-object v1
  .line 7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;
    invoke-direct { v2 }, Landroid/graphics/BitmapFactory$Options;-><init>()V
    const/4 v3, 1
  .line 8
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    const/4 v4, 0
  .line 9
    invoke-static { v1, v4, v2 }, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
  .line 10
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    const/4 v6, -1
    if-eq v5, v6, :L14
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    if-ne v5, v6, :L3
    goto/16 :L14
  :L3
  .line 11
    iget v5, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mRequiredWidth:I
    iget v6, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mRequiredHeight:I
    invoke-static { v2, v5, v6 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    move-result v5
    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    const/4 v5, 0
  .line 12
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    move-object v6, v4
  :L4
    if-nez v5, :L8
  :L5
  .line 13
    invoke-static { v1, v4, v2 }, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    move-result-object v6
  :L6
    const/4 v5, 1
    goto :L4
  :L7
  .line 14
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    mul-int/lit8 v7, v7, 2
    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    goto :L4
  :L8
    if-nez v6, :L9
  .line 15
    new-instance p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    new-instance v1, Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Bitmap could not be decoded from the Uri: ["
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    invoke-direct { p1, v1 }, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V
    return-object p1
  :L9
  .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L10
  .line 17
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V
  :L10
  .line 18
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    invoke-static { p1, v0 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    move-result p1
  .line 19
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->exifToDegrees(I)I
    move-result v0
  .line 20
    invoke-static { p1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->exifToTranslation(I)I
    move-result v1
  .line 21
    new-instance v2, Lcom/yalantis/ucrop/model/ExifInfo;
    invoke-direct { v2, p1, v0, v1 }, Lcom/yalantis/ucrop/model/ExifInfo;-><init>(III)V
  .line 22
    new-instance p1, Landroid/graphics/Matrix;
    invoke-direct { p1 }, Landroid/graphics/Matrix;-><init>()V
    if-eqz v0, :L11
    int-to-float v0, v0
  .line 23
    invoke-virtual { p1, v0 }, Landroid/graphics/Matrix;->preRotate(F)Z
  :L11
    if-eq v1, v3, :L12
    int-to-float v0, v1
    const/high16 v1, 16256
  .line 24
    invoke-virtual { p1, v0, v1 }, Landroid/graphics/Matrix;->postScale(FF)Z
  :L12
  .line 25
    invoke-virtual { p1 }, Landroid/graphics/Matrix;->isIdentity()Z
    move-result v0
    if-nez v0, :L13
  .line 26
    new-instance v0, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    invoke-static { v6, p1 }, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    move-result-object p1
    invoke-direct { v0, p1, v2 }, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ExifInfo;)V
    return-object v0
  :L13
  .line 27
    new-instance p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    invoke-direct { p1, v6, v2 }, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ExifInfo;)V
    return-object p1
  :L14
  .line 28
    new-instance p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    new-instance v1, Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Bounds for bitmap could not be retrieved from the Uri: ["
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    invoke-direct { p1, v1 }, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V
    return-object p1
  :L15
  .line 29
    new-instance p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    new-instance v1, Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "ParcelFileDescriptor was null for given Uri: ["
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    invoke-direct { p1, v1 }, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V
    return-object p1
  :L16
    move-exception p1
  .line 30
    new-instance v0, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    invoke-direct { v0, p1 }, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V
    return-object v0
  :L17
    move-exception p1
    goto :L19
  :L18
    move-exception p1
  :L19
  .line 31
    new-instance v0, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    invoke-direct { v0, p1 }, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
  .registers 2
  .line 1
    check-cast p1, [Ljava/lang/Void;
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/task/BitmapLoadTask;->doInBackground([Ljava/lang/Void;)Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    move-result-object p1
    return-object p1
.end method

.method protected onPostExecute(Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;)V
  .registers 6
  .line 2
    iget-object v0, p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;->mBitmapWorkerException:Ljava/lang/Exception;
    if-nez v0, :L2
  .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mBitmapLoadCallback:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;
    iget-object v1, p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;->mBitmapResult:Landroid/graphics/Bitmap;
    iget-object p1, p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;
    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;
    invoke-virtual { v2 }, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object v2
    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;
    if-nez v3, :L0
    const/4 v3, 0
    goto :L1
  :L0
    invoke-virtual { v3 }, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object v3
  :L1
    invoke-interface { v0, v1, p1, v2, v3 }, Lcom/yalantis/ucrop/callback/BitmapLoadCallback;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ExifInfo;Ljava/lang/String;Ljava/lang/String;)V
    goto :L3
  :L2
  .line 4
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mBitmapLoadCallback:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;
    invoke-interface { p1, v0 }, Lcom/yalantis/ucrop/callback/BitmapLoadCallback;->onFailure(Ljava/lang/Exception;)V
  :L3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
  .registers 2
  .line 1
    check-cast p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    invoke-virtual { p0, p1 }, Lcom/yalantis/ucrop/task/BitmapLoadTask;->onPostExecute(Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;)V
    return-void
.end method
