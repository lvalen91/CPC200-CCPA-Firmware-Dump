.class Landroidx/appcompat/app/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Z


# direct methods
.method static a(Landroid/content/res/Resources;)V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    const/16 v1, 0x18

    if-lt v0, v1, :cond_f

    .line 2
    invoke-static {p0}, Landroidx/appcompat/app/k;->d(Landroid/content/res/Resources;)V

    goto :goto_1e

    :cond_f
    const/16 v1, 0x17

    if-lt v0, v1, :cond_17

    .line 3
    invoke-static {p0}, Landroidx/appcompat/app/k;->c(Landroid/content/res/Resources;)V

    goto :goto_1e

    :cond_17
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1e

    .line 4
    invoke-static {p0}, Landroidx/appcompat/app/k;->b(Landroid/content/res/Resources;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private static b(Landroid/content/res/Resources;)V
    .registers 4

    .line 1
    sget-boolean v0, Landroidx/appcompat/app/k;->b:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 2
    :try_start_5
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "mDrawableCache"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_12

    .line 4
    :catch_12
    sput-boolean v0, Landroidx/appcompat/app/k;->b:Z

    .line 5
    :cond_14
    sget-object v0, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    .line 6
    :try_start_19
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_1f} :catch_21

    move-object v1, p0

    goto :goto_22

    :catch_21
    nop

    :goto_22
    if-eqz v1, :cond_27

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_27
    return-void
.end method

.method private static c(Landroid/content/res/Resources;)V
    .registers 4

    .line 1
    sget-boolean v0, Landroidx/appcompat/app/k;->b:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 2
    :try_start_5
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "mDrawableCache"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_12

    .line 4
    :catch_12
    sput-boolean v0, Landroidx/appcompat/app/k;->b:Z

    :cond_14
    const/4 v0, 0x0

    .line 5
    sget-object v1, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1f

    .line 6
    :try_start_19
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    nop

    :cond_1f
    :goto_1f
    if-nez v0, :cond_22

    return-void

    .line 7
    :cond_22
    invoke-static {v0}, Landroidx/appcompat/app/k;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private static d(Landroid/content/res/Resources;)V
    .registers 5

    .line 1
    sget-boolean v0, Landroidx/appcompat/app/k;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 2
    :try_start_5
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "mResourcesImpl"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_12

    .line 4
    :catch_12
    sput-boolean v1, Landroidx/appcompat/app/k;->h:Z

    .line 5
    :cond_14
    sget-object v0, Landroidx/appcompat/app/k;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_19

    return-void

    :cond_19
    const/4 v2, 0x0

    .line 6
    :try_start_1a
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-object p0, v2

    :goto_20
    if-nez p0, :cond_23

    return-void

    .line 7
    :cond_23
    sget-boolean v0, Landroidx/appcompat/app/k;->b:Z

    if-nez v0, :cond_38

    .line 8
    :try_start_27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mDrawableCache"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_27 .. :try_end_36} :catch_36

    .line 10
    :catch_36
    sput-boolean v1, Landroidx/appcompat/app/k;->b:Z

    .line 11
    :cond_38
    sget-object v0, Landroidx/appcompat/app/k;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_42

    .line 12
    :try_start_3c
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_40} :catch_41

    goto :goto_42

    :catch_41
    nop

    :cond_42
    :goto_42
    if-eqz v2, :cond_47

    .line 13
    invoke-static {v2}, Landroidx/appcompat/app/k;->e(Ljava/lang/Object;)V

    :cond_47
    return-void
.end method

.method private static e(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-boolean v0, Landroidx/appcompat/app/k;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    :try_start_5
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/k;->c:Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_d} :catch_d

    .line 3
    :catch_d
    sput-boolean v1, Landroidx/appcompat/app/k;->d:Z

    .line 4
    :cond_f
    sget-object v0, Landroidx/appcompat/app/k;->c:Ljava/lang/Class;

    if-nez v0, :cond_14

    return-void

    .line 5
    :cond_14
    sget-boolean v2, Landroidx/appcompat/app/k;->f:Z

    if-nez v2, :cond_25

    :try_start_18
    const-string v2, "mUnthemedEntries"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/k;->e:Ljava/lang/reflect/Field;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_18 .. :try_end_23} :catch_23

    .line 8
    :catch_23
    sput-boolean v1, Landroidx/appcompat/app/k;->f:Z

    .line 9
    :cond_25
    sget-object v0, Landroidx/appcompat/app/k;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    const/4 v1, 0x0

    .line 10
    :try_start_2b
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_31} :catch_33

    move-object v1, p0

    goto :goto_34

    :catch_33
    nop

    :goto_34
    if-eqz v1, :cond_39

    .line 11
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_39
    return-void
.end method
