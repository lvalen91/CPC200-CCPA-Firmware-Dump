.class Lcom/google/android/material/internal/NavigationMenuItemView$a;
.super Landroidx/core/view/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/internal/NavigationMenuItemView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic d:Lcom/google/android/material/internal/NavigationMenuItemView;

.method constructor <init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView$a;->d:Lcom/google/android/material/internal/NavigationMenuItemView;
    invoke-direct { p0 }, Landroidx/core/view/a;-><init>()V
    return-void
.end method

.method public g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView$a;->d:Lcom/google/android/material/internal/NavigationMenuItemView;
    iget-boolean p1, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->y:Z
    invoke-virtual { p2, p1 }, Landroidx/core/view/e0/c;->U(Z)V
    return-void
.end method
