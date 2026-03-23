.class Lcom/google/android/material/datepicker/h$f;
.super Landroidx/core/view/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/h;->p2(Landroid/view/View;Lcom/google/android/material/datepicker/n;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic d:Lcom/google/android/material/datepicker/h;

.method constructor <init>(Lcom/google/android/material/datepicker/h;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$f;->d:Lcom/google/android/material/datepicker/h;
    invoke-direct { p0 }, Landroidx/core/view/a;-><init>()V
    return-void
.end method

.method public g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$f;->d:Lcom/google/android/material/datepicker/h;
  .line 3
    invoke-static { p1 }, Lcom/google/android/material/datepicker/h;->n2(Lcom/google/android/material/datepicker/h;)Landroid/view/View;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/View;->getVisibility()I
    move-result p1
    if-nez p1, :L0
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$f;->d:Lcom/google/android/material/datepicker/h;
    sget v0, Ld/c/a/a/i;->mtrl_picker_toggle_to_year_selection:I
  .line 4
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/Fragment;->j0(I)Ljava/lang/String;
    move-result-object p1
    goto :L1
  :L0
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$f;->d:Lcom/google/android/material/datepicker/h;
    sget v0, Ld/c/a/a/i;->mtrl_picker_toggle_to_day_selection:I
  .line 5
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/Fragment;->j0(I)Ljava/lang/String;
    move-result-object p1
  :L1
  .line 6
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->g0(Ljava/lang/CharSequence;)V
    return-void
.end method
