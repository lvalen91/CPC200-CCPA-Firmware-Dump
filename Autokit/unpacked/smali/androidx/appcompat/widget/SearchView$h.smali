.class Landroidx/appcompat/widget/SearchView$h;
.super Ljava/lang/Object;
.implements Landroid/widget/TextView$OnEditorActionListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/SearchView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/appcompat/widget/SearchView;

.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$h;->a:Landroidx/appcompat/widget/SearchView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$h;->a:Landroidx/appcompat/widget/SearchView;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/SearchView;->W()V
    const/4 p1, 1
    return p1
.end method
