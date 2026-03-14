.class Lc/q/a/a/b$a;
.super Ljava/lang/Object;
.implements Landroid/graphics/drawable/Drawable$Callback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/q/a/a/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lc/q/a/a/b;

.method constructor <init>(Lc/q/a/a/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lc/q/a/a/b$a;->b:Lc/q/a/a/b;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lc/q/a/a/b$a;->b:Lc/q/a/a/b;
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
  .registers 5
  .line 1
    iget-object p1, p0, Lc/q/a/a/b$a;->b:Lc/q/a/a/b;
    invoke-virtual { p1, p2, p3, p4 }, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lc/q/a/a/b$a;->b:Lc/q/a/a/b;
    invoke-virtual { p1, p2 }, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V
    return-void
.end method
