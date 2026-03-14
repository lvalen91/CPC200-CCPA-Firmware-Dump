.class public final Landroidx/activity/result/f/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/activity/result/f/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field private final a:Ljava/lang/Object;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "UnknownNullness"
    }
  .end annotation
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "TT;"
    }
  .end annotation
.end field

.method public constructor <init>(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)V"
    }
  .end annotation
  .parameter # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/activity/result/f/a$a;->a:Ljava/lang/Object;
    return-void
.end method

.method public a()Ljava/lang/Object;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "UnknownNullness"
    }
  .end annotation
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()TT;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/activity/result/f/a$a;->a:Ljava/lang/Object;
    return-object v0
.end method
