.class Landroidx/core/view/v$l;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/v;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "l"
.end annotation

.field private final static d:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/ref/WeakReference<",
      "Landroid/view/View;",
      ">;>;"
    }
  .end annotation
.end field

.field private a:Ljava/util/WeakHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/WeakHashMap<",
      "Landroid/view/View;",
      "Ljava/lang/Boolean;",
      ">;"
    }
  .end annotation
.end field

.field private b:Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/SparseArray<",
      "Ljava/lang/ref/WeakReference<",
      "Landroid/view/View;",
      ">;>;"
    }
  .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/view/KeyEvent;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    sput-object v0, Landroidx/core/view/v$l;->d:Ljava/util/ArrayList;
    return-void
.end method

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Landroidx/core/view/v$l;->a:Ljava/util/WeakHashMap;
  .line 3
    iput-object v0, p0, Landroidx/core/view/v$l;->b:Landroid/util/SparseArray;
  .line 4
    iput-object v0, p0, Landroidx/core/view/v$l;->c:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method static a(Landroid/view/View;)Landroidx/core/view/v$l;
  .registers 3
  .line 1
    sget v0, Lc/g/b;->tag_unhandled_key_event_manager:I
  .line 2
    invoke-virtual { p0, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/v$l;
    if-nez v0, :L0
  .line 3
    new-instance v0, Landroidx/core/view/v$l;
    invoke-direct { v0 }, Landroidx/core/view/v$l;-><init>()V
  .line 4
    sget v1, Lc/g/b;->tag_unhandled_key_event_manager:I
    invoke-virtual { p0, v1, v0 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
  :L0
    return-object v0
.end method

.method private c(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/core/view/v$l;->a:Ljava/util/WeakHashMap;
    const/4 v1, 0
    if-eqz v0, :L4
    invoke-virtual { v0, p1 }, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
    goto :L4
  :L0
  .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;
    if-eqz v0, :L3
  .line 3
    move-object v0, p1
    check-cast v0, Landroid/view/ViewGroup;
  .line 4
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    add-int/lit8 v2, v2, -1
  :L1
    if-ltz v2, :L3
  .line 5
    invoke-virtual { v0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 6
    invoke-direct { p0, v3, p2 }, Landroidx/core/view/v$l;->c(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    move-result-object v3
    if-eqz v3, :L2
    return-object v3
  :L2
    add-int/lit8 v2, v2, -1
    goto :L1
  :L3
  .line 7
    invoke-direct { p0, p1, p2 }, Landroidx/core/view/v$l;->e(Landroid/view/View;Landroid/view/KeyEvent;)Z
    move-result p2
    if-eqz p2, :L4
    return-object p1
  :L4
    return-object v1
.end method

.method private d()Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroid/util/SparseArray<",
      "Ljava/lang/ref/WeakReference<",
      "Landroid/view/View;",
      ">;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/v$l;->b:Landroid/util/SparseArray;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/util/SparseArray;
    invoke-direct { v0 }, Landroid/util/SparseArray;-><init>()V
    iput-object v0, p0, Landroidx/core/view/v$l;->b:Landroid/util/SparseArray;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/core/view/v$l;->b:Landroid/util/SparseArray;
    return-object v0
.end method

.method private e(Landroid/view/View;Landroid/view/KeyEvent;)Z
  .registers 7
  .line 1
    sget v0, Lc/g/b;->tag_unhandled_key_listeners:I
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
    if-eqz v0, :L2
  .line 3
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v2, 1
    sub-int/2addr v1, v2
  :L0
    if-ltz v1, :L2
  .line 4
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/core/view/v$k;
    invoke-interface { v3, p1, p2 }, Landroidx/core/view/v$k;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z
    move-result v3
    if-eqz v3, :L1
    return v2
  :L1
    add-int/lit8 v1, v1, -1
    goto :L0
  :L2
    const/4 p1, 0
    return p1
.end method

.method private g()V
  .catchall { :L2 .. :L10 } :L9
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/core/view/v$l;->a:Ljava/util/WeakHashMap;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ljava/util/WeakHashMap;->clear()V
  :L0
  .line 3
    sget-object v0, Landroidx/core/view/v$l;->d:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-eqz v0, :L1
    return-void
  :L1
  .line 4
    sget-object v0, Landroidx/core/view/v$l;->d:Ljava/util/ArrayList;
    monitor-enter v0
  :L2
  .line 5
    iget-object v1, p0, Landroidx/core/view/v$l;->a:Ljava/util/WeakHashMap;
    if-nez v1, :L3
  .line 6
    new-instance v1, Ljava/util/WeakHashMap;
    invoke-direct { v1 }, Ljava/util/WeakHashMap;-><init>()V
    iput-object v1, p0, Landroidx/core/view/v$l;->a:Ljava/util/WeakHashMap;
  :L3
  .line 7
    sget-object v1, Landroidx/core/view/v$l;->d:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    add-int/lit8 v1, v1, -1
  :L4
    if-ltz v1, :L8
  .line 8
    sget-object v2, Landroidx/core/view/v$l;->d:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/ref/WeakReference;
  .line 9
    invoke-virtual { v2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
    if-nez v2, :L5
  .line 10
    sget-object v2, Landroidx/core/view/v$l;->d:Ljava/util/ArrayList;
    invoke-virtual { v2, v1 }, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    goto :L7
  :L5
  .line 11
    iget-object v3, p0, Landroidx/core/view/v$l;->a:Ljava/util/WeakHashMap;
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual { v3, v2, v4 }, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    invoke-virtual { v2 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v2
  :L6
  .line 13
    instance-of v3, v2, Landroid/view/View;
    if-eqz v3, :L7
  .line 14
    iget-object v3, p0, Landroidx/core/view/v$l;->a:Ljava/util/WeakHashMap;
    move-object v4, v2
    check-cast v4, Landroid/view/View;
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual { v3, v4, v5 }, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 15
    invoke-interface { v2 }, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
    move-result-object v2
    goto :L6
  :L7
    add-int/lit8 v1, v1, -1
    goto :L4
  :L8
  .line 16
    monitor-exit v0
    return-void
  :L9
    move-exception v1
    monitor-exit v0
  :L10
    goto :L12
  :L11
    throw v1
  :L12
    goto :L11
.end method

.method b(Landroid/view/View;Landroid/view/KeyEvent;)Z
  .registers 5
  .line 1
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->getAction()I
    move-result v0
    if-nez v0, :L0
  .line 2
    invoke-direct { p0 }, Landroidx/core/view/v$l;->g()V
  :L0
  .line 3
    invoke-direct { p0, p1, p2 }, Landroidx/core/view/v$l;->c(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    move-result-object p1
  .line 4
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->getAction()I
    move-result v0
    if-nez v0, :L1
  .line 5
    invoke-virtual { p2 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result p2
    if-eqz p1, :L1
  .line 6
    invoke-static { p2 }, Landroid/view/KeyEvent;->isModifierKey(I)Z
    move-result v0
    if-nez v0, :L1
  .line 7
    invoke-direct { p0 }, Landroidx/core/view/v$l;->d()Landroid/util/SparseArray;
    move-result-object v0
    new-instance v1, Ljava/lang/ref/WeakReference;
    invoke-direct { v1, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    invoke-virtual { v0, p2, v1 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
  :L1
    if-eqz p1, :L2
    const/4 p1, 1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    return p1
.end method

.method f(Landroid/view/KeyEvent;)Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/core/view/v$l;->c:Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-ne v0, p1, :L0
    return v1
  :L0
  .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Landroidx/core/view/v$l;->c:Ljava/lang/ref/WeakReference;
    const/4 v0, 0
  .line 4
    invoke-direct { p0 }, Landroidx/core/view/v$l;->d()Landroid/util/SparseArray;
    move-result-object v2
  .line 5
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getAction()I
    move-result v3
    const/4 v4, 1
    if-ne v3, v4, :L1
  .line 6
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v3
    invoke-virtual { v2, v3 }, Landroid/util/SparseArray;->indexOfKey(I)I
    move-result v3
    if-ltz v3, :L1
  .line 7
    invoke-virtual { v2, v3 }, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/ref/WeakReference;
  .line 8
    invoke-virtual { v2, v3 }, Landroid/util/SparseArray;->removeAt(I)V
  :L1
    if-nez v0, :L2
  .line 9
    invoke-virtual { p1 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v0
    invoke-virtual { v2, v0 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/ref/WeakReference;
  :L2
    if-eqz v0, :L4
  .line 10
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    if-eqz v0, :L3
  .line 11
    invoke-static { v0 }, Landroidx/core/view/v;->S(Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :L3
  .line 12
    invoke-direct { p0, v0, p1 }, Landroidx/core/view/v$l;->e(Landroid/view/View;Landroid/view/KeyEvent;)Z
  :L3
    return v4
  :L4
    return v1
.end method
