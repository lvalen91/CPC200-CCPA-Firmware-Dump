.class public final Lokhttp3/CipherSuite;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static INSTANCES:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Lokhttp3/CipherSuite;",
      ">;"
    }
  .end annotation
.end field

.field final static ORDER_BY_NAME:Ljava/util/Comparator;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Comparator<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field public final static TLS_AES_128_CCM_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_AES_256_CCM_8_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_WITH_AES_256_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_DSS_WITH_DES_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_AES_256_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DHE_RSA_WITH_DES_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_EXPORT_WITH_RC4_40_MD5:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_WITH_AES_256_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_WITH_DES_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_DH_anon_WITH_RC4_128_MD5:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_ECDSA_WITH_NULL_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_ECDSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_RSA_WITH_NULL_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDHE_RSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_ECDSA_WITH_NULL_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_ECDSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_RSA_WITH_NULL_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_RSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_anon_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_anon_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_anon_WITH_NULL_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_ECDH_anon_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Lokhttp3/CipherSuite;

.field public final static TLS_FALLBACK_SCSV:Lokhttp3/CipherSuite;

.field public final static TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5:Lokhttp3/CipherSuite;

.field public final static TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_KRB5_EXPORT_WITH_RC4_40_MD5:Lokhttp3/CipherSuite;

.field public final static TLS_KRB5_EXPORT_WITH_RC4_40_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_KRB5_WITH_3DES_EDE_CBC_MD5:Lokhttp3/CipherSuite;

.field public final static TLS_KRB5_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_KRB5_WITH_DES_CBC_MD5:Lokhttp3/CipherSuite;

.field public final static TLS_KRB5_WITH_DES_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_KRB5_WITH_RC4_128_MD5:Lokhttp3/CipherSuite;

.field public final static TLS_KRB5_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_PSK_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_PSK_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_PSK_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_PSK_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_EXPORT_WITH_DES40_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_EXPORT_WITH_RC4_40_MD5:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_AES_256_CBC_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_CAMELLIA_128_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_CAMELLIA_256_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_DES_CBC_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_NULL_MD5:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_NULL_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_NULL_SHA256:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_RC4_128_MD5:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;

.field public final static TLS_RSA_WITH_SEED_CBC_SHA:Lokhttp3/CipherSuite;

