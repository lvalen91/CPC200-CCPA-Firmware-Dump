.class public Landroidx/lifecycle/w$d;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/w$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/w;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "d"
.end annotation

.field private static a:Landroidx/lifecycle/w$d;

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static b()Landroidx/lifecycle/w$d;
  .registers 1
  .line 1
    sget-object v0, Landroidx/lifecycle/w$d;->a:Landroidx/lifecycle/w$d;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/lifecycle/w$d;
    invoke-direct { v0 }, Landroidx/lifecycle/w$d;-><init>()V
    sput-object v0, Landroidx/lifecycle/w$d;->a:Landroidx/lifecycle/w$d;
  :L0
  .line 3
    sget-object v0, Landroidx/lifecycle/w$d;->a:Landroidx/lifecycle/w$d;
    return-object v0
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
  .catch Ljava/lang/InstantiationException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .registers 6
    const-string v0, "Cannot create an instance of "
  :L0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/lifecycle/v;
  :L1
    return-object v1
  :L2
    move-exception v1
  .line 2
    new-instance v2, Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v2, p1, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v2
  :L3
    move-exception v1
  .line 3
    new-instance v2, Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v2, p1, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v2
.end method
