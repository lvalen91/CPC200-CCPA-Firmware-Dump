.class Lcn/manstep/phonemirrorBox/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/q;->p(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/q;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/q;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/q$b;->c:Lcn/manstep/phonemirrorBox/q;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/q$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const-string v0, "--"

    const-string v1, "\r\n"

    const-string v2, "utf-8"

    const-string v3, "*******"

    const/4 v4, 0x0

    :try_start_9
    const-string v5, "http://112.74.112.110/autoplaybox/upload_log.php"

    .line 1
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_144
    .catchall {:try_start_9 .. :try_end_16} :catchall_12a

    const/16 v6, 0x2710

    .line 3
    :try_start_18
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 4
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v6, 0x1

    .line 5
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 6
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v7, "POST"

    .line 8
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v7, "Charset"

    .line 9
    invoke-virtual {v5, v7, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "connection"

    const-string v7, "keep-alive"

    .line 10
    invoke-virtual {v5, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multipart/form-data;boundary="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v7

    invoke-virtual {v7}, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_CrashLog.log"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_78} :catch_128
    .catchall {:try_start_18 .. :try_end_78} :catchall_125

    .line 14
    :try_start_78
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/q$b;->c:Lcn/manstep/phonemirrorBox/q;

    invoke-static {v8, v7, v0, v3, v1}, Lcn/manstep/phonemirrorBox/q;->c(Lcn/manstep/phonemirrorBox/q;Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content-Disposition: form-data; name=\"log_file\";filename=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 18
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcn/manstep/phonemirrorBox/q$b;->b:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 19
    :goto_bc
    invoke-virtual {v2, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_c7

    .line 20
    invoke-virtual {v7, v8, v6, v9}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_bc

    .line 21
    :cond_c7
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 24
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 25
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    :goto_f1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v10, :cond_fc

    int-to-char v1, v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f1

    .line 29
    :cond_fc
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/q$b;->c:Lcn/manstep/phonemirrorBox/q;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/q;->d(Lcn/manstep/phonemirrorBox/q;Ljava/lang/String;)V

    const-string v1, "CrashHandler"

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_10e} :catch_122
    .catchall {:try_start_78 .. :try_end_10e} :catchall_11e

    .line 31
    :try_start_10e
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    if-eqz v4, :cond_11b

    .line 32
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_116} :catch_117

    goto :goto_11b

    :catch_117
    move-exception v0

    .line 33
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_11b
    :goto_11b
    if-eqz v5, :cond_15c

    goto :goto_159

    :catchall_11e
    move-exception v0

    move-object v1, v4

    move-object v4, v7

    goto :goto_12d

    :catch_122
    move-object v0, v4

    move-object v4, v7

    goto :goto_146

    :catchall_125
    move-exception v0

    move-object v1, v4

    goto :goto_12d

    :catch_128
    move-object v0, v4

    goto :goto_146

    :catchall_12a
    move-exception v0

    move-object v1, v4

    move-object v5, v1

    :goto_12d
    if-eqz v4, :cond_135

    .line 34
    :try_start_12f
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_135

    :catch_133
    move-exception v1

    goto :goto_13b

    :cond_135
    :goto_135
    if-eqz v1, :cond_13e

    .line 35
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_13a} :catch_133

    goto :goto_13e

    .line 36
    :goto_13b
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_13e
    :goto_13e
    if-eqz v5, :cond_143

    .line 37
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 38
    :cond_143
    throw v0

    :catch_144
    move-object v0, v4

    move-object v5, v0

    :goto_146
    if-eqz v4, :cond_14e

    .line 39
    :try_start_148
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_14e

    :catch_14c
    move-exception v0

    goto :goto_154

    :cond_14e
    :goto_14e
    if-eqz v0, :cond_157

    .line 40
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_153} :catch_14c

    goto :goto_157

    .line 41
    :goto_154
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_157
    :goto_157
    if-eqz v5, :cond_15c

    .line 42
    :goto_159
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15c
    return-void
.end method
