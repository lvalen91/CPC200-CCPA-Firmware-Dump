.class final Lcom/google/android/material/internal/l$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnAttachStateChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/internal/l;->f(Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-virtual { p1, p0 }, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
  .line 2
    invoke-static { p1 }, Landroidx/core/view/v;->l0(Landroid/view/View;)V
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
  .registers 2
    return-void
.end method
