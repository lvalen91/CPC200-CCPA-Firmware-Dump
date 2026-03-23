.class public interface abstract Lokhttp3/Authenticator;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static NONE:Lokhttp3/Authenticator;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lokhttp3/Authenticator$1;
    invoke-direct { v0 }, Lokhttp3/Authenticator$1;-><init>()V
    sput-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;
    return-void
.end method

.method public abstract authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .parameter # Lokhttp3/Route;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
  .end parameter
.end method
