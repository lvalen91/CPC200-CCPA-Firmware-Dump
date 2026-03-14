.class Lcn/manstep/phonemirrorBox/AndroidJpegView$a;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AndroidJpegView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/AndroidJpegView;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AndroidJpegView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .catchall { :L0 .. :L5 } :L4
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    monitor-enter v0
    const/4 v1, 2
  :L0
  .line 2
    iget v2, p1, Landroid/os/Message;->what:I
    const/4 v3, 1
    if-ne v1, v2, :L1
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidJpegView;->f(Lcn/manstep/phonemirrorBox/AndroidJpegView;)I
    move-result v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/AndroidJpegView;->g(Lcn/manstep/phonemirrorBox/AndroidJpegView;)I
    move-result v2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v1, v2, v4 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v1
    invoke-static { p1, v1 }, Lcn/manstep/phonemirrorBox/AndroidJpegView;->e(Lcn/manstep/phonemirrorBox/AndroidJpegView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AndroidJpegView;->h(Lcn/manstep/phonemirrorBox/AndroidJpegView;)Landroid/graphics/BitmapFactory$Options;
    move-result-object p1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidJpegView;->d(Lcn/manstep/phonemirrorBox/AndroidJpegView;)Landroid/graphics/Bitmap;
    move-result-object v1
    iput-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AndroidJpegView;->h(Lcn/manstep/phonemirrorBox/AndroidJpegView;)Landroid/graphics/BitmapFactory$Options;
    move-result-object p1
    iput v3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/AndroidJpegView;->d(Lcn/manstep/phonemirrorBox/AndroidJpegView;)Landroid/graphics/Bitmap;
    move-result-object v1
    invoke-virtual { p1, v1 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-virtual { p1 }, Landroid/widget/ImageView;->invalidate()V
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/AndroidJpegView;->b()V
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-virtual { p1 }, Ljava/lang/Object;->notify()V
    goto :L3
  :L1
  .line 10
    iget p1, p1, Landroid/os/Message;->what:I
    if-ne v3, p1, :L3
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AndroidJpegView;->i(Lcn/manstep/phonemirrorBox/AndroidJpegView;)I
    move-result p1
    if-nez p1, :L2
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/AndroidJpegView;->b()V
  :L2
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;->a:Lcn/manstep/phonemirrorBox/AndroidJpegView;
    invoke-virtual { p1 }, Landroid/widget/ImageView;->invalidate()V
  :L3
  .line 14
    monitor-exit v0
    return-void
  :L4
    move-exception p1
    monitor-exit v0
  :L5
    throw p1
.end method
