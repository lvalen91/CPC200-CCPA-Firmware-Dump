.class public Landroidx/fragment/app/j;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static a:Lc/d/g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/g<",
      "Ljava/lang/ClassLoader;",
      "Lc/d/g<",
      "Ljava/lang/String;",
      "Ljava/lang/Class<",
      "*>;>;>;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lc/d/g;
    invoke-direct { v0 }, Lc/d/g;-><init>()V
    sput-object v0, Landroidx/fragment/app/j;->a:Lc/d/g;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static b(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L2
  .registers 2
  :L0
  .line 1
    invoke-static { p0, p1 }, Landroidx/fragment/app/j;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    move-result-object p0
  .line 2
    const-class p1, Landroidx/fragment/app/Fragment;
    invoke-virtual { p1, p0 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result p0
  :L1
    return p0
  :L2
    const/4 p0, 0
    return p0
.end method

.method private static c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/ClassLoader;",
      "Ljava/lang/String;",
      ")",
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
  .registers 4
  .line 1
    sget-object v0, Landroidx/fragment/app/j;->a:Lc/d/g;
    invoke-virtual { v0, p0 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/d/g;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/d/g;
    invoke-direct { v0 }, Lc/d/g;-><init>()V
  .line 3
    sget-object v1, Landroidx/fragment/app/j;->a:Lc/d/g;
    invoke-virtual { v1, p0, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 4
    invoke-virtual { v0, p1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Class;
    if-nez v1, :L1
    const/4 v1, 0
  .line 5
    invoke-static { p1, v1, p0 }, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    move-result-object v1
  .line 6
    invoke-virtual { v0, p1, v1 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-object v1
.end method

.method public static d(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/ClassLoader;",
      "Ljava/lang/String;",
      ")",
      "Ljava/lang/Class<",
      "+",
      "Landroidx/fragment/app/Fragment;",
      ">;"
    }
  .end annotation
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/ClassCastException; { :L0 .. :L1 } :L2
  .registers 5
    const-string v0, "Unable to instantiate fragment "
  :L0
  .line 1
    invoke-static { p0, p1 }, Landroidx/fragment/app/j;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    move-result-object p0
  :L1
    return-object p0
  :L2
    move-exception p0
  .line 2
    new-instance v1, Landroidx/fragment/app/Fragment$i;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ": make sure class is a valid subclass of Fragment"
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1, p0 }, Landroidx/fragment/app/Fragment$i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    throw v1
  :L3
    move-exception p0
  .line 3
    new-instance v1, Landroidx/fragment/app/Fragment$i;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ": make sure class name exists"
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1, p0 }, Landroidx/fragment/app/Fragment$i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    throw v1
.end method

.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
  .registers 3
    const p0, 0
    throw p0
.end method
