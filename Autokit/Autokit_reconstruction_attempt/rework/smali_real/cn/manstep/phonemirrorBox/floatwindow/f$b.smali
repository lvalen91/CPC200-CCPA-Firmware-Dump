.class Lcn/manstep/phonemirrorBox/floatwindow/f$b;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/floatwindow/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/floatwindow/f;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/f;JJ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$b;->a:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$b;->a:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/floatwindow/f;->b(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$b;->a:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/floatwindow/f;->b(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$b;->a:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/floatwindow/f;->c(Lcn/manstep/phonemirrorBox/floatwindow/f;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$b;->a:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/floatwindow/f;->d(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_25
    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
