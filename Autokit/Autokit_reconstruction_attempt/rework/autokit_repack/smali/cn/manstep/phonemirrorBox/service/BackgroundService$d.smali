.class Lcn/manstep/phonemirrorBox/service/BackgroundService$d;
.super Lcn/manstep/phonemirrorBox/r0/d$a;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/service/BackgroundService$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/service/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

.field private b:Lcn/manstep/phonemirrorBox/r0/b;

.field private c:Lcn/manstep/phonemirrorBox/r0/c;

.field private d:Lcn/manstep/phonemirrorBox/r0/a;

.field private e:Lcn/manstep/phonemirrorBox/r0/e;

.field final synthetic f:Lcn/manstep/phonemirrorBox/service/BackgroundService;


# direct methods
.method private constructor <init>(Lcn/manstep/phonemirrorBox/service/BackgroundService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->f:Lcn/manstep/phonemirrorBox/service/BackgroundService;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/r0/d$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/service/BackgroundService;Lcn/manstep/phonemirrorBox/service/BackgroundService$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;-><init>(Lcn/manstep/phonemirrorBox/service/BackgroundService;)V

    return-void
.end method


# virtual methods
.method public E0()Lcn/manstep/phonemirrorBox/r0/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->e:Lcn/manstep/phonemirrorBox/r0/e;

    return-object v0
.end method

.method public G()Lcn/manstep/phonemirrorBox/r0/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->d:Lcn/manstep/phonemirrorBox/r0/a;

    return-object v0
.end method

.method public O()Lcn/manstep/phonemirrorBox/r0/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->b:Lcn/manstep/phonemirrorBox/r0/b;

    return-object v0
.end method

.method public O0(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteServiceImpl->init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackgroundService"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->b(I)V

    :cond_7
    return-void
.end method

.method public c0(Lcn/manstep/phonemirrorBox/service/BackgroundService$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    return-void
.end method

.method public d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->d()I

    move-result v0

    return v0

    .line 3
    :cond_9
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x4

    return v0

    .line 4
    :cond_11
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->f()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public g(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->g(I)V

    :cond_7
    return-void
.end method

.method public h(Lcn/manstep/phonemirrorBox/r0/c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->c:Lcn/manstep/phonemirrorBox/r0/c;

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->h(Lcn/manstep/phonemirrorBox/r0/c;)V

    :cond_9
    return-void
.end method

.method public j(Lcn/manstep/phonemirrorBox/r0/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->b:Lcn/manstep/phonemirrorBox/r0/b;

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->j(Lcn/manstep/phonemirrorBox/r0/b;)V

    :cond_9
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->k(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public l(Lcn/manstep/phonemirrorBox/r0/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->d:Lcn/manstep/phonemirrorBox/r0/a;

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->l(Lcn/manstep/phonemirrorBox/r0/a;)V

    :cond_9
    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->f:Lcn/manstep/phonemirrorBox/service/BackgroundService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/service/BackgroundService;->a(Lcn/manstep/phonemirrorBox/service/BackgroundService;I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lcn/manstep/phonemirrorBox/r0/d$a;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method public p()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->p()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public q(Lcn/manstep/phonemirrorBox/r0/e;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVaStateChangeListener: ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundService"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->e:Lcn/manstep/phonemirrorBox/r0/e;

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->a:Lcn/manstep/phonemirrorBox/service/BackgroundService$b;

    if-eqz v0, :cond_1f

    .line 4
    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$b;->q(Lcn/manstep/phonemirrorBox/r0/e;)V

    :cond_1f
    return-void
.end method

.method public u()Lcn/manstep/phonemirrorBox/r0/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/service/BackgroundService$d;->c:Lcn/manstep/phonemirrorBox/r0/c;

    return-object v0
.end method

.method public v0(I)V
    .registers 5

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/16 v2, 0x1388

    if-ne p1, v2, :cond_d

    .line 1
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_49

    :cond_d
    const/16 v2, 0x1389

    if-ne p1, v2, :cond_1c

    const/16 p1, 0x68

    .line 3
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    const/16 p1, 0x69

    .line 4
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_49

    :cond_1c
    const/4 v2, 0x7

    if-ne p1, v2, :cond_30

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->C()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 6
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    .line 7
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    goto :goto_49

    :cond_30
    const/16 v0, 0x138a

    if-ne p1, v0, :cond_46

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_49

    const/4 p1, 0x1

    const/16 v0, 0x19

    .line 9
    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 10
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z

    goto :goto_49

    .line 11
    :cond_46
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    :cond_49
    :goto_49
    return-void
.end method
