.class Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.method constructor <init>(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$a;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c()V
    return-void
.end method
