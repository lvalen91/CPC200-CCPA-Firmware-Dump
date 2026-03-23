.class Lc/p/y;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Landroid/animation/LayoutTransition;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Z

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Landroid/animation/LayoutTransition;)V
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/IllegalAccessException; { :L3 .. :L4 } :L4
  .catch Ljava/lang/reflect/InvocationTargetException; { :L3 .. :L4 } :L4
  .registers 6
  .line 1
    sget-boolean v0, Lc/p/y;->e:Z
    const/4 v1, 0
    if-nez v0, :L2
    const/4 v0, 1
  :L0
  .line 2
    const-class v2, Landroid/animation/LayoutTransition;
    const-string v3, "cancel"
    new-array v4, v1, [Ljava/lang/Class;
    invoke-virtual { v2, v3, v4 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v2
    sput-object v2, Lc/p/y;->d:Ljava/lang/reflect/Method;
  .line 3
    invoke-virtual { v2, v0 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  :L1
  .line 4
    sput-boolean v0, Lc/p/y;->e:Z
  :L2
  .line 5
    sget-object v0, Lc/p/y;->d:Ljava/lang/reflect/Method;
    if-eqz v0, :L4
  :L3
    new-array v1, v1, [Ljava/lang/Object;
  .line 6
    invoke-virtual { v0, p0, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L4
    return-void
.end method

.method static b(Landroid/view/ViewGroup;Z)V
  .catch Ljava/lang/NoSuchFieldException; { :L4 .. :L5 } :L5
  .catch Ljava/lang/IllegalAccessException; { :L7 .. :L8 } :L11
  .catch Ljava/lang/IllegalAccessException; { :L9 .. :L10 } :L10
  .registers 7
  .line 1
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;
    const/4 v1, 1
    const/4 v2, 0
    const/4 v3, 0
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/p/y$a;
    invoke-direct { v0 }, Lc/p/y$a;-><init>()V
    sput-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;
    const/4 v4, 2
  .line 3
    invoke-virtual { v0, v4, v3 }, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V
  .line 4
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;
    invoke-virtual { v0, v2, v3 }, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V
  .line 5
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;
    invoke-virtual { v0, v1, v3 }, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V
  .line 6
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;
    const/4 v4, 3
    invoke-virtual { v0, v4, v3 }, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V
  .line 7
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;
    const/4 v4, 4
    invoke-virtual { v0, v4, v3 }, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V
  :L0
    if-eqz p1, :L3
  .line 8
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;
    move-result-object p1
    if-eqz p1, :L2
  .line 9
    invoke-virtual { p1 }, Landroid/animation/LayoutTransition;->isRunning()Z
    move-result v0
    if-eqz v0, :L1
  .line 10
    invoke-static { p1 }, Lc/p/y;->a(Landroid/animation/LayoutTransition;)V
  :L1
  .line 11
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;
    if-eq p1, v0, :L2
  .line 12
    sget v0, Lc/p/j;->transition_layout_save:I
    invoke-virtual { p0, v0, p1 }, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V
  :L2
  .line 13
    sget-object p1, Lc/p/y;->a:Landroid/animation/LayoutTransition;
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V
    goto :L14
  :L3
  .line 14
    invoke-virtual { p0, v3 }, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V
  .line 15
    sget-boolean p1, Lc/p/y;->c:Z
    if-nez p1, :L6
  :L4
  .line 16
    const-class p1, Landroid/view/ViewGroup;
    const-string v0, "mLayoutSuppressed"
    invoke-virtual { p1, v0 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object p1
    sput-object p1, Lc/p/y;->b:Ljava/lang/reflect/Field;
  .line 17
    invoke-virtual { p1, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L5
  .line 18
    sput-boolean v1, Lc/p/y;->c:Z
  :L6
  .line 19
    sget-object p1, Lc/p/y;->b:Ljava/lang/reflect/Field;
    if-eqz p1, :L12
  :L7
  .line 20
    invoke-virtual { p1, p0 }, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    move-result p1
  :L8
    if-eqz p1, :L10
  :L9
  .line 21
    sget-object v0, Lc/p/y;->b:Ljava/lang/reflect/Field;
    invoke-virtual { v0, p0, v2 }, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
  :L10
    move v2, p1
    goto :L12
  :L11
    nop
  :L12
    if-eqz v2, :L13
  .line 22
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
  :L13
  .line 23
    sget p1, Lc/p/j;->transition_layout_save:I
  .line 24
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/animation/LayoutTransition;
    if-eqz p1, :L14
  .line 25
    sget v0, Lc/p/j;->transition_layout_save:I
    invoke-virtual { p0, v0, v3 }, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V
  .line 26
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V
  :L14
    return-void
.end method
