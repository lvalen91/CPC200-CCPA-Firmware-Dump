.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w0(I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Landroid/view/View;
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->c:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Landroid/view/View;
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->c:I
    invoke-virtual { v0, v1, v2 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v0(Landroid/view/View;I)V
    return-void
.end method
