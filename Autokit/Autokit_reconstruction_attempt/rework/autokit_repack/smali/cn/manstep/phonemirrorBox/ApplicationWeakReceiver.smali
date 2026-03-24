.class public Lcn/manstep/phonemirrorBox/ApplicationWeakReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.manstep.phonemirrorBox.AUTO_BOX_WEAK"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_2a

    .line 4
    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/util/c0;->s(Landroid/content/Context;Z)V

    .line 5
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_2f

    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-eqz p1, :cond_2f

    const/16 p1, 0x19

    .line 6
    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 7
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z

    goto :goto_2f

    :cond_2a
    if-ne v1, p2, :cond_2f

    .line 8
    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/util/c0;->s(Landroid/content/Context;Z)V

    :cond_2f
    :goto_2f
    return-void
.end method
