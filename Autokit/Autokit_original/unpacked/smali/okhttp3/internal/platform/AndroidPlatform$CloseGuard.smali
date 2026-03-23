.class final Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "CloseGuard"
.end annotation

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final openMethod:Ljava/lang/reflect/Method;

.field private final warnIfOpenMethod:Ljava/lang/reflect/Method;

.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;
  .line 3
    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;
  .line 4
    iput-object p3, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;
    return-void
.end method

.method static get()Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 7
    const/4 v0, 0
  :L0
    const-string v1, "dalvik.system.CloseGuard"
  .line 1
    invoke-static { v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v1
    const-string v2, "get"
    const/4 v3, 0
    new-array v4, v3, [Ljava/lang/Class;
  .line 2
    invoke-virtual { v1, v2, v4 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v2
    const-string v4, "open"
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Class;
  .line 3
    const-class v6, Ljava/lang/String;
    aput-object v6, v5, v3
    invoke-virtual { v1, v4, v5 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v4
    const-string v5, "warnIfOpen"
    new-array v3, v3, [Ljava/lang/Class;
  .line 4
    invoke-virtual { v1, v5, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  :L1
    move-object v1, v0
    move-object v0, v2
    goto :L3
  :L2
    move-object v1, v0
    move-object v4, v1
  :L3
  .line 5
    new-instance v2, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
    invoke-direct { v2, v0, v4, v1 }, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    return-object v2
.end method

.method createAndOpen(Ljava/lang/String;)Ljava/lang/Object;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 7
  .line 1
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;
    const/4 v1, 0
    if-eqz v0, :L2
    const/4 v2, 0
  :L0
    new-array v3, v2, [Ljava/lang/Object;
  .line 2
    invoke-virtual { v0, v1, v3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  .line 3
    iget-object v3, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;
    const/4 v4, 1
    new-array v4, v4, [Ljava/lang/Object;
    aput-object p1, v4, v2
    invoke-virtual { v3, v0, v4 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-object v0
  :L2
    return-object v1
.end method

.method warnIfOpen(Ljava/lang/Object;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 5
    const/4 v0, 0
    if-eqz p1, :L2
  :L0
  .line 1
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;
    new-array v2, v0, [Ljava/lang/Object;
    invoke-virtual { v1, p1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method
