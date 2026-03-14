.class Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$c;
.super Ljava/lang/Object;
.implements Landroidx/core/view/e0/f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->T(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/core/view/e0/c$a;Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;

.field final synthetic b:Z

.method constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;Z)V
  .registers 4
  .line 1
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$c;->a:Lcom/google/android/material/appbar/AppBarLayout;
    iput-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$c;->b:Z
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/view/e0/f$a;)Z
  .registers 3
  .line 1
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$c;->a:Lcom/google/android/material/appbar/AppBarLayout;
    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$c;->b:Z
    invoke-virtual { p1, p2 }, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V
    const/4 p1, 1
    return p1
.end method
