.class Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/savedstate/SavedStateRegistry;->b(Landroidx/lifecycle/f;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/savedstate/SavedStateRegistry;

.method constructor <init>(Landroidx/savedstate/SavedStateRegistry;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/SavedStateRegistry;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .registers 3
  .line 1
    sget-object p1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    if-ne p2, p1, :L0
  .line 2
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/SavedStateRegistry;
    const/4 p2, 1
    iput-boolean p2, p1, Landroidx/savedstate/SavedStateRegistry;->e:Z
    goto :L1
  :L0
  .line 3
    sget-object p1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    if-ne p2, p1, :L1
  .line 4
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/SavedStateRegistry;
    const/4 p2, 0
    iput-boolean p2, p1, Landroidx/savedstate/SavedStateRegistry;->e:Z
  :L1
    return-void
.end method