.field final javaName:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Lokhttp3/CipherSuite$1;
    invoke-direct { v0 }, Lokhttp3/CipherSuite$1;-><init>()V
    sput-object v0, Lokhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;
  .line 2
    new-instance v0, Ljava/util/LinkedHashMap;
    invoke-direct { v0 }, Ljava/util/LinkedHashMap;-><init>()V
    sput-object v0, Lokhttp3/CipherSuite;->INSTANCES:Ljava/util/Map;
    const-string v0, "SSL_RSA_WITH_NULL_MD5"
    const/4 v1, 1
  .line 3
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_NULL_MD5:Lokhttp3/CipherSuite;
    const-string v0, "SSL_RSA_WITH_NULL_SHA"
    const/4 v1, 2
  .line 4
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_NULL_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"
    const/4 v1, 3
  .line 5
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_EXPORT_WITH_RC4_40_MD5:Lokhttp3/CipherSuite;
    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"
    const/4 v1, 4
  .line 6
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_RC4_128_MD5:Lokhttp3/CipherSuite;
    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"
    const/4 v1, 5
  .line 7
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"
    const/16 v1, 8
  .line 8
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_EXPORT_WITH_DES40_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"
    const/16 v1, 9
  .line 9
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_DES_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"
    const/16 v1, 10
  .line 10
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"
    const/16 v1, 17
  .line 11
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"
    const/16 v1, 18
  .line 12
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_DES_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"
    const/16 v1, 19
  .line 13
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"
    const/16 v1, 20
  .line 14
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"
    const/16 v1, 21
  .line 15
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_DES_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"
    const/16 v1, 22
  .line 16
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"
    const/16 v1, 23
  .line 17
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_EXPORT_WITH_RC4_40_MD5:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"
    const/16 v1, 24
  .line 18
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_WITH_RC4_128_MD5:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"
    const/16 v1, 25
  .line 19
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"
    const/16 v1, 26
  .line 20
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_WITH_DES_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"
    const/16 v1, 27
  .line 21
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"
    const/16 v1, 30
  .line 22
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_KRB5_WITH_DES_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"
    const/16 v1, 31
  .line 23
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_KRB5_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"
    const/16 v1, 32
  .line 24
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_KRB5_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"
    const/16 v1, 34
  .line 25
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_KRB5_WITH_DES_CBC_MD5:Lokhttp3/CipherSuite;
    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"
    const/16 v1, 35
  .line 26
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_KRB5_WITH_3DES_EDE_CBC_MD5:Lokhttp3/CipherSuite;
    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"
    const/16 v1, 36
  .line 27
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_KRB5_WITH_RC4_128_MD5:Lokhttp3/CipherSuite;
    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"
    const/16 v1, 38
  .line 28
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"
    const/16 v1, 40
  .line 29
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_KRB5_EXPORT_WITH_RC4_40_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"
    const/16 v1, 41
  .line 30
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5:Lokhttp3/CipherSuite;
    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"
    const/16 v1, 43
  .line 31
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_KRB5_EXPORT_WITH_RC4_40_MD5:Lokhttp3/CipherSuite;
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"
    const/16 v1, 47
  .line 32
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"
    const/16 v1, 50
  .line 33
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"
    const/16 v1, 51
  .line 34
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"
    const/16 v1, 52
  .line 35
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"
    const/16 v1, 53
  .line 36
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"
    const/16 v1, 56
  .line 37
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"
    const/16 v1, 57
  .line 38
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"
    const/16 v1, 58
  .line 39
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_RSA_WITH_NULL_SHA256"
    const/16 v1, 59
  .line 40
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_NULL_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"
    const/16 v1, 60
  .line 41
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"
    const/16 v1, 61
  .line 42
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"
    const/16 v1, 64
  .line 43
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"
    const/16 v1, 65
  .line 44
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_CAMELLIA_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"
    const/16 v1, 68
  .line 45
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"
    const/16 v1, 69
  .line 46
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"
    const/16 v1, 103
  .line 47
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"
    const/16 v1, 106
  .line 48
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_256_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"
    const/16 v1, 107
  .line 49
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"
    const/16 v1, 108
  .line 50
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"
    const/16 v1, 109
  .line 51
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_256_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"
    const/16 v1, 132
  .line 52
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_CAMELLIA_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"
    const/16 v1, 135
  .line 53
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"
    const/16 v1, 136
  .line 54
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_PSK_WITH_RC4_128_SHA"
    const/16 v1, 138
  .line 55
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_PSK_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"
    const/16 v1, 139
  .line 56
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_PSK_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"
    const/16 v1, 140
  .line 57
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_PSK_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_PSK_WITH_AES_256_CBC_SHA"
    const/16 v1, 141
  .line 58
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_PSK_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_RSA_WITH_SEED_CBC_SHA"
    const/16 v1, 150
  .line 59
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_SEED_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"
    const/16 v1, 156
  .line 60
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"
    const/16 v1, 157
  .line 61
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"
    const/16 v1, 158
  .line 62
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"
    const/16 v1, 159
  .line 63
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"
    const/16 v1, 162
  .line 64
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"
    const/16 v1, 163
  .line 65
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"
    const/16 v1, 166
  .line 66
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"
    const/16 v1, 167
  .line 67
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DH_anon_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"
    const/16 v1, 255
  .line 68
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Lokhttp3/CipherSuite;
    const-string v0, "TLS_FALLBACK_SCSV"
    const/16 v1, 22016
  .line 69
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_FALLBACK_SCSV:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"
    const v1, 49153
  .line 70
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_NULL_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"
    const v1, 49154
  .line 71
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"
    const v1, 49155
  .line 72
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"
    const v1, 49156
  .line 73
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"
    const v1, 49157
  .line 74
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"
    const v1, 49158
  .line 75
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_NULL_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"
    const v1, 49159
  .line 76
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"
    const v1, 49160
  .line 77
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"
    const v1, 49161
  .line 78
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"
    const v1, 49162
  .line 79
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"
    const v1, 49163
  .line 80
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_NULL_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"
    const v1, 49164
  .line 81
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"
    const v1, 49165
  .line 82
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"
    const v1, 49166
  .line 83
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"
    const v1, 49167
  .line 84
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"
    const v1, 49168
  .line 85
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_NULL_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"
    const v1, 49169
  .line 86
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"
    const v1, 49170
  .line 87
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"
    const v1, 49171
  .line 88
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"
    const v1, 49172
  .line 89
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"
    const v1, 49173
  .line 90
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_anon_WITH_NULL_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"
    const v1, 49174
  .line 91
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_anon_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"
    const v1, 49175
  .line 92
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"
    const v1, 49176
  .line 93
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_anon_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"
    const v1, 49177
  .line 94
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_anon_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"
    const v1, 49187
  .line 95
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"
    const v1, 49188
  .line 96
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"
    const v1, 49189
  .line 97
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"
    const v1, 49190
  .line 98
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"
    const v1, 49191
  .line 99
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"
    const v1, 49192
  .line 100
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"
    const v1, 49193
  .line 101
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"
    const v1, 49194
  .line 102
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"
    const v1, 49195
  .line 103
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"
    const v1, 49196
  .line 104
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"
    const v1, 49197
  .line 105
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"
    const v1, 49198
  .line 106
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"
    const v1, 49199
  .line 107
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"
    const v1, 49200
  .line 108
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"
    const v1, 49201
  .line 109
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"
    const v1, 49202
  .line 110
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"
    const v1, 49205
  .line 111
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"
    const v1, 49206
  .line 112
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"
    const v1, 52392
  .line 113
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"
    const v1, 52393
  .line 114
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"
    const v1, 52394
  .line 115
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"
    const v1, 52396
  .line 116
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_AES_128_GCM_SHA256"
    const/16 v1, 4865
  .line 117
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_AES_256_GCM_SHA384"
    const/16 v1, 4866
  .line 118
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;
    const-string v0, "TLS_CHACHA20_POLY1305_SHA256"
    const/16 v1, 4867
  .line 119
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_AES_128_CCM_SHA256"
    const/16 v1, 4868
  .line 120
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_AES_128_CCM_SHA256:Lokhttp3/CipherSuite;
    const-string v0, "TLS_AES_256_CCM_8_SHA256"
    const/16 v1, 4869
  .line 121
    invoke-static { v0, v1 }, Lokhttp3/CipherSuite;->init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
    move-result-object v0
    sput-object v0, Lokhttp3/CipherSuite;->TLS_AES_256_CCM_8_SHA256:Lokhttp3/CipherSuite;
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    if-eqz p1, :L0
  .line 2
    iput-object p1, p0, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;
    return-void
  :L0
    const/4 p1, 0
  .line 3
    throw p1
