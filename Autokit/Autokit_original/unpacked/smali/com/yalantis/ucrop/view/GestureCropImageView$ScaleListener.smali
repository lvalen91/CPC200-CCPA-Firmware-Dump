.class Lcom/yalantis/ucrop/view/GestureCropImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/yalantis/ucrop/view/GestureCropImageView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "ScaleListener"
.end annotation

.field final synthetic this$0:Lcom/yalantis/ucrop/view/GestureCropImageView;

.method private constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$ScaleListener;->this$0:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-direct { p0 }, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V
    return-void
.end method

.method synthetic constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Lcom/yalantis/ucrop/view/GestureCropImageView$1;)V
  .registers 3
  .line 2
    invoke-direct { p0, p1 }, Lcom/yalantis/ucrop/view/GestureCropImageView$ScaleListener;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$ScaleListener;->this$0:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-virtual { p1 }, Landroid/view/ScaleGestureDetector;->getScaleFactor()F
    move-result p1
    iget-object v1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$ScaleListener;->this$0:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-static { v1 }, Lcom/yalantis/ucrop/view/GestureCropImageView;->access$300(Lcom/yalantis/ucrop/view/GestureCropImageView;)F
    move-result v1
    iget-object v2, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$ScaleListener;->this$0:Lcom/yalantis/ucrop/view/GestureCropImageView;
    invoke-static { v2 }, Lcom/yalantis/ucrop/view/GestureCropImageView;->access$400(Lcom/yalantis/ucrop/view/GestureCropImageView;)F
    move-result v2
    invoke-virtual { v0, p1, v1, v2 }, Lcom/yalantis/ucrop/view/CropImageView;->postScale(FFF)V
    const/4 p1, 1
    return p1
.end method
