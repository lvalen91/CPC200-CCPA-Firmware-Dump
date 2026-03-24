.class Lcn/manstep/phonemirrorBox/floatwindow/f$a;
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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$a;->a:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$a;->a:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/floatwindow/f;->a(Lcn/manstep/phonemirrorBox/floatwindow/f;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish: view.getX()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$a;->a:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/floatwindow/f;->b(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",view.getRotation()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$a;->a:Lcn/manstep/phonemirrorBox/floatwindow/f;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/floatwindow/f;->b(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatWindowSmallView"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
