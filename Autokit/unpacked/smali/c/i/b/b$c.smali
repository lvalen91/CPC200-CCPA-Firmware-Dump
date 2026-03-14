.class Lc/i/b/b$c;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/i/b/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "c"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;",
    "Ljava/util/Comparator<",
    "TT;>;"
  }
.end annotation

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Z

.field private final e:Lc/i/b/b$a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/i/b/b$a<",
      "TT;>;"
    }
  .end annotation
.end field

.method constructor <init>(ZLc/i/b/b$a;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(Z",
      "Lc/i/b/b$a<",
      "TT;>;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Lc/i/b/b$c;->b:Landroid/graphics/Rect;
  .line 3
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Lc/i/b/b$c;->c:Landroid/graphics/Rect;
  .line 4
    iput-boolean p1, p0, Lc/i/b/b$c;->d:Z
  .line 5
    iput-object p2, p0, Lc/i/b/b$c;->e:Lc/i/b/b$a;
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;TT;)I"
    }
  .end annotation
  .registers 7
  .line 1
    iget-object v0, p0, Lc/i/b/b$c;->b:Landroid/graphics/Rect;
  .line 2
    iget-object v1, p0, Lc/i/b/b$c;->c:Landroid/graphics/Rect;
  .line 3
    iget-object v2, p0, Lc/i/b/b$c;->e:Lc/i/b/b$a;
    invoke-interface { v2, p1, v0 }, Lc/i/b/b$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V
  .line 4
    iget-object p1, p0, Lc/i/b/b$c;->e:Lc/i/b/b$a;
    invoke-interface { p1, p2, v1 }, Lc/i/b/b$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V
  .line 5
    iget p1, v0, Landroid/graphics/Rect;->top:I
    iget p2, v1, Landroid/graphics/Rect;->top:I
    const/4 v2, -1
    if-ge p1, p2, :L0
    return v2
  :L0
    const/4 v3, 1
    if-le p1, p2, :L1
    return v3
  :L1
  .line 6
    iget p1, v0, Landroid/graphics/Rect;->left:I
    iget p2, v1, Landroid/graphics/Rect;->left:I
    if-ge p1, p2, :L3
  .line 7
    iget-boolean p1, p0, Lc/i/b/b$c;->d:Z
    if-eqz p1, :L2
    const/4 v2, 1
  :L2
    return v2
  :L3
    if-le p1, p2, :L6
  .line 8
    iget-boolean p1, p0, Lc/i/b/b$c;->d:Z
    if-eqz p1, :L4
    goto :L5
  :L4
    const/4 v2, 1
  :L5
    return v2
  :L6
  .line 9
    iget p1, v0, Landroid/graphics/Rect;->bottom:I
    iget p2, v1, Landroid/graphics/Rect;->bottom:I
    if-ge p1, p2, :L7
    return v2
  :L7
    if-le p1, p2, :L8
    return v3
  :L8
  .line 10
    iget p1, v0, Landroid/graphics/Rect;->right:I
    iget p2, v1, Landroid/graphics/Rect;->right:I
    if-ge p1, p2, :L10
  .line 11
    iget-boolean p1, p0, Lc/i/b/b$c;->d:Z
    if-eqz p1, :L9
    const/4 v2, 1
  :L9
    return v2
  :L10
    if-le p1, p2, :L13
  .line 12
    iget-boolean p1, p0, Lc/i/b/b$c;->d:Z
    if-eqz p1, :L11
    goto :L12
  :L11
    const/4 v2, 1
  :L12
    return v2
  :L13
    const/4 p1, 0
    return p1
.end method
