.class Landroidx/lifecycle/r$c;
.super Landroidx/lifecycle/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/r;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/r;


# direct methods
.method constructor <init>(Landroidx/lifecycle/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/r$c;->this$0:Landroidx/lifecycle/r;

    invoke-direct {p0}, Landroidx/lifecycle/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_11

    .line 2
    invoke-static {p1}, Landroidx/lifecycle/s;->f(Landroid/app/Activity;)Landroidx/lifecycle/s;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/r$c;->this$0:Landroidx/lifecycle/r;

    iget-object p2, p2, Landroidx/lifecycle/r;->i:Landroidx/lifecycle/s$a;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/s;->h(Landroidx/lifecycle/s$a;)V

    :cond_11
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/r$c;->this$0:Landroidx/lifecycle/r;

    invoke-virtual {p1}, Landroidx/lifecycle/r;->a()V

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    new-instance p2, Landroidx/lifecycle/r$c$a;

    invoke-direct {p2, p0}, Landroidx/lifecycle/r$c$a;-><init>(Landroidx/lifecycle/r$c;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/r$c;->this$0:Landroidx/lifecycle/r;

    invoke-virtual {p1}, Landroidx/lifecycle/r;->d()V

    return-void
.end method
