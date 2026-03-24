.class Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/floatwindow/e;->f()Lcn/manstep/phonemirrorBox/floatwindow/c;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/floatwindow/e;->f()Lcn/manstep/phonemirrorBox/floatwindow/c;

    move-result-object v0

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/v0/a;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V

    :cond_1d
    return-void
.end method
