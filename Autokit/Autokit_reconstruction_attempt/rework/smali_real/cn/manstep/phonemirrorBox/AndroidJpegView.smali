.class public Lcn/manstep/phonemirrorBox/AndroidJpegView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/BitmapFactory$Options;

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->b:Landroid/graphics/Bitmap;

    .line 3
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->c:Landroid/graphics/BitmapFactory$Options;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->e:I

    .line 5
    iput p2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->f:I

    .line 6
    iput p2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->g:I

    .line 7
    iput p2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->h:I

    .line 8
    iput p2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->i:I

    .line 9
    iput p2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->j:I

    const/4 p2, 0x1

    .line 10
    iput p2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    new-instance p1, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/AndroidJpegView$a;-><init>(Lcn/manstep/phonemirrorBox/AndroidJpegView;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->d:Landroid/os/Handler;

    const-string p1, "AndroidJpegView B"

    .line 12
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/AndroidJpegView;)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/AndroidJpegView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/AndroidJpegView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->e:I

    return p0
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/AndroidJpegView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->f:I

    return p0
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/AndroidJpegView;)Landroid/graphics/BitmapFactory$Options;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->c:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/AndroidJpegView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->h:I

    return p0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public b()V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iv_W = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iv_H = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawable_X = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", drawable_Y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [F

    .line 6
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    .line 7
    aget v2, v3, v2

    const/4 v4, 0x4

    .line 8
    aget v3, v3, v4

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale_X = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", scale_Y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caculate_W = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caculate_H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 11
    iput v0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->g:I

    .line 12
    iput v1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->h:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->i:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->j:I

    return-void
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    .registers 2

    return-void
.end method

.method public o(I)V
    .registers 2

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    const-string v0, "AndroidJpegView onAttachedToWindow"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    .line 3
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const-string v0, "AndroidJpegView onDetachedFromWindow"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->e:I

    .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->f:I

    .line 5
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V

    .line 6
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->i:I

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->j:I

    sub-int/2addr v1, v2

    .line 3
    iget v2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->g:I

    const/16 v3, 0x2710

    const/4 v4, 0x0

    if-le v0, v2, :cond_1a

    const/16 v0, 0x2710

    goto :goto_21

    :cond_1a
    if-lez v0, :cond_20

    mul-int/lit16 v0, v0, 0x2710

    .line 4
    div-int/2addr v0, v2

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 5
    :goto_21
    iget v2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->h:I

    if-le v1, v2, :cond_26

    goto :goto_35

    :cond_26
    if-lez v1, :cond_34

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit16 v1, v1, 0x2710

    iget v2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->h:I

    div-int v3, v1, v2

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    .line 7
    :goto_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x1

    if-eqz p1, :cond_4f

    const/4 v2, 0x2

    if-eq p1, v1, :cond_48

    if-eq p1, v2, :cond_44

    goto :goto_52

    .line 8
    :cond_44
    invoke-static {v1, v4, v0, v3}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    goto :goto_52

    .line 9
    :cond_48
    invoke-static {v2, v4, v0, v3}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    .line 10
    invoke-static {v4}, Lcn/manstep/phonemirrorBox/f;->b(Z)V

    goto :goto_52

    .line 11
    :cond_4f
    invoke-static {v4, v4, v0, v3}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    :goto_52
    return v1
.end method

.method public v([B)V
    .registers 8

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x24

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const/16 v3, 0xc

    .line 5
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    const/16 v4, 0x18

    .line 6
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    if-lez v1, :cond_e9

    if-lez v2, :cond_e9

    if-lez v3, :cond_e9

    const/16 v5, 0x7d0

    if-gt v2, v5, :cond_e9

    if-le v3, v5, :cond_34

    goto/16 :goto_e9

    .line 7
    :cond_34
    iput v2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->e:I

    .line 8
    iput v3, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->f:I

    const/4 p1, 0x0

    .line 9
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->b:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v5, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->e:I

    if-ne v2, v5, :cond_50

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v5, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->f:I

    if-eq v2, v5, :cond_51

    :cond_50
    const/4 p1, 0x1

    .line 10
    :cond_51
    monitor-enter p0

    const/4 v2, 0x2

    if-eqz p1, :cond_a8

    .line 11
    :try_start_55
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->d:Landroid/os/Handler;

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->d:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_a6

    .line 12
    :try_start_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AndroidJpegView wait start w:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->e:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " h:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->f:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AndroidJpegView wait over:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_99} :catch_9a
    .catchall {:try_start_60 .. :try_end_99} :catchall_a6

    goto :goto_a8

    :catch_9a
    move-exception p1

    .line 15
    :try_start_9b
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 16
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_a8

    :catchall_a6
    move-exception p1

    goto :goto_e7

    :cond_a8
    :goto_a8
    if-eq v4, v2, :cond_c0

    .line 17
    iget p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->h:I

    if-nez p1, :cond_be

    const-string p1, "AndroidJpegView need RecaculateScaleWH"

    .line 18
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    :cond_be
    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_9b .. :try_end_bf} :catchall_a6

    return-void

    .line 21
    :cond_c0
    :try_start_c0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 v0, 0x20

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->c:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->b:Landroid/graphics/Bitmap;
    :try_end_ce
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c0 .. :try_end_ce} :catch_cf
    .catchall {:try_start_c0 .. :try_end_ce} :catchall_a6

    goto :goto_da

    :catch_cf
    move-exception p1

    .line 22
    :try_start_d0
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 23
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 24
    :goto_da
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidJpegView;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    monitor-exit p0

    return-void

    :goto_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_d0 .. :try_end_e8} :catchall_a6

    throw p1

    .line 26
    :cond_e9
    :goto_e9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error bytes:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "W:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "H:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "jpegsize:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method
