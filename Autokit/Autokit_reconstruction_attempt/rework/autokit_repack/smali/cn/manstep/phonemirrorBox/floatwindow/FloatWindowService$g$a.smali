.class Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g$a;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g$a;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;

    iget-object v1, v1, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->t(Landroid/content/Context;)V

    goto :goto_1d

    .line 3
    :cond_12
    invoke-static {}, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g$a;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;

    iget-object v1, v1, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$g;->b:Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->j(Landroid/content/Context;)V

    :goto_1d
    return-void
.end method
