.class public final Lc/g/i/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    const-class v0, Ljava/lang/String;

    const-string v1, "libcore.icu.ICU"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "addLikelySubtags"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x15

    if-ge v2, v6, :cond_31

    .line 2
    :try_start_e
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4d

    const-string v2, "getScript"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v4

    .line 3
    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lc/g/i/b;->a:Ljava/lang/reflect/Method;

    new-array v2, v5, [Ljava/lang/Class;

    aput-object v0, v2, v4

    .line 4
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lc/g/i/b;->b:Ljava/lang/reflect/Method;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_2b

    goto :goto_4d

    :catch_2b
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lc/g/i/b;->a:Ljava/lang/reflect/Method;

    .line 6
    sput-object v0, Lc/g/i/b;->b:Ljava/lang/reflect/Method;

    goto :goto_4d

    :cond_31
    const/16 v0, 0x18

    if-ge v2, v0, :cond_4d

    .line 7
    :try_start_35
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    .line 8
    const-class v2, Ljava/util/Locale;

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lc/g/i/b;->b:Ljava/lang/reflect/Method;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_45} :catch_46

    goto :goto_4d

    :catch_46
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4d
    :goto_4d
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_4
    sget-object v0, Lc/g/i/b;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 3
    sget-object v1, Lc/g/i/b;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_17} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    :cond_18
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lc/g/i/b;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    sget-object p0, Lc/g/i/b;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_13} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    :cond_14
    return-object v0
.end method

.method public static c(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_13

    .line 2
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_30

    const/4 v0, 0x1

    :try_start_19
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 4
    sget-object v1, Lc/g/i/b;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2a} :catch_2b

    return-object p0

    .line 5
    :catch_2b
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_30
    invoke-static {p0}, Lc/g/i/b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 7
    invoke-static {p0}, Lc/g/i/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    return-object v2
.end method
