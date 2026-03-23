.class Landroidx/appcompat/app/i$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/i;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field private final b:Landroid/view/View;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/reflect/Method;

.field private e:Landroid/content/Context;

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/appcompat/app/i$a;->b:Landroid/view/View;
  .line 3
    iput-object p2, p0, Landroidx/appcompat/app/i$a;->c:Ljava/lang/String;
    return-void
.end method

.method private a(Landroid/content/Context;)V
  .catch Ljava/lang/NoSuchMethodException; { :L1 .. :L2 } :L3
  .registers 7
  :L0
    if-eqz p1, :L6
  :L1
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->isRestricted()Z
    move-result v0
    if-nez v0, :L4
  .line 2
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    iget-object v1, p0, Landroidx/appcompat/app/i$a;->c:Ljava/lang/String;
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Class;
    const/4 v3, 0
    const-class v4, Landroid/view/View;
    aput-object v4, v2, v3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    if-eqz v0, :L4
  .line 3
    iput-object v0, p0, Landroidx/appcompat/app/i$a;->d:Ljava/lang/reflect/Method;
  .line 4
    iput-object p1, p0, Landroidx/appcompat/app/i$a;->e:Landroid/content/Context;
  :L2
    return-void
  :L3
    nop
  :L4
  .line 5
    instance-of v0, p1, Landroid/content/ContextWrapper;
    if-eqz v0, :L5
  .line 6
    check-cast p1, Landroid/content/ContextWrapper;
    invoke-virtual { p1 }, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;
    move-result-object p1
    goto :L0
  :L5
    const/4 p1, 0
    goto :L0
  :L6
  .line 7
    iget-object p1, p0, Landroidx/appcompat/app/i$a;->b:Landroid/view/View;
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result p1
    const/4 v0, -1
    if-ne p1, v0, :L7
    const-string p1, ""
    goto :L8
  :L7
  .line 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, " with id '"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/appcompat/app/i$a;->b:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1, p1 }, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "'"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L8
  .line 9
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Could not find method "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroidx/appcompat/app/i$a;->c:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroidx/appcompat/app/i$a;->b:Landroid/view/View;
  .line 10
    invoke-virtual { v2 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L10
  :L9
    throw v0
  :L10
    goto :L9
.end method

.method public onClick(Landroid/view/View;)V
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/i$a;->d:Ljava/lang/reflect/Method;
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/i$a;->b:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/appcompat/app/i$a;->a(Landroid/content/Context;)V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/app/i$a;->d:Ljava/lang/reflect/Method;
    iget-object v1, p0, Landroidx/appcompat/app/i$a;->e:Landroid/content/Context;
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    aput-object p1, v2, v3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-void
  :L2
    move-exception p1
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Could not execute method for android:onClick"
    invoke-direct { v0, v1, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v0
  :L3
    move-exception p1
  .line 5
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Could not execute non-public method for android:onClick"
    invoke-direct { v0, v1, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v0
.end method
