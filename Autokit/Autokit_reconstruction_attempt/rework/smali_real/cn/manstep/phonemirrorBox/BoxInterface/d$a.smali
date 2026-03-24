.class Lcn/manstep/phonemirrorBox/BoxInterface/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/BoxInterface/d;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v2, v0, :cond_80

    .line 2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_31

    if-eq v0, v1, :cond_2b

    const/16 v1, 0xc

    if-eq v0, v1, :cond_20

    const/16 v1, 0xd

    if-eq v0, v1, :cond_15

    goto :goto_36

    :cond_15
    const-string v0, "EVT_OTG_PLUG_IN: startMirror"

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->Z()V

    goto :goto_36

    :cond_20
    const-string v0, "EVT_OTG_PLUG_OUT: stopMirror"

    .line 5
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->b0()V

    goto :goto_36

    :cond_2b
    const-string v0, "EVT_IPHONE_PLUG_OUT"

    .line 7
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_36

    :cond_31
    const-string v0, "EVT_ANDROID_PLUG_OUT"

    .line 8
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 9
    :goto_36
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5c

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxInterface,handleMessage: MSG_PHASE mlisteners.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 11
    :cond_5c
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;

    .line 12
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_7a

    .line 13
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;->o(I)V

    goto :goto_64

    .line 14
    :cond_7a
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;->a(ILjava/lang/Object;)V

    goto :goto_64

    :cond_80
    if-ne v1, v0, :cond_9e

    .line 15
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;

    .line 17
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;->c(I)V

    goto :goto_8c

    :cond_9e
    const/4 v1, 0x3

    if-ne v1, v0, :cond_a2

    goto :goto_e5

    :cond_a2
    const/4 v2, 0x4

    if-ne v2, v0, :cond_c6

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "WPARAM"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "LPARAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/d$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/d;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_e5

    :cond_c6
    const/4 v1, 0x6

    if-ne v1, v0, :cond_e5

    .line 22
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;

    .line 23
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/d$g;->a(ILjava/lang/Object;)V

    goto :goto_d1

    :cond_e5
    :goto_e5
    return-void
.end method
