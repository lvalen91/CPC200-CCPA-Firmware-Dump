.class Lcn/manstep/phonemirrorBox/util/e0$f;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/util/e0;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/util/e0;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/e0;JJ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/e0;->f(Lcn/manstep/phonemirrorBox/util/e0;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/e0;->b(Lcn/manstep/phonemirrorBox/util/e0;)V

    goto :goto_13

    .line 3
    :cond_e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/e0;->h(Lcn/manstep/phonemirrorBox/util/e0;)V

    :goto_13
    return-void
.end method

.method public onTick(J)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/e0;->f(Lcn/manstep/phonemirrorBox/util/e0;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/e0;->g(Lcn/manstep/phonemirrorBox/util/e0;)V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$f;->a:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/e0;->h(Lcn/manstep/phonemirrorBox/util/e0;)V

    :cond_12
    return-void
.end method
