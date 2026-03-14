.class Landroidx/core/view/f0/b$b;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/core/view/f0/b;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/f0/b$c;)Landroid/view/inputmethod/InputConnection;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/core/view/f0/b$c;

.method constructor <init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/f0/b$c;)V
  .registers 4
  .line 1
    iput-object p3, p0, Landroidx/core/view/f0/b$b;->a:Landroidx/core/view/f0/b$c;
    invoke-direct { p0, p1, p2 }, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/view/f0/b$b;->a:Landroidx/core/view/f0/b$c;
    invoke-static { p1, p2, v0 }, Landroidx/core/view/f0/b;->b(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/f0/b$c;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/view/inputmethod/InputConnectionWrapper;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    move-result p1
    return p1
.end method
