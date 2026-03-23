.class Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/lifecycle/SavedStateHandleController;->m(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/f;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/lifecycle/f;

.field final synthetic b:Landroidx/savedstate/SavedStateRegistry;

.method constructor <init>(Landroidx/lifecycle/f;Landroidx/savedstate/SavedStateRegistry;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Landroidx/lifecycle/f;
    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Landroidx/savedstate/SavedStateRegistry;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 3
  .line 1
    sget-object p1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    if-ne p2, p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Landroidx/lifecycle/f;
    invoke-virtual { p1, p0 }, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/i;)V
  .line 3
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Landroidx/savedstate/SavedStateRegistry;
    const-class p2, Landroidx/lifecycle/SavedStateHandleController$a;
    invoke-virtual { p1, p2 }, Landroidx/savedstate/SavedStateRegistry;->e(Ljava/lang/Class;)V
  :L0
    return-void
.end method
