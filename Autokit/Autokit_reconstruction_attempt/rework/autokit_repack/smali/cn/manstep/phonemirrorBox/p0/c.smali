.class public Lcn/manstep/phonemirrorBox/p0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/v0/e$d;
.implements Lcn/manstep/phonemirrorBox/a$a;
.implements Lcn/manstep/phonemirrorBox/n$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/p0/c$g;
    }
.end annotation


# instance fields
.field private final b:Lcn/manstep/phonemirrorBox/p0/b;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/n;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcn/manstep/phonemirrorBox/p0/c$g;

.field private final f:Lcn/manstep/phonemirrorBox/p0/a;

.field private final g:Lcn/manstep/phonemirrorBox/n;

.field private h:I

.field private i:Z

.field private j:I

.field private final k:Landroid/content/BroadcastReceiver;

.field private l:Z


# direct methods
.method public constructor <init>(Lcn/manstep/phonemirrorBox/p0/b;Landroid/content/Context;Landroidx/fragment/app/n;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->i:Z

    .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->j:I

    .line 5
    new-instance v1, Lcn/manstep/phonemirrorBox/p0/c$a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/p0/c$a;-><init>(Lcn/manstep/phonemirrorBox/p0/c;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->k:Landroid/content/BroadcastReceiver;

    .line 6
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->l:Z

    .line 7
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    .line 8
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->d:Ljava/lang/ref/WeakReference;

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->B(Landroid/content/Context;)V

    .line 11
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->O(Lcn/manstep/phonemirrorBox/v0/e$d;)V

    .line 12
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT"

    .line 13
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/p0/c;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 15
    new-instance p1, Lcn/manstep/phonemirrorBox/p0/c$g;

    iget-object p3, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-direct {p1, p3}, Lcn/manstep/phonemirrorBox/p0/c$g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->e:Lcn/manstep/phonemirrorBox/p0/c$g;

    .line 16
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/p0/c$g;->a()V

    .line 17
    new-instance p1, Lcn/manstep/phonemirrorBox/p0/d;

    invoke-direct {p1}, Lcn/manstep/phonemirrorBox/p0/d;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->f:Lcn/manstep/phonemirrorBox/p0/a;

    .line 18
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/p0/a;->c(Landroid/content/Context;)V

    .line 19
    new-instance p1, Lcn/manstep/phonemirrorBox/n;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcn/manstep/phonemirrorBox/n;-><init>(Landroid/content/Context;Lcn/manstep/phonemirrorBox/n$c;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->g:Lcn/manstep/phonemirrorBox/n;

    return-void
.end method

.method private A(I)V
    .registers 5

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainPresenter,onNoticeScanFinish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v0, 0x16

    if-ne v0, p1, :cond_27

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->t(Ljava/lang/String;)V

    goto :goto_34

    :cond_27
    const/16 v0, 0x17

    if-ne v0, p1, :cond_34

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->v(Ljava/lang/String;)V

    .line 5
    :cond_34
    :goto_34
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/manstep/phonemirrorBox/p0/c$f;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/p0/c$f;-><init>(Lcn/manstep/phonemirrorBox/p0/c;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private B()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/p0/b;->s()V

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/p0/c;->F()V

    return-void
.end method

.method private F()V
    .registers 1

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/p0/c;)Lcn/manstep/phonemirrorBox/p0/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/p0/c;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/p0/c;->r(I)V

    return-void
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/p0/c;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/p0/c;->l(I)V

    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/p0/c;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/p0/c;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/p0/c;->i:Z

    return p0
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/p0/c;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/p0/c;->F()V

    return-void
.end method

.method private j()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "MainPresenter"

    const-string v2, "goFront: startActivity MainActivity"

    .line 5
    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3c
    return-void
.end method

.method private l(I)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainPresenter,handleNoticeMsg: EVT_NOTICE_INFO: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->D(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_151

    const/16 v1, 0x36

    const/4 v2, 0x0

    if-eq p1, v1, :cond_14b

    const/16 v1, 0x37

    if-eq p1, v1, :cond_145

    const/4 v1, 0x5

    packed-switch p1, :pswitch_data_158

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_166

    packed-switch p1, :pswitch_data_190

    goto/16 :goto_156

    .line 2
    :pswitch_39
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->c()V

    goto/16 :goto_156

    .line 3
    :pswitch_40
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    if-eqz p1, :cond_156

    .line 4
    invoke-interface {p1, v2}, Lcn/manstep/phonemirrorBox/p0/b;->p(I)V

    goto/16 :goto_156

    .line 5
    :pswitch_49
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->t()Z

    move-result p1

    if-nez p1, :cond_156

    .line 6
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/p0/c;->j()V

    goto/16 :goto_156

    .line 7
    :pswitch_54
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->f:Lcn/manstep/phonemirrorBox/p0/a;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/p0/a;->a()V

    goto/16 :goto_156

    .line 8
    :pswitch_5b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->f:Lcn/manstep/phonemirrorBox/p0/a;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/p0/a;->d()Z

    goto/16 :goto_156

    .line 9
    :pswitch_62
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_156

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->f:Lcn/manstep/phonemirrorBox/p0/a;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->G()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/p0/a;->f([B)V

    goto/16 :goto_156

    .line 11
    :pswitch_71
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_156

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->f:Lcn/manstep/phonemirrorBox/p0/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/a;->b()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->S0([B)Z

    goto/16 :goto_156

    .line 13
    :pswitch_80
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/p0/c;->i:Z

    goto/16 :goto_156

    .line 14
    :pswitch_84
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/p0/c;->t()V

    goto/16 :goto_156

    :pswitch_89
    const-string p1, "MainPresenter,handleNoticeMsg: NOTICE_MANUAL_DISCONNECT_PHONE=="

    .line 15
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto/16 :goto_156

    .line 16
    :pswitch_90
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/p0/c;->u()V

    .line 17
    :pswitch_93
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->i()V

    goto/16 :goto_156

    .line 18
    :pswitch_9a
    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/p0/c;->y(Z)V

    .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->J(Z)V

    goto/16 :goto_156

    .line 20
    :pswitch_a4
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/p0/c;->y(Z)V

    .line 21
    iget p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->j:I

    if-ne p1, v0, :cond_156

    .line 22
    iput v3, p0, Lcn/manstep/phonemirrorBox/p0/c;->j:I

    goto/16 :goto_156

    .line 23
    :pswitch_af
    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/p0/c;->v(Z)V

    goto/16 :goto_156

    .line 24
    :pswitch_b4
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/p0/c;->v(Z)V

    goto/16 :goto_156

    :pswitch_b9
    const/16 p1, 0x17

    .line 25
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/p0/c;->A(I)V

    goto/16 :goto_156

    :pswitch_c0
    const/16 p1, 0x16

    .line 26
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/p0/c;->A(I)V

    goto/16 :goto_156

    .line 27
    :pswitch_c7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->I()V

    goto/16 :goto_156

    .line 28
    :pswitch_ce
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->F()V

    goto/16 :goto_156

    .line 29
    :pswitch_d5
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/p0/c;->B()V

    goto/16 :goto_156

    .line 30
    :pswitch_da
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->y()V

    goto/16 :goto_156

    .line 31
    :pswitch_e1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v2}, Lcn/manstep/phonemirrorBox/p0/b;->m(Z)V

    goto/16 :goto_156

    .line 32
    :pswitch_e8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->m(Z)V

    goto/16 :goto_156

    .line 33
    :pswitch_ef
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/p0/c;->z()V

    goto/16 :goto_156

    .line 34
    :pswitch_f4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->C()V

    goto :goto_156

    .line 35
    :pswitch_fa
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->g(I)V

    goto :goto_156

    .line 36
    :pswitch_101
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v3}, Lcn/manstep/phonemirrorBox/p0/b;->g(I)V

    goto :goto_156

    .line 37
    :pswitch_107
    iget p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    if-ne p1, v1, :cond_113

    .line 38
    iput v2, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    .line 39
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->n(Z)V

    goto :goto_156

    .line 40
    :cond_113
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v2}, Lcn/manstep/phonemirrorBox/p0/b;->n(Z)V

    goto :goto_156

    .line 41
    :pswitch_119
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    sget-object v0, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->e(Ljava/lang/String;)V

    goto :goto_156

    .line 42
    :pswitch_121
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->h()V

    goto :goto_156

    .line 43
    :pswitch_127
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->g(I)V

    goto :goto_156

    .line 44
    :pswitch_12d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v2}, Lcn/manstep/phonemirrorBox/p0/b;->g(I)V

    goto :goto_156

    .line 45
    :pswitch_133
    iget p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    if-ne p1, v1, :cond_13f

    .line 46
    iput v2, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    .line 47
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->x(Z)V

    goto :goto_156

    .line 48
    :cond_13f
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v2}, Lcn/manstep/phonemirrorBox/p0/b;->x(Z)V

    goto :goto_156

    .line 49
    :cond_145
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->J(Z)V

    goto :goto_156

    .line 50
    :cond_14b
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v2}, Lcn/manstep/phonemirrorBox/p0/b;->J(Z)V

    goto :goto_156

    .line 51
    :cond_151
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->D()V

    :cond_156
    :goto_156
    return-void

    nop

    :pswitch_data_158
    .packed-switch 0x5
        :pswitch_133
        :pswitch_12d
        :pswitch_127
        :pswitch_121
        :pswitch_119
    .end packed-switch

    :pswitch_data_166
    .packed-switch 0xb
        :pswitch_107
        :pswitch_101
        :pswitch_fa
        :pswitch_f4
        :pswitch_ef
        :pswitch_e8
        :pswitch_e1
        :pswitch_da
        :pswitch_d5
        :pswitch_ce
        :pswitch_c7
        :pswitch_c0
        :pswitch_b9
        :pswitch_b4
        :pswitch_af
        :pswitch_a4
        :pswitch_9a
        :pswitch_90
        :pswitch_93
    .end packed-switch

    :pswitch_data_190
    .packed-switch 0x1f
        :pswitch_89
        :pswitch_84
        :pswitch_80
        :pswitch_71
        :pswitch_62
        :pswitch_5b
        :pswitch_54
        :pswitch_49
        :pswitch_40
        :pswitch_39
    .end packed-switch
