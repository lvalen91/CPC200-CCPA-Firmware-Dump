.class Lcom/yalantis/ucrop/UCropActivity$6;
.super Ljava/lang/Object;
.implements Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/yalantis/ucrop/UCropActivity;->setupScaleWidget()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/yalantis/ucrop/UCropActivity;

.method constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onScroll(FF)V
  .registers 7
    const p2, 1181376512
    const/4 v0, 0
    cmpl-float v0, p1, v0
    if-lez v0, :L0
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v0 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v0
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v1 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F
    move-result v1
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
  .line 2
    invoke-static { v2 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v2
    invoke-virtual { v2 }, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F
    move-result v2
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v3 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v3
    invoke-virtual { v3 }, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F
    move-result v3
    sub-float/2addr v2, v3
    div-float/2addr v2, p2
    mul-float p1, p1, v2
    add-float/2addr v1, p1
  .line 3
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(F)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v0 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v0
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v1 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F
    move-result v1
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
  .line 5
    invoke-static { v2 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v2
    invoke-virtual { v2 }, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F
    move-result v2
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v3 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v3
    invoke-virtual { v3 }, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F
    move-result v3
    sub-float/2addr v2, v3
    div-float/2addr v2, p2
    mul-float p1, p1, v2
    add-float/2addr v1, p1
  .line 6
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/view/CropImageView;->zoomOutImage(F)V
  :L1
    return-void
.end method

.method public onScrollEnd()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v0 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V
    return-void
.end method

.method public onScrollStart()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$6;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v0 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/yalantis/ucrop/view/CropImageView;->cancelAllAnimations()V
    return-void
.end method
