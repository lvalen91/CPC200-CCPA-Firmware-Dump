.class public Lc/b/a/a/a;
.super Lc/b/a/a/c;
.source "SourceFile"

.field private static volatile c:Lc/b/a/a/a;

.field private a:Lc/b/a/a/c;

.field private b:Lc/b/a/a/c;

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method private constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/b/a/a/c;-><init>()V
  .line 2
    new-instance v0, Lc/b/a/a/b;
    invoke-direct { v0 }, Lc/b/a/a/b;-><init>()V
    iput-object v0, p0, Lc/b/a/a/a;->b:Lc/b/a/a/c;
  .line 3
    iput-object v0, p0, Lc/b/a/a/a;->a:Lc/b/a/a/c;
    return-void
.end method

.method public static b()Lc/b/a/a/a;
  .catchall { :L1 .. :L3 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 3
  .line 1
    sget-object v0, Lc/b/a/a/a;->c:Lc/b/a/a/a;
    if-eqz v0, :L0
  .line 2
    sget-object v0, Lc/b/a/a/a;->c:Lc/b/a/a/a;
    return-object v0
  :L0
  .line 3
    const-class v0, Lc/b/a/a/a;
    monitor-enter v0
  :L1
  .line 4
    sget-object v1, Lc/b/a/a/a;->c:Lc/b/a/a/a;
    if-nez v1, :L2
  .line 5
    new-instance v1, Lc/b/a/a/a;
    invoke-direct { v1 }, Lc/b/a/a/a;-><init>()V
    sput-object v1, Lc/b/a/a/a;->c:Lc/b/a/a/a;
  :L2
  .line 6
    monitor-exit v0
  :L3
  .line 7
    sget-object v0, Lc/b/a/a/a;->c:Lc/b/a/a/a;
    return-object v0
  :L4
    move-exception v1
  :L5
  .line 8
    monitor-exit v0
  :L6
    throw v1
.end method

.method public a()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/b/a/a/a;->a:Lc/b/a/a/c;
    invoke-virtual { v0 }, Lc/b/a/a/c;->a()Z
    move-result v0
    return v0
.end method
