.class Lcn/manstep/phonemirrorBox/x0/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->m(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/b;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    move-result-object v1

    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$c;->O()Lcn/manstep/phonemirrorBox/r0/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/x0/d;->n(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/b;)Lcn/manstep/phonemirrorBox/r0/b;

    .line 4
    :cond_1d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->o(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/c;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    move-result-object v1

    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$c;->u()Lcn/manstep/phonemirrorBox/r0/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/x0/d;->p(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/c;)Lcn/manstep/phonemirrorBox/r0/c;

    .line 7
    :cond_3a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->q(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/a;

    move-result-object v0

    if-nez v0, :cond_57

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    move-result-object v1

    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$c;->G()Lcn/manstep/phonemirrorBox/r0/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/x0/d;->r(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/a;)Lcn/manstep/phonemirrorBox/r0/a;

    .line 10
    :cond_57
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->s(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/r0/e;

    move-result-object v0

    if-nez v0, :cond_74

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/d$c;->b:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    move-result-object v1

    invoke-interface {v1}, Lcn/manstep/phonemirrorBox/service/BackgroundService$c;->E0()Lcn/manstep/phonemirrorBox/r0/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/x0/d;->t(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/r0/e;)Lcn/manstep/phonemirrorBox/r0/e;

    :cond_74
    return-void
.end method
