.class Landroidx/fragment/app/q$a;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/w$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/q;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
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
  .registers 3
  .line 1
    new-instance p1, Landroidx/fragment/app/q;
    const/4 v0, 1
    invoke-direct { p1, v0 }, Landroidx/fragment/app/q;-><init>(Z)V
    return-object p1
.end method
