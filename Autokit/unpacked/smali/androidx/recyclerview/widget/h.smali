.class Landroidx/recyclerview/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/h$a;
  }
.end annotation

.field final a:Landroidx/recyclerview/widget/h$a;

.method constructor <init>(Landroidx/recyclerview/widget/h$a;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/h$a;
    return-void
.end method

.method private a(Ljava/util/List;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/a$b;",
      ">;)I"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
    const/4 v2, 0
  :L0
    if-ltz v0, :L3
  .line 2
    invoke-interface { p1, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/a$b;
  .line 3
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->a:I
    const/16 v4, 8
    if-ne v3, v4, :L1
    if-eqz v2, :L2
    return v0
  :L1
    const/4 v2, 1
  :L2
    add-int/lit8 v0, v0, -1
    goto :L0
  :L3
    const/4 p1, -1
    return p1
.end method

.method private c(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/a$b;",
      ">;I",
      "Landroidx/recyclerview/widget/a$b;",
      "I",
      "Landroidx/recyclerview/widget/a$b;",
      ")V"
    }
  .end annotation
  .registers 9
  .line 1
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
    if-ge v0, v1, :L0
    const/4 v0, -1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I
    if-ge v1, v2, :L2
    add-int/lit8 v0, v0, 1
  :L2
  .line 3
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
    iget v2, p3, Landroidx/recyclerview/widget/a$b;->b:I
    if-gt v1, v2, :L3
  .line 4
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v2, v1
    iput v2, p3, Landroidx/recyclerview/widget/a$b;->b:I
  :L3
  .line 5
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
    iget v2, p3, Landroidx/recyclerview/widget/a$b;->d:I
    if-gt v1, v2, :L4
  .line 6
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v2, v1
    iput v2, p3, Landroidx/recyclerview/widget/a$b;->d:I
  :L4
  .line 7
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
    add-int/2addr v1, v0
    iput v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
  .line 8
    invoke-interface { p1, p2, p5 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
  .line 9
    invoke-interface { p1, p4, p3 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method private d(Ljava/util/List;II)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/a$b;",
      ">;II)V"
    }
  .end annotation
  .registers 11
  .line 1
    invoke-interface { p1, p2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    move-object v4, v0
    check-cast v4, Landroidx/recyclerview/widget/a$b;
  .line 2
    invoke-interface { p1, p3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    move-object v6, v0
    check-cast v6, Landroidx/recyclerview/widget/a$b;
  .line 3
    iget v0, v6, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v1, 1
    if-eq v0, v1, :L2
    const/4 v1, 2
    if-eq v0, v1, :L1
    const/4 v1, 4
    if-eq v0, v1, :L0
    goto :L3
  :L0
    move-object v1, p0
    move-object v2, p1
    move v3, p2
    move v5, p3
  .line 4
    invoke-virtual/range { v1 .. v6 }, Landroidx/recyclerview/widget/h;->f(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
    goto :L3
  :L1
    move-object v1, p0
    move-object v2, p1
    move v3, p2
    move v5, p3
  .line 5
    invoke-virtual/range { v1 .. v6 }, Landroidx/recyclerview/widget/h;->e(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
    goto :L3
  :L2
    move-object v1, p0
    move-object v2, p1
    move v3, p2
    move v5, p3
  .line 6
    invoke-direct/range { v1 .. v6 }, Landroidx/recyclerview/widget/h;->c(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
  :L3
    return-void
.end method

.method b(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/a$b;",
      ">;)V"
    }
  .end annotation
  .registers 4
  :L0
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/h;->a(Ljava/util/List;)I
    move-result v0
    const/4 v1, -1
    if-eq v0, v1, :L1
    add-int/lit8 v1, v0, 1
  .line 2
    invoke-direct { p0, p1, v0, v1 }, Landroidx/recyclerview/widget/h;->d(Ljava/util/List;II)V
    goto :L0
  :L1
    return-void
.end method

.method e(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/a$b;",
      ">;I",
      "Landroidx/recyclerview/widget/a$b;",
      "I",
      "Landroidx/recyclerview/widget/a$b;",
      ")V"
    }
  .end annotation
  .registers 15
  .line 1
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->d:I
    const/4 v2, 0
    const/4 v3, 1
    if-ge v0, v1, :L1
  .line 2
    iget v4, p5, Landroidx/recyclerview/widget/a$b;->b:I
    if-ne v4, v0, :L0
    iget v4, p5, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v1, v0
    if-ne v4, v1, :L0
    const/4 v0, 0
    goto :L2
  :L0
    const/4 v0, 0
    goto :L4
  :L1
  .line 3
    iget v4, p5, Landroidx/recyclerview/widget/a$b;->b:I
    add-int/lit8 v5, v1, 1
    if-ne v4, v5, :L3
    iget v4, p5, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v0, v1
    if-ne v4, v0, :L3
    const/4 v0, 1
  :L2
    const/4 v2, 1
    goto :L4
  :L3
    const/4 v0, 1
  :L4
  .line 4
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->d:I
    iget v4, p5, Landroidx/recyclerview/widget/a$b;->b:I
    const/4 v5, 2
    if-ge v1, v4, :L5
    sub-int/2addr v4, v3
  .line 5
    iput v4, p5, Landroidx/recyclerview/widget/a$b;->b:I
    goto :L7
  :L5
  .line 6
    iget v6, p5, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v4, v6
    if-ge v1, v4, :L7
    sub-int/2addr v6, v3
  .line 7
    iput v6, p5, Landroidx/recyclerview/widget/a$b;->d:I
  .line 8
    iput v5, p3, Landroidx/recyclerview/widget/a$b;->a:I
  .line 9
    iput v3, p3, Landroidx/recyclerview/widget/a$b;->d:I
  .line 10
    iget p2, p5, Landroidx/recyclerview/widget/a$b;->d:I
    if-nez p2, :L6
  .line 11
    invoke-interface { p1, p4 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/h$a;
    invoke-interface { p1, p5 }, Landroidx/recyclerview/widget/h$a;->a(Landroidx/recyclerview/widget/a$b;)V
  :L6
    return-void
  :L7
  .line 13
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v4, p5, Landroidx/recyclerview/widget/a$b;->b:I
    const/4 v6, 0
    if-gt v1, v4, :L8
    add-int/2addr v4, v3
  .line 14
    iput v4, p5, Landroidx/recyclerview/widget/a$b;->b:I
    goto :L9
  :L8
  .line 15
    iget v7, p5, Landroidx/recyclerview/widget/a$b;->d:I
    add-int v8, v4, v7
    if-ge v1, v8, :L9
    add-int/2addr v4, v7
    sub-int/2addr v4, v1
  .line 16
    iget-object v7, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/h$a;
    add-int/2addr v1, v3
    invoke-interface { v7, v5, v1, v4, v6 }, Landroidx/recyclerview/widget/h$a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object v6
  .line 17
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v3, p5, Landroidx/recyclerview/widget/a$b;->b:I
    sub-int/2addr v1, v3
    iput v1, p5, Landroidx/recyclerview/widget/a$b;->d:I
  :L9
    if-eqz v2, :L10
  .line 18
    invoke-interface { p1, p2, p5 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
  .line 19
    invoke-interface { p1, p4 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/h$a;
    invoke-interface { p1, p3 }, Landroidx/recyclerview/widget/h$a;->a(Landroidx/recyclerview/widget/a$b;)V
    return-void
  :L10
    if-eqz v0, :L14
    if-eqz v6, :L12
  .line 21
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v1, v6, Landroidx/recyclerview/widget/a$b;->b:I
    if-le v0, v1, :L11
  .line 22
    iget v1, v6, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v0, v1
    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I
  :L11
  .line 23
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
    iget v1, v6, Landroidx/recyclerview/widget/a$b;->b:I
    if-le v0, v1, :L12
  .line 24
    iget v1, v6, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v0, v1
    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
  :L12
  .line 25
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
    if-le v0, v1, :L13
  .line 26
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v0, v1
    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I
  :L13
  .line 27
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
    if-le v0, v1, :L18
  .line 28
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v0, v1
    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
    goto :L18
  :L14
    if-eqz v6, :L16
  .line 29
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v1, v6, Landroidx/recyclerview/widget/a$b;->b:I
    if-lt v0, v1, :L15
  .line 30
    iget v1, v6, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v0, v1
    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I
  :L15
  .line 31
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
    iget v1, v6, Landroidx/recyclerview/widget/a$b;->b:I
    if-lt v0, v1, :L16
  .line 32
    iget v1, v6, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v0, v1
    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
  :L16
  .line 33
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
    if-lt v0, v1, :L17
  .line 34
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v0, v1
    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I
  :L17
  .line 35
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
    if-lt v0, v1, :L18
  .line 36
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v0, v1
    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
  :L18
  .line 37
    invoke-interface { p1, p2, p5 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
  .line 38
    iget p5, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
    if-eq p5, v0, :L19
  .line 39
    invoke-interface { p1, p4, p3 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    goto :L20
  :L19
  .line 40
    invoke-interface { p1, p4 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  :L20
    if-eqz v6, :L21
  .line 41
    invoke-interface { p1, p2, v6 }, Ljava/util/List;->add(ILjava/lang/Object;)V
  :L21
    return-void
.end method

.method f(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/recyclerview/widget/a$b;",
      ">;I",
      "Landroidx/recyclerview/widget/a$b;",
      "I",
      "Landroidx/recyclerview/widget/a$b;",
      ")V"
    }
  .end annotation
  .registers 14
  .line 1
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
    const/4 v2, 4
    const/4 v3, 0
    const/4 v4, 1
    if-ge v0, v1, :L0
    sub-int/2addr v1, v4
  .line 2
    iput v1, p5, Landroidx/recyclerview/widget/a$b;->b:I
    goto :L1
  :L0
  .line 3
    iget v5, p5, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v1, v5
    if-ge v0, v1, :L1
    sub-int/2addr v5, v4
  .line 4
    iput v5, p5, Landroidx/recyclerview/widget/a$b;->d:I
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/h$a;
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget-object v5, p5, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-interface { v0, v2, v1, v4, v5 }, Landroidx/recyclerview/widget/h$a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object v0
    goto :L2
  :L1
    move-object v0, v3
  :L2
  .line 6
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I
    iget v5, p5, Landroidx/recyclerview/widget/a$b;->b:I
    if-gt v1, v5, :L3
    add-int/2addr v5, v4
  .line 7
    iput v5, p5, Landroidx/recyclerview/widget/a$b;->b:I
    goto :L4
  :L3
  .line 8
    iget v6, p5, Landroidx/recyclerview/widget/a$b;->d:I
    add-int v7, v5, v6
    if-ge v1, v7, :L4
    add-int/2addr v5, v6
    sub-int/2addr v5, v1
  .line 9
    iget-object v3, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/h$a;
    add-int/2addr v1, v4
    iget-object v4, p5, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-interface { v3, v2, v1, v5, v4 }, Landroidx/recyclerview/widget/h$a;->b(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    move-result-object v3
  .line 10
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I
    sub-int/2addr v1, v5
    iput v1, p5, Landroidx/recyclerview/widget/a$b;->d:I
  :L4
  .line 11
    invoke-interface { p1, p4, p3 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
  .line 12
    iget p3, p5, Landroidx/recyclerview/widget/a$b;->d:I
    if-lez p3, :L5
  .line 13
    invoke-interface { p1, p2, p5 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    goto :L6
  :L5
  .line 14
    invoke-interface { p1, p2 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  .line 15
    iget-object p3, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/h$a;
    invoke-interface { p3, p5 }, Landroidx/recyclerview/widget/h$a;->a(Landroidx/recyclerview/widget/a$b;)V
  :L6
    if-eqz v0, :L7
  .line 16
    invoke-interface { p1, p2, v0 }, Ljava/util/List;->add(ILjava/lang/Object;)V
  :L7
    if-eqz v3, :L8
  .line 17
    invoke-interface { p1, p2, v3 }, Ljava/util/List;->add(ILjava/lang/Object;)V
  :L8
    return-void
.end method
