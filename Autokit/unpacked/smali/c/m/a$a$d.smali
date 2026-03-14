.class Lc/m/a$a$d;
.super Ljava/lang/Object;
.implements Lc/m/a$a$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/m/a$a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "d"
.end annotation

.field private final a:Ljava/lang/reflect/Constructor;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/reflect/Constructor<",
      "*>;"
    }
  .end annotation
.end field

.method constructor <init>(Ljava/lang/Class;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class<",
      "*>;)V"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 4
    new-array v0, v0, [Ljava/lang/Class;
    const/4 v1, 0
  .line 2
    const-class v2, Ljava/io/File;
    aput-object v2, v0, v1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    const/4 v2, 1
    aput-object v1, v0, v2
    const/4 v1, 2
    const-class v3, Ljava/io/File;
    aput-object v3, v0, v1
    const/4 v1, 3
    const-class v3, Ldalvik/system/DexFile;
    aput-object v3, v0, v1
  .line 3
    invoke-virtual { p1, v0 }, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object p1
    iput-object p1, p0, Lc/m/a$a$d;->a:Ljava/lang/reflect/Constructor;
  .line 4
    invoke-virtual { p1, v2 }, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    return-void
.end method

.method public a(Ljava/io/File;Ldalvik/system/DexFile;)Ljava/lang/Object;
  .registers 7
  .line 1
    iget-object v0, p0, Lc/m/a$a$d;->a:Ljava/lang/reflect/Constructor;
    const/4 v1, 4
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object p1, v1, v2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    const/4 v3, 1
    aput-object v2, v1, v3
    const/4 v2, 2
    aput-object p1, v1, v2
    const/4 p1, 3
    aput-object p2, v1, p1
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method