.end method

.method public static declared-synchronized forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;
  .catchall { :L0 .. :L2 } :L3
  .registers 4
    const-class v0, Lokhttp3/CipherSuite;
    monitor-enter v0
  :L0
  .line 1
    sget-object v1, Lokhttp3/CipherSuite;->INSTANCES:Ljava/util/Map;
    invoke-interface { v1, p0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/CipherSuite;
    if-nez v1, :L2
  .line 2
    sget-object v1, Lokhttp3/CipherSuite;->INSTANCES:Ljava/util/Map;
    invoke-static { p0 }, Lokhttp3/CipherSuite;->secondaryName(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokhttp3/CipherSuite;
    if-nez v1, :L1
  .line 3
    new-instance v1, Lokhttp3/CipherSuite;
    invoke-direct { v1, p0 }, Lokhttp3/CipherSuite;-><init>(Ljava/lang/String;)V
  :L1
  .line 4
    sget-object v2, Lokhttp3/CipherSuite;->INSTANCES:Ljava/util/Map;
    invoke-interface { v2, p0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
  .line 5
    monitor-exit v0
    return-object v1
  :L3
    move-exception p0
    monitor-exit v0
    throw p0
.end method

.method static varargs forJavaNames([Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "([",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Lokhttp3/CipherSuite;",
      ">;"
    }
  .end annotation
  .registers 5
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    array-length v1, p0
    invoke-direct { v0, v1 }, Ljava/util/ArrayList;-><init>(I)V
  .line 2
    array-length v1, p0
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L1
    aget-object v3, p0, v2
  .line 3
    invoke-static { v3 }, Lokhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;
    move-result-object v3
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 4
    invoke-static { v0 }, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object p0
    return-object p0
.end method

.method private static init(Ljava/lang/String;I)Lokhttp3/CipherSuite;
  .registers 3
  .line 1
    new-instance p1, Lokhttp3/CipherSuite;
    invoke-direct { p1, p0 }, Lokhttp3/CipherSuite;-><init>(Ljava/lang/String;)V
  .line 2
    sget-object v0, Lokhttp3/CipherSuite;->INSTANCES:Ljava/util/Map;
    invoke-interface { v0, p0, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-object p1
.end method

.method private static secondaryName(Ljava/lang/String;)Ljava/lang/String;
  .registers 5
    const-string v0, "TLS_"
  .line 1
    invoke-virtual { p0, v0 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    const/4 v2, 4
    const-string v3, "SSL_"
    if-eqz v1, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v2 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    invoke-virtual { p0, v3 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L1
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v2 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  :L1
    return-object p0
.end method

.method public javaName()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;
    return-object v0
.end method
