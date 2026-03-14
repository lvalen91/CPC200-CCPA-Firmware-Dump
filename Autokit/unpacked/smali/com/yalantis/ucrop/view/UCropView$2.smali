.class Lcom/yalantis/ucrop/view/UCropView$2;
.super Ljava/lang/Object;
.implements Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/yalantis/ucrop/view/UCropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/yalantis/ucrop/view/UCropView;

.method constructor <init>(Lcom/yalantis/ucrop/view/UCropView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/UCropView$2;->this$0:Lcom/yalantis/ucrop/view/UCropView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onCropRectUpdated(Landroid/graphics/RectF;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView$2;->this$0:Lcom/yalantis/ucrop/view/UCropView;
    invoke-static { v0 }, Lcom/yalantis/ucrop/view/UCropView;->access$100(Lcom/yalantis/ucrop/view/UCropView;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v0
    invoke-virtual { v0, p1 }, Lcom/yalantis/ucrop/view/CropImageView;->setCropRect(Landroid/graphics/RectF;)V
    return-void
.end method
