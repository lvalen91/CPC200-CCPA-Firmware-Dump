.class Landroidx/appcompat/app/h$a;
.super Ljava/lang/Object;
.implements Landroidx/core/view/f$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/h;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/app/h;

.method constructor <init>(Landroidx/appcompat/app/h;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h$a;->b:Landroidx/appcompat/app/h;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h$a;->b:Landroidx/appcompat/app/h;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/app/h;->c(Landroid/view/KeyEvent;)Z
    move-result p1
    return p1
.end method
