.class Lcn/manstep/phonemirrorBox/ModeChangeService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/ModeChangeService;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/ModeChangeService;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/ModeChangeService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$b;->b:Lcn/manstep/phonemirrorBox/ModeChangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->A()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$b;->b:Lcn/manstep/phonemirrorBox/ModeChangeService;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/ModeChangeService;->l(Lcn/manstep/phonemirrorBox/ModeChangeService;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$b;->b:Lcn/manstep/phonemirrorBox/ModeChangeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/ModeChangeService;->m(Lcn/manstep/phonemirrorBox/ModeChangeService;Z)Z

    .line 5
    :cond_2c
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$b;->b:Lcn/manstep/phonemirrorBox/ModeChangeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/f;->f(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_3e
    return-void
.end method
