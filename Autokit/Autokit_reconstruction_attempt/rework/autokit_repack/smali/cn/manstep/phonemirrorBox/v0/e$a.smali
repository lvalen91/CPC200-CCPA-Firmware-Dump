.class Lcn/manstep/phonemirrorBox/v0/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/v0/e;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/v0/e;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/v0/e;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$a;->a:Lcn/manstep/phonemirrorBox/v0/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e$a;->a:Lcn/manstep/phonemirrorBox/v0/e;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/v0/e;->k(Lcn/manstep/phonemirrorBox/v0/e;I)V

    goto :goto_48

    :cond_c
    const/4 v1, 0x1

    if-ne v1, v0, :cond_48

    const/4 v0, 0x0

    .line 3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3f

    .line 4
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1f

    .line 5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3f

    .line 6
    :cond_1f
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2f

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e$a;->a:Lcn/manstep/phonemirrorBox/v0/e;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v2, p1, v1}, Lcn/manstep/phonemirrorBox/v0/e;->l(Lcn/manstep/phonemirrorBox/v0/e;IILandroid/os/Bundle;)V

    return-void

    .line 8
    :cond_2f
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3f

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e$a;->a:Lcn/manstep/phonemirrorBox/v0/e;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v2, p1, v1}, Lcn/manstep/phonemirrorBox/v0/e;->m(Lcn/manstep/phonemirrorBox/v0/e;IILjava/lang/String;)V

    return-void

    .line 10
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/v0/e$a;->a:Lcn/manstep/phonemirrorBox/v0/e;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, p1, v0}, Lcn/manstep/phonemirrorBox/v0/e;->p(Lcn/manstep/phonemirrorBox/v0/e;III)V

    :cond_48
    :goto_48
    return-void
.end method
