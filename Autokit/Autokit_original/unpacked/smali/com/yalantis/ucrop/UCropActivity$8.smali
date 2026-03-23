.class Lcom/yalantis/ucrop/UCropActivity$8;
.super Ljava/lang/Object;
.implements Lcom/yalantis/ucrop/callback/BitmapCropCallback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/yalantis/ucrop/UCropActivity;->cropAndSaveImage()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/yalantis/ucrop/UCropActivity;

.method constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$8;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onBitmapCropped(Landroid/net/Uri;II)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$8;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-static { v0 }, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/yalantis/ucrop/view/CropImageView;->getTargetAspectRatio()F
    move-result v1
    invoke-virtual { v0, p1, v1, p2, p3 }, Lcom/yalantis/ucrop/UCropActivity;->setResultUri(Landroid/net/Uri;FII)V
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$8;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-virtual { p1 }, Landroid/app/Activity;->finish()V
    return-void
.end method

.method public onCropFailure(Ljava/lang/Throwable;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$8;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-virtual { v0, p1 }, Lcom/yalantis/ucrop/UCropActivity;->setResultError(Ljava/lang/Throwable;)V
  .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$8;->this$0:Lcom/yalantis/ucrop/UCropActivity;
    invoke-virtual { p1 }, Landroid/app/Activity;->finish()V
    return-void
.end method
