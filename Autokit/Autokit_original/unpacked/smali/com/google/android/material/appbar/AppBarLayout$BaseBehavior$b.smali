.class Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;
.super Ljava/lang/Object;
.implements Landroidx/core/view/e0/f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->S(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field final synthetic b:Lcom/google/android/material/appbar/AppBarLayout;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

.method constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
  .registers 6
  .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->e:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->b:Lcom/google/android/material/appbar/AppBarLayout;
    iput-object p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->c:Landroid/view/View;
    iput p5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->d:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/view/e0/f$a;)Z
  .registers 11
  .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->e:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->b:Lcom/google/android/material/appbar/AppBarLayout;
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->c:Landroid/view/View;
    iget v5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;->d:I
    const/4 p1, 2
    new-array v6, p1, [I
    fill-array-data v6, :L0
    const/4 v4, 0
    const/4 v7, 1
    invoke-virtual/range { v0 .. v7 }, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->i0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    const/4 p1, 1
    return p1
  :L0
  .array-data 4
    0t 0t 0t 0t
    0t 0t 0t 0t
  .end array-data
.end method
