.class public final Landroidx/core/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/view/LayoutInflaterCompat$a;
  }
.end annotation

.field private final static TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/IllegalAccessException; { :L5 .. :L6 } :L7
  .registers 6
  .line 1
    sget-boolean v0, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z
    const-string v1, "; inflation may have unexpected results."
    if-nez v0, :L4
    const/4 v0, 1
  :L0
  .line 2
    const-class v2, Landroid/view/LayoutInflater;
    const-string v3, "mFactory2"
    invoke-virtual { v2, v3 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v2
    sput-object v2, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;
  .line 3
    invoke-virtual { v2, v0 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L1
    goto :L3
  :L2
  .line 4
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "forceSetFactory2 Could not find field 'mFactory2' on class "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-class v3, Landroid/view/LayoutInflater;
  .line 5
    invoke-virtual { v3 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
  .line 6
    sput-boolean v0, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z
  :L4
  .line 7
    sget-object v0, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;
    if-eqz v0, :L8
  :L5
  .line 8
    invoke-virtual { v0, p0, p1 }, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
  :L6
    goto :L8
  :L7
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "forceSetFactory2 could not set the Factory2 on LayoutInflater "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L8
    return-void
.end method

.method public static getFactory(Landroid/view/LayoutInflater;)Landroidx/core/view/g;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;
    move-result-object p0
  .line 2
    instance-of v0, p0, Landroidx/core/view/LayoutInflaterCompat$a;
    if-eqz v0, :L0
  .line 3
    check-cast p0, Landroidx/core/view/LayoutInflaterCompat$a;
    iget-object p0, p0, Landroidx/core/view/LayoutInflaterCompat$a;->b:Landroidx/core/view/g;
    return-object p0
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroidx/core/view/g;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 0
    const/16 v2, 21
    if-lt v0, v2, :L1
    if-eqz p1, :L0
  .line 2
    new-instance v1, Landroidx/core/view/LayoutInflaterCompat$a;
    invoke-direct { v1, p1 }, Landroidx/core/view/LayoutInflaterCompat$a;-><init>(Landroidx/core/view/g;)V
  :L0
    invoke-virtual { p0, v1 }, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    goto :L4
  :L1
    if-eqz p1, :L2
  .line 3
    new-instance v1, Landroidx/core/view/LayoutInflaterCompat$a;
    invoke-direct { v1, p1 }, Landroidx/core/view/LayoutInflaterCompat$a;-><init>(Landroidx/core/view/g;)V
  :L2
  .line 4
    invoke-virtual { p0, v1 }, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V
  .line 5
    invoke-virtual { p0 }, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;
    move-result-object p1
  .line 6
    instance-of v0, p1, Landroid/view/LayoutInflater$Factory2;
    if-eqz v0, :L3
  .line 7
    check-cast p1, Landroid/view/LayoutInflater$Factory2;
    invoke-static { p0, p1 }, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    goto :L4
  :L3
  .line 8
    invoke-static { p0, v1 }, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
  :L4
    return-void
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-ge v0, v1, :L1
  .line 3
    invoke-virtual { p0 }, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;
    move-result-object v0
  .line 4
    instance-of v1, v0, Landroid/view/LayoutInflater$Factory2;
    if-eqz v1, :L0
  .line 5
    check-cast v0, Landroid/view/LayoutInflater$Factory2;
    invoke-static { p0, v0 }, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    goto :L1
  :L0
  .line 6
    invoke-static { p0, p1 }, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
  :L1
    return-void
.end method
