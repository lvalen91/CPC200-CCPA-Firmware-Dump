.class public final Lokhttp3/FormBody$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/FormBody;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "Builder"
.end annotation

.field private final charset:Ljava/nio/charset/Charset;

.field private final names:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private final values:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;)V
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;
  .line 4
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;
  .line 5
    iput-object p1, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
  .registers 11
    if-eqz p1, :L1
    if-eqz p2, :L0
  .line 1
    iget-object v0, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 1
    const/4 v6, 1
    iget-object v7, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;
    const-string v2, " \"':;<=>@[]^`{}|/\\?#&!$(),~"
    move-object v1, p1
    invoke-static/range { v1 .. v7 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 2
    iget-object p1, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;
    const/4 v2, 0
    const/4 v4, 1
    iget-object v6, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;
    const-string v1, " \"':;<=>@[]^`{}|/\\?#&!$(),~"
    move-object v0, p2
    invoke-static/range { v0 .. v6 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p2
    invoke-interface { p1, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-object p0
  :L0
  .line 3
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "value == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "name == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
  .registers 11
    if-eqz p1, :L1
    if-eqz p2, :L0
  .line 1
    iget-object v0, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;
    const/4 v3, 1
    const/4 v4, 0
    const/4 v5, 1
    const/4 v6, 1
    iget-object v7, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;
    const-string v2, " \"':;<=>@[]^`{}|/\\?#&!$(),~"
    move-object v1, p1
    invoke-static/range { v1 .. v7 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 2
    iget-object p1, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;
    const/4 v2, 1
    const/4 v3, 0
    const/4 v4, 1
    iget-object v6, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;
    const-string v1, " \"':;<=>@[]^`{}|/\\?#&!$(),~"
    move-object v0, p2
    invoke-static/range { v0 .. v6 }, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    move-result-object p2
    invoke-interface { p1, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-object p0
  :L0
  .line 3
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "value == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "name == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public build()Lokhttp3/FormBody;
  .registers 4
  .line 1
    new-instance v0, Lokhttp3/FormBody;
    iget-object v1, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;
    iget-object v2, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;
    invoke-direct { v0, v1, v2 }, Lokhttp3/FormBody;-><init>(Ljava/util/List;Ljava/util/List;)V
    return-object v0
.end method
