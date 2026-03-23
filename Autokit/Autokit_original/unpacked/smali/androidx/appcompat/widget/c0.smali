.class public Landroidx/appcompat/widget/c0;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "RestrictedAPI"
  }
.end annotation

.field private final static a:[I

.field private final static b:[I

.field public final static c:Landroid/graphics/Rect;

.field private static d:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L1
  .registers 3
    const/4 v0, 1
    new-array v0, v0, [I
    const v1, 16842912
    const/4 v2, 0
    aput v1, v0, v2
  .line 1
    sput-object v0, Landroidx/appcompat/widget/c0;->a:[I
    new-array v0, v2, [I
  .line 2
    sput-object v0, Landroidx/appcompat/widget/c0;->b:[I
  .line 3
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    sput-object v0, Landroidx/appcompat/widget/c0;->c:Landroid/graphics/Rect;
  .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L1
  :L0
    const-string v0, "android.graphics.Insets"
  .line 5
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    sput-object v0, Landroidx/appcompat/widget/c0;->d:Ljava/lang/Class;
  :L1
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Z
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 15
    const/4 v2, 0
    if-ge v0, v1, :L0
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;
    if-eqz v0, :L0
    return v2
  :L0
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-ge v0, v1, :L1
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;
    if-eqz v0, :L1
    return v2
  :L1
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-ge v0, v1, :L2
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;
    if-eqz v0, :L2
    return v2
  :L2
  .line 4
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;
    if-eqz v0, :L5
  .line 5
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object p0
  .line 6
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    if-eqz v0, :L8
  .line 7
    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
  .line 8
    invoke-virtual { p0 }, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;
    move-result-object p0
    array-length v0, p0
    const/4 v1, 0
  :L3
    if-ge v1, v0, :L8
    aget-object v3, p0, v1
  .line 9
    invoke-static { v3 }, Landroidx/appcompat/widget/c0;->a(Landroid/graphics/drawable/Drawable;)Z
    move-result v3
    if-nez v3, :L4
    return v2
  :L4
    add-int/lit8 v1, v1, 1
    goto :L3
  :L5
  .line 10
    instance-of v0, p0, Landroidx/core/graphics/drawable/c;
    if-eqz v0, :L6
  .line 11
    check-cast p0, Landroidx/core/graphics/drawable/c;
  .line 12
    invoke-interface { p0 }, Landroidx/core/graphics/drawable/c;->a()Landroid/graphics/drawable/Drawable;
    move-result-object p0
  .line 13
    invoke-static { p0 }, Landroidx/appcompat/widget/c0;->a(Landroid/graphics/drawable/Drawable;)Z
    move-result p0
    return p0
  :L6
  .line 14
    instance-of v0, p0, Lc/a/l/a/c;
    if-eqz v0, :L7
  .line 15
    check-cast p0, Lc/a/l/a/c;
  .line 16
    invoke-virtual { p0 }, Lc/a/l/a/c;->a()Landroid/graphics/drawable/Drawable;
    move-result-object p0
  .line 17
    invoke-static { p0 }, Landroidx/appcompat/widget/c0;->a(Landroid/graphics/drawable/Drawable;)Z
    move-result p0
    return p0
  :L7
  .line 18
    instance-of v0, p0, Landroid/graphics/drawable/ScaleDrawable;
    if-eqz v0, :L8
  .line 19
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;
    invoke-virtual { p0 }, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p0
    invoke-static { p0 }, Landroidx/appcompat/widget/c0;->a(Landroid/graphics/drawable/Drawable;)Z
    move-result p0
    return p0
  :L8
    const/4 p0, 1
    return p0
.end method

.method static b(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-ne v0, v1, :L0
    const-string v0, "android.graphics.drawable.VectorDrawable"
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-static { p0 }, Landroidx/appcompat/widget/c0;->c(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method private static c(Landroid/graphics/drawable/Drawable;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getState()[I
    move-result-object v0
    if-eqz v0, :L1
  .line 2
    array-length v1, v0
    if-nez v1, :L0
    goto :L1
  :L0
  .line 3
    sget-object v1, Landroidx/appcompat/widget/c0;->b:[I
    invoke-virtual { p0, v1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    goto :L2
  :L1
  .line 4
    sget-object v1, Landroidx/appcompat/widget/c0;->a:[I
    invoke-virtual { p0, v1 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L2
  .line 5
    invoke-virtual { p0, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
    return-void
.end method

.method public static d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
  .catch Ljava/lang/Exception; { :L1 .. :L12 } :L14
  .registers 13
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;
    move-result-object p0
  .line 3
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
  .line 4
    iget v1, p0, Landroid/graphics/Insets;->left:I
    iput v1, v0, Landroid/graphics/Rect;->left:I
  .line 5
    iget v1, p0, Landroid/graphics/Insets;->right:I
    iput v1, v0, Landroid/graphics/Rect;->right:I
  .line 6
    iget v1, p0, Landroid/graphics/Insets;->top:I
    iput v1, v0, Landroid/graphics/Rect;->top:I
  .line 7
    iget p0, p0, Landroid/graphics/Insets;->bottom:I
    iput p0, v0, Landroid/graphics/Rect;->bottom:I
    return-object v0
  :L0
  .line 8
    sget-object v0, Landroidx/appcompat/widget/c0;->d:Ljava/lang/Class;
    if-eqz v0, :L14
  :L1
  .line 9
    invoke-static { p0 }, Landroidx/core/graphics/drawable/a;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object p0
  .line 10
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    const-string v1, "getOpticalInsets"
    const/4 v2, 0
    new-array v3, v2, [Ljava/lang/Class;
  .line 11
    invoke-virtual { v0, v1, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    new-array v1, v2, [Ljava/lang/Object;
  .line 12
    invoke-virtual { v0, p0, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    if-eqz p0, :L14
  .line 13
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
  .line 14
    sget-object v1, Landroidx/appcompat/widget/c0;->d:Ljava/lang/Class;
    invoke-virtual { v1 }, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;
    move-result-object v1
    array-length v3, v1
    const/4 v4, 0
  :L2
    if-ge v4, v3, :L13
    aget-object v5, v1, v4
  .line 15
    invoke-virtual { v5 }, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    move-result-object v6
    const/4 v7, -1
    invoke-virtual { v6 }, Ljava/lang/String;->hashCode()I
    move-result v8
    const/4 v9, 3
    const/4 v10, 2
    const/4 v11, 1
    sparse-switch v8, :L15
    goto :L7
  :L3
    const-string v8, "right"
    invoke-virtual { v6, v8 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L7
    const/4 v7, 2
    goto :L7
  :L4
    const-string v8, "left"
    invoke-virtual { v6, v8 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L7
    const/4 v7, 0
    goto :L7
  :L5
    const-string v8, "top"
    invoke-virtual { v6, v8 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L7
    const/4 v7, 1
    goto :L7
  :L6
    const-string v8, "bottom"
    invoke-virtual { v6, v8 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L7
    const/4 v7, 3
  :L7
    if-eqz v7, :L11
    if-eq v7, v11, :L10
    if-eq v7, v10, :L9
    if-eq v7, v9, :L8
    goto :L12
  :L8
  .line 16
    invoke-virtual { v5, p0 }, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    move-result v5
    iput v5, v0, Landroid/graphics/Rect;->bottom:I
    goto :L12
  :L9
  .line 17
    invoke-virtual { v5, p0 }, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    move-result v5
    iput v5, v0, Landroid/graphics/Rect;->right:I
    goto :L12
  :L10
  .line 18
    invoke-virtual { v5, p0 }, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    move-result v5
    iput v5, v0, Landroid/graphics/Rect;->top:I
    goto :L12
  :L11
  .line 19
    invoke-virtual { v5, p0 }, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    move-result v5
    iput v5, v0, Landroid/graphics/Rect;->left:I
  :L12
    add-int/lit8 v4, v4, 1
    goto :L2
  :L13
    return-object v0
  :L14
  .line 20
    sget-object p0, Landroidx/appcompat/widget/c0;->c:Landroid/graphics/Rect;
    return-object p0
  :L15
  .sparse-switch
    -1383228885 -> :L6
    115029 -> :L5
    3317767 -> :L4
    108511772 -> :L3
  .end sparse-switch
.end method

.method public static e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
  .registers 3
    const/4 v0, 3
    if-eq p0, v0, :L5
    const/4 v0, 5
    if-eq p0, v0, :L4
    const/16 v0, 9
    if-eq p0, v0, :L3
    packed-switch p0, :L6
    return-object p1
  :L0
  .line 1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;
    return-object p0
  :L1
  .line 2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;
    return-object p0
  :L2
  .line 3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
    return-object p0
  :L3
  .line 4
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
    return-object p0
  :L4
  .line 5
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    return-object p0
  :L5
  .line 6
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;
    return-object p0
  :L6
  .packed-switch 14
    :L2
    :L1
    :L0
  .end packed-switch
.end method
