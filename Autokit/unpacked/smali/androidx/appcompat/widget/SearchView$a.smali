.class Landroidx/appcompat/widget/SearchView$a;
.super Ljava/lang/Object;
.implements Landroid/text/TextWatcher;
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
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$a;->b:Landroidx/appcompat/widget/SearchView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
  .registers 2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
  .registers 5
  .line 1
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView$a;->b:Landroidx/appcompat/widget/SearchView;
    invoke-virtual { p2, p1 }, Landroidx/appcompat/widget/SearchView;->Y(Ljava/lang/CharSequence;)V
    return-void
.end method
