.class Landroidx/core/app/c$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/core/app/c;->h(Ljava/lang/Object;ILandroid/app/Activity;)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/core/app/c$c;->b:Ljava/lang/Object;
    iput-object p2, p0, Landroidx/core/app/c$c;->c:Ljava/lang/Object;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/RuntimeException; { :L0 .. :L2 } :L3
  .catchall { :L0 .. :L2 } :L5
  .registers 8
  :L0
  .line 1
    sget-object v0, Landroidx/core/app/c;->d:Ljava/lang/reflect/Method;
    const/4 v1, 1
    const/4 v2, 0
    const/4 v3, 2
    if-eqz v0, :L1
  .line 2
    sget-object v0, Landroidx/core/app/c;->d:Ljava/lang/reflect/Method;
    iget-object v4, p0, Landroidx/core/app/c$c;->b:Ljava/lang/Object;
    const/4 v5, 3
    new-array v5, v5, [Ljava/lang/Object;
    iget-object v6, p0, Landroidx/core/app/c$c;->c:Ljava/lang/Object;
    aput-object v6, v5, v2
  .line 3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    aput-object v2, v5, v1
    const-string v1, "AppCompat recreation"
    aput-object v1, v5, v3
  .line 4
    invoke-virtual { v0, v4, v5 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    goto :L5
  :L1
  .line 5
    sget-object v0, Landroidx/core/app/c;->e:Ljava/lang/reflect/Method;
    iget-object v4, p0, Landroidx/core/app/c$c;->b:Ljava/lang/Object;
    new-array v3, v3, [Ljava/lang/Object;
    iget-object v5, p0, Landroidx/core/app/c$c;->c:Ljava/lang/Object;
    aput-object v5, v3, v2
  .line 6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    aput-object v2, v3, v1
  .line 7
    invoke-virtual { v0, v4, v3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    goto :L5
  :L3
    move-exception v0
  .line 8
    invoke-virtual { v0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    const-class v2, Ljava/lang/RuntimeException;
    if-ne v1, v2, :L5
  .line 9
    invoke-virtual { v0 }, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L5
  .line 10
    invoke-virtual { v0 }, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
    move-result-object v1
    const-string v2, "Unable to stop"
    invoke-virtual { v1, v2 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L4
    goto :L5
  :L4
  .line 11
    throw v0
  :L5
    return-void
.end method
