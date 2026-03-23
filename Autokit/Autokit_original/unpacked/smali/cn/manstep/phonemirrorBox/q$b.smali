.class Lcn/manstep/phonemirrorBox/q$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/q;->p(Ljava/lang/String;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/q;

.method constructor <init>(Lcn/manstep/phonemirrorBox/q;Ljava/lang/String;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/q$b;->c:Lcn/manstep/phonemirrorBox/q;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/q$b;->b:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L25
  .catchall { :L0 .. :L1 } :L16
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L15
  .catchall { :L2 .. :L3 } :L14
  .catch Ljava/lang/Exception; { :L3 .. :L8 } :L13
  .catchall { :L3 .. :L8 } :L12
  .catch Ljava/lang/Exception; { :L8 .. :L9 } :L10
  .catch Ljava/lang/Exception; { :L18 .. :L21 } :L19
  .catch Ljava/lang/Exception; { :L27 .. :L30 } :L28
  .registers 12
    const-string v0, "--"
    const-string v1, "\r\n"
    const-string v2, "utf-8"
    const-string v3, "*******"
    const/4 v4, 0
  :L0
    const-string v5, "http://112.74.112.110/autoplaybox/upload_log.php"
  .line 1
    new-instance v6, Ljava/net/URL;
    invoke-direct { v6, v5 }, Ljava/net/URL;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v6 }, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v5
    check-cast v5, Ljava/net/HttpURLConnection;
  :L1
    const/16 v6, 10000
  :L2
  .line 3
    invoke-virtual { v5, v6 }, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
  .line 4
    invoke-virtual { v5, v6 }, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    const/4 v6, 1
  .line 5
    invoke-virtual { v5, v6 }, Ljava/net/HttpURLConnection;->setDoInput(Z)V
  .line 6
    invoke-virtual { v5, v6 }, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    const/4 v6, 0
  .line 7
    invoke-virtual { v5, v6 }, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
    const-string v7, "POST"
  .line 8
    invoke-virtual { v5, v7 }, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    const-string v7, "Charset"
  .line 9
    invoke-virtual { v5, v7, v2 }, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    const-string v2, "connection"
    const-string v7, "keep-alive"
  .line 10
    invoke-virtual { v5, v2, v7 }, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    const-string v2, "Content-Type"
  .line 11
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "multipart/form-data;boundary="
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v5, v2, v7 }, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
  .line 12
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v7
    invoke-virtual { v7 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v7
    const/16 v8, 12
    invoke-virtual { v7, v6, v8 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v2, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v7, "_CrashLog.log"
    invoke-virtual { v2, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 13
    new-instance v7, Ljava/io/DataOutputStream;
    invoke-virtual { v5 }, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v8
    invoke-direct { v7, v8 }, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
  :L3
  .line 14
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/q$b;->c:Lcn/manstep/phonemirrorBox/q;
    invoke-static { v8, v7, v0, v3, v1 }, Lcn/manstep/phonemirrorBox/q;->c(Lcn/manstep/phonemirrorBox/q;Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
  .line 15
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct { v8 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v8, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-virtual { v7, v8 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 16
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct { v8 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "Content-Disposition: form-data; name=\"log_file\";filename=\""
    invoke-virtual { v8, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "\""
    invoke-virtual { v8, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v7, v2 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 17
    invoke-virtual { v7, v1 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 18
    new-instance v2, Ljava/io/FileInputStream;
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/q$b;->b:Ljava/lang/String;
    invoke-direct { v2, v8 }, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    const/16 v8, 1024
    new-array v8, v8, [B
  :L4
  .line 19
    invoke-virtual { v2, v8 }, Ljava/io/FileInputStream;->read([B)I
    move-result v9
    const/4 v10, -1
    if-eq v9, v10, :L5
  .line 20
    invoke-virtual { v7, v8, v6, v9 }, Ljava/io/DataOutputStream;->write([BII)V
    goto :L4
  :L5
  .line 21
    invoke-virtual { v7, v1 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 22
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v7, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 23
    invoke-virtual { v2 }, Ljava/io/FileInputStream;->close()V
  .line 24
    invoke-virtual { v7 }, Ljava/io/DataOutputStream;->flush()V
  .line 25
    invoke-virtual { v5 }, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    move-result-object v4
  .line 26
    new-instance v0, Ljava/lang/StringBuffer;
    invoke-direct { v0 }, Ljava/lang/StringBuffer;-><init>()V
  :L6
  .line 27
    invoke-virtual { v4 }, Ljava/io/InputStream;->read()I
    move-result v1
    if-eq v1, v10, :L7
    int-to-char v1, v1
  .line 28
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    goto :L6
  :L7
  .line 29
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/q$b;->c:Lcn/manstep/phonemirrorBox/q;
    invoke-virtual { v0 }, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/q;->d(Lcn/manstep/phonemirrorBox/q;Ljava/lang/String;)V
    const-string v1, "CrashHandler"
  .line 30
    invoke-virtual { v0 }, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L8
  .line 31
    invoke-virtual { v7 }, Ljava/io/DataOutputStream;->close()V
    if-eqz v4, :L11
  .line 32
    invoke-virtual { v4 }, Ljava/io/InputStream;->close()V
  :L9
    goto :L11
  :L10
    move-exception v0
  .line 33
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
  :L11
    if-eqz v5, :L34
    goto :L33
  :L12
    move-exception v0
    move-object v1, v4
    move-object v4, v7
    goto :L17
  :L13
    move-object v0, v4
    move-object v4, v7
    goto :L26
  :L14
    move-exception v0
    move-object v1, v4
    goto :L17
  :L15
    move-object v0, v4
    goto :L26
  :L16
    move-exception v0
    move-object v1, v4
    move-object v5, v1
  :L17
    if-eqz v4, :L20
  :L18
  .line 34
    invoke-virtual { v4 }, Ljava/io/DataOutputStream;->close()V
    goto :L20
  :L19
    move-exception v1
    goto :L22
  :L20
    if-eqz v1, :L23
  .line 35
    invoke-virtual { v1 }, Ljava/io/InputStream;->close()V
  :L21
    goto :L23
  :L22
  .line 36
    invoke-static { v1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
  :L23
    if-eqz v5, :L24
  .line 37
    invoke-virtual { v5 }, Ljava/net/HttpURLConnection;->disconnect()V
  :L24
  .line 38
    throw v0
  :L25
    move-object v0, v4
    move-object v5, v0
  :L26
    if-eqz v4, :L29
  :L27
  .line 39
    invoke-virtual { v4 }, Ljava/io/DataOutputStream;->close()V
    goto :L29
  :L28
    move-exception v0
    goto :L31
  :L29
    if-eqz v0, :L32
  .line 40
    invoke-virtual { v0 }, Ljava/io/InputStream;->close()V
  :L30
    goto :L32
  :L31
  .line 41
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
  :L32
    if-eqz v5, :L34
  :L33
  .line 42
    invoke-virtual { v5 }, Ljava/net/HttpURLConnection;->disconnect()V
  :L34
    return-void
.end method
