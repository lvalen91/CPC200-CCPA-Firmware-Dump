.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
.super Ljava/lang/Object;
.implements Landroidx/core/view/e0/f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V(I)Landroidx/core/view/e0/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;->a:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/view/e0/f$a;)Z
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;->a:I
    invoke-virtual { p1, p2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s0(I)V
    const/4 p1, 1
    return p1
.end method
