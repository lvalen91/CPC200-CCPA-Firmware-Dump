.class Landroidx/core/app/a$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/core/app/a;->l(Landroid/app/Activity;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/app/Activity;

.method constructor <init>(Landroid/app/Activity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/core/app/a$b;->b:Landroid/app/Activity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/app/a$b;->b:Landroid/app/Activity;
    invoke-virtual { v0 }, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/app/a$b;->b:Landroid/app/Activity;
    invoke-static { v0 }, Landroidx/core/app/c;->i(Landroid/app/Activity;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/core/app/a$b;->b:Landroid/app/Activity;
    invoke-virtual { v0 }, Landroid/app/Activity;->recreate()V
  :L0
    return-void
.end method
