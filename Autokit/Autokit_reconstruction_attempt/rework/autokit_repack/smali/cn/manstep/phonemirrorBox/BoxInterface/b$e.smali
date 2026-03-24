.class public Lcn/manstep/phonemirrorBox/BoxInterface/b$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/manstep/phonemirrorBox/BoxInterface/b$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(III)V
    .registers 4

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;

    if-nez v1, :cond_12

    const-string p1, "RenderHandler.handleMessage: weak ref is null"

    .line 3
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void

    :cond_12
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_45

    if-eq v0, v2, :cond_3d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_37

    const/4 v2, 0x3

    if-eq v0, v2, :cond_31

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2d

    const/4 v2, 0x5

    if-eq v0, v2, :cond_25

    goto :goto_52

    .line 4
    :cond_25
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;II)V

    goto :goto_52

    .line 5
    :cond_2d
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->f(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V

    goto :goto_52

    .line 6
    :cond_31
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z

    .line 7
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->e(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V

    goto :goto_52

    .line 8
    :cond_37
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z

    .line 9
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->d(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V

    goto :goto_52

    .line 10
    :cond_3d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->c(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;II)V

    goto :goto_52

    .line 11
    :cond_45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    invoke-static {v1, v0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->b(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;Landroid/view/SurfaceHolder;Z)V

    :goto_52
    return-void
.end method
