.class final Lcn/manstep/phonemirrorBox/util/p$g;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/util/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/util/p;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/p$g;->a:Lcn/manstep/phonemirrorBox/util/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/p$g;->a:Lcn/manstep/phonemirrorBox/util/p;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/p;->c(Lcn/manstep/phonemirrorBox/util/p;)Ljava/util/LinkedList;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/util/p$e;

    if-eqz v0, :cond_55

    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_4e

    const/4 v2, 0x1

    if-eq v1, v2, :cond_46

    const/4 v2, 0x2

    if-eq v1, v2, :cond_40

    const/4 v2, 0x3

    if-eq v1, v2, :cond_32

    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    goto :goto_55

    .line 4
    :cond_24
    check-cast v0, Lcn/manstep/phonemirrorBox/util/p$f;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcn/manstep/phonemirrorBox/util/p$f;->d(J)V

    goto :goto_55

    .line 5
    :cond_32
    check-cast v0, Lcn/manstep/phonemirrorBox/util/p$f;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcn/manstep/phonemirrorBox/util/p$f;->e(J)V

    goto :goto_55

    .line 6
    :cond_40
    check-cast v0, Lcn/manstep/phonemirrorBox/util/p$f;

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/util/p$f;->a()V

    goto :goto_55

    .line 7
    :cond_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/util/p$e;->b(Ljava/lang/String;)V

    goto :goto_55

    .line 8
    :cond_4e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/util/p$e;->c(Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method
