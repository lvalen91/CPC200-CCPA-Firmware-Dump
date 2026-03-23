.class final Lcom/google/android/material/snackbar/d$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnTouchListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/snackbar/d;
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

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "ClickableViewAccessibility"
    }
  .end annotation
  .registers 3
    const/4 p1, 1
    return p1
.end method
