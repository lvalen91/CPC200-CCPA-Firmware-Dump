.class abstract Landroidx/lifecycle/w$c;
.super Landroidx/lifecycle/w$e;
.implements Landroidx/lifecycle/w$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/w;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1032
  name = "c"
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/lifecycle/w$e;-><init>()V
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
  .registers 3
  .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "create(String, Class<?>) must be called on implementaions of KeyedFactory"
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Landroidx/lifecycle/v;",
      ">(",
      "Ljava/lang/String;",
      "Ljava/lang/Class<",
      "TT;>;)TT;"
    }
  .end annotation
.end method
