.class public Ld/c/a/a/l/e;
.super Landroid/util/Property;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroid/util/Property<",
    "Landroid/graphics/drawable/Drawable;",
    "Ljava/lang/Integer;",
    ">;"
  }
.end annotation

.field public final static b:Landroid/util/Property;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/Property<",
      "Landroid/graphics/drawable/Drawable;",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field private final a:Ljava/util/WeakHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/WeakHashMap<",
      "Landroid/graphics/drawable/Drawable;",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Ld/c/a/a/l/e;
    invoke-direct { v0 }, Ld/c/a/a/l/e;-><init>()V
    sput-object v0, Ld/c/a/a/l/e;->b:Landroid/util/Property;
    return-void
.end method

.method private constructor <init>()V
  .registers 3
  .line 1
    const-class v0, Ljava/lang/Integer;
    const-string v1, "drawableAlphaCompat"
    invoke-direct { p0, v0, v1 }, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
  .line 2
    new-instance v0, Ljava/util/WeakHashMap;
    invoke-direct { v0 }, Ljava/util/WeakHashMap;-><init>()V
    iput-object v0, p0, Ld/c/a/a/l/e;->a:Ljava/util/WeakHashMap;
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getAlpha()I
    move-result p1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    return-object p1
  :L0
  .line 3
    iget-object v0, p0, Ld/c/a/a/l/e;->a:Ljava/util/WeakHashMap;
    invoke-virtual { v0, p1 }, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Ld/c/a/a/l/e;->a:Ljava/util/WeakHashMap;
    invoke-virtual { v0, p1 }, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Integer;
    return-object p1
  :L1
    const/16 p1, 255
  .line 5
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    return-object p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-ge v0, v1, :L0
  .line 2
    iget-object v0, p0, Ld/c/a/a/l/e;->a:Ljava/util/WeakHashMap;
    invoke-virtual { v0, p1, p2 }, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 3
    invoke-virtual { p2 }, Ljava/lang/Integer;->intValue()I
    move-result p2
    invoke-virtual { p1, p2 }, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 2
  .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;
    invoke-virtual { p0, p1 }, Ld/c/a/a/l/e;->a(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
  .registers 3
  .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;
    check-cast p2, Ljava/lang/Integer;
    invoke-virtual { p0, p1, p2 }, Ld/c/a/a/l/e;->b(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    return-void
.end method
