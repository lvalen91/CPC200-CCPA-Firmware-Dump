.class final Landroidx/core/app/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/c$d;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final b:Ljava/lang/reflect/Field;

.field protected static final c:Ljava/lang/reflect/Field;

.field protected static final d:Ljava/lang/reflect/Method;

.field protected static final e:Ljava/lang/reflect/Method;

.field protected static final f:Ljava/lang/reflect/Method;

.field private static final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroidx/core/app/c;->g:Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroidx/core/app/c;->a()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/app/c;->a:Ljava/lang/Class;

    .line 3
    invoke-static {}, Landroidx/core/app/c;->b()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/app/c;->b:Ljava/lang/reflect/Field;

    .line 4
    invoke-static {}, Landroidx/core/app/c;->f()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/app/c;->c:Ljava/lang/reflect/Field;

    .line 5
    sget-object v0, Landroidx/core/app/c;->a:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/core/app/c;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/c;->d:Ljava/lang/reflect/Method;

    .line 6
    sget-object v0, Landroidx/core/app/c;->a:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/core/app/c;->c(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/c;->e:Ljava/lang/reflect/Method;

    .line 7
    sget-object v0, Landroidx/core/app/c;->a:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/core/app/c;->e(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/c;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static a()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b()Ljava/lang/reflect/Field;
    .registers 2

    .line 1
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mMainThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 1
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 2
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    return-object p0

    :catchall_1b
    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "performStopActivity"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 1
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 2
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    return-object v0
.end method

.method private static e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/core/app/c;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    if-nez p0, :cond_a

    goto :goto_46

    :cond_a
    :try_start_a
    const-string v0, "requestRelaunchActivity"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 2
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/List;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/util/List;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v2, v3

    const/4 v3, 0x7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/16 v3, 0x8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_46

    return-object p0

    :catchall_46
    :cond_46
    :goto_46
    return-object v1
.end method

.method private static f()Ljava/lang/reflect/Field;
    .registers 2

    .line 1
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static g()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method protected static h(Ljava/lang/Object;ILandroid/app/Activity;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Landroidx/core/app/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_22

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p0

    if-eq p0, p1, :cond_10

    goto :goto_22

    .line 3
    :cond_10
    sget-object p0, Landroidx/core/app/c;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    sget-object p1, Landroidx/core/app/c;->g:Landroid/os/Handler;

    new-instance p2, Landroidx/core/app/c$c;

    invoke-direct {p2, p0, v1}, Landroidx/core/app/c$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    const/4 p0, 0x1

    return p0

    :catchall_22
    :cond_22
    :goto_22
    return v0
.end method

.method static i(Landroid/app/Activity;)Z
    .registers 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_b

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return v1

    .line 3
    :cond_b
    invoke-static {}, Landroidx/core/app/c;->g()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    sget-object v0, Landroidx/core/app/c;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_17

    return v2

    .line 4
    :cond_17
    sget-object v0, Landroidx/core/app/c;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_20

    sget-object v0, Landroidx/core/app/c;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_20

    return v2

    .line 5
    :cond_20
    :try_start_20
    sget-object v0, Landroidx/core/app/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    return v2

    .line 6
    :cond_29
    sget-object v3, Landroidx/core/app/c;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_32

    return v2

    .line 7
    :cond_32
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    .line 8
    new-instance v5, Landroidx/core/app/c$d;

    invoke-direct {v5, p0}, Landroidx/core/app/c$d;-><init>(Landroid/app/Activity;)V

    .line 9
    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 10
    sget-object v6, Landroidx/core/app/c;->g:Landroid/os/Handler;

    new-instance v7, Landroidx/core/app/c$a;

    invoke-direct {v7, v5, v0}, Landroidx/core/app/c$a;-><init>(Landroidx/core/app/c$d;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_97

    .line 11
    :try_start_48
    invoke-static {}, Landroidx/core/app/c;->g()Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 12
    sget-object p0, Landroidx/core/app/c;->f:Ljava/lang/reflect/Method;

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    const/4 v0, 0x0

    aput-object v0, v6, v1

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v0, v6, v7

    const/4 v7, 0x6

    aput-object v0, v6, v7

    const/4 v0, 0x7

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v6, v0

    const/16 v0, 0x8

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v6, v0

    .line 14
    invoke-virtual {p0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    .line 15
    :cond_7d
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_80
    .catchall {:try_start_48 .. :try_end_80} :catchall_8b

    .line 16
    :goto_80
    :try_start_80
    sget-object p0, Landroidx/core/app/c;->g:Landroid/os/Handler;

    new-instance v0, Landroidx/core/app/c$b;

    invoke-direct {v0, v4, v5}, Landroidx/core/app/c$b;-><init>(Landroid/app/Application;Landroidx/core/app/c$d;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :catchall_8b
    move-exception p0

    sget-object v0, Landroidx/core/app/c;->g:Landroid/os/Handler;

    new-instance v1, Landroidx/core/app/c$b;

    invoke-direct {v1, v4, v5}, Landroidx/core/app/c$b;-><init>(Landroid/app/Application;Landroidx/core/app/c$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    throw p0
    :try_end_97
    .catchall {:try_start_80 .. :try_end_97} :catchall_97

    :catchall_97
    return v2
.end method
