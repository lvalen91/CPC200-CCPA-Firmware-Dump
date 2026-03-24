.class public Lcn/manstep/phonemirrorBox/AssistCmd;
.super Lcn/manstep/phonemirrorBox/util/a;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/g;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/util/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/AssistCmd;->b:Z

    .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/AssistCmd$a;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/AssistCmd$a;-><init>(Lcn/manstep/phonemirrorBox/AssistCmd;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/f;->d()Lcn/manstep/phonemirrorBox/e;

    move-result-object p1

    invoke-interface {p1, p0}, Lcn/manstep/phonemirrorBox/e;->a(Lcn/manstep/phonemirrorBox/g;)V

    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/AssistCmd;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/AssistCmd;->b:Z

    return p0
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a3

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_15

    if-eq p1, v2, :cond_c

    goto/16 :goto_bd

    :cond_c
    if-ne p2, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x4

    .line 1
    :goto_10
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_bd

    .line 2
    :cond_15
    check-cast p3, [I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    .line 5
    aget v0, p3, v0

    .line 6
    aget v1, p3, v1

    const/4 v4, 0x2

    .line 7
    aget v5, p3, v4

    .line 8
    aget v6, p3, v3

    .line 9
    aget p3, p3, v2

    mul-int v2, p3, v5

    mul-int p3, p3, v6

    sub-int v5, v2, v5

    .line 10
    div-int/2addr v5, v4

    sub-int/2addr v0, v5

    sub-int v5, p3, v6

    .line 11
    div-int/2addr v5, v4

    sub-int/2addr v1, v5

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_be

    :pswitch_3d
    goto/16 :goto_bd

    .line 13
    :pswitch_3f
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sub-int/2addr v2, p1

    div-int/2addr v2, v4

    add-int/2addr v0, v2

    int-to-float p1, v0

    invoke-virtual {v5, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    add-int/2addr v1, p3

    div-int/2addr p3, v4

    sub-int/2addr p3, p2

    div-int/2addr p3, v3

    sub-int/2addr v1, p3

    sub-int/2addr v1, p2

    int-to-float p2, v1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_bd

    .line 15
    :pswitch_59
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    add-int/2addr v0, v2

    div-int/2addr v2, v4

    sub-int/2addr v2, p1

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {v5, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sub-int/2addr p3, p2

    div-int/2addr p3, v4

    add-int/2addr v1, p3

    int-to-float p2, v1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_bd

    .line 17
    :pswitch_73
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sub-int/2addr v2, p1

    div-int/2addr v2, v4

    add-int/2addr v0, v2

    int-to-float p1, v0

    invoke-virtual {v5, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 18
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    div-int/2addr p3, v4

    sub-int/2addr p3, p2

    div-int/2addr p3, v3

    add-int/2addr v1, p3

    int-to-float p2, v1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_bd

    .line 19
    :pswitch_8b
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    div-int/2addr v2, v4

    sub-int/2addr v2, p1

    div-int/2addr v2, v3

    add-int/2addr v0, v2

    int-to-float p1, v0

    invoke-virtual {v5, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sub-int/2addr p3, p2

    div-int/2addr p3, v4

    add-int/2addr v1, p3

    int-to-float p2, v1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_bd

    .line 21
    :cond_a3
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-ne p2, v1, :cond_ac

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_ad

    :cond_ac
    const/4 p3, 0x0

    :goto_ad
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    if-ne p2, v1, :cond_b4

    const/4 p1, 0x1

    goto :goto_b5

    :cond_b4
    const/4 p1, 0x0

    .line 22
    :goto_b5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    if-ne p2, v1, :cond_bb

    const/4 v0, 0x1

    .line 23
    :cond_bb
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/AssistCmd;->b:Z

    :goto_bd
    return-void

    :pswitch_data_be
    .packed-switch 0x7f090050
        :pswitch_8b
        :pswitch_3d
        :pswitch_73
        :pswitch_3d
        :pswitch_59
        :pswitch_3f
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    goto :goto_10

    .line 2
    :cond_d
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/f;->b(Z)V

    .line 3
    :goto_10
    invoke-super {p0, p1, p2}, Lcn/manstep/phonemirrorBox/util/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
