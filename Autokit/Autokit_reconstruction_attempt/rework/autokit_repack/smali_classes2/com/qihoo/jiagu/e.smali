.class public final Lcom/qihoo/jiagu/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lorg/json/JSONObject;

.field private synthetic c:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;


# direct methods
.method public constructor <init>(Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;ZLorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 107
    iput-object p1, p0, Lcom/qihoo/jiagu/e;->c:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    iput-boolean p2, p0, Lcom/qihoo/jiagu/e;->a:Z

    iput-object p3, p0, Lcom/qihoo/jiagu/e;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/16 v9, 0x10

    const/4 v2, 0x0

    .line 111
    :try_start_4
    iget-object v0, p0, Lcom/qihoo/jiagu/e;->c:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    invoke-static {v0}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a(Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;)Landroid/content/Context;

    move-result-object v0

    .line 1024
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v3}, Lcom/qihoo/jiagu/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 1037
    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1038
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1040
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 1026
    if-eqz v0, :cond_185

    move v3, v1

    .line 114
    :goto_26
    iget-boolean v0, p0, Lcom/qihoo/jiagu/e;->a:Z

    if-nez v0, :cond_2d8

    .line 115
    iget-object v0, p0, Lcom/qihoo/jiagu/e;->c:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    .line 116
    invoke-static {v0}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a(Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "opentestCrashCollect"

    .line 115
    invoke-static {v0, v1}, Lcom/qihoo/jiagu/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    .line 119
    :goto_37
    if-nez v3, :cond_3b

    if-eqz v1, :cond_184

    .line 120
    :cond_3b
    new-instance v0, Lcom/qihoo/jiagu/d;

    invoke-direct {v0}, Lcom/qihoo/jiagu/d;-><init>()V

    iget-object v4, p0, Lcom/qihoo/jiagu/e;->b:Lorg/json/JSONObject;

    .line 2037
    if-eqz v4, :cond_184

    .line 2041
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2042
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_184

    .line 2047
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_184

    .line 2219
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2222
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2223
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 2224
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 2225
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 2227
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2055
    const/16 v5, 0x10

    new-array v5, v5, [B

    .line 2056
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 2057
    invoke-virtual {v6, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 3181
    const-string v6, "RC4"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 3182
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "RC4"

    invoke-direct {v7, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3183
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3185
    invoke-virtual {v6, v0}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v0

    .line 4168
    array-length v6, v0

    add-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x4

    .line 4169
    new-array v6, v6, [B

    .line 5011
    const/4 v7, 0x4

    new-array v7, v7, [B

    .line 5012
    const/4 v8, 0x0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 5013
    const/4 v8, 0x1

    int-to-byte v9, v2

    aput-byte v9, v7, v8

    .line 5014
    const/4 v8, 0x2

    int-to-byte v9, v2

    aput-byte v9, v7, v8

    .line 5015
    const/4 v8, 0x3

    int-to-byte v2, v2

    aput-byte v2, v7, v8

    .line 4172
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v2, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4173
    const/4 v2, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x10

    invoke-static {v5, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4174
    const/4 v2, 0x0

    const/16 v5, 0x14

    array-length v7, v0

    invoke-static {v0, v2, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2064
    const/4 v0, 0x0

    invoke-static {v6, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 2067
    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5191
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo/jiagu/c;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 5192
    if-nez v0, :cond_18b

    .line 5193
    const/4 v0, 0x0

    .line 2072
    :goto_d4
    if-eqz v3, :cond_17c

    .line 2074
    new-instance v3, Lcom/qihoo/jiagu/c;

    invoke-direct {v3}, Lcom/qihoo/jiagu/c;-><init>()V

    .line 6029
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/qihoo/jiagu/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 6030
    const-string v6, "User-Agent"

    const-string v7, "Android"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 6031
    const-string v6, "Accept"

    const-string v7, "*/*"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 6032
    const-string v6, "cpv"

    const-string v7, "3"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 6035
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 6036
    invoke-static {}, Lcom/qihoo/jiagu/b;->b()I

    move-result v7

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 6037
    invoke-static {}, Lcom/qihoo/jiagu/b;->c()I

    move-result v7

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 6040
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 6043
    new-instance v6, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 6044
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "c"

    invoke-direct {v8, v9, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6045
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "x"

    invoke-direct {v8, v9, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6048
    invoke-static {}, Lcom/qihoo/bugreport/CrashReport;->a()Landroid/content/Context;

    move-result-object v8

    const-string v9, "jg_qihoo_test_file"

    .line 6047
    invoke-static {v8, v9}, Lcom/qihoo/jiagu/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 6051
    if-eqz v8, :cond_14b

    .line 6052
    const-string v9, "CRASH_REPORT"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "crash_data:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/qihoo/jiagu/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14b} :catch_1c6

    .line 6056
    :cond_14b
    :try_start_14b
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_153
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14b .. :try_end_153} :catch_2d5
    .catch Ljava/lang/Throwable; {:try_start_14b .. :try_end_153} :catch_1c6

    .line 6062
    :goto_153
    :try_start_153
    invoke-interface {v7, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 6063
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 6068
    if-eqz v8, :cond_17c

    .line 6069
    const-string v3, "CRASH_REPORT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response_code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6070
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6069
    invoke-static {v3, v2}, Lcom/qihoo/jiagu/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_17c} :catch_2d2
    .catch Ljava/lang/Throwable; {:try_start_153 .. :try_end_17c} :catch_1c6

    .line 2080
    :cond_17c
    :goto_17c
    if-eqz v1, :cond_184

    .line 6089
    if-eqz v4, :cond_184

    if-eqz v5, :cond_184

    if-nez v0, :cond_1c8

    .line 126
    :cond_184
    :goto_184
    return-void

    :cond_185
    move v3, v2

    .line 1029
    goto/16 :goto_26

    :cond_188
    move v3, v2

    .line 1033
    goto/16 :goto_26

    .line 5197
    :cond_18b
    :try_start_18b
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 5198
    const/16 v6, 0x10

    new-array v6, v6, [B

    .line 5199
    const/16 v7, 0x30

    new-array v7, v7, [B

    .line 5202
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 5203
    invoke-virtual {v8, v6}, Ljava/util/Random;->nextBytes([B)V

    .line 5204
    invoke-static {v6}, Lcom/qihoo/jiagu/c;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 5207
    const/16 v8, 0x10

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-static {v0, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5210
    const/4 v8, 0x0

    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-static {v6, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5213
    const/4 v6, 0x0

    const/16 v8, 0x20

    const/16 v9, 0x10

    invoke-static {v0, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5215
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_1c4
    .catch Ljava/lang/Throwable; {:try_start_18b .. :try_end_1c4} :catch_1c6

    goto/16 :goto_d4

    .line 124
    :catch_1c6
    move-exception v0

    goto :goto_184

    .line 6093
    :cond_1c8
    :try_start_1c8
    sget-object v1, Lcom/qihoo/bugreport/javacrash/ReportField;->ct:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 6098
    invoke-static {}, Lcom/qihoo/bugreport/CrashReport;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 6099
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/crashCollect"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6100
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21d

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_21d

    .line 6101
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 6104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chmod 777 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qihoo/jiagu/d;->a(Ljava/lang/String;)V

    .line 6108
    :cond_21d
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 6109
    const-string v1, "cpv=3"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, "&c="

    .line 6110
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "&x="

    .line 6111
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6113
    const-class v5, Lcom/qihoo/jiagu/d;

    monitor-enter v5
    :try_end_23e
    .catch Ljava/lang/Throwable; {:try_start_1c8 .. :try_end_23e} :catch_2ac

    .line 6117
    :try_start_23e
    sget-object v0, Lcom/qihoo/bugreport/javacrash/ReportField;->ct:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v0}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6161
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6162
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 6164
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_258
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_258} :catch_2af
    .catchall {:try_start_23e .. :try_end_258} :catchall_2a9

    move-result-wide v0

    .line 6124
    :try_start_259
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_279
    .catchall {:try_start_259 .. :try_end_279} :catchall_2a9

    .line 6125
    const/4 v1, 0x0

    .line 6127
    :try_start_27a
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_27f
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_27f} :catch_2b3
    .catchall {:try_start_27a .. :try_end_27f} :catchall_2bd

    .line 6128
    :try_start_27f
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 6129
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_28d
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_28d} :catch_2d0
    .catchall {:try_start_27f .. :try_end_28d} :catchall_2cc

    .line 6136
    :try_start_28d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_290
    .catch Ljava/io/IOException; {:try_start_28d .. :try_end_290} :catch_2c6
    .catchall {:try_start_28d .. :try_end_290} :catchall_2a9

    .line 6144
    :goto_290
    :try_start_290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo/jiagu/d;->a(Ljava/lang/String;)V

    .line 6145
    monitor-exit v5

    goto/16 :goto_184

    :catchall_2a9
    move-exception v0

    monitor-exit v5
    :try_end_2ab
    .catchall {:try_start_290 .. :try_end_2ab} :catchall_2a9

    :try_start_2ab
    throw v0
    :try_end_2ac
    .catch Ljava/lang/Throwable; {:try_start_2ab .. :try_end_2ac} :catch_2ac

    :catch_2ac
    move-exception v0

    goto/16 :goto_184

    .line 6120
    :catch_2af
    move-exception v0

    :try_start_2b0
    monitor-exit v5
    :try_end_2b1
    .catchall {:try_start_2b0 .. :try_end_2b1} :catchall_2a9

    goto/16 :goto_184

    .line 6134
    :catch_2b3
    move-exception v0

    move-object v0, v1

    :goto_2b5
    if-eqz v0, :cond_2ba

    .line 6136
    :try_start_2b7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2ba
    .catch Ljava/io/IOException; {:try_start_2b7 .. :try_end_2ba} :catch_2c8
    .catchall {:try_start_2b7 .. :try_end_2ba} :catchall_2a9

    .line 6139
    :cond_2ba
    :goto_2ba
    :try_start_2ba
    monitor-exit v5
    :try_end_2bb
    .catchall {:try_start_2ba .. :try_end_2bb} :catchall_2a9

    goto/16 :goto_184

    .line 6134
    :catchall_2bd
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_2c0
    if-eqz v3, :cond_2c5

    .line 6136
    :try_start_2c2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c5
    .catch Ljava/io/IOException; {:try_start_2c2 .. :try_end_2c5} :catch_2ca
    .catchall {:try_start_2c2 .. :try_end_2c5} :catchall_2a9

    .line 6139
    :cond_2c5
    :goto_2c5
    :try_start_2c5
    throw v2
    :try_end_2c6
    .catchall {:try_start_2c5 .. :try_end_2c6} :catchall_2a9

    :catch_2c6
    move-exception v0

    goto :goto_290

    :catch_2c8
    move-exception v0

    goto :goto_2ba

    :catch_2ca
    move-exception v0

    goto :goto_2c5

    .line 6134
    :catchall_2cc
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_2c0

    :catch_2d0
    move-exception v1

    goto :goto_2b5

    :catch_2d2
    move-exception v2

    goto/16 :goto_17c

    :catch_2d5
    move-exception v2

    goto/16 :goto_153

    :cond_2d8
    move v1, v2

    goto/16 :goto_37
.end method
