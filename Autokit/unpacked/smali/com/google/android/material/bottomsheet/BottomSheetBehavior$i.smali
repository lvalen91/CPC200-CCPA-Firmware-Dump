.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "i"
.end annotation

.field private final b:Landroid/view/View;

.field private c:Z

.field d:I

.field final synthetic e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->b:Landroid/view/View;
  .line 3
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->d:I
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->c:Z
    return p0
.end method

.method static synthetic b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->c:Z
    return p1
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Lc/i/b/c;
    if-eqz v0, :L0
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lc/i/b/c;->k(Z)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->b:Landroid/view/View;
    invoke-static { v0, p0 }, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->d:I
    invoke-virtual { v0, v1 }, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t0(I)V
  :L1
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$i;->c:Z
    return-void
.end method
