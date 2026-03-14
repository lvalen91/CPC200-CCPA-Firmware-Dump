.class final Landroidx/core/content/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/content/c/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "a"
.end annotation

.field final a:[I

.field final b:[F

.method constructor <init>(II)V
  .registers 6
  .line 7
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 2
    new-array v1, v0, [I
    const/4 v2, 0
    aput p1, v1, v2
    const/4 p1, 1
    aput p2, v1, p1
  .line 8
    iput-object v1, p0, Landroidx/core/content/c/d$a;->a:[I
    new-array p1, v0, [F
  .line 9
    fill-array-data p1, :L0
    iput-object p1, p0, Landroidx/core/content/c/d$a;->b:[F
    return-void
  :L0
  .array-data 4
    0t 0t 0t 0t
    0t 0t -128t 63t
  .end array-data
.end method

.method constructor <init>(III)V
  .registers 7
  .line 10
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 3
    new-array v1, v0, [I
    const/4 v2, 0
    aput p1, v1, v2
    const/4 p1, 1
    aput p2, v1, p1
    const/4 p1, 2
    aput p3, v1, p1
  .line 11
    iput-object v1, p0, Landroidx/core/content/c/d$a;->a:[I
    new-array p1, v0, [F
  .line 12
    fill-array-data p1, :L0
    iput-object p1, p0, Landroidx/core/content/c/d$a;->b:[F
    return-void
  :L0
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 63t
    0t 0t -128t 63t
  .end array-data
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Ljava/lang/Integer;",
      ">;",
      "Ljava/util/List<",
      "Ljava/lang/Float;",
      ">;)V"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
  .line 3
    new-array v1, v0, [I
    iput-object v1, p0, Landroidx/core/content/c/d$a;->a:[I
  .line 4
    new-array v1, v0, [F
    iput-object v1, p0, Landroidx/core/content/c/d$a;->b:[F
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 5
    iget-object v2, p0, Landroidx/core/content/c/d$a;->a:[I
    invoke-interface { p1, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-virtual { v3 }, Ljava/lang/Integer;->intValue()I
    move-result v3
    aput v3, v2, v1
  .line 6
    iget-object v2, p0, Landroidx/core/content/c/d$a;->b:[F
    invoke-interface { p2, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Float;
    invoke-virtual { v3 }, Ljava/lang/Float;->floatValue()F
    move-result v3
    aput v3, v2, v1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method
