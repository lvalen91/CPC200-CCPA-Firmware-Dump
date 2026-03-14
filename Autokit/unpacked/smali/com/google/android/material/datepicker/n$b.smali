.class public Lcom/google/android/material/datepicker/n$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/datepicker/n;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "b"
.end annotation

.field final t:Landroid/widget/TextView;

.field final u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.method constructor <init>(Landroid/widget/LinearLayout;Z)V
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V
  .line 2
    sget v0, Ld/c/a/a/f;->month_title:I
    invoke-virtual { p1, v0 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/google/android/material/datepicker/n$b;->t:Landroid/widget/TextView;
    const/4 v1, 1
  .line 3
    invoke-static { v0, v1 }, Landroidx/core/view/v;->p0(Landroid/view/View;Z)V
  .line 4
    sget v0, Ld/c/a/a/f;->month_grid:I
    invoke-virtual { p1, v0 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;
    iput-object p1, p0, Lcom/google/android/material/datepicker/n$b;->u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;
    if-nez p2, :L0
  .line 5
    iget-object p1, p0, Lcom/google/android/material/datepicker/n$b;->t:Landroid/widget/TextView;
    const/16 p2, 8
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setVisibility(I)V
  :L0
    return-void
.end method
