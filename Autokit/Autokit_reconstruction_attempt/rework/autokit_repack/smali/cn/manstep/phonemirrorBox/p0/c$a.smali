.class Lcn/manstep/phonemirrorBox/p0/c$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/p0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/p0/c;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/p0/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    :cond_a
    const-string v0, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    const-string p1, "WPARAM"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "LPARAM"

    .line 4
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainPresenter,onReceive: Msgcome:WPARAM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " LPARAM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4e

    const-string p1, "MainPresenter,onReceive: get EVT_TEST_QUIT, then finish"

    .line 6
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/p0/c;->a(Lcn/manstep/phonemirrorBox/p0/c;)Lcn/manstep/phonemirrorBox/p0/b;

    move-result-object p1

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->o()V

    goto/16 :goto_c1

    :cond_4e
    const/4 v0, 0x1

    if-ne v0, p1, :cond_57

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/p0/c;->b(Lcn/manstep/phonemirrorBox/p0/c;I)V

    goto :goto_c1

    :cond_57
    const/4 v0, 0x3

    if-ne v0, p1, :cond_78

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainPresenter,onReceive: EVT_BACK_HOME: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/p0/c;->a(Lcn/manstep/phonemirrorBox/p0/c;)Lcn/manstep/phonemirrorBox/p0/b;

    move-result-object p1

    invoke-interface {p1, p2}, Lcn/manstep/phonemirrorBox/p0/b;->p(I)V

    goto :goto_c1

    :cond_78
    const/4 v0, 0x7

    if-ne v0, p1, :cond_85

    .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/p0/c;->a(Lcn/manstep/phonemirrorBox/p0/c;)Lcn/manstep/phonemirrorBox/p0/b;

    move-result-object p1

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->a()V

    goto :goto_c1

    :cond_85
    const/4 v0, 0x6

    if-ne v0, p1, :cond_8e

    .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/p0/c;->C()V

    goto :goto_c1

    :cond_8e
    const/4 v0, 0x4

    if-ne v0, p1, :cond_97

    .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/p0/c;->c(Lcn/manstep/phonemirrorBox/p0/c;I)V

    goto :goto_c1

    :cond_97
    const/4 v0, 0x5

    if-ne v0, p1, :cond_b8

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainPresenter,onReceive: Uilogic: EVT_SET_PERMISSION_UILOG: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/p0/c;->a(Lcn/manstep/phonemirrorBox/p0/c;)Lcn/manstep/phonemirrorBox/p0/b;

    move-result-object p1

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->u()V

    goto :goto_c1

    :cond_b8
    const/16 v0, 0x8

    if-ne v0, p1, :cond_c1

    .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$a;->a:Lcn/manstep/phonemirrorBox/p0/c;

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/p0/c;->k(I)V

    :cond_c1
    :goto_c1
    return-void
.end method
