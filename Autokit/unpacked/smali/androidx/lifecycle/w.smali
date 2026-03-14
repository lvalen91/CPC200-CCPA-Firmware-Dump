.class public Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/lifecycle/w$a;,
    Landroidx/lifecycle/w$d;,
    Landroidx/lifecycle/w$c;,
    Landroidx/lifecycle/w$e;,
    Landroidx/lifecycle/w$b;
  }
.end annotation

.field private final a:Landroidx/lifecycle/w$b;

.field private final b:Landroidx/lifecycle/x;

.method public constructor <init>(Landroidx/lifecycle/x;Landroidx/lifecycle/w$b;)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    iput-object p2, p0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/w$b;
  .line 4
    iput-object p1, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/x;
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
  .registers 3
  .line 1
    invoke-interface { p1 }, Landroidx/lifecycle/y;->getViewModelStore()Landroidx/lifecycle/x;
    move-result-object p1
    invoke-direct { p0, p1, p2 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/x;Landroidx/lifecycle/w$b;)V
    return-void
.end method

.method public a(Ljava/lang/Class;)Landroidx/lifecycle/v;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Landroidx/lifecycle/v;",
      ">(",
      "Ljava/lang/Class<",
      "TT;>;)TT;"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0, p1 }, Landroidx/lifecycle/w;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "Local and anonymous classes can not be ViewModels"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Landroidx/lifecycle/v;",
      ">(",
      "Ljava/lang/String;",
      "Ljava/lang/Class<",
      "TT;>;)TT;"
    }
  .end annotation
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/x;
    invoke-virtual { v0, p1 }, Landroidx/lifecycle/x;->b(Ljava/lang/String;)Landroidx/lifecycle/v;
    move-result-object v0
  .line 2
    invoke-virtual { p2, v0 }, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
  .line 3
    iget-object p1, p0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/w$b;
    instance-of p2, p1, Landroidx/lifecycle/w$e;
    if-eqz p2, :L0
  .line 4
    check-cast p1, Landroidx/lifecycle/w$e;
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/w$e;->b(Landroidx/lifecycle/v;)V
  :L0
    return-object v0
  :L1
  .line 5
    iget-object v0, p0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/w$b;
    instance-of v1, v0, Landroidx/lifecycle/w$c;
    if-eqz v1, :L2
  .line 6
    check-cast v0, Landroidx/lifecycle/w$c;
    invoke-virtual { v0, p1, p2 }, Landroidx/lifecycle/w$c;->c(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p2
    goto :L3
  :L2
  .line 7
    invoke-interface { v0, p2 }, Landroidx/lifecycle/w$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p2
  :L3
  .line 8
    iget-object v0, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/x;
    invoke-virtual { v0, p1, p2 }, Landroidx/lifecycle/x;->d(Ljava/lang/String;Landroidx/lifecycle/v;)V
    return-object p2
.end method
