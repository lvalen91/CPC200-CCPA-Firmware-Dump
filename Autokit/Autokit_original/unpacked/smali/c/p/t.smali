.class Lc/p/t;
.super Ljava/lang/Object;
.source "SourceFile"

.field final a:Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/a<",
      "Landroid/view/View;",
      "Lc/p/s;",
      ">;"
    }
  .end annotation
.end field

.field final b:Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/SparseArray<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field final c:Lc/d/d;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/d<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field final d:Lc/d/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lc/d/a;
    invoke-direct { v0 }, Lc/d/a;-><init>()V
    iput-object v0, p0, Lc/p/t;->a:Lc/d/a;
  .line 3
    new-instance v0, Landroid/util/SparseArray;
    invoke-direct { v0 }, Landroid/util/SparseArray;-><init>()V
    iput-object v0, p0, Lc/p/t;->b:Landroid/util/SparseArray;
  .line 4
    new-instance v0, Lc/d/d;
    invoke-direct { v0 }, Lc/d/d;-><init>()V
    iput-object v0, p0, Lc/p/t;->c:Lc/d/d;
  .line 5
    new-instance v0, Lc/d/a;
    invoke-direct { v0 }, Lc/d/a;-><init>()V
    iput-object v0, p0, Lc/p/t;->d:Lc/d/a;
    return-void
.end method
