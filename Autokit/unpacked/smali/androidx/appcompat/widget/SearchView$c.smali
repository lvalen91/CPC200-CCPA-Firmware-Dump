.class Landroidx/appcompat/widget/SearchView$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/SearchView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/SearchView;

.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$c;->b:Landroidx/appcompat/widget/SearchView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$c;->b:Landroidx/appcompat/widget/SearchView;
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
    instance-of v1, v0, Landroidx/appcompat/widget/o0;
    if-eqz v1, :L0
    const/4 v1, 0
  .line 2
    invoke-virtual { v0, v1 }, Lc/h/a/a;->b(Landroid/database/Cursor;)V
  :L0
    return-void
.end method
