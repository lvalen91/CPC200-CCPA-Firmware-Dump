.class public Lcn/manstep/phonemirrorBox/util/z;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<T:",
    "Ljava/lang/Object;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field private a:Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "TT;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public declared-synchronized a()Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()TT;"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/z;->a:Ljava/lang/Object;
  :L1
    monitor-exit p0
    return-object v0
  :L2
    move-exception v0
    monitor-exit p0
    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TT;)TT;"
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .registers 2
    monitor-enter p0
  :L0
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/z;->a:Ljava/lang/Object;
  :L1
  .line 2
    monitor-exit p0
    return-object p1
  :L2
    move-exception p1
    monitor-exit p0
    throw p1
.end method
