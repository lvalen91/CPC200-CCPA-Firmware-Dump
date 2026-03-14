.class Landroidx/core/view/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field private static a:Ljava/lang/reflect/Field;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z

.method static constructor <clinit>()V
  .catch Ljava/lang/ReflectiveOperationException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    const-class v0, Landroid/view/View;
    const-string v1, "mAttachInfo"
    invoke-virtual { v0, v1 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/core/view/d0$a;->a:Ljava/lang/reflect/Field;
    const/4 v1, 1
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
    const-string v0, "android.view.View$AttachInfo"
  .line 3
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    const-string v2, "mStableInsets"
  .line 4
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v2
    sput-object v2, Landroidx/core/view/d0$a;->b:Ljava/lang/reflect/Field;
  .line 5
    invoke-virtual { v2, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
    const-string v2, "mContentInsets"
  .line 6
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/core/view/d0$a;->c:Ljava/lang/reflect/Field;
  .line 7
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 8
    sput-boolean v1, Landroidx/core/view/d0$a;->d:Z
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 9
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Failed to get visible insets from AttachInfo "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
    return-void
.end method

.method public static a(Landroid/view/View;)Landroidx/core/view/d0;
  .catch Ljava/lang/IllegalAccessException; { :L1 .. :L2 } :L3
  .registers 5
  .line 1
    sget-boolean v0, Landroidx/core/view/d0$a;->d:Z
    const/4 v1, 0
    if-eqz v0, :L4
    invoke-virtual { p0 }, Landroid/view/View;->isAttachedToWindow()Z
    move-result v0
    if-nez v0, :L0
    goto :L4
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getRootView()Landroid/view/View;
    move-result-object v0
  :L1
  .line 3
    sget-object v2, Landroidx/core/view/d0$a;->a:Ljava/lang/reflect/Field;
    invoke-virtual { v2, v0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L4
  .line 4
    sget-object v2, Landroidx/core/view/d0$a;->b:Ljava/lang/reflect/Field;
    invoke-virtual { v2, v0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/graphics/Rect;
  .line 5
    sget-object v3, Landroidx/core/view/d0$a;->c:Ljava/lang/reflect/Field;
    invoke-virtual { v3, v0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/graphics/Rect;
    if-eqz v2, :L4
    if-eqz v0, :L4
  .line 6
    new-instance v3, Landroidx/core/view/d0$b;
    invoke-direct { v3 }, Landroidx/core/view/d0$b;-><init>()V
  .line 7
    invoke-static { v2 }, Lc/g/d/b;->c(Landroid/graphics/Rect;)Lc/g/d/b;
    move-result-object v2
    invoke-virtual { v3, v2 }, Landroidx/core/view/d0$b;->b(Lc/g/d/b;)Landroidx/core/view/d0$b;
  .line 8
    invoke-static { v0 }, Lc/g/d/b;->c(Landroid/graphics/Rect;)Lc/g/d/b;
    move-result-object v0
    invoke-virtual { v3, v0 }, Landroidx/core/view/d0$b;->c(Lc/g/d/b;)Landroidx/core/view/d0$b;
  .line 9
    invoke-virtual { v3 }, Landroidx/core/view/d0$b;->a()Landroidx/core/view/d0;
    move-result-object v0
  .line 10
    invoke-virtual { v0, v0 }, Landroidx/core/view/d0;->p(Landroidx/core/view/d0;)V
  .line 11
    invoke-virtual { p0 }, Landroid/view/View;->getRootView()Landroid/view/View;
    move-result-object p0
    invoke-virtual { v0, p0 }, Landroidx/core/view/d0;->d(Landroid/view/View;)V
  :L2
    return-object v0
  :L3
    move-exception p0
  .line 12
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Failed to get insets from AttachInfo. "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L4
    return-object v1
.end method
