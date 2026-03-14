.class public final Lc/a/k/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "RestrictedAPI"
  }
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/a/k/a/a$a;
  }
.end annotation

.field private final static a:Ljava/lang/ThreadLocal;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ThreadLocal<",
      "Landroid/util/TypedValue;",
      ">;"
    }
  .end annotation
.end field

.field private final static b:Ljava/util/WeakHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/WeakHashMap<",
      "Landroid/content/Context;",
      "Landroid/util/SparseArray<",
      "Lc/a/k/a/a$a;",
      ">;>;"
    }
  .end annotation
.end field

.field private final static c:Ljava/lang/Object;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/ThreadLocal;
    invoke-direct { v0 }, Ljava/lang/ThreadLocal;-><init>()V
    sput-object v0, Lc/a/k/a/a;->a:Ljava/lang/ThreadLocal;
  .line 2
    new-instance v0, Ljava/util/WeakHashMap;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/util/WeakHashMap;-><init>(I)V
    sput-object v0, Lc/a/k/a/a;->b:Ljava/util/WeakHashMap;
  .line 3
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    sput-object v0, Lc/a/k/a/a;->c:Ljava/lang/Object;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
  .catchall { :L0 .. :L3 } :L2
  .registers 6
  .line 1
    sget-object v0, Lc/a/k/a/a;->c:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    sget-object v1, Lc/a/k/a/a;->b:Ljava/util/WeakHashMap;
    invoke-virtual { v1, p0 }, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/util/SparseArray;
    if-nez v1, :L1
  .line 3
    new-instance v1, Landroid/util/SparseArray;
    invoke-direct { v1 }, Landroid/util/SparseArray;-><init>()V
  .line 4
    sget-object v2, Lc/a/k/a/a;->b:Ljava/util/WeakHashMap;
    invoke-virtual { v2, p0, v1 }, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 5
    new-instance v2, Lc/a/k/a/a$a;
  .line 6
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p0
    invoke-direct { v2, p2, p0 }, Lc/a/k/a/a$a;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V
  .line 7
    invoke-virtual { v1, p1, v2 }, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
  .line 8
    monitor-exit v0
    return-void
  :L2
    move-exception p0
    monitor-exit v0
  :L3
    throw p0
.end method

.method private static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
  .catchall { :L0 .. :L4 } :L3
  .registers 6
  .line 1
    sget-object v0, Lc/a/k/a/a;->c:Ljava/lang/Object;
    monitor-enter v0
  :L0
  .line 2
    sget-object v1, Lc/a/k/a/a;->b:Ljava/util/WeakHashMap;
    invoke-virtual { v1, p0 }, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/util/SparseArray;
    if-eqz v1, :L2
  .line 3
    invoke-virtual { v1 }, Landroid/util/SparseArray;->size()I
    move-result v2
    if-lez v2, :L2
  .line 4
    invoke-virtual { v1, p1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/a/k/a/a$a;
    if-eqz v2, :L2
  .line 5
    iget-object v3, v2, Lc/a/k/a/a$a;->b:Landroid/content/res/Configuration;
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p0
    invoke-virtual { v3, p0 }, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    move-result p0
    if-eqz p0, :L1
  .line 6
    iget-object p0, v2, Lc/a/k/a/a$a;->a:Landroid/content/res/ColorStateList;
    monitor-exit v0
    return-object p0
  :L1
  .line 7
    invoke-virtual { v1, p1 }, Landroid/util/SparseArray;->remove(I)V
  :L2
  .line 8
    monitor-exit v0
    const/4 p0, 0
    return-object p0
  :L3
    move-exception p0
    monitor-exit v0
  :L4
    throw p0
.end method

.method public static c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    invoke-static { p0, p1 }, Lc/a/k/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object v0
    if-eqz v0, :L1
    return-object v0
  :L1
  .line 4
    invoke-static { p0, p1 }, Lc/a/k/a/a;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object v0
    if-eqz v0, :L2
  .line 5
    invoke-static { p0, p1, v0 }, Lc/a/k/a/a;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    return-object v0
  :L2
  .line 6
    invoke-static { p0, p1 }, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
.end method

.method public static d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
  .registers 3
  .line 1
    invoke-static { }, Landroidx/appcompat/widget/k0;->h()Landroidx/appcompat/widget/k0;
    move-result-object v0
    invoke-virtual { v0, p0, p1 }, Landroidx/appcompat/widget/k0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object p0
    return-object p0
.end method

.method private static e()Landroid/util/TypedValue;
  .registers 2
  .line 1
    sget-object v0, Lc/a/k/a/a;->a:Ljava/lang/ThreadLocal;
    invoke-virtual { v0 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/util/TypedValue;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 3
    sget-object v1, Lc/a/k/a/a;->a:Ljava/lang/ThreadLocal;
    invoke-virtual { v1, v0 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
  :L0
    return-object v0
.end method

.method private static f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .registers 4
  .line 1
    invoke-static { p0, p1 }, Lc/a/k/a/a;->g(Landroid/content/Context;I)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    return-object v1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
  .line 3
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    move-result-object p1
  :L1
  .line 4
    invoke-virtual { p0 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p0
    invoke-static { v0, p1, p0 }, Landroidx/core/content/c/a;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    move-result-object p0
  :L2
    return-object p0
  :L3
    return-object v1
.end method

.method private static g(Landroid/content/Context;I)Z
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
  .line 2
    invoke-static { }, Lc/a/k/a/a;->e()Landroid/util/TypedValue;
    move-result-object v0
    const/4 v1, 1
  .line 3
    invoke-virtual { p0, p1, v0, v1 }, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
  .line 4
    iget p0, v0, Landroid/util/TypedValue;->type:I
    const/16 p1, 28
    if-lt p0, p1, :L0
    const/16 p1, 31
    if-gt p0, p1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method
