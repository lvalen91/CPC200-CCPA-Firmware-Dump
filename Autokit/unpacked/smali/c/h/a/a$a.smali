.class Lc/h/a/a$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/h/a/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "a"
.end annotation

.field final synthetic a:Lc/h/a/a;

.method constructor <init>(Lc/h/a/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/h/a/a$a;->a:Lc/h/a/a;
  .line 2
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    invoke-direct { p0, p1 }, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V
    return-void
.end method

.method public deliverSelfNotifications()Z
  .registers 2
    const/4 v0, 1
    return v0
.end method

.method public onChange(Z)V
  .registers 2
  .line 1
    iget-object p1, p0, Lc/h/a/a$a;->a:Lc/h/a/a;
    invoke-virtual { p1 }, Lc/h/a/a;->i()V
    return-void
.end method
