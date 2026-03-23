.class Lc/b/a/b/b$b;
.super Lc/b/a/b/b$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/b/a/b/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<K:",
    "Ljava/lang/Object;",
    "V:",
    "Ljava/lang/Object;",
    ">",
    "Lc/b/a/b/b$e<",
    "TK;TV;>;"
  }
.end annotation

.method constructor <init>(Lc/b/a/b/b$c;Lc/b/a/b/b$c;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;)V"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lc/b/a/b/b$e;-><init>(Lc/b/a/b/b$c;Lc/b/a/b/b$c;)V
    return-void
.end method

.method b(Lc/b/a/b/b$c;)Lc/b/a/b/b$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;)",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object p1, p1, Lc/b/a/b/b$c;->d:Lc/b/a/b/b$c;
    return-object p1
.end method

.method c(Lc/b/a/b/b$c;)Lc/b/a/b/b$c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;)",
      "Lc/b/a/b/b$c<",
      "TK;TV;>;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object p1, p1, Lc/b/a/b/b$c;->e:Lc/b/a/b/b$c;
    return-object p1
.end method
