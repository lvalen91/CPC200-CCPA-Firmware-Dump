.class Landroidx/appcompat/widget/SearchView$d;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnFocusChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/SearchView;

.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$d;->b:Landroidx/appcompat/widget/SearchView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$d;->b:Landroidx/appcompat/widget/SearchView;
    iget-object v0, p1, Landroidx/appcompat/widget/SearchView;->N:Landroid/view/View$OnFocusChangeListener;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2 }, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V
  :L0
    return-void
.end method
