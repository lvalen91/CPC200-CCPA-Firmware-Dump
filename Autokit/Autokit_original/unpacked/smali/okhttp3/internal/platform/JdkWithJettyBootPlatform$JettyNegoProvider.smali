.class Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
.super Ljava/lang/Object;
.implements Ljava/lang/reflect/InvocationHandler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lokhttp3/internal/platform/JdkWithJettyBootPlatform;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "JettyNegoProvider"
.end annotation

.field private final protocols:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field selected:Ljava/lang/String;

.field unsupported:Z

.method constructor <init>(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
  .registers 9
  .line 1
    invoke-virtual { p2 }, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    move-result-object p1
  .line 2
    invoke-virtual { p2 }, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    move-result-object v0
    if-nez p3, :L0
  .line 3
    sget-object p3, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
  :L0
    const-string v1, "supports"
  .line 4
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    if-ne v1, v0, :L1
  .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    return-object p1
  :L1
    const-string v1, "unsupported"
  .line 6
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    const/4 v2, 0
    const/4 v3, 1
    if-eqz v1, :L2
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
    if-ne v1, v0, :L2
  .line 7
    iput-boolean v3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z
    return-object v2
  :L2
    const-string v1, "protocols"
  .line 8
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L3
    array-length v1, p3
    if-nez v1, :L3
  .line 9
    iget-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;
    return-object p1
  :L3
    const-string v1, "selectProtocol"
  .line 10
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    const/4 v4, 0
    if-nez v1, :L4
    const-string v1, "select"
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L8
  :L4
    const-class v1, Ljava/lang/String;
    if-ne v1, v0, :L8
    array-length v0, p3
    if-ne v0, v3, :L8
    aget-object v0, p3, v4
    instance-of v0, v0, Ljava/util/List;
    if-eqz v0, :L8
  .line 11
    aget-object p1, p3, v4
    check-cast p1, Ljava/util/List;
  .line 12
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result p2
    const/4 p3, 0
  :L5
    if-ge p3, p2, :L7
  .line 13
    iget-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;
    invoke-interface { p1, p3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
  .line 14
    invoke-interface { p1, p3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/String;
    iput-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
    return-object p1
  :L6
    add-int/lit8 p3, p3, 1
    goto :L5
  :L7
  .line 15
    iget-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;
    invoke-interface { p1, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/String;
    iput-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
    return-object p1
  :L8
    const-string v0, "protocolSelected"
  .line 16
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L9
    const-string v0, "selected"
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L10
  :L9
    array-length p1, p3
    if-ne p1, v3, :L10
  .line 17
    aget-object p1, p3, v4
    check-cast p1, Ljava/lang/String;
    iput-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
    return-object v2
  :L10
  .line 18
    invoke-virtual { p2, p0, p3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method
