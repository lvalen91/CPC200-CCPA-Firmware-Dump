.class final Landroidx/recyclerview/widget/RecyclerView$b;
.super Ljava/lang/Object;
.implements Landroid/view/animation/Interpolator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public getInterpolation(F)F
  .registers 4
    const/high16 v0, 16256
    sub-float/2addr p1, v0
    mul-float v1, p1, p1
    mul-float v1, v1, p1
    mul-float v1, v1, p1
    mul-float v1, v1, p1
    add-float/2addr v1, v0
    return v1
.end method
