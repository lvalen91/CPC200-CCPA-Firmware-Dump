.class public Lc/p/l;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Landroid/view/ViewGroup;

.field private b:Ljava/lang/Runnable;

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lc/p/l;
  .registers 2
  .line 1
    sget v0, Lc/p/j;->transition_current_scene:I
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Lc/p/l;
    return-object p0
.end method

.method static c(Landroid/view/ViewGroup;Lc/p/l;)V
  .registers 3
  .line 1
    sget v0, Lc/p/j;->transition_current_scene:I
    invoke-virtual { p0, v0, p1 }, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V
    return-void
.end method

.method public a()V
  .registers 2
  .line 1
    iget-object v0, p0, Lc/p/l;->a:Landroid/view/ViewGroup;
    invoke-static { v0 }, Lc/p/l;->b(Landroid/view/ViewGroup;)Lc/p/l;
    move-result-object v0
    if-ne v0, p0, :L0
  .line 2
    iget-object v0, p0, Lc/p/l;->b:Ljava/lang/Runnable;
    if-eqz v0, :L0
  .line 3
    invoke-interface { v0 }, Ljava/lang/Runnable;->run()V
  :L0
    return-void
.end method
