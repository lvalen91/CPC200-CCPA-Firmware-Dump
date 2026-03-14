.class Lcom/google/android/material/transformation/ExpandableBehavior$a;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/transformation/ExpandableBehavior;->l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Ld/c/a/a/u/a;

.field final synthetic e:Lcom/google/android/material/transformation/ExpandableBehavior;

.method constructor <init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILd/c/a/a/u/a;)V
  .registers 5
  .line 1
    iput-object p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$a;->e:Lcom/google/android/material/transformation/ExpandableBehavior;
    iput-object p2, p0, Lcom/google/android/material/transformation/ExpandableBehavior$a;->b:Landroid/view/View;
    iput p3, p0, Lcom/google/android/material/transformation/ExpandableBehavior$a;->c:I
    iput-object p4, p0, Lcom/google/android/material/transformation/ExpandableBehavior$a;->d:Ld/c/a/a/u/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onPreDraw()Z
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$a;->b:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
    invoke-virtual { v0, p0 }, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$a;->e:Lcom/google/android/material/transformation/ExpandableBehavior;
    invoke-static { v0 }, Lcom/google/android/material/transformation/ExpandableBehavior;->E(Lcom/google/android/material/transformation/ExpandableBehavior;)I
    move-result v0
    iget v1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$a;->c:I
    const/4 v2, 0
    if-ne v0, v1, :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$a;->e:Lcom/google/android/material/transformation/ExpandableBehavior;
    iget-object v1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$a;->d:Ld/c/a/a/u/a;
    move-object v3, v1
    check-cast v3, Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/material/transformation/ExpandableBehavior$a;->b:Landroid/view/View;
    invoke-interface { v1 }, Ld/c/a/a/u/a;->a()Z
    move-result v1
    invoke-virtual { v0, v3, v4, v1, v2 }, Lcom/google/android/material/transformation/ExpandableBehavior;->H(Landroid/view/View;Landroid/view/View;ZZ)Z
  :L0
    return v2
.end method
