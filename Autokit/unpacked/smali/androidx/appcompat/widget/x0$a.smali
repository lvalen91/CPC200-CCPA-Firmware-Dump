.class Landroidx/appcompat/widget/x0$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/x0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/x0;

.method constructor <init>(Landroidx/appcompat/widget/x0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/x0$a;->b:Landroidx/appcompat/widget/x0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0$a;->b:Landroidx/appcompat/widget/x0;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/x0;->g(Z)V
    return-void
.end method
