.class Lcom/yalantis/ucrop/UCropActivity$1;
.super Ljava/lang/Object;
.implements Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/yalantis/ucrop/UCropActivity;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/yalantis/ucrop/UCropActivity;

.method constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$1;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onLoadComplete()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v0 }, Lcom/yalantis/ucrop/UCropActivity;->access$200(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/UCropView;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const/high16 v1, 16256
    invoke-virtual { v0, v1 }, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const-wide/16 v1, 300
    invoke-virtual { v0, v1, v2 }, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;
    invoke-direct { v1 }, Landroid/view/animation/AccelerateInterpolator;-><init>()V
    invoke-virtual { v0, v1 }, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
  .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v0 }, Lcom/yalantis/ucrop/UCropActivity;->access$300(Lcom/yalantis/ucrop/UCropActivity;)Landroid/view/View;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/view/View;->setClickable(Z)V
  .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v0, v1 }, Lcom/yalantis/ucrop/UCropActivity;->access$402(Lcom/yalantis/ucrop/UCropActivity;Z)Z
  .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-virtual { v0 }, Landroidx/appcompat/app/d;->supportInvalidateOptionsMenu()V
    return-void
.end method

.method public onLoadFailure(Ljava/lang/Exception;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-virtual { v0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->setResultError(Ljava/lang/Throwable;)V
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$1;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-virtual { p1 }, Landroid/app/Activity;->finish()V
    return-void
.end method

.method public onRotate(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->access$000(Lcom/yalantis/ucrop/UCropActivity;F)V
    return-void
.end method

.method public onScale(F)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->access$100(Lcom/yalantis/ucrop/UCropActivity;F)V
    return-void
.end method
