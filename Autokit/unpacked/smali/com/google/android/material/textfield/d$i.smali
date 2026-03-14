.class Lcom/google/android/material/textfield/d$i;
.super Ljava/lang/Object;
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/textfield/d;->G(Landroid/widget/AutoCompleteTextView;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/textfield/d;

.method constructor <init>(Lcom/google/android/material/textfield/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/d$i;->a:Lcom/google/android/material/textfield/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onDismiss()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/d$i;->a:Lcom/google/android/material/textfield/d;
    const/4 v1, 1
    invoke-static { v0, v1 }, Lcom/google/android/material/textfield/d;->p(Lcom/google/android/material/textfield/d;Z)Z
  .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/d$i;->a:Lcom/google/android/material/textfield/d;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
    invoke-static { v0, v1, v2 }, Lcom/google/android/material/textfield/d;->k(Lcom/google/android/material/textfield/d;J)J
  .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/d$i;->a:Lcom/google/android/material/textfield/d;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/google/android/material/textfield/d;->o(Lcom/google/android/material/textfield/d;Z)V
    return-void
.end method
