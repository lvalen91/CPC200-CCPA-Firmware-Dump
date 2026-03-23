.class public abstract Landroidx/activity/result/c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<I:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TI;)V"
    }
  .end annotation
  .parameter # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/activity/result/c;->b(Ljava/lang/Object;Landroidx/core/app/b;)V
    return-void
.end method

.method public abstract b(Ljava/lang/Object;Landroidx/core/app/b;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TI;",
      "Landroidx/core/app/b;",
      ")V"
    }
  .end annotation
  .parameter # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
.end method

.method public abstract c()V
.end method
