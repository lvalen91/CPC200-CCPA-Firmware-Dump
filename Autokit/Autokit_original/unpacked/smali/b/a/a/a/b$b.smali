.class Lb/a/a/a/b$b;
.super Lb/a/a/a/a$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lb/a/a/a/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "b"
.end annotation

.field final synthetic a:Lb/a/a/a/b;

.method constructor <init>(Lb/a/a/a/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lb/a/a/a/b$b;->a:Lb/a/a/a/b;
    invoke-direct { p0 }, Lb/a/a/a/a$a;-><init>()V
    return-void
.end method

.method public M0(ILandroid/os/Bundle;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lb/a/a/a/b$b;->a:Lb/a/a/a/b;
    iget-object v1, v0, Lb/a/a/a/b;->b:Landroid/os/Handler;
    if-eqz v1, :L0
  .line 2
    new-instance v2, Lb/a/a/a/b$c;
    invoke-direct { v2, v0, p1, p2 }, Lb/a/a/a/b$c;-><init>(Lb/a/a/a/b;ILandroid/os/Bundle;)V
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L1
  :L0
  .line 3
    invoke-virtual { v0, p1, p2 }, Lb/a/a/a/b;->j(ILandroid/os/Bundle;)V
  :L1
    return-void
.end method
