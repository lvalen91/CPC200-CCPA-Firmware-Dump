.class public Lc/p/o;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/p/o$a;
  }
.end annotation

.field private static a:Lc/p/m;

.field private static b:Ljava/lang/ThreadLocal;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ThreadLocal<",
      "Ljava/lang/ref/WeakReference<",
      "Lc/d/a<",
      "Landroid/view/ViewGroup;",
      "Ljava/util/ArrayList<",
      "Lc/p/m;",
      ">;>;>;>;"
    }
  .end annotation
.end field

.field static c:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroid/view/ViewGroup;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lc/p/b;
    invoke-direct { v0 }, Lc/p/b;-><init>()V
    sput-object v0, Lc/p/o;->a:Lc/p/m;
  .line 2
    new-instance v0, Ljava/lang/ThreadLocal;
    invoke-direct { v0 }, Ljava/lang/ThreadLocal;-><init>()V
    sput-object v0, Lc/p/o;->b:Ljava/lang/ThreadLocal;
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    sput-object v0, Lc/p/o;->c:Ljava/util/ArrayList;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Lc/p/m;)V
  .registers 3
  .line 1
    sget-object v0, Lc/p/o;->c:Ljava/util/ArrayList;
    invoke-virtual { v0, p0 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    invoke-static { p0 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L1
  .line 2
    sget-object v0, Lc/p/o;->c:Ljava/util/ArrayList;
    invoke-virtual { v0, p0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    if-nez p1, :L0
  .line 3
    sget-object p1, Lc/p/o;->a:Lc/p/m;
  :L0
  .line 4
    invoke-virtual { p1 }, Lc/p/m;->l()Lc/p/m;
    move-result-object p1
  .line 5
    invoke-static { p0, p1 }, Lc/p/o;->d(Landroid/view/ViewGroup;Lc/p/m;)V
    const/4 v0, 0
  .line 6
    invoke-static { p0, v0 }, Lc/p/l;->c(Landroid/view/ViewGroup;Lc/p/l;)V
  .line 7
    invoke-static { p0, p1 }, Lc/p/o;->c(Landroid/view/ViewGroup;Lc/p/m;)V
  :L1
    return-void
.end method

.method static b()Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Lc/d/a<",
      "Landroid/view/ViewGroup;",
      "Ljava/util/ArrayList<",
      "Lc/p/m;",
      ">;>;"
    }
  .end annotation
  .registers 4
  .line 1
    sget-object v0, Lc/p/o;->b:Ljava/lang/ThreadLocal;
  .line 2
    invoke-virtual { v0 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/ref/WeakReference;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/d/a;
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 4
    new-instance v0, Lc/d/a;
    invoke-direct { v0 }, Lc/d/a;-><init>()V
  .line 5
    new-instance v1, Ljava/lang/ref/WeakReference;
    invoke-direct { v1, v0 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
  .line 6
    sget-object v2, Lc/p/o;->b:Ljava/lang/ThreadLocal;
    invoke-virtual { v2, v1 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    return-object v0
.end method

.method private static c(Landroid/view/ViewGroup;Lc/p/m;)V
  .registers 3
    if-eqz p1, :L0
    if-eqz p0, :L0
  .line 1
    new-instance v0, Lc/p/o$a;
    invoke-direct { v0, p1, p0 }, Lc/p/o$a;-><init>(Lc/p/m;Landroid/view/ViewGroup;)V
  .line 2
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object p0
    invoke-virtual { p0, v0 }, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  :L0
    return-void
.end method

.method private static d(Landroid/view/ViewGroup;Lc/p/m;)V
  .registers 4
  .line 1
    invoke-static { }, Lc/p/o;->b()Lc/d/a;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-lez v1, :L1
  .line 3
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/p/m;
  .line 4
    invoke-virtual { v1, p0 }, Lc/p/m;->M(Landroid/view/View;)V
    goto :L0
  :L1
    if-eqz p1, :L2
    const/4 v0, 1
  .line 5
    invoke-virtual { p1, p0, v0 }, Lc/p/m;->j(Landroid/view/ViewGroup;Z)V
  :L2
  .line 6
    invoke-static { p0 }, Lc/p/l;->b(Landroid/view/ViewGroup;)Lc/p/l;
    move-result-object p0
    if-eqz p0, :L3
  .line 7
    invoke-virtual { p0 }, Lc/p/l;->a()V
  :L3
    return-void
.end method
