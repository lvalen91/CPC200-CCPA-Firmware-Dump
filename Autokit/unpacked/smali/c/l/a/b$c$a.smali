.class final Lc/l/a/b$c$a;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/w$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/l/a/b$c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Class;)Landroidx/lifecycle/v;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Landroidx/lifecycle/v;",
      ">(",
      "Ljava/lang/Class<",
      "TT;>;)TT;"
    }
  .end annotation
  .registers 2
  .line 1
    new-instance p1, Lc/l/a/b$c;
    invoke-direct { p1 }, Lc/l/a/b$c;-><init>()V
    return-object p1
.end method
