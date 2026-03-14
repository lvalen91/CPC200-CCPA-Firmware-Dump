.class public final Lokhttp3/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/CertificatePinner;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "Builder"
.end annotation

.field private final pins:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lokhttp3/CertificatePinner$Pin;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lokhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;
    return-void
.end method

.method public varargs add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;
  .registers 8
    if-eqz p1, :L2
  .line 1
    array-length v0, p2
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
    aget-object v2, p2, v1
  .line 2
    iget-object v3, p0, Lokhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;
    new-instance v4, Lokhttp3/CertificatePinner$Pin;
    invoke-direct { v4, p1, v2 }, Lokhttp3/CertificatePinner$Pin;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-interface { v3, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-object p0
  :L2
  .line 3
    new-instance p1, Ljava/lang/NullPointerException;
    const-string p2, "pattern == null"
    invoke-direct { p1, p2 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw p1
  :L4
    goto :L3
.end method

.method public build()Lokhttp3/CertificatePinner;
  .registers 4
  .line 1
    new-instance v0, Lokhttp3/CertificatePinner;
    new-instance v1, Ljava/util/LinkedHashSet;
    iget-object v2, p0, Lokhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;
    invoke-direct { v1, v2 }, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V
    const/4 v2, 0
    invoke-direct { v0, v1, v2 }, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V
    return-object v0
.end method
