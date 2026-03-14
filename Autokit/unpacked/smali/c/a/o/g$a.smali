.class Lc/a/o/g$a;
.super Ljava/lang/Object;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/a/o/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field private final static c:[Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "[",
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/reflect/Method;

.method static constructor <clinit>()V
  .registers 5
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Class;
    const/4 v1, 0
  .line 1
    const-class v2, Landroid/view/MenuItem;
    aput-object v2, v0, v1
    sput-object v0, Lc/a/o/g$a;->c:[Ljava/lang/Class;
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lc/a/o/g$a;->a:Ljava/lang/Object;
  .line 3
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p1
  :L0
  .line 4
    sget-object v0, Lc/a/o/g$a;->c:[Ljava/lang/Class;
    invoke-virtual { p1, p2, v0 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    iput-object v0, p0, Lc/a/o/g$a;->b:Ljava/lang/reflect/Method;
  :L1
    return-void
  :L2
    move-exception v0
  .line 5
    new-instance v1, Landroid/view/InflateException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Couldn't resolve menu item onClick handler "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, " in class "
    invoke-virtual { v2, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    invoke-virtual { p1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v1, p1 }, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V
  .line 7
    invoke-virtual { v1, v0 }, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
  .line 8
    throw v1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L3
  .registers 7
  :L0
  .line 1
    iget-object v0, p0, Lc/a/o/g$a;->b:Ljava/lang/reflect/Method;
    invoke-virtual { v0 }, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    move-result-object v0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    const/4 v2, 0
    const/4 v3, 1
    if-ne v0, v1, :L1
  .line 2
    iget-object v0, p0, Lc/a/o/g$a;->b:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lc/a/o/g$a;->a:Ljava/lang/Object;
    new-array v3, v3, [Ljava/lang/Object;
    aput-object p1, v3, v2
    invoke-virtual { v0, v1, v3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Boolean;
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    return p1
  :L1
  .line 3
    iget-object v0, p0, Lc/a/o/g$a;->b:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lc/a/o/g$a;->a:Ljava/lang/Object;
    new-array v4, v3, [Ljava/lang/Object;
    aput-object p1, v4, v2
    invoke-virtual { v0, v1, v4 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return v3
  :L3
    move-exception p1
  .line 4
    new-instance v0, Ljava/lang/RuntimeException;
    invoke-direct { v0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    throw v0
.end method
