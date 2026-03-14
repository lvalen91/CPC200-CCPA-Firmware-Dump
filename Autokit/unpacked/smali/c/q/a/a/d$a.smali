.class Lc/q/a/a/d$a;
.super Ljava/lang/Object;
.implements Landroid/animation/TypeEvaluator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/q/a/a/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/animation/TypeEvaluator<",
    "[",
    "Lc/g/d/c$b;",
    ">;"
  }
.end annotation

.field private a:[Lc/g/d/c$b;

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(F[Lc/g/d/c$b;[Lc/g/d/c$b;)[Lc/g/d/c$b;
  .registers 8
  .line 1
    invoke-static { p2, p3 }, Lc/g/d/c;->b([Lc/g/d/c$b;[Lc/g/d/c$b;)Z
    move-result v0
    if-eqz v0, :L3
  .line 2
    iget-object v0, p0, Lc/q/a/a/d$a;->a:[Lc/g/d/c$b;
    invoke-static { v0, p2 }, Lc/g/d/c;->b([Lc/g/d/c$b;[Lc/g/d/c$b;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-static { p2 }, Lc/g/d/c;->f([Lc/g/d/c$b;)[Lc/g/d/c$b;
    move-result-object v0
    iput-object v0, p0, Lc/q/a/a/d$a;->a:[Lc/g/d/c$b;
  :L0
    const/4 v0, 0
  :L1
  .line 4
    array-length v1, p2
    if-ge v0, v1, :L2
  .line 5
    iget-object v1, p0, Lc/q/a/a/d$a;->a:[Lc/g/d/c$b;
    aget-object v1, v1, v0
    aget-object v2, p2, v0
    aget-object v3, p3, v0
    invoke-virtual { v1, v2, v3, p1 }, Lc/g/d/c$b;->d(Lc/g/d/c$b;Lc/g/d/c$b;F)V
    add-int/lit8 v0, v0, 1
    goto :L1
  :L2
  .line 6
    iget-object p1, p0, Lc/q/a/a/d$a;->a:[Lc/g/d/c$b;
    return-object p1
  :L3
  .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Can't interpolate between two incompatible pathData"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw p1
  :L5
    goto :L4
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .registers 4
  .line 1
    check-cast p2, [Lc/g/d/c$b;
    check-cast p3, [Lc/g/d/c$b;
    invoke-virtual { p0, p1, p2, p3 }, Lc/q/a/a/d$a;->a(F[Lc/g/d/c$b;[Lc/g/d/c$b;)[Lc/g/d/c$b;
    move-result-object p1
    return-object p1
.end method
