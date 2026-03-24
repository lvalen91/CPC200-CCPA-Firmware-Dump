.class Lcn/manstep/phonemirrorBox/x0/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/service/BackgroundService$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/x0/d$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/d$a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/d$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d$a$a;->a:Lcn/manstep/phonemirrorBox/x0/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_13

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "drivePosition"

    invoke-virtual {v0, v1, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s0(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$a$a;->a:Lcn/manstep/phonemirrorBox/x0/d$a;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/x0/d$a;->a:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->l(Lcn/manstep/phonemirrorBox/x0/d;)Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->C()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public g(I)V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N0(I)Z

    :cond_d
    return-void
.end method

.method public h(Lcn/manstep/phonemirrorBox/r0/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$a$a;->a:Lcn/manstep/phonemirrorBox/x0/d$a;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/x0/d$a;->a:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/x0/d;->p(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/c;)Lcn/manstep/phonemirrorBox/r0/c;

    return-void
.end method

.method public j(Lcn/manstep/phonemirrorBox/r0/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$a$a;->a:Lcn/manstep/phonemirrorBox/x0/d$a;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/x0/d$a;->a:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/x0/d;->n(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/b;)Lcn/manstep/phonemirrorBox/r0/b;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->l0([B)Z

    :cond_11
    return-void
.end method

.method public l(Lcn/manstep/phonemirrorBox/r0/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$a$a;->a:Lcn/manstep/phonemirrorBox/x0/d$a;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/x0/d$a;->a:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/x0/d;->r(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/a;)Lcn/manstep/phonemirrorBox/r0/a;

    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public q(Lcn/manstep/phonemirrorBox/r0/e;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$a$a;->a:Lcn/manstep/phonemirrorBox/x0/d$a;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/x0/d$a;->a:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/x0/d;->t(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/e;)Lcn/manstep/phonemirrorBox/r0/e;

    return-void
.end method
