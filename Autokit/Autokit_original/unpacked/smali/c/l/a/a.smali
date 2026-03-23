.class public abstract Lc/l/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static b(Landroidx/lifecycle/j;)Lc/l/a/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T::",
      "Landroidx/lifecycle/j;",
      ":",
      "Landroidx/lifecycle/y;",
      ">(TT;)",
      "Lc/l/a/a;"
    }
  .end annotation
  .registers 3
  .line 1
    new-instance v0, Lc/l/a/b;
    move-object v1, p0
    check-cast v1, Landroidx/lifecycle/y;
    invoke-interface { v1 }, Landroidx/lifecycle/y;->getViewModelStore()Landroidx/lifecycle/x;
    move-result-object v1
    invoke-direct { v0, p0, v1 }, Lc/l/a/b;-><init>(Landroidx/lifecycle/j;Landroidx/lifecycle/x;)V
    return-object v0
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end method

.method public abstract c()V
.end method
