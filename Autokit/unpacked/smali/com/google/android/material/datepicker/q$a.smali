.class Lcom/google/android/material/datepicker/q$a;
.super Landroidx/recyclerview/widget/g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/q;->I1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>(Lcom/google/android/material/datepicker/q;Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-direct { p0, p2 }, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V
    return-void
.end method

.method protected v(Landroid/util/DisplayMetrics;)F
  .registers 3
  .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I
    int-to-float p1, p1
    const/high16 v0, 17096
    div-float/2addr v0, p1
    return v0
.end method
