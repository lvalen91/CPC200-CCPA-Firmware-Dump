.class Lc/g/h/e;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/g/h/e$e;
  }
.end annotation

.field final static a:Lc/d/e;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/e<",
      "Ljava/lang/String;",
      "Landroid/graphics/Typeface;",
      ">;"
    }
  .end annotation
.end field

.field private final static b:Ljava/util/concurrent/ExecutorService;

.field final static c:Ljava/lang/Object;

.field final static d:Lc/d/g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/g<",
      "Ljava/lang/String;",
      "Ljava/util/ArrayList<",
      "Lc/g/j/a<",
      "Lc/g/h/e$e;",
      ">;>;>;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Lc/d/e;
    const/16 v1, 16
    invoke-direct { v0, v1 }, Lc/d/e;-><init>(I)V
    sput-object v0, Lc/g/h/e;->a:Lc/d/e;
    const-string v0, "fonts-androidx"
    const/16 v1, 10
    const/16 v2, 10000
  .line 2
    invoke-static { v0, v1, v2 }, Lc/g/h/g;->a(Ljava/lang/String;II)Ljava/util/concurrent/ThreadPoolExecutor;
    move-result-object v0
    sput-object v0, Lc/g/h/e;->b:Ljava/util/concurrent/ExecutorService;
  .line 3
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    sput-object v0, Lc/g/h/e;->c:Ljava/lang/Object;
  .line 4
    new-instance v0, Lc/d/g;
    invoke-direct { v0 }, Lc/d/g;-><init>()V
    sput-object v0, Lc/g/h/e;->d:Lc/d/g;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Lc/g/h/d;I)Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Lc/g/h/d;->d()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "-"
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private static b(Lc/g/h/f$a;)I
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "WrongConstant"
    }
  .end annotation
  .registers 6
  .line 1
    invoke-virtual { p0 }, Lc/g/h/f$a;->c()I
    move-result v0
    const/4 v1, -3
    const/4 v2, 1
    if-eqz v0, :L1
  .line 2
    invoke-virtual { p0 }, Lc/g/h/f$a;->c()I
    move-result p0
    if-eq p0, v2, :L0
    return v1
  :L0
    const/4 p0, -2
    return p0
  :L1
  .line 3
    invoke-virtual { p0 }, Lc/g/h/f$a;->b()[Lc/g/h/f$b;
    move-result-object p0
    if-eqz p0, :L7
  .line 4
    array-length v0, p0
    if-nez v0, :L2
    goto :L7
  :L2
  .line 5
    array-length v0, p0
    const/4 v2, 0
    const/4 v3, 0
  :L3
    if-ge v3, v0, :L7
    aget-object v4, p0, v3
  .line 6
    invoke-virtual { v4 }, Lc/g/h/f$b;->b()I
    move-result v4
    if-eqz v4, :L6
    if-gez v4, :L4
    goto :L5
  :L4
    move v1, v4
  :L5
    return v1
  :L6
    add-int/lit8 v3, v3, 1
    goto :L3
  :L7
    return v2
.end method

.method static c(Ljava/lang/String;Landroid/content/Context;Lc/g/h/d;I)Lc/g/h/e$e;
  .catch Landroid/content/pm/PackageManager$NameNotFoundException; { :L1 .. :L2 } :L5
  .registers 6
  .line 1
    sget-object v0, Lc/g/h/e;->a:Lc/d/e;
    invoke-virtual { v0, p0 }, Lc/d/e;->c(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/graphics/Typeface;
    if-eqz v0, :L0
  .line 2
    new-instance p0, Lc/g/h/e$e;
    invoke-direct { p0, v0 }, Lc/g/h/e$e;-><init>(Landroid/graphics/Typeface;)V
    return-object p0
  :L0
    const/4 v0, 0
  :L1
  .line 3
    invoke-static { p1, p2, v0 }, Lc/g/h/c;->d(Landroid/content/Context;Lc/g/h/d;Landroid/os/CancellationSignal;)Lc/g/h/f$a;
    move-result-object p2
  :L2
  .line 4
    invoke-static { p2 }, Lc/g/h/e;->b(Lc/g/h/f$a;)I
    move-result v1
    if-eqz v1, :L3
  .line 5
    new-instance p0, Lc/g/h/e$e;
    invoke-direct { p0, v1 }, Lc/g/h/e$e;-><init>(I)V
    return-object p0
  :L3
  .line 6
    invoke-virtual { p2 }, Lc/g/h/f$a;->b()[Lc/g/h/f$b;
    move-result-object p2
  .line 7
    invoke-static { p1, v0, p2, p3 }, Lc/g/d/d;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[Lc/g/h/f$b;I)Landroid/graphics/Typeface;
    move-result-object p1
    if-eqz p1, :L4
  .line 8
    sget-object p2, Lc/g/h/e;->a:Lc/d/e;
    invoke-virtual { p2, p0, p1 }, Lc/d/e;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 9
    new-instance p0, Lc/g/h/e$e;
    invoke-direct { p0, p1 }, Lc/g/h/e$e;-><init>(Landroid/graphics/Typeface;)V
    return-object p0
  :L4
  .line 10
    new-instance p0, Lc/g/h/e$e;
    const/4 p1, -3
    invoke-direct { p0, p1 }, Lc/g/h/e$e;-><init>(I)V
    return-object p0
  :L5
  .line 11
    new-instance p0, Lc/g/h/e$e;
    const/4 p1, -1
    invoke-direct { p0, p1 }, Lc/g/h/e$e;-><init>(I)V
    return-object p0
.end method

.method static d(Landroid/content/Context;Lc/g/h/d;ILjava/util/concurrent/Executor;Lc/g/h/a;)Landroid/graphics/Typeface;
  .catchall { :L1 .. :L3 } :L5
  .catchall { :L6 .. :L7 } :L5
  .registers 9
  .line 1
    invoke-static { p1, p2 }, Lc/g/h/e;->a(Lc/g/h/d;I)Ljava/lang/String;
    move-result-object v0
  .line 2
    sget-object v1, Lc/g/h/e;->a:Lc/d/e;
    invoke-virtual { v1, v0 }, Lc/d/e;->c(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/graphics/Typeface;
    if-eqz v1, :L0
  .line 3
    new-instance p0, Lc/g/h/e$e;
    invoke-direct { p0, v1 }, Lc/g/h/e$e;-><init>(Landroid/graphics/Typeface;)V
    invoke-virtual { p4, p0 }, Lc/g/h/a;->b(Lc/g/h/e$e;)V
    return-object v1
  :L0
  .line 4
    new-instance v1, Lc/g/h/e$b;
    invoke-direct { v1, p4 }, Lc/g/h/e$b;-><init>(Lc/g/h/a;)V
  .line 5
    sget-object p4, Lc/g/h/e;->c:Ljava/lang/Object;
    monitor-enter p4
  :L1
  .line 6
    sget-object v2, Lc/g/h/e;->d:Lc/d/g;
    invoke-virtual { v2, v0 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/ArrayList;
    const/4 v3, 0
    if-eqz v2, :L2
  .line 7
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 8
    monitor-exit p4
    return-object v3
  :L2
  .line 9
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct { v2 }, Ljava/util/ArrayList;-><init>()V
  .line 10
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 11
    sget-object v1, Lc/g/h/e;->d:Lc/d/g;
    invoke-virtual { v1, v0, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    monitor-exit p4
  :L3
  .line 13
    new-instance p4, Lc/g/h/e$c;
    invoke-direct { p4, v0, p0, p1, p2 }, Lc/g/h/e$c;-><init>(Ljava/lang/String;Landroid/content/Context;Lc/g/h/d;I)V
    if-nez p3, :L4
  .line 14
    sget-object p3, Lc/g/h/e;->b:Ljava/util/concurrent/ExecutorService;
  :L4
  .line 15
    new-instance p0, Lc/g/h/e$d;
    invoke-direct { p0, v0 }, Lc/g/h/e$d;-><init>(Ljava/lang/String;)V
    invoke-static { p3, p4, p0 }, Lc/g/h/g;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lc/g/j/a;)V
    return-object v3
  :L5
    move-exception p0
  :L6
  .line 16
    monitor-exit p4
  :L7
    throw p0
.end method

.method static e(Landroid/content/Context;Lc/g/h/d;Lc/g/h/a;II)Landroid/graphics/Typeface;
  .catch Ljava/lang/InterruptedException; { :L2 .. :L3 } :L4
  .registers 7
  .line 1
    invoke-static { p1, p3 }, Lc/g/h/e;->a(Lc/g/h/d;I)Ljava/lang/String;
    move-result-object v0
  .line 2
    sget-object v1, Lc/g/h/e;->a:Lc/d/e;
    invoke-virtual { v1, v0 }, Lc/d/e;->c(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/graphics/Typeface;
    if-eqz v1, :L0
  .line 3
    new-instance p0, Lc/g/h/e$e;
    invoke-direct { p0, v1 }, Lc/g/h/e$e;-><init>(Landroid/graphics/Typeface;)V
    invoke-virtual { p2, p0 }, Lc/g/h/a;->b(Lc/g/h/e$e;)V
    return-object v1
  :L0
    const/4 v1, -1
    if-ne p4, v1, :L1
  .line 4
    invoke-static { v0, p0, p1, p3 }, Lc/g/h/e;->c(Ljava/lang/String;Landroid/content/Context;Lc/g/h/d;I)Lc/g/h/e$e;
    move-result-object p0
  .line 5
    invoke-virtual { p2, p0 }, Lc/g/h/a;->b(Lc/g/h/e$e;)V
  .line 6
    iget-object p0, p0, Lc/g/h/e$e;->a:Landroid/graphics/Typeface;
    return-object p0
  :L1
  .line 7
    new-instance v1, Lc/g/h/e$a;
    invoke-direct { v1, v0, p0, p1, p3 }, Lc/g/h/e$a;-><init>(Ljava/lang/String;Landroid/content/Context;Lc/g/h/d;I)V
  :L2
  .line 8
    sget-object p0, Lc/g/h/e;->b:Ljava/util/concurrent/ExecutorService;
    invoke-static { p0, v1, p4 }, Lc/g/h/g;->c(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Lc/g/h/e$e;
  .line 9
    invoke-virtual { p2, p0 }, Lc/g/h/a;->b(Lc/g/h/e$e;)V
  .line 10
    iget-object p0, p0, Lc/g/h/e$e;->a:Landroid/graphics/Typeface;
  :L3
    return-object p0
  :L4
  .line 11
    new-instance p0, Lc/g/h/e$e;
    const/4 p1, -3
    invoke-direct { p0, p1 }, Lc/g/h/e$e;-><init>(I)V
    invoke-virtual { p2, p0 }, Lc/g/h/a;->b(Lc/g/h/e$e;)V
    const/4 p0, 0
    return-object p0
.end method
