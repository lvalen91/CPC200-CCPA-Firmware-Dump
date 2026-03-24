.class Lc/p/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/animation/LayoutTransition;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/animation/LayoutTransition;)V
    .registers 6

    .line 1
    sget-boolean v0, Lc/p/y;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    .line 2
    :try_start_6
    const-class v2, Landroid/animation/LayoutTransition;

    const-string v3, "cancel"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lc/p/y;->d:Ljava/lang/reflect/Method;

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_15} :catch_15

    .line 4
    :catch_15
    sput-boolean v0, Lc/p/y;->e:Z

    .line 5
    :cond_17
    sget-object v0, Lc/p/y;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    :try_start_1b
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_20} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    return-void
.end method

.method static b(Landroid/view/ViewGroup;Z)V
    .registers 7

    .line 1
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_28

    .line 2
    new-instance v0, Lc/p/y$a;

    invoke-direct {v0}, Lc/p/y$a;-><init>()V

    sput-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 4
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 5
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 6
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 7
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    :cond_28
    if-eqz p1, :cond_48

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 9
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 10
    invoke-static {p1}, Lc/p/y;->a(Landroid/animation/LayoutTransition;)V

    .line 11
    :cond_39
    sget-object v0, Lc/p/y;->a:Landroid/animation/LayoutTransition;

    if-eq p1, v0, :cond_42

    .line 12
    sget v0, Lc/p/j;->transition_layout_save:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 13
    :cond_42
    sget-object p1, Lc/p/y;->a:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_87

    .line 14
    :cond_48
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 15
    sget-boolean p1, Lc/p/y;->c:Z

    if-nez p1, :cond_5e

    .line 16
    :try_start_4f
    const-class p1, Landroid/view/ViewGroup;

    const-string v0, "mLayoutSuppressed"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    sput-object p1, Lc/p/y;->b:Ljava/lang/reflect/Field;

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4f .. :try_end_5c} :catch_5c

    .line 18
    :catch_5c
    sput-boolean v1, Lc/p/y;->c:Z

    .line 19
    :cond_5e
    sget-object p1, Lc/p/y;->b:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_70

    .line 20
    :try_start_62
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1
    :try_end_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_62 .. :try_end_66} :catch_6f

    if-eqz p1, :cond_6d

    .line 21
    :try_start_68
    sget-object v0, Lc/p/y;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_6d
    .catch Ljava/lang/IllegalAccessException; {:try_start_68 .. :try_end_6d} :catch_6d

    :catch_6d
    :cond_6d
    move v2, p1

    goto :goto_70

    :catch_6f
    nop

    :cond_70
    :goto_70
    if-eqz v2, :cond_75

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 23
    :cond_75
    sget p1, Lc/p/j;->transition_layout_save:I

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/LayoutTransition;

    if-eqz p1, :cond_87

    .line 25
    sget v0, Lc/p/j;->transition_layout_save:I

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_87
    :goto_87
    return-void
.end method
