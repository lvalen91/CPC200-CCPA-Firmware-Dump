.class public final Landroidx/core/view/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "b"
.end annotation

.field private final a:Landroidx/core/view/d0$f;

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 30
    if-lt v0, v1, :L0
  .line 3
    new-instance v0, Landroidx/core/view/d0$e;
    invoke-direct { v0 }, Landroidx/core/view/d0$e;-><init>()V
    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
    goto :L3
  :L0
    const/16 v1, 29
    if-lt v0, v1, :L1
  .line 4
    new-instance v0, Landroidx/core/view/d0$d;
    invoke-direct { v0 }, Landroidx/core/view/d0$d;-><init>()V
    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
    goto :L3
  :L1
    const/16 v1, 20
    if-lt v0, v1, :L2
  .line 5
    new-instance v0, Landroidx/core/view/d0$c;
    invoke-direct { v0 }, Landroidx/core/view/d0$c;-><init>()V
    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
    goto :L3
  :L2
  .line 6
    new-instance v0, Landroidx/core/view/d0$f;
    invoke-direct { v0 }, Landroidx/core/view/d0$f;-><init>()V
    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
  :L3
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/d0;)V
  .registers 4
  .line 7
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 30
    if-lt v0, v1, :L0
  .line 9
    new-instance v0, Landroidx/core/view/d0$e;
    invoke-direct { v0, p1 }, Landroidx/core/view/d0$e;-><init>(Landroidx/core/view/d0;)V
    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
    goto :L3
  :L0
    const/16 v1, 29
    if-lt v0, v1, :L1
  .line 10
    new-instance v0, Landroidx/core/view/d0$d;
    invoke-direct { v0, p1 }, Landroidx/core/view/d0$d;-><init>(Landroidx/core/view/d0;)V
    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
    goto :L3
  :L1
    const/16 v1, 20
    if-lt v0, v1, :L2
  .line 11
    new-instance v0, Landroidx/core/view/d0$c;
    invoke-direct { v0, p1 }, Landroidx/core/view/d0$c;-><init>(Landroidx/core/view/d0;)V
    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
    goto :L3
  :L2
  .line 12
    new-instance v0, Landroidx/core/view/d0$f;
    invoke-direct { v0, p1 }, Landroidx/core/view/d0$f;-><init>(Landroidx/core/view/d0;)V
    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
  :L3
    return-void
.end method

.method public a()Landroidx/core/view/d0;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
    invoke-virtual { v0 }, Landroidx/core/view/d0$f;->b()Landroidx/core/view/d0;
    move-result-object v0
    return-object v0
.end method

.method public b(Lc/g/d/b;)Landroidx/core/view/d0$b;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
    invoke-virtual { v0, p1 }, Landroidx/core/view/d0$f;->d(Lc/g/d/b;)V
    return-object p0
.end method

.method public c(Lc/g/d/b;)Landroidx/core/view/d0$b;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;
    invoke-virtual { v0, p1 }, Landroidx/core/view/d0$f;->f(Lc/g/d/b;)V
    return-object p0
.end method
