.class public Lcn/manstep/phonemirrorBox/customview/CustomImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->d:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    if-eq v0, v1, :cond_17

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_11
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->d:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_3e

    .line 4
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_2a

    .line 5
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->performLongClick()Z

    goto :goto_2d

    .line 6
    :cond_2a
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->performClick()Z

    .line 7
    :goto_2d
    iget p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->d:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_3e

    .line 8
    :cond_33
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/CustomImageView;->d:I

    const/16 p1, 0x96

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_3e
    return v1
.end method

.method public performClick()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->performLongClick()Z

    move-result v0

    return v0
.end method
