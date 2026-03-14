.class Lcom/google/android/material/textfield/d$h;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnTouchListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/textfield/d;->G(Landroid/widget/AutoCompleteTextView;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/widget/AutoCompleteTextView;

.field final synthetic c:Lcom/google/android/material/textfield/d;

.method constructor <init>(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/d$h;->c:Lcom/google/android/material/textfield/d;
    iput-object p2, p0, Lcom/google/android/material/textfield/d$h;->b:Landroid/widget/AutoCompleteTextView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 4
  .line 1
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result p1
    const/4 p2, 0
    const/4 v0, 1
    if-ne p1, v0, :L1
  .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/d$h;->c:Lcom/google/android/material/textfield/d;
    invoke-static { p1 }, Lcom/google/android/material/textfield/d;->j(Lcom/google/android/material/textfield/d;)Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/d$h;->c:Lcom/google/android/material/textfield/d;
    invoke-static { p1, p2 }, Lcom/google/android/material/textfield/d;->p(Lcom/google/android/material/textfield/d;Z)Z
  :L0
  .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/d$h;->c:Lcom/google/android/material/textfield/d;
    iget-object v0, p0, Lcom/google/android/material/textfield/d$h;->b:Landroid/widget/AutoCompleteTextView;
    invoke-static { p1, v0 }, Lcom/google/android/material/textfield/d;->q(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
  :L1
    return p2
.end method
