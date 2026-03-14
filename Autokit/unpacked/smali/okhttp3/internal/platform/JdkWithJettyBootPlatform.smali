.class Lokhttp3/internal/platform/JdkWithJettyBootPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
  }
.end annotation

.field private final clientProviderClass:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final removeMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/reflect/Method;",
      "Ljava/lang/reflect/Method;",
      "Ljava/lang/reflect/Method;",
      "Ljava/lang/Class<",
      "*>;",
      "Ljava/lang/Class<",
      "*>;)V"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-direct { p0 }, Lokhttp3/internal/platform/Platform;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;
  .line 3
    iput-object p2, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;
  .line 4
    iput-object p3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;
  .line 5
    iput-object p4, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;
  .line 6
    iput-object p5, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/ClassNotFoundException; { :L2 .. :L3 } :L4
  .catch Ljava/lang/NoSuchMethodException; { :L2 .. :L3 } :L4
  .registers 10
  :L0
    const-string v0, "org.eclipse.jetty.alpn.ALPN"
  :L1
    const-string v1, "org.eclipse.jetty.alpn.ALPN"
  :L2
  .line 1
    invoke-static { v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v1
  .line 2
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "$Provider"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v2
  .line 3
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "$ClientProvider"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v8
  .line 4
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "$ServerProvider"
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v9
    const-string v0, "put"
    const/4 v3, 2
    new-array v3, v3, [Ljava/lang/Class;
  .line 5
    const-class v4, Ljavax/net/ssl/SSLSocket;
    const/4 v5, 0
    aput-object v4, v3, v5
    const/4 v4, 1
    aput-object v2, v3, v4
    invoke-virtual { v1, v0, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    const-string v2, "get"
    new-array v3, v4, [Ljava/lang/Class;
  .line 6
    const-class v6, Ljavax/net/ssl/SSLSocket;
    aput-object v6, v3, v5
    invoke-virtual { v1, v2, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v6
    const-string v2, "remove"
    new-array v3, v4, [Ljava/lang/Class;
  .line 7
    const-class v4, Ljavax/net/ssl/SSLSocket;
    aput-object v4, v3, v5
    invoke-virtual { v1, v2, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v7
  .line 8
    new-instance v1, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;
    move-object v4, v1
    move-object v5, v0
    invoke-direct/range { v4 .. v9 }, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
  :L3
    return-object v1
  :L4
    const/4 v0, 0
    return-object v0
.end method

.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 6
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;
    const/4 v1, 0
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    aput-object p1, v2, v3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-void
  :L2
    move-exception p1
    goto :L4
  :L3
    move-exception p1
  :L4
    const-string v0, "unable to remove alpn"
  .line 2
    invoke-static { v0, p1 }, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    move-result-object p1
    throw p1
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljavax/net/ssl/SSLSocket;",
      "Ljava/lang/String;",
      "Ljava/util/List<",
      "Lokhttp3/Protocol;",
      ">;)V"
    }
  .end annotation
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .registers 9
  .line 1
    invoke-static { p3 }, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
    move-result-object p2
  :L0
  .line 2
    const-class p3, Lokhttp3/internal/platform/Platform;
    invoke-virtual { p3 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object p3
    const/4 v0, 2
    new-array v1, v0, [Ljava/lang/Class;
    iget-object v2, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;
    const/4 v3, 0
    aput-object v2, v1, v3
    iget-object v2, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;
    const/4 v4, 1
    aput-object v2, v1, v4
    new-instance v2, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
    invoke-direct { v2, p2 }, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;-><init>(Ljava/util/List;)V
    invoke-static { p3, v1, v2 }, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    move-result-object p2
  .line 3
    iget-object p3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;
    const/4 v1, 0
    new-array v0, v0, [Ljava/lang/Object;
    aput-object p1, v0, v3
    aput-object p2, v0, v4
    invoke-virtual { p3, v1, v0 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-void
  :L2
    move-exception p1
    goto :L4
  :L3
    move-exception p1
  :L4
    const-string p2, "unable to set alpn"
  .line 4
    invoke-static { p2, p1 }, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    move-result-object p1
    throw p1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
  .annotation runtime Ljavax/annotation/Nullable;
  .end annotation
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L3 } :L5
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L3 } :L4
  .registers 5
  :L0
  .line 1
    iget-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object p1, v1, v2
    const/4 p1, 0
  .line 2
    invoke-virtual { v0, p1, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-static { v0 }, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    move-result-object v0
    check-cast v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
  .line 3
    iget-boolean v1, v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z
    if-nez v1, :L1
    iget-object v1, v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
    if-nez v1, :L1
  .line 4
    invoke-static { }, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;
    move-result-object v0
    const/4 v1, 4
    const-string v2, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"
    invoke-virtual { v0, v1, v2, p1 }, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    return-object p1
  :L1
  .line 5
    iget-boolean v1, v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z
    if-eqz v1, :L2
    goto :L3
  :L2
    iget-object p1, v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
  :L3
    return-object p1
  :L4
    move-exception p1
    goto :L6
  :L5
    move-exception p1
  :L6
    const-string v0, "unable to get selected protocol"
  .line 6
    invoke-static { v0, p1 }, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    move-result-object p1
    throw p1
.end method