.end method

.method private r(I)V
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainPresenter,onChangePage: EVT_ENT_PAGE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/manstep/phonemirrorBox/p0/c;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p1, v6, :cond_b5

    if-eq p1, v5, :cond_b0

    if-eq p1, v4, :cond_44

    if-eq p1, v3, :cond_36

    const/4 v2, 0x6

    if-eq p1, v2, :cond_33

    goto/16 :goto_f9

    :cond_33
    const/4 v0, 0x4

    goto/16 :goto_f9

    .line 3
    :cond_36
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    if-eqz p1, :cond_3c

    .line 4
    iput v6, p0, Lcn/manstep/phonemirrorBox/p0/c;->j:I

    .line 5
    :cond_3c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->d()V

    const/4 v0, 0x1

    goto/16 :goto_f9

    .line 6
    :cond_44
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    if-eqz p1, :cond_7b

    .line 7
    iput v2, p0, Lcn/manstep/phonemirrorBox/p0/c;->j:I

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "UsedWirelessMode"

    invoke-virtual {p1, v0, v7}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_7b

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->Z()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v6}, Lcn/manstep/phonemirrorBox/p0/b;->q(Z)V

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "WirelessConnectMode"

    invoke-virtual {p1, v2, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_7b
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->a()V

    .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a4

    .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v4, Lcn/manstep/phonemirrorBox/ForegroundService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 16
    :cond_a4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->g:Lcn/manstep/phonemirrorBox/n;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/n;->m()V

    .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->z()V

    const/4 v0, 0x3

    goto :goto_f9

    .line 18
    :cond_b0
    invoke-static {v7}, Lcn/manstep/phonemirrorBox/f;->b(Z)V

    const/4 v0, 0x2

    goto :goto_f9

    .line 19
    :cond_b5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->b()V

    .line 20
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-nez p1, :cond_ca

    const-string p1, "MainPresenter,onChangePage: Box DisConnected!!!"

    .line 21
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/p0/b;->l()V

    .line 23
    :cond_ca
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->i()V

    .line 24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f3

    .line 25
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v4, Lcn/manstep/phonemirrorBox/ForegroundService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 26
    :cond_f3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->g:Lcn/manstep/phonemirrorBox/n;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/n;->n()V

    const/4 v0, 0x0

    .line 27
    :goto_f9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainPresenter,onChangePage: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 28
    iget p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    if-ne p1, v3, :cond_11a

    return-void

    .line 29
    :cond_11a
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {v1, p1}, Lcn/manstep/phonemirrorBox/p0/b;->k(I)Z

    move-result p1

    if-nez p1, :cond_125

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    .line 31
    :cond_125
    iget p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    if-ne v0, p1, :cond_12a

    return-void

    .line 32
    :cond_12a
    iput v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    .line 33
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {p1, v0, v7}, Lcn/manstep/phonemirrorBox/p0/b;->r(IZ)V

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainPresenter,onChangePage: mPageTo="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->i:Z

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/manstep/phonemirrorBox/p0/c$e;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/p0/c$e;-><init>(Lcn/manstep/phonemirrorBox/p0/c;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private u()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/p0/b;->B()V

    return-void
.end method

.method private v(Z)V
    .registers 3

    if-eqz p1, :cond_9

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->H(Z)V

    goto :goto_12

    .line 2
    :cond_9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->H(Z)V

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/p0/c;->F()V

    :goto_12
    return-void
.end method

.method private y(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/p0/b;->A(Z)V

    .line 2
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    return-void
.end method

.method private z()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainPresenter,onNoticePhoneDisconnected(Maybe Wifi is disconnected or abnormal): mWirelessModeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->f:Lcn/manstep/phonemirrorBox/p0/a;

    if-eqz v0, :cond_1d

    .line 3
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/a;->a()V

    .line 4
    :cond_1d
    iget v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-nez v0, :cond_2e

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcn/manstep/phonemirrorBox/p0/b;->v(Ljava/lang/String;)V

    goto :goto_67

    .line 7
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoticePhoneDisconnected: PhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPresenter"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->z()Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K()I

    move-result v0

    if-lez v0, :cond_67

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/manstep/phonemirrorBox/p0/b;->v(Ljava/lang/String;)V

    goto :goto_67

    .line 10
    :cond_62
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/p0/b;->D()V

    :cond_67
    :goto_67
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->j:I

    .line 12
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/p0/c;->F()V

    .line 13
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->l:Z

    if-eqz v1, :cond_93

    .line 14
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->l:Z

    .line 15
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 17
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {v1, v0}, Lcn/manstep/phonemirrorBox/p0/b;->p(I)V

    :cond_93
    return-void
.end method


# virtual methods
.method public C()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/p0/b;->K()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    return-void
.end method

.method public D(Z)V
    .registers 2

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->Q(Z)V

    goto :goto_b

    :cond_7
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->Q(Z)V

    :goto_b
    return-void
.end method

.method public E()V
    .registers 3

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->T(Lcn/manstep/phonemirrorBox/v0/e$d;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->g:Lcn/manstep/phonemirrorBox/n;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/n;->n()V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->e:Lcn/manstep/phonemirrorBox/p0/c$g;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/c$g;->b()V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    :cond_22
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->f:Lcn/manstep/phonemirrorBox/p0/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/p0/a;->e()V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public G(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->I(I)V

    return-void
.end method

.method public H(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->l:Z

    :cond_8
    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p1

    const/high16 v2, 0x3200000

    if-le p1, v2, :cond_12

    .line 3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return v0

    .line 4
    :cond_12
    new-array v2, p1, [B

    .line 5
    invoke-virtual {v1, v2, v0, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-ne v3, p1, :cond_41

    .line 7
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_41

    .line 8
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1, p2, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z

    move-result p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    return p1

    :catch_28
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainPresenter,uploadFile2Box: \n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_41
    return v0
.end method

.method public g(III)V
    .registers 6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_34

    const/16 v0, 0x20

    if-ne p2, v0, :cond_34

    if-nez p3, :cond_2d

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0f0167

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_33

    :cond_2d
    const/4 p1, 0x1

    if-ne p3, p1, :cond_33

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/p0/c;->t()V

    :cond_33
    :goto_33
    return-void

    .line 3
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainPresenter,onListenMsg  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 4
    new-instance p3, Landroid/content/Intent;

    const-string v0, "cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "WPARAM"

    .line 5
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "LPARAM"

    .line 6
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7a
    return-void
.end method

.method public h()V
    .registers 3

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->j()V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_13

    .line 5
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V

    :cond_13
    return-void
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    return v0
.end method

.method public k(I)V
    .registers 8

    const-string v0, "MainPresenter"

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1c

    const-string p1, "handleNoticeApp: APP RESET"

    .line 1
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/n;

    new-instance v0, Lcn/manstep/phonemirrorBox/p0/c$b;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/p0/c$b;-><init>(Lcn/manstep/phonemirrorBox/p0/c;)V

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/k0/a;->E2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_ee

    :cond_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_52

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/c0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNoticeApp: path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n;

    new-instance v1, Lcn/manstep/phonemirrorBox/p0/c$c;

    invoke-direct {v1, p0, p1}, Lcn/manstep/phonemirrorBox/p0/c$c;-><init>(Lcn/manstep/phonemirrorBox/p0/c;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcn/manstep/phonemirrorBox/k0/a;->D2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Z)V

    goto/16 :goto_ee

    :cond_52
    const/4 v1, 0x2

    if-ne p1, v1, :cond_ee

    const-string p1, "handleNoticeApp: NOTICE_APP_SEND_LOG"

    .line 6
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-boolean p1, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/s;->b()V

    if-eqz p1, :cond_6e

    .line 9
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcn/manstep/phonemirrorBox/p0/c$d;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/p0/c$d;-><init>(Lcn/manstep/phonemirrorBox/p0/c;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 11
    :cond_6e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v1, "AppLog"

    if-eqz p1, :cond_de

    .line 12
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->h(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_90

    .line 13
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {p1, v3}, Lcn/manstep/phonemirrorBox/util/n;->g(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    :cond_90
    if-eqz v3, :cond_bf

    .line 14
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_a1

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s0(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 16
    :cond_a1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/tmp/app.log\u0000"

    invoke-virtual {p0, p1, v1}, Lcn/manstep/phonemirrorBox/p0/c;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b9

    .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->b(Landroid/content/Context;)V

    goto :goto_ee

    :cond_b9
    const-string p1, "handleNoticeApp: Failed to upload the log file to the box."

    .line 18
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ee

    .line 19
    :cond_bf
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_ca

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s0(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_ca
    const-string p1, "handleNoticeApp: Failed to upload the log file to the box.(base64LogFile=null)"

    .line 21
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f0f0147

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V

    goto :goto_ee

    .line 23
    :cond_de
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_e9

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s0(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_e9
    const-string p1, "handleNoticeApp: The app log file does not exist."

    .line 25
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ee
    :goto_ee
    return-void
.end method

.method public m()Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainPresenter,isFullScreenPage: page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    const/4 v2, 0x2

    if-ne v0, v2, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    return v0

    :cond_24
    :goto_24
    return v1
.end method

.method public n()Z
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public o(IZ)Z
    .registers 6

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "UseVolumeKeySwitchMusic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    if-eqz v0, :cond_2c

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->k:Z

    if-nez v0, :cond_2c

    if-eqz p2, :cond_2a

    const/16 p2, 0x19

    if-ne p1, p2, :cond_21

    const/16 p1, 0xcc

    .line 3
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_2a

    :cond_21
    const/16 p2, 0x18

    if-ne p1, p2, :cond_2a

    const/16 p1, 0xcd

    .line 4
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    :cond_2a
    :goto_2a
    const/4 p1, 0x1

    return p1

    :cond_2c
    return v2
.end method

.method public p()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    const/16 v1, 0x19

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z

    :cond_11
    return-void
.end method

.method public q()V
    .registers 5

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_14

    .line 2
    sput-boolean v2, Lcn/manstep/phonemirrorBox/z;->B0:Z

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/p0/b;->G()V

    const/16 v0, 0x15

    .line 4
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_24

    :cond_14
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1f

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {v0, v2, v1}, Lcn/manstep/phonemirrorBox/p0/b;->r(IZ)V

    .line 6
    iput v2, p0, Lcn/manstep/phonemirrorBox/p0/c;->h:I

    goto :goto_24

    .line 7
    :cond_1f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->b:Lcn/manstep/phonemirrorBox/p0/b;

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/p0/b;->a()V

    :goto_24
    return-void
.end method

.method public s(IILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public w(IZ)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyCodeChanged: keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLongPress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPresenter"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J()Lcn/manstep/phonemirrorBox/q0/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/q0/g;->e()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "BgKeyValid"

    invoke-virtual {v0, v3, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v0

    if-nez v0, :cond_48

    return-void

    .line 5
    :cond_48
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/b0;->f(Landroid/content/Context;I)I

    move-result v0

    if-eqz p2, :cond_62

    .line 6
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/p0/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/b0;->g(Landroid/content/Context;I)I

    move-result v0

    :cond_62
    if-lez v0, :cond_7e

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->G()V

    .line 8
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->I(I)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onKeyCodeChanged: cmd = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    return-void
.end method

.method public x(IILjava/lang/String;)V
    .registers 4

    return-void
.end method
