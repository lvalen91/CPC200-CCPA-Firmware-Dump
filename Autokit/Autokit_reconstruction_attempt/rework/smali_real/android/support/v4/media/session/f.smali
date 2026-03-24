.class Landroid/support/v4/media/session/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/f$b;,
        Landroid/support/v4/media/session/f$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/support/v4/media/session/f$a;)Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Landroid/support/v4/media/session/f$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/f$b;-><init>(Landroid/support/v4/media/session/f$a;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 1
    check-cast p0, Landroid/media/session/MediaSession;

    .line 2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCallingPackage"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_17} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_17} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    const/4 p0, 0x0

    return-object p0
.end method
