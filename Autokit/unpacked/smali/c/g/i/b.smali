.class public final Lc/g/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.method static constructor <clinit>()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .registers 9
  .line 1
    const-class v0, Ljava/lang/String;
    const-string v1, "libcore.icu.ICU"
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const-string v3, "addLikelySubtags"
    const/4 v4, 0
    const/4 v5, 1
    const/16 v6, 21
    if-ge v2, v6, :L3
  :L0
  .line 2
    invoke-static { v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v1
    if-eqz v1, :L7
    const-string v2, "getScript"
    new-array v6, v5, [Ljava/lang/Class;
    aput-object v0, v6, v4
  .line 3
    invoke-virtual { v1, v2, v6 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v2
    sput-object v2, Lc/g/i/b;->a:Ljava/lang/reflect/Method;
    new-array v2, v5, [Ljava/lang/Class;
    aput-object v0, v2, v4
  .line 4
    invoke-virtual { v1, v3, v2 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Lc/g/i/b;->b:Ljava/lang/reflect/Method;
  :L1
    goto :L7
  :L2
    const/4 v0, 0
  .line 5
    sput-object v0, Lc/g/i/b;->a:Ljava/lang/reflect/Method;
  .line 6
    sput-object v0, Lc/g/i/b;->b:Ljava/lang/reflect/Method;
    goto :L7
  :L3
    const/16 v0, 24
    if-ge v2, v0, :L7
  :L4
  .line 7
    invoke-static { v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    new-array v1, v5, [Ljava/lang/Class;
  .line 8
    const-class v2, Ljava/util/Locale;
    aput-object v2, v1, v4
    invoke-virtual { v0, v3, v1 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    sput-object v0, Lc/g/i/b;->b:Ljava/lang/reflect/Method;
  :L5
    goto :L7
  :L6
    move-exception v0
  .line 9
    new-instance v1, Ljava/lang/IllegalStateException;
    invoke-direct { v1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
    throw v1
  :L7
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Ljava/util/Locale;)Ljava/lang/String;
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    invoke-virtual { p0 }, Ljava/util/Locale;->toString()Ljava/lang/String;
    move-result-object p0
  :L0
  .line 2
    sget-object v0, Lc/g/i/b;->b:Ljava/lang/reflect/Method;
    if-eqz v0, :L2
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Object;
    const/4 v1, 0
    aput-object p0, v0, v1
  .line 3
    sget-object v1, Lc/g/i/b;->b:Ljava/lang/reflect/Method;
    const/4 v2, 0
    invoke-virtual { v1, v2, v0 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  :L1
    return-object v0
  :L2
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    sget-object v1, Lc/g/i/b;->a:Ljava/lang/reflect/Method;
    if-eqz v1, :L2
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object p0, v1, v2
  .line 2
    sget-object p0, Lc/g/i/b;->a:Ljava/lang/reflect/Method;
    invoke-virtual { p0, v0, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/String;
  :L1
    return-object p0
  :L2
    return-object v0
.end method

.method public static c(Ljava/util/Locale;)Ljava/lang/String;
  .catch Ljava/lang/reflect/InvocationTargetException; { :L1 .. :L2 } :L3
  .catch Ljava/lang/IllegalAccessException; { :L1 .. :L2 } :L3
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 24
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0 }, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    move-result-object p0
    invoke-static { p0 }, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    move-result-object p0
  .line 3
    invoke-virtual { p0 }, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
    const/16 v1, 21
    const/4 v2, 0
    if-lt v0, v1, :L4
    const/4 v0, 1
  :L1
    new-array v0, v0, [Ljava/lang/Object;
    const/4 v1, 0
    aput-object p0, v0, v1
  .line 4
    sget-object v1, Lc/g/i/b;->b:Ljava/lang/reflect/Method;
    invoke-virtual { v1, v2, v0 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Locale;
    invoke-virtual { v0 }, Ljava/util/Locale;->getScript()Ljava/lang/String;
    move-result-object p0
  :L2
    return-object p0
  :L3
  .line 5
    invoke-virtual { p0 }, Ljava/util/Locale;->getScript()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L4
  .line 6
    invoke-static { p0 }, Lc/g/i/b;->a(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object p0
    if-eqz p0, :L5
  .line 7
    invoke-static { p0 }, Lc/g/i/b;->b(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L5
    return-object v2
.end method
