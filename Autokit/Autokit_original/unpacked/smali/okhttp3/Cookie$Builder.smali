.class public final Lokhttp3/Cookie$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/Cookie;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "Builder"
.end annotation

.field domain:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field expiresAt:J

.field hostOnly:Z

.field httpOnly:Z

.field name:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.field path:Ljava/lang/String;

.field persistent:Z

.field secure:Z

.field value:Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
.end field

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-wide v0, 253402300799999L
  .line 2
    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J
    const-string v0, "/"
  .line 3
    iput-object v0, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;
    return-void
.end method

.method private domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;
  .registers 5
    if-eqz p1, :L1
  .line 2
    invoke-static { p1 }, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iput-object v0, p0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;
  .line 4
    iput-boolean p2, p0, Lokhttp3/Cookie$Builder;->hostOnly:Z
    return-object p0
  :L0
  .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "unexpected domain: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
  :L1
  .line 6
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "domain == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public build()Lokhttp3/Cookie;
  .registers 2
  .line 1
    new-instance v0, Lokhttp3/Cookie;
    invoke-direct { v0, p0 }, Lokhttp3/Cookie;-><init>(Lokhttp3/Cookie$Builder;)V
    return-object v0
.end method

.method public domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;
    move-result-object p1
    return-object p1
.end method

.method public expiresAt(J)Lokhttp3/Cookie$Builder;
  .registers 6
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-gtz v2, :L0
    const-wide/high16 p1, -32768
  :L0
    const-wide v0, 253402300799999L
    cmp-long v2, p1, v0
    if-lez v2, :L1
    move-wide p1, v0
  :L1
  .line 1
    iput-wide p1, p0, Lokhttp3/Cookie$Builder;->expiresAt:J
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Lokhttp3/Cookie$Builder;->persistent:Z
    return-object p0
.end method

.method public hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-direct { p0, p1, v0 }, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;
    move-result-object p1
    return-object p1
.end method

.method public httpOnly()Lokhttp3/Cookie$Builder;
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->httpOnly:Z
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
  .registers 3
    if-eqz p1, :L1
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;
    return-object p0
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "name is not trimmed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "name == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
  .registers 3
    const-string v0, "/"
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;
    return-object p0
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "path must start with '/'"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public secure()Lokhttp3/Cookie$Builder;
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->secure:Z
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
  .registers 3
    if-eqz p1, :L1
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;
    return-object p0
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "value is not trimmed"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 4
    new-instance p1, Ljava/lang/NullPointerException;
    const-string v0, "value == null"
    invoke-direct { p1, v0 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
