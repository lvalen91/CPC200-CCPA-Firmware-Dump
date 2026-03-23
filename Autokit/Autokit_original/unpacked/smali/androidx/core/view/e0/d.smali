.class public Landroidx/core/view/e0/d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/view/e0/d$c;,
    Landroidx/core/view/e0/d$b;,
    Landroidx/core/view/e0/d$a;
  }
.end annotation

.field private final a:Ljava/lang/Object;

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
  .line 3
    new-instance v0, Landroidx/core/view/e0/d$c;
    invoke-direct { v0, p0 }, Landroidx/core/view/e0/d$c;-><init>(Landroidx/core/view/e0/d;)V
    iput-object v0, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;
    goto :L3
  :L0
    const/16 v1, 19
    if-lt v0, v1, :L1
  .line 4
    new-instance v0, Landroidx/core/view/e0/d$b;
    invoke-direct { v0, p0 }, Landroidx/core/view/e0/d$b;-><init>(Landroidx/core/view/e0/d;)V
    iput-object v0, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;
    goto :L3
  :L1
    const/16 v1, 16
    if-lt v0, v1, :L2
  .line 5
    new-instance v0, Landroidx/core/view/e0/d$a;
    invoke-direct { v0, p0 }, Landroidx/core/view/e0/d$a;-><init>(Landroidx/core/view/e0/d;)V
    iput-object v0, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;
    goto :L3
  :L2
    const/4 v0, 0
  .line 6
    iput-object v0, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;
  :L3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
  .registers 2
  .line 7
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 8
    iput-object p1, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;
    return-void
.end method

.method public a(ILandroidx/core/view/e0/c;Ljava/lang/String;Landroid/os/Bundle;)V
  .registers 5
    return-void
.end method

.method public b(I)Landroidx/core/view/e0/c;
  .registers 2
    const/4 p1, 0
    return-object p1
.end method

.method public c(Ljava/lang/String;I)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "I)",
      "Ljava/util/List<",
      "Landroidx/core/view/e0/c;",
      ">;"
    }
  .end annotation
  .registers 3
    const/4 p1, 0
    return-object p1
.end method

.method public d(I)Landroidx/core/view/e0/c;
  .registers 2
    const/4 p1, 0
    return-object p1
.end method

.method public e()Ljava/lang/Object;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;
    return-object v0
.end method

.method public f(IILandroid/os/Bundle;)Z
  .registers 4
    const/4 p1, 0
    return p1
.end method
