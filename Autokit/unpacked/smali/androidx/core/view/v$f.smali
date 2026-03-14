.class Landroidx/core/view/v$f;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/v;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "f"
.end annotation

.field private b:Ljava/util/WeakHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/WeakHashMap<",
      "Landroid/view/View;",
      "Ljava/lang/Boolean;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/WeakHashMap;
    invoke-direct { v0 }, Ljava/util/WeakHashMap;-><init>()V
    iput-object v0, p0, Landroidx/core/view/v$f;->b:Ljava/util/WeakHashMap;
    return-void
.end method

.method private a(Landroid/view/View;Z)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getVisibility()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eq p2, v0, :L4
    if-eqz v0, :L2
    const/16 p2, 16
    goto :L3
  :L2
    const/16 p2, 32
  :L3
  .line 2
    invoke-static { p1, p2 }, Landroidx/core/view/v;->X(Landroid/view/View;I)V
  .line 3
    iget-object p2, p0, Landroidx/core/view/v$f;->b:Ljava/util/WeakHashMap;
    invoke-static { v0 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v0
    invoke-virtual { p2, p1, v0 }, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L4
    return-void
.end method

.method private b(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object p1
    invoke-virtual { p1, p0 }, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    return-void
.end method

.method public onGlobalLayout()V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-ge v0, v1, :L1
  .line 2
    iget-object v0, p0, Landroidx/core/view/v$f;->b:Ljava/util/WeakHashMap;
    invoke-virtual { v0 }, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Map$Entry;
  .line 3
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
    invoke-interface { v1 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Boolean;
    invoke-virtual { v1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v1
    invoke-direct { p0, v2, v1 }, Landroidx/core/view/v$f;->a(Landroid/view/View;Z)V
    goto :L0
  :L1
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/core/view/v$f;->b(Landroid/view/View;)V
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
  .registers 2
    return-void
.end method
