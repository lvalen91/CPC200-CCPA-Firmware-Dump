.class Landroidx/recyclerview/widget/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "b"
.end annotation

.field a:I

.field b:I

.field c:Ljava/lang/Object;

.field d:I

.method constructor <init>(IIILjava/lang/Object;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput p1, p0, Landroidx/recyclerview/widget/a$b;->a:I
  .line 3
    iput p2, p0, Landroidx/recyclerview/widget/a$b;->b:I
  .line 4
    iput p3, p0, Landroidx/recyclerview/widget/a$b;->d:I
  .line 5
    iput-object p4, p0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    return-void
.end method

.method a()Ljava/lang/String;
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v1, 1
    if-eq v0, v1, :L3
    const/4 v1, 2
    if-eq v0, v1, :L2
    const/4 v1, 4
    if-eq v0, v1, :L1
    const/16 v1, 8
    if-eq v0, v1, :L0
    const-string v0, "??"
    return-object v0
  :L0
    const-string v0, "mv"
    return-object v0
  :L1
    const-string v0, "up"
    return-object v0
  :L2
    const-string v0, "rm"
    return-object v0
  :L3
    const-string v0, "add"
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
    const/4 v1, 0
    if-eqz p1, :L8
  .line 1
    const-class v2, Landroidx/recyclerview/widget/a$b;
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    if-eq v2, v3, :L1
    goto :L8
  :L1
  .line 2
    check-cast p1, Landroidx/recyclerview/widget/a$b;
  .line 3
    iget v2, p0, Landroidx/recyclerview/widget/a$b;->a:I
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->a:I
    if-eq v2, v3, :L2
    return v1
  :L2
    const/16 v3, 8
    if-ne v2, v3, :L3
  .line 4
    iget v2, p0, Landroidx/recyclerview/widget/a$b;->d:I
    iget v3, p0, Landroidx/recyclerview/widget/a$b;->b:I
    sub-int/2addr v2, v3
    invoke-static { v2 }, Ljava/lang/Math;->abs(I)I
    move-result v2
    if-ne v2, v0, :L3
  .line 5
    iget v2, p0, Landroidx/recyclerview/widget/a$b;->d:I
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->b:I
    if-ne v2, v3, :L3
    iget v2, p0, Landroidx/recyclerview/widget/a$b;->b:I
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->d:I
    if-ne v2, v3, :L3
    return v0
  :L3
  .line 6
    iget v2, p0, Landroidx/recyclerview/widget/a$b;->d:I
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->d:I
    if-eq v2, v3, :L4
    return v1
  :L4
  .line 7
    iget v2, p0, Landroidx/recyclerview/widget/a$b;->b:I
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->b:I
    if-eq v2, v3, :L5
    return v1
  :L5
  .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    if-eqz v2, :L6
  .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-virtual { v2, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-nez p1, :L7
    return v1
  :L6
  .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    if-eqz p1, :L7
    return v1
  :L7
    return v0
  :L8
    return v1
.end method

.method public hashCode()I
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/a$b;->a:I
    mul-int/lit8 v0, v0, 31
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/a$b;->b:I
    add-int/2addr v0, v1
    mul-int/lit8 v0, v0, 31
  .line 3
    iget v1, p0, Landroidx/recyclerview/widget/a$b;->d:I
    add-int/2addr v0, v1
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { p0 }, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "["
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/a$b;->a()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ",s:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/recyclerview/widget/a$b;->b:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "c:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",p:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, "]"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
