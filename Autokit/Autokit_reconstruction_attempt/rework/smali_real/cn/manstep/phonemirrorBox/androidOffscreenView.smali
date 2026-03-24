.class public Lcn/manstep/phonemirrorBox/androidOffscreenView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;


# instance fields
.field b:Z

.field c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->b:Z

    .line 3
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    .line 4
    new-instance p1, Lcn/manstep/phonemirrorBox/androidOffscreenView$a;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/androidOffscreenView$a;-><init>(Lcn/manstep/phonemirrorBox/androidOffscreenView;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 3

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
    .registers 3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_5

    goto :goto_d

    :cond_5
    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->b:Z

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, v1, v1}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    .line 3
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public v([B)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v0, 0x18

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 4
    :goto_1a
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->b:Z

    if-eq p1, v0, :cond_25

    .line 5
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->b:Z

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_25
    return-void
.end method
