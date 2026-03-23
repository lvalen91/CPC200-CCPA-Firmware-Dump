.class Lokhttp3/CookieJar$1;
.super Ljava/lang/Object;
.implements Lokhttp3/CookieJar;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/CookieJar;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokhttp3/HttpUrl;",
      ")",
      "Ljava/util/List<",
      "Lokhttp3/Cookie;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object p1
    return-object p1
.end method

.method public saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lokhttp3/HttpUrl;",
      "Ljava/util/List<",
      "Lokhttp3/Cookie;",
      ">;)V"
    }
  .end annotation
  .registers 3
    return-void
.end method
