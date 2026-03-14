.class public abstract Landroidx/versionedparcelable/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field protected final a:Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/reflect/Method;",
      ">;"
    }
  .end annotation
.end field

.field protected final b:Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/reflect/Method;",
      ">;"
    }
  .end annotation
.end field

.field protected final c:Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/Class;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Lc/d/a;Lc/d/a;Lc/d/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/reflect/Method;",
      ">;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/reflect/Method;",
      ">;",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Ljava/lang/Class;",
      ">;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/versionedparcelable/a;->a:Lc/d/a;
  .line 3
    iput-object p2, p0, Landroidx/versionedparcelable/a;->b:Lc/d/a;
  .line 4
    iput-object p3, p0, Landroidx/versionedparcelable/a;->c:Lc/d/a;
    return-void
.end method

.method private N(Landroidx/versionedparcelable/c;)V
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L2
  .registers 5
  :L0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/versionedparcelable/a;->c(Ljava/lang/Class;)Ljava/lang/Class;
    move-result-object p1
  :L1
  .line 2
    invoke-virtual { p1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroidx/versionedparcelable/a;->I(Ljava/lang/String;)V
    return-void
  :L2
    move-exception v0
  .line 3
    new-instance v1, Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " does not have a Parcelizer"
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
.end method

.method private c(Ljava/lang/Class;)Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "+",
      "Landroidx/versionedparcelable/c;",
      ">;)",
      "Ljava/lang/Class;"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/a;->c:Lc/d/a;
    invoke-virtual { p1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Class;
    if-nez v0, :L0
  .line 2
    invoke-virtual { p1 }, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Package;->getName()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 2
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object v0, v1, v2
    const/4 v0, 1
  .line 3
    invoke-virtual { p1 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v3
    aput-object v3, v1, v0
    const-string v0, "%s.%sParcelizer"
    invoke-static { v0, v1 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  .line 4
    invoke-virtual { p1 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v1
    invoke-static { v0, v2, v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    move-result-object v0
  .line 5
    iget-object v1, p0, Landroidx/versionedparcelable/a;->c:Lc/d/a;
    invoke-virtual { p1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/reflect/Method;
  .registers 6
  .line 1
    const-class v0, Landroidx/versionedparcelable/a;
    iget-object v1, p0, Landroidx/versionedparcelable/a;->a:Lc/d/a;
    invoke-virtual { v1, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/reflect/Method;
    if-nez v1, :L0
  .line 2
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
  .line 3
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v1
    const/4 v2, 1
    invoke-static { p1, v2, v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    move-result-object v1
    new-array v2, v2, [Ljava/lang/Class;
    const/4 v3, 0
    aput-object v0, v2, v3
    const-string v0, "read"
  .line 4
    invoke-virtual { v1, v0, v2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
  .line 5
    iget-object v0, p0, Landroidx/versionedparcelable/a;->a:Lc/d/a;
    invoke-virtual { v0, p1, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-object v1
.end method

.method private e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/a;->b:Lc/d/a;
    invoke-virtual { p1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/reflect/Method;
    if-nez v0, :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/versionedparcelable/a;->c(Ljava/lang/Class;)Ljava/lang/Class;
    move-result-object v0
  .line 3
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    const/4 v1, 2
    new-array v1, v1, [Ljava/lang/Class;
    const/4 v2, 0
    aput-object p1, v1, v2
    const/4 v2, 1
  .line 4
    const-class v3, Landroidx/versionedparcelable/a;
    aput-object v3, v1, v2
    const-string v2, "write"
    invoke-virtual { v0, v2, v1 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  .line 5
    iget-object v1, p0, Landroidx/versionedparcelable/a;->b:Lc/d/a;
    invoke-virtual { p1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-object v0
.end method

.method protected abstract A([B)V
.end method

.method public B([BI)V
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->w(I)V
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/versionedparcelable/a;->A([B)V
    return-void
.end method

.method protected abstract C(Ljava/lang/CharSequence;)V
.end method

.method public D(Ljava/lang/CharSequence;I)V
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->w(I)V
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/versionedparcelable/a;->C(Ljava/lang/CharSequence;)V
    return-void
.end method

.method protected abstract E(I)V
.end method

.method public F(II)V
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->w(I)V
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/versionedparcelable/a;->E(I)V
    return-void
.end method

.method protected abstract G(Landroid/os/Parcelable;)V
.end method

.method public H(Landroid/os/Parcelable;I)V
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->w(I)V
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/versionedparcelable/a;->G(Landroid/os/Parcelable;)V
    return-void
.end method

.method protected abstract I(Ljava/lang/String;)V
.end method

.method public J(Ljava/lang/String;I)V
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->w(I)V
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/versionedparcelable/a;->I(Ljava/lang/String;)V
    return-void
.end method

.method protected K(Landroidx/versionedparcelable/c;Landroidx/versionedparcelable/a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T::",
      "Landroidx/versionedparcelable/c;",
      ">(TT;",
      "Landroidx/versionedparcelable/a;",
      ")V"
    }
  .end annotation
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L6
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L2
  .registers 7
  :L0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/versionedparcelable/a;->e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    const/4 v1, 0
    const/4 v2, 2
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    aput-object p1, v2, v3
    const/4 p1, 1
    aput-object p2, v2, p1
  .line 2
    invoke-virtual { v0, v1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-void
  :L2
    move-exception p1
  .line 3
    new-instance p2, Ljava/lang/RuntimeException;
    const-string v0, "VersionedParcel encountered ClassNotFoundException"
    invoke-direct { p2, v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
  :L3
    move-exception p1
  .line 4
    new-instance p2, Ljava/lang/RuntimeException;
    const-string v0, "VersionedParcel encountered NoSuchMethodException"
    invoke-direct { p2, v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
  :L4
    move-exception p1
  .line 5
    invoke-virtual { p1 }, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
    move-result-object p2
    instance-of p2, p2, Ljava/lang/RuntimeException;
    if-eqz p2, :L5
  .line 6
    invoke-virtual { p1 }, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
    move-result-object p1
    check-cast p1, Ljava/lang/RuntimeException;
    throw p1
  :L5
  .line 7
    new-instance p2, Ljava/lang/RuntimeException;
    const-string v0, "VersionedParcel encountered InvocationTargetException"
    invoke-direct { p2, v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
  :L6
    move-exception p1
  .line 8
    new-instance p2, Ljava/lang/RuntimeException;
    const-string v0, "VersionedParcel encountered IllegalAccessException"
    invoke-direct { p2, v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
.end method

.method protected L(Landroidx/versionedparcelable/c;)V
  .registers 3
    if-nez p1, :L0
    const/4 p1, 0
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/versionedparcelable/a;->I(Ljava/lang/String;)V
    return-void
  :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/versionedparcelable/a;->N(Landroidx/versionedparcelable/c;)V
  .line 3
    invoke-virtual { p0 }, Landroidx/versionedparcelable/a;->b()Landroidx/versionedparcelable/a;
    move-result-object v0
  .line 4
    invoke-virtual { p0, p1, v0 }, Landroidx/versionedparcelable/a;->K(Landroidx/versionedparcelable/c;Landroidx/versionedparcelable/a;)V
  .line 5
    invoke-virtual { v0 }, Landroidx/versionedparcelable/a;->a()V
    return-void
.end method

.method public M(Landroidx/versionedparcelable/c;I)V
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->w(I)V
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/versionedparcelable/a;->L(Landroidx/versionedparcelable/c;)V
    return-void
.end method

.method protected abstract a()V
.end method

.method protected abstract b()Landroidx/versionedparcelable/a;
.end method

.method public f()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method protected abstract g()Z
.end method

.method public h(ZI)Z
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->m(I)Z
    move-result p2
    if-nez p2, :L0
    return p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/versionedparcelable/a;->g()Z
    move-result p1
    return p1
.end method

.method protected abstract i()[B
.end method

.method public j([BI)[B
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->m(I)Z
    move-result p2
    if-nez p2, :L0
    return-object p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/versionedparcelable/a;->i()[B
    move-result-object p1
    return-object p1
.end method

.method protected abstract k()Ljava/lang/CharSequence;
.end method

.method public l(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->m(I)Z
    move-result p2
    if-nez p2, :L0
    return-object p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/versionedparcelable/a;->k()Ljava/lang/CharSequence;
    move-result-object p1
    return-object p1
.end method

.method protected abstract m(I)Z
.end method

.method protected n(Ljava/lang/String;Landroidx/versionedparcelable/a;)Landroidx/versionedparcelable/c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T::",
      "Landroidx/versionedparcelable/c;",
      ">(",
      "Ljava/lang/String;",
      "Landroidx/versionedparcelable/a;",
      ")TT;"
    }
  .end annotation
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L6
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L2
  .registers 6
  :L0
  .line 1
    invoke-direct { p0, p1 }, Landroidx/versionedparcelable/a;->d(Ljava/lang/String;)Ljava/lang/reflect/Method;
    move-result-object p1
    const/4 v0, 0
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object p2, v1, v2
  .line 2
    invoke-virtual { p1, v0, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/versionedparcelable/c;
  :L1
    return-object p1
  :L2
    move-exception p1
  .line 3
    new-instance p2, Ljava/lang/RuntimeException;
    const-string v0, "VersionedParcel encountered ClassNotFoundException"
    invoke-direct { p2, v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
  :L3
    move-exception p1
  .line 4
    new-instance p2, Ljava/lang/RuntimeException;
    const-string v0, "VersionedParcel encountered NoSuchMethodException"
    invoke-direct { p2, v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
  :L4
    move-exception p1
  .line 5
    invoke-virtual { p1 }, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
    move-result-object p2
    instance-of p2, p2, Ljava/lang/RuntimeException;
    if-eqz p2, :L5
  .line 6
    invoke-virtual { p1 }, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
    move-result-object p1
    check-cast p1, Ljava/lang/RuntimeException;
    throw p1
  :L5
  .line 7
    new-instance p2, Ljava/lang/RuntimeException;
    const-string v0, "VersionedParcel encountered InvocationTargetException"
    invoke-direct { p2, v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
  :L6
    move-exception p1
  .line 8
    new-instance p2, Ljava/lang/RuntimeException;
    const-string v0, "VersionedParcel encountered IllegalAccessException"
    invoke-direct { p2, v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
.end method

.method protected abstract o()I
.end method

.method public p(II)I
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->m(I)Z
    move-result p2
    if-nez p2, :L0
    return p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/versionedparcelable/a;->o()I
    move-result p1
    return p1
.end method

.method protected abstract q()Landroid/os/Parcelable;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T::",
      "Landroid/os/Parcelable;",
      ">()TT;"
    }
  .end annotation
.end method

.method public r(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T::",
      "Landroid/os/Parcelable;",
      ">(TT;I)TT;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->m(I)Z
    move-result p2
    if-nez p2, :L0
    return-object p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/versionedparcelable/a;->q()Landroid/os/Parcelable;
    move-result-object p1
    return-object p1
.end method

.method protected abstract s()Ljava/lang/String;
.end method

.method public t(Ljava/lang/String;I)Ljava/lang/String;
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->m(I)Z
    move-result p2
    if-nez p2, :L0
    return-object p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/versionedparcelable/a;->s()Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method protected u()Landroidx/versionedparcelable/c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T::",
      "Landroidx/versionedparcelable/c;",
      ">()TT;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/versionedparcelable/a;->s()Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/versionedparcelable/a;->b()Landroidx/versionedparcelable/a;
    move-result-object v1
    invoke-virtual { p0, v0, v1 }, Landroidx/versionedparcelable/a;->n(Ljava/lang/String;Landroidx/versionedparcelable/a;)Landroidx/versionedparcelable/c;
    move-result-object v0
    return-object v0
.end method

.method public v(Landroidx/versionedparcelable/c;I)Landroidx/versionedparcelable/c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T::",
      "Landroidx/versionedparcelable/c;",
      ">(TT;I)TT;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->m(I)Z
    move-result p2
    if-nez p2, :L0
    return-object p1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/versionedparcelable/a;->u()Landroidx/versionedparcelable/c;
    move-result-object p1
    return-object p1
.end method

.method protected abstract w(I)V
.end method

.method public x(ZZ)V
  .registers 3
    return-void
.end method

.method protected abstract y(Z)V
.end method

.method public z(ZI)V
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Landroidx/versionedparcelable/a;->w(I)V
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/versionedparcelable/a;->y(Z)V
    return-void
.end method
