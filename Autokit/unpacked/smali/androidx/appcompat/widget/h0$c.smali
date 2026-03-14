.class Landroidx/appcompat/widget/h0$c;
.super Landroid/database/DataSetObserver;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/h0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "c"
.end annotation

.field final synthetic a:Landroidx/appcompat/widget/h0;

.method constructor <init>(Landroidx/appcompat/widget/h0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/h0$c;->a:Landroidx/appcompat/widget/h0;
    invoke-direct { p0 }, Landroid/database/DataSetObserver;-><init>()V
    return-void
.end method

.method public onChanged()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0$c;->a:Landroidx/appcompat/widget/h0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->b()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/h0$c;->a:Landroidx/appcompat/widget/h0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->g()V
  :L0
    return-void
.end method

.method public onInvalidated()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0$c;->a:Landroidx/appcompat/widget/h0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->dismiss()V
    return-void
.end method
