.class public final Lc/g/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/g/i/e$f;,
    Lc/g/i/e$a;,
    Lc/g/i/e$b;,
    Lc/g/i/e$c;,
    Lc/g/i/e$e;,
    Lc/g/i/e$d;
  }
.end annotation

.field public final static a:Lc/g/i/d;

.field public final static b:Lc/g/i/d;

.field public final static c:Lc/g/i/d;

.field public final static d:Lc/g/i/d;

.method static constructor <clinit>()V
  .registers 4
  .line 1
    new-instance v0, Lc/g/i/e$e;
    const/4 v1, 0
    const/4 v2, 0
    invoke-direct { v0, v1, v2 }, Lc/g/i/e$e;-><init>(Lc/g/i/e$c;Z)V
    sput-object v0, Lc/g/i/e;->a:Lc/g/i/d;
  .line 2
    new-instance v0, Lc/g/i/e$e;
    const/4 v3, 1
    invoke-direct { v0, v1, v3 }, Lc/g/i/e$e;-><init>(Lc/g/i/e$c;Z)V
    sput-object v0, Lc/g/i/e;->b:Lc/g/i/d;
  .line 3
    new-instance v0, Lc/g/i/e$e;
    sget-object v1, Lc/g/i/e$b;->a:Lc/g/i/e$b;
    invoke-direct { v0, v1, v2 }, Lc/g/i/e$e;-><init>(Lc/g/i/e$c;Z)V
    sput-object v0, Lc/g/i/e;->c:Lc/g/i/d;
  .line 4
    new-instance v0, Lc/g/i/e$e;
    sget-object v1, Lc/g/i/e$b;->a:Lc/g/i/e$b;
    invoke-direct { v0, v1, v3 }, Lc/g/i/e$e;-><init>(Lc/g/i/e$c;Z)V
    sput-object v0, Lc/g/i/e;->d:Lc/g/i/d;
  .line 5
    sget-object v0, Lc/g/i/e$a;->b:Lc/g/i/e$a;
  .line 6
    sget-object v0, Lc/g/i/e$f;->b:Lc/g/i/e$f;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static a(I)I
  .registers 2
    const/4 v0, 1
    if-eqz p0, :L1
    if-eq p0, v0, :L0
    const/4 v0, 2
    if-eq p0, v0, :L0
    return v0
  :L0
    const/4 p0, 0
    return p0
  :L1
    return v0
.end method

.method static b(I)I
  .registers 3
    const/4 v0, 1
    if-eqz p0, :L1
    if-eq p0, v0, :L0
    const/4 v1, 2
    if-eq p0, v1, :L0
    packed-switch p0, :L2
    return v1
  :L0
    const/4 p0, 0
    return p0
  :L1
    return v0
  :L2
  .packed-switch 14
    :L1
    :L1
    :L0
    :L0
  .end packed-switch
.end method
