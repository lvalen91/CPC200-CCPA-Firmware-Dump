.class public final Landroidx/core/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.method public static a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
  .catch Ljava/lang/NoSuchFieldException; { :L1 .. :L2 } :L2
  .catch Ljava/lang/IllegalAccessException; { :L4 .. :L5 } :L6
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    sget-boolean v0, Landroidx/core/widget/c;->b:Z
    if-nez v0, :L3
    const/4 v0, 1
  :L1
  .line 4
    const-class v1, Landroid/widget/CompoundButton;
    const-string v2, "mButtonDrawable"
    invoke-virtual { v1, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v1
    sput-object v1, Landroidx/core/widget/c;->a:Ljava/lang/reflect/Field;
  .line 5
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L2
  .line 6
    sput-boolean v0, Landroidx/core/widget/c;->b:Z
  :L3
  .line 7
    sget-object v0, Landroidx/core/widget/c;->a:Ljava/lang/reflect/Field;
    const/4 v1, 0
    if-eqz v0, :L7
  :L4
  .line 8
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/graphics/drawable/Drawable;
  :L5
    return-object p0
  :L6
  .line 9
    sput-object v1, Landroidx/core/widget/c;->a:Ljava/lang/reflect/Field;
  :L7
    return-object v1
.end method

.method public static b(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    instance-of v0, p0, Landroidx/core/widget/k;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/core/widget/k;
    invoke-interface { p0 }, Landroidx/core/widget/k;->getSupportButtonTintList()Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
  :L1
    const/4 p0, 0
    return-object p0
.end method

.method public static c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V
    goto :L1
  :L0
  .line 3
    instance-of v0, p0, Landroidx/core/widget/k;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/core/widget/k;
    invoke-interface { p0, p1 }, Landroidx/core/widget/k;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
  :L1
    return-void
.end method

.method public static d(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    goto :L1
  :L0
  .line 3
    instance-of v0, p0, Landroidx/core/widget/k;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/core/widget/k;
    invoke-interface { p0, p1 }, Landroidx/core/widget/k;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
  :L1
    return-void
.end method
