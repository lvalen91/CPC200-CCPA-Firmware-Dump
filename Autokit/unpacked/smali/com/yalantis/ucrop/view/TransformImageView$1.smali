.class Lcom/yalantis/ucrop/view/TransformImageView$1;
.super Ljava/lang/Object;
.implements Lcom/yalantis/ucrop/callback/BitmapLoadCallback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/yalantis/ucrop/view/TransformImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/yalantis/ucrop/view/TransformImageView;

.method constructor <init>(Lcom/yalantis/ucrop/view/TransformImageView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->this$0:Lcom/yalantis/ucrop/view/TransformImageView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ExifInfo;Ljava/lang/String;Ljava/lang/String;)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->this$0:Lcom/yalantis/ucrop/view/TransformImageView;
    invoke-static { v0, p3 }, Lcom/yalantis/ucrop/view/TransformImageView;->access$002(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)Ljava/lang/String;
  .line 2
    iget-object p3, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->this$0:Lcom/yalantis/ucrop/view/TransformImageView;
    invoke-static { p3, p4 }, Lcom/yalantis/ucrop/view/TransformImageView;->access$102(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)Ljava/lang/String;
  .line 3
    iget-object p3, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->this$0:Lcom/yalantis/ucrop/view/TransformImageView;
    invoke-static { p3, p2 }, Lcom/yalantis/ucrop/view/TransformImageView;->access$202(Lcom/yalantis/ucrop/view/TransformImageView;Lcom/yalantis/ucrop/model/ExifInfo;)Lcom/yalantis/ucrop/model/ExifInfo;
  .line 4
    iget-object p2, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->this$0:Lcom/yalantis/ucrop/view/TransformImageView;
    const/4 p3, 1
    iput-boolean p3, p2, Lcom/yalantis/ucrop/view/TransformImageView;->mBitmapDecoded:Z
  .line 5
    invoke-virtual { p2, p1 }, Lcom/yalantis/ucrop/view/TransformImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$1;->this$0:Lcom/yalantis/ucrop/view/TransformImageView;
    iget-object v0, v0, Lcom/yalantis/ucrop/view/TransformImageView;->mTransformImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;->onLoadFailure(Ljava/lang/Exception;)V
  :L0
    return-void
.end method
