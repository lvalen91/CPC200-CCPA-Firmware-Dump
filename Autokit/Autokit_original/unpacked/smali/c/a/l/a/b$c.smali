.class Lc/a/l/a/b$c;
.super Ljava/lang/Object;
.implements Landroid/graphics/drawable/Drawable$Callback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/a/l/a/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "c"
.end annotation

.field private b:Landroid/graphics/drawable/Drawable$Callback;

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()Landroid/graphics/drawable/Drawable$Callback;
  .registers 3
  .line 1
    iget-object v0, p0, Lc/a/l/a/b$c;->b:Landroid/graphics/drawable/Drawable$Callback;
    const/4 v1, 0
  .line 2
    iput-object v1, p0, Lc/a/l/a/b$c;->b:Landroid/graphics/drawable/Drawable$Callback;
    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable$Callback;)Lc/a/l/a/b$c;
  .registers 2
  .line 1
    iput-object p1, p0, Lc/a/l/a/b$c;->b:Landroid/graphics/drawable/Drawable$Callback;
    return-object p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
  .registers 2
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
  .registers 6
  .line 1
    iget-object v0, p0, Lc/a/l/a/b$c;->b:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2, p3, p4 }, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
  :L0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/a/l/a/b$c;->b:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2 }, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
  :L0
    return-void
.end method
