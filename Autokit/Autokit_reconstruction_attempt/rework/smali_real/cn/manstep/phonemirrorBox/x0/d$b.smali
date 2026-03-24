.class Lcn/manstep/phonemirrorBox/x0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/v0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/x0/d;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/x0/d;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d$b;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->k()V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->s()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$b;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3
    :try_start_f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$b;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/manstep/phonemirrorBox/r0/e;->w0(Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->m()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->r()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$b;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3
    :try_start_f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$b;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/manstep/phonemirrorBox/r0/e;->w0(Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return-void
.end method

.method public g()V
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->l()V

    return-void
.end method

.method public h()V
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->a()V

    return-void
.end method

.method public i()V
    .registers 3

    const-string v0, "BoxViewModel"

    const-string v1, "onMusicStart: "

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->p()V

    return-void
.end method

.method public j()V
    .registers 3

    const-string v0, "BoxViewModel"

    const-string v1, "onMusicStop: "

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->q()V

    return-void
.end method

.method public k()V
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->b()V

    return-void
.end method
