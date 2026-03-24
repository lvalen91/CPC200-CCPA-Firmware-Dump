.class Lcn/manstep/phonemirrorBox/k0/a$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/k0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/k0/a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/a;JJ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/a$a;->a:Lcn/manstep/phonemirrorBox/k0/a;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a$a;->a:Lcn/manstep/phonemirrorBox/k0/a;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/k0/a;->w2(Lcn/manstep/phonemirrorBox/k0/a;)V

    return-void
.end method

.method public onTick(J)V
    .registers 3

    long-to-int p2, p1

    .line 1
    div-int/lit16 p2, p2, 0x3e8

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/a$a;->a:Lcn/manstep/phonemirrorBox/k0/a;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/k0/a;->v2(Lcn/manstep/phonemirrorBox/k0/a;Ljava/lang/String;)V

    return-void
.end method
