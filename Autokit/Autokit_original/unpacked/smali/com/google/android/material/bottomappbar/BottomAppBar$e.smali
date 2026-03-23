.class Lcom/google/android/material/bottomappbar/BottomAppBar$e;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/bottomappbar/BottomAppBar;->A0(Landroidx/appcompat/widget/ActionMenuView;IZZ)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/ActionMenuView;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/material/bottomappbar/BottomAppBar;

.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
  .registers 5
  .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$e;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;
    iput-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$e;->b:Landroidx/appcompat/widget/ActionMenuView;
    iput p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$e;->c:I
    iput-boolean p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$e;->d:Z
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$e;->b:Landroidx/appcompat/widget/ActionMenuView;
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$e;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;
    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$e;->c:I
    iget-boolean v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$e;->d:Z
  .line 2
    invoke-virtual { v1, v0, v2, v3 }, Lcom/google/android/material/bottomappbar/BottomAppBar;->p0(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    move-result v1
    int-to-float v1, v1
  .line 3
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->setTranslationX(F)V
    return-void
.end method
