.class public Lcn/manstep/phonemirrorBox/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/widget/b$a;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/widget/b$a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_14

    const/4 p2, 0x3

    if-eq v0, p2, :cond_10

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_10
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_39

    .line 3
    :cond_14
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p2, v2, v4

    if-lez p2, :cond_30

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    move-result p2

    if-nez p2, :cond_39

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_39

    .line 7
    :cond_30
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_39

    :cond_34
    const/high16 p2, 0x3f000000    # 0.5f

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_39
    :goto_39
    return v1
.end method
