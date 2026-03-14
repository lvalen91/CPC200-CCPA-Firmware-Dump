.class abstract Landroidx/core/view/v$g;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/v;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1032
  name = "g"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field private final a:I

.field private final b:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "TT;>;"
    }
  .end annotation
.end field

.field private final c:I

.field private final d:I

.method constructor <init>(ILjava/lang/Class;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/lang/Class<",
      "TT;>;I)V"
    }
  .end annotation
  .registers 5
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, v0, p3 }, Landroidx/core/view/v$g;-><init>(ILjava/lang/Class;II)V
    return-void
.end method

.method constructor <init>(ILjava/lang/Class;II)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/lang/Class<",
      "TT;>;II)V"
    }
  .end annotation
  .registers 5
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    iput p1, p0, Landroidx/core/view/v$g;->a:I
  .line 4
    iput-object p2, p0, Landroidx/core/view/v$g;->b:Ljava/lang/Class;
  .line 5
    iput p3, p0, Landroidx/core/view/v$g;->d:I
  .line 6
    iput p4, p0, Landroidx/core/view/v$g;->c:I
    return-void
.end method

.method private b()Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private c()Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    iget v1, p0, Landroidx/core/view/v$g;->c:I
    if-lt v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
  .registers 4
    const/4 v0, 0
    if-nez p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
  :L1
    if-nez p2, :L2
    const/4 p2, 0
    goto :L3
  :L2
  .line 2
    invoke-virtual { p2 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p2
  :L3
    if-ne p1, p2, :L4
    const/4 v0, 1
  :L4
    return v0
.end method

.method abstract d(Landroid/view/View;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      ")TT;"
    }
  .end annotation
.end method

.method abstract e(Landroid/view/View;Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      "TT;)V"
    }
  .end annotation
.end method

.method f(Landroid/view/View;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      ")TT;"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/core/view/v$g;->c()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/core/view/v$g;->d(Landroid/view/View;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    invoke-direct { p0 }, Landroidx/core/view/v$g;->b()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    iget v0, p0, Landroidx/core/view/v$g;->a:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object p1
  .line 5
    iget-object v0, p0, Landroidx/core/view/v$g;->b:Ljava/lang/Class;
    invoke-virtual { v0, p1 }, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    return-object p1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method g(Landroid/view/View;Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      "TT;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/core/view/v$g;->c()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroidx/core/view/v$g;->e(Landroid/view/View;Ljava/lang/Object;)V
    goto :L1
  :L0
  .line 3
    invoke-direct { p0 }, Landroidx/core/view/v$g;->b()Z
    move-result v0
    if-eqz v0, :L1
    invoke-virtual { p0, p1 }, Landroidx/core/view/v$g;->f(Landroid/view/View;)Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { p0, v0, p2 }, Landroidx/core/view/v$g;->h(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    invoke-static { p1 }, Landroidx/core/view/v;->G(Landroid/view/View;)Landroidx/core/view/a;
  .line 5
    iget v0, p0, Landroidx/core/view/v$g;->a:I
    invoke-virtual { p1, v0, p2 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
  .line 6
    iget p2, p0, Landroidx/core/view/v$g;->d:I
    invoke-static { p1, p2 }, Landroidx/core/view/v;->X(Landroid/view/View;I)V
  :L1
    return-void
.end method

.method abstract h(Ljava/lang/Object;Ljava/lang/Object;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;TT;)Z"
    }
  .end annotation
.end method
