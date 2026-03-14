.class public abstract Landroidx/activity/result/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/activity/result/f/a$a;
  }
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<I:",
    "Ljava/lang/Object;",
    "O:",
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

.method public abstract a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "TI;)",
      "Landroid/content/Intent;"
    }
  .end annotation
  .parameter # Landroid/content/Context;
  .parameter # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/f/a$a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "TI;)",
      "Landroidx/activity/result/f/a$a<",
      "TO;>;"
    }
  .end annotation
  .parameter # Landroid/content/Context;
  .parameter # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 3
    const/4 p1, 0
    return-object p1
.end method

.method public abstract c(ILandroid/content/Intent;)Ljava/lang/Object;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "UnknownNullness"
    }
  .end annotation
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Landroid/content/Intent;",
      ")TO;"
    }
  .end annotation
.end method
