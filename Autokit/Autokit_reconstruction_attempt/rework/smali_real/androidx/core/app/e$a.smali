.class Landroidx/core/app/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# direct methods
.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 8

    .line 1
    sget-boolean v0, Landroidx/core/app/e$a;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1b

    .line 2
    :try_start_6
    const-class v0, Landroid/os/Bundle;

    const-string v3, "getIBinder"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/e$a;->a:Ljava/lang/reflect/Method;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_19} :catch_19

    .line 4
    :catch_19
    sput-boolean v2, Landroidx/core/app/e$a;->b:Z

    .line 5
    :cond_1b
    sget-object v0, Landroidx/core/app/e$a;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-eqz v0, :cond_2d

    :try_start_20
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 6
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_2a} :catch_2b

    return-object p0

    .line 7
    :catch_2b
    sput-object v3, Landroidx/core/app/e$a;->a:Ljava/lang/reflect/Method;

    :cond_2d
    return-object v3
.end method

.method public static b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 10

    .line 1
    sget-boolean v0, Landroidx/core/app/e$a;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_20

    .line 2
    :try_start_7
    const-class v0, Landroid/os/Bundle;

    const-string v4, "putIBinder"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v3

    .line 3
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/e$a;->c:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_1e} :catch_1e

    .line 5
    :catch_1e
    sput-boolean v3, Landroidx/core/app/e$a;->d:Z

    .line 6
    :cond_20
    sget-object v0, Landroidx/core/app/e$a;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_31

    :try_start_24
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v3

    .line 7
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_31

    :catch_2e
    const/4 p0, 0x0

    .line 8
    sput-object p0, Landroidx/core/app/e$a;->c:Ljava/lang/reflect/Method;

    :cond_31
    :goto_31
    return-void
.end method
