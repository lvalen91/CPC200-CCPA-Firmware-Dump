.class public Landroidx/databinding/k/b/a;
.super Landroidx/databinding/c;
.source "SourceFile"

.field private final static a:Landroid/util/SparseIntArray;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Landroid/util/SparseIntArray;-><init>(I)V
    sput-object v0, Landroidx/databinding/k/b/a;->a:Landroid/util/SparseIntArray;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/databinding/c;-><init>()V
    return-void
.end method

.method public a()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroidx/databinding/c;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/util/ArrayList;-><init>(I)V
    return-object v0
.end method

.method public b(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
  .registers 4
  .line 1
    sget-object p1, Landroidx/databinding/k/b/a;->a:Landroid/util/SparseIntArray;
    invoke-virtual { p1, p3 }, Landroid/util/SparseIntArray;->get(I)I
    move-result p1
    if-lez p1, :L1
  .line 2
    invoke-virtual { p2 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object p1
    if-eqz p1, :L0
    goto :L1
  :L0
  .line 3
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "view must have a tag"
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public c(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
  .registers 5
    const/4 p1, 0
    if-eqz p2, :L2
  .line 1
    array-length v0, p2
    if-nez v0, :L0
    goto :L2
  :L0
  .line 2
    sget-object v0, Landroidx/databinding/k/b/a;->a:Landroid/util/SparseIntArray;
    invoke-virtual { v0, p3 }, Landroid/util/SparseIntArray;->get(I)I
    move-result p3
    if-lez p3, :L2
    const/4 p3, 0
  .line 3
    aget-object p2, p2, p3
    invoke-virtual { p2 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object p2
    if-eqz p2, :L1
    goto :L2
  :L1
  .line 4
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "view must have a tag"
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
    return-object p1
.end method
