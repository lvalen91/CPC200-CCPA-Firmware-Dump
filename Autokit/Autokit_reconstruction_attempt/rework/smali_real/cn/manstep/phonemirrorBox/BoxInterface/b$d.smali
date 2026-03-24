.class public Lcn/manstep/phonemirrorBox/BoxInterface/b$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/manstep/phonemirrorBox/BoxInterface/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/BoxInterface/b$d;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->a:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public b(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d(I)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e(II)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RenderHandler ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/b;

    if-nez v1, :cond_2e

    const-string p1, "RenderHandler.handleMessage: weak ref is null"

    .line 4
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2e
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/b;->f:Lcn/manstep/phonemirrorBox/BoxInterface/b$c;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_72

    const/4 v1, 0x3

    if-eq v0, v4, :cond_52

    const/4 v5, 0x2

    if-eq v0, v5, :cond_48

    if-eq v0, v1, :cond_3d

    goto :goto_80

    :cond_3d
    if-eqz v2, :cond_80

    .line 6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_44

    const/4 v3, 0x1

    :cond_44
    invoke-virtual {v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->d(Z)V

    goto :goto_80

    :cond_48
    if-eqz v2, :cond_80

    .line 7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->e(II)V

    goto :goto_80

    :cond_52
    if-eqz v2, :cond_80

    .line 8
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v1, :cond_6e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_66

    const/4 v0, 0x6

    if-eq p1, v0, :cond_62

    goto :goto_80

    .line 9
    :cond_62
    invoke-virtual {v2, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->b(Z)V

    goto :goto_80

    .line 10
    :cond_66
    invoke-virtual {v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->b(Z)V

    goto :goto_80

    .line 11
    :cond_6a
    invoke-virtual {v2, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->c(Z)V

    goto :goto_80

    .line 12
    :cond_6e
    invoke-virtual {v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->c(Z)V

    goto :goto_80

    .line 13
    :cond_72
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_77

    const/4 v3, 0x1

    :cond_77
    if-eqz v3, :cond_7d

    .line 14
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->b(Lcn/manstep/phonemirrorBox/BoxInterface/b;)V

    goto :goto_80

    .line 15
    :cond_7d
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->c(Lcn/manstep/phonemirrorBox/BoxInterface/b;)V

    :cond_80
    :goto_80
    return-void
.end method
