.class public Lc/g/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "NewApi"
  }
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/g/d/d$a;
  }
.end annotation

.field private final static a:Lc/g/d/j;

.field private final static b:Lc/d/e;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/e<",
      "Ljava/lang/String;",
      "Landroid/graphics/Typeface;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    new-instance v0, Lc/g/d/i;
    invoke-direct { v0 }, Lc/g/d/i;-><init>()V
    sput-object v0, Lc/g/d/d;->a:Lc/g/d/j;
    goto :L5
  :L0
    const/16 v1, 28
    if-lt v0, v1, :L1
  .line 3
    new-instance v0, Lc/g/d/h;
    invoke-direct { v0 }, Lc/g/d/h;-><init>()V
    sput-object v0, Lc/g/d/d;->a:Lc/g/d/j;
    goto :L5
  :L1
    const/16 v1, 26
    if-lt v0, v1, :L2
  .line 4
    new-instance v0, Lc/g/d/g;
    invoke-direct { v0 }, Lc/g/d/g;-><init>()V
    sput-object v0, Lc/g/d/d;->a:Lc/g/d/j;
    goto :L5
  :L2
    const/16 v1, 24
    if-lt v0, v1, :L3
  .line 5
    invoke-static { }, Lc/g/d/f;->m()Z
    move-result v0
    if-eqz v0, :L3
  .line 6
    new-instance v0, Lc/g/d/f;
    invoke-direct { v0 }, Lc/g/d/f;-><init>()V
    sput-object v0, Lc/g/d/d;->a:Lc/g/d/j;
    goto :L5
  :L3
  .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L4
  .line 8
    new-instance v0, Lc/g/d/e;
    invoke-direct { v0 }, Lc/g/d/e;-><init>()V
    sput-object v0, Lc/g/d/d;->a:Lc/g/d/j;
    goto :L5
  :L4
  .line 9
    new-instance v0, Lc/g/d/j;
    invoke-direct { v0 }, Lc/g/d/j;-><init>()V
    sput-object v0, Lc/g/d/d;->a:Lc/g/d/j;
  :L5
  .line 10
    new-instance v0, Lc/d/e;
    const/16 v1, 16
    invoke-direct { v0, v1 }, Lc/d/e;-><init>(I)V
    sput-object v0, Lc/g/d/d;->b:Lc/d/e;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
  .registers 5
    if-eqz p0, :L1
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-ge v0, v1, :L0
  .line 2
    invoke-static { p0, p1, p2 }, Lc/g/d/d;->g(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object p0
    if-eqz p0, :L0
    return-object p0
  :L0
  .line 3
    invoke-static { p1, p2 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object p0
    return-object p0
  :L1
  .line 4
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "Context cannot be null"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static b(Landroid/content/Context;Landroid/os/CancellationSignal;[Lc/g/h/f$b;I)Landroid/graphics/Typeface;
  .registers 5
  .line 1
    sget-object v0, Lc/g/d/d;->a:Lc/g/d/j;
    invoke-virtual { v0, p0, p1, p2, p3 }, Lc/g/d/j;->c(Landroid/content/Context;Landroid/os/CancellationSignal;[Lc/g/h/f$b;I)Landroid/graphics/Typeface;
    move-result-object p0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroidx/core/content/c/c$a;Landroid/content/res/Resources;IILandroidx/core/content/c/f$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
  .registers 21
    move-object v0, p1
    move-object/from16 v1, p5
    move-object/from16 v2, p6
  .line 1
    instance-of v3, v0, Landroidx/core/content/c/c$d;
    if-eqz v3, :L8
  .line 2
    check-cast v0, Landroidx/core/content/c/c$d;
  .line 3
    invoke-virtual { v0 }, Landroidx/core/content/c/c$d;->c()Ljava/lang/String;
    move-result-object v3
  .line 4
    invoke-static { v3 }, Lc/g/d/d;->h(Ljava/lang/String;)Landroid/graphics/Typeface;
    move-result-object v3
    if-eqz v3, :L1
    if-eqz v1, :L0
  .line 5
    invoke-virtual { v1, v3, v2 }, Landroidx/core/content/c/f$a;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
  :L0
    return-object v3
  :L1
    const/4 v3, 1
    const/4 v4, 0
    if-eqz p7, :L2
  .line 6
    invoke-virtual { v0 }, Landroidx/core/content/c/c$d;->a()I
    move-result v5
    if-nez v5, :L4
    goto :L3
  :L2
    if-nez v1, :L4
  :L3
    const/4 v9, 1
    goto :L5
  :L4
    const/4 v9, 0
  :L5
    if-eqz p7, :L6
  .line 7
    invoke-virtual { v0 }, Landroidx/core/content/c/c$d;->d()I
    move-result v3
    move v10, v3
    goto :L7
  :L6
    const/4 v3, -1
    const/4 v10, -1
  :L7
  .line 8
    invoke-static/range { p6 .. p6 }, Landroidx/core/content/c/f$a;->c(Landroid/os/Handler;)Landroid/os/Handler;
    move-result-object v11
  .line 9
    new-instance v12, Lc/g/d/d$a;
    invoke-direct { v12, v1 }, Lc/g/d/d$a;-><init>(Landroidx/core/content/c/f$a;)V
  .line 10
    invoke-virtual { v0 }, Landroidx/core/content/c/c$d;->b()Lc/g/h/d;
    move-result-object v7
    move-object v6, p0
    move/from16 v8, p4
    invoke-static/range { v6 .. v12 }, Lc/g/h/f;->a(Landroid/content/Context;Lc/g/h/d;IZILandroid/os/Handler;Lc/g/h/f$c;)Landroid/graphics/Typeface;
    move-result-object v0
    move-object v5, p2
    move/from16 v6, p4
    goto :L10
  :L8
  .line 11
    sget-object v3, Lc/g/d/d;->a:Lc/g/d/j;
    check-cast v0, Landroidx/core/content/c/c$b;
    move-object v4, p0
    move-object v5, p2
    move/from16 v6, p4
    invoke-virtual { v3, p0, v0, p2, v6 }, Lc/g/d/j;->b(Landroid/content/Context;Landroidx/core/content/c/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    move-result-object v0
    if-eqz v1, :L10
    if-eqz v0, :L9
  .line 12
    invoke-virtual { v1, v0, v2 }, Landroidx/core/content/c/f$a;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    goto :L10
  :L9
    const/4 v3, -3
  .line 13
    invoke-virtual { v1, v3, v2 }, Landroidx/core/content/c/f$a;->a(ILandroid/os/Handler;)V
  :L10
    if-eqz v0, :L11
  .line 14
    sget-object v1, Lc/g/d/d;->b:Lc/d/e;
    invoke-static/range { p2 .. p4 }, Lc/g/d/d;->e(Landroid/content/res/Resources;II)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2, v0 }, Lc/d/e;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L11
    return-object v0
.end method

.method public static d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
  .registers 11
  .line 1
    sget-object v0, Lc/g/d/d;->a:Lc/g/d/j;
    move-object v1, p0
    move-object v2, p1
    move v3, p2
    move-object v4, p3
    move v5, p4
    invoke-virtual/range { v0 .. v5 }, Lc/g/d/j;->e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    move-result-object p0
    if-eqz p0, :L0
  .line 2
    invoke-static { p1, p2, p4 }, Lc/g/d/d;->e(Landroid/content/res/Resources;II)Ljava/lang/String;
    move-result-object p1
  .line 3
    sget-object p2, Lc/g/d/d;->b:Lc/d/e;
    invoke-virtual { p2, p1, p0 }, Lc/d/e;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-object p0
.end method

.method private static e(Landroid/content/res/Resources;II)Ljava/lang/String;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "-"
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static f(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
  .registers 4
  .line 1
    sget-object v0, Lc/g/d/d;->b:Lc/d/e;
    invoke-static { p0, p1, p2 }, Lc/g/d/d;->e(Landroid/content/res/Resources;II)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Lc/d/e;->c(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/graphics/Typeface;
    return-object p0
.end method

.method private static g(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
  .registers 5
  .line 1
    sget-object v0, Lc/g/d/d;->a:Lc/g/d/j;
    invoke-virtual { v0, p1 }, Lc/g/d/j;->i(Landroid/graphics/Typeface;)Landroidx/core/content/c/c$b;
    move-result-object p1
    if-nez p1, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 2
    sget-object v0, Lc/g/d/d;->a:Lc/g/d/j;
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
  .line 4
    invoke-virtual { v0, p0, p1, v1, p2 }, Lc/g/d/j;->b(Landroid/content/Context;Landroidx/core/content/c/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    move-result-object p0
    return-object p0
.end method

.method private static h(Ljava/lang/String;)Landroid/graphics/Typeface;
  .registers 4
    const/4 v0, 0
    if-eqz p0, :L1
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-eqz v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  .line 2
    invoke-static { p0, v1 }, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    move-result-object p0
  .line 3
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
    invoke-static { v2, v1 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object v1
    if-eqz p0, :L1
  .line 4
    invoke-virtual { p0, v1 }, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L1
    move-object v0, p0
  :L1
    return-object v0
.end method
