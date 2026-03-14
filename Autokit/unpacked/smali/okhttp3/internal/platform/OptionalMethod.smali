.class Lokhttp3/internal/platform/OptionalMethod;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field private final methodName:Ljava/lang/String;

.field private final methodParams:[Ljava/lang/Class;

.field private final returnType:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.method varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;",
      "Ljava/lang/String;",
      "[",
      "Ljava/lang/Class;",
      ")V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lokhttp3/internal/platform/OptionalMethod;->returnType:Ljava/lang/Class;
  .line 3
    iput-object p2, p0, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;
  .line 4
    iput-object p3, p0, Lokhttp3/internal/platform/OptionalMethod;->methodParams:[Ljava/lang/Class;
    return-void
.end method

.method private getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;
    const/4 v1, 0
    if-eqz v0, :L1
  .line 2
    iget-object v2, p0, Lokhttp3/internal/platform/OptionalMethod;->methodParams:[Ljava/lang/Class;
    invoke-static { p1, v0, v2 }, Lokhttp3/internal/platform/OptionalMethod;->getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    iget-object v0, p0, Lokhttp3/internal/platform/OptionalMethod;->returnType:Ljava/lang/Class;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { p1 }, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
    move-object v1, p1
  :L1
    return-object v1
.end method

.method private static getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;",
      "Ljava/lang/String;",
      "[",
      "Ljava/lang/Class;",
      ")",
      "Ljava/lang/reflect/Method;"
    }
  .end annotation
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/NoSuchMethodException; { :L1 .. :L2 } :L3
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    invoke-virtual { p0, p1, p2 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p0
  :L1
  .line 2
    invoke-virtual { p0 }, Ljava/lang/reflect/Method;->getModifiers()I
    move-result p1
  :L2
    and-int/lit8 p1, p1, 1
    if-nez p1, :L3
    goto :L4
  :L3
    move-object v0, p0
  :L4
    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;[",
      "Ljava/lang/Object;",
      ")",
      "Ljava/lang/Object;"
    }
  .end annotation
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-direct { p0, v0 }, Lokhttp3/internal/platform/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    if-eqz v0, :L3
  :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
  :L1
    return-object p1
  :L2
    move-exception p1
  .line 3
    new-instance p2, Ljava/lang/AssertionError;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unexpectedly could not call: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p2, v0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
  .line 4
    invoke-virtual { p2, p1 }, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 5
    throw p2
  :L3
  .line 6
    new-instance p2, Ljava/lang/AssertionError;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Method "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/internal/platform/OptionalMethod;->methodName:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " not supported for object "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    throw p2
.end method

.method public varargs invokeOptional(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;[",
      "Ljava/lang/Object;",
      ")",
      "Ljava/lang/Object;"
    }
  .end annotation
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-direct { p0, v0 }, Lokhttp3/internal/platform/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
  :L1
    return-object p1
  :L2
    return-object v1
.end method

.method public varargs invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;[",
      "Ljava/lang/Object;",
      ")",
      "Ljava/lang/Object;"
    }
  .end annotation
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    invoke-virtual { p0, p1, p2 }, Lokhttp3/internal/platform/OptionalMethod;->invokeOptional(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
  :L1
    return-object p1
  :L2
    move-exception p1
  .line 2
    invoke-virtual { p1 }, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
    move-result-object p1
  .line 3
    instance-of p2, p1, Ljava/lang/RuntimeException;
    if-eqz p2, :L3
  .line 4
    check-cast p1, Ljava/lang/RuntimeException;
    throw p1
  :L3
  .line 5
    new-instance p2, Ljava/lang/AssertionError;
    const-string v0, "Unexpected exception"
    invoke-direct { p2, v0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
  .line 6
    invoke-virtual { p2, p1 }, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 7
    throw p2
.end method

.method public varargs invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;[",
      "Ljava/lang/Object;",
      ")",
      "Ljava/lang/Object;"
    }
  .end annotation
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    invoke-virtual { p0, p1, p2 }, Lokhttp3/internal/platform/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
  :L1
    return-object p1
  :L2
    move-exception p1
  .line 2
    invoke-virtual { p1 }, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
    move-result-object p1
  .line 3
    instance-of p2, p1, Ljava/lang/RuntimeException;
    if-eqz p2, :L3
  .line 4
    check-cast p1, Ljava/lang/RuntimeException;
    throw p1
  :L3
  .line 5
    new-instance p2, Ljava/lang/AssertionError;
    const-string v0, "Unexpected exception"
    invoke-direct { p2, v0 }, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
  .line 6
    invoke-virtual { p2, p1 }, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 7
    throw p2
.end method

.method public isSupported(Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)Z"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    invoke-direct { p0, p1 }, Lokhttp3/internal/platform/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method
