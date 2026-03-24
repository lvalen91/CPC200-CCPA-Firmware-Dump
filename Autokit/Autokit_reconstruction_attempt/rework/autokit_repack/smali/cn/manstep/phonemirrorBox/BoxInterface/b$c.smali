.class public Lcn/manstep/phonemirrorBox/BoxInterface/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b;Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->a:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->b:Z

    .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->c:Z

    .line 5
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->d:Z

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_31

    .line 7
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->b:Z

    if-nez p1, :cond_31

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/manstep/phonemirrorBox/FloatWindowService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->b:Z

    const-string p1, "init float window service"

    .line 11
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_31
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_20

    .line 2
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->b:Z

    if-eqz v1, :cond_20

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/manstep/phonemirrorBox/FloatWindowService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->b:Z

    const-string v0, "destroy float window service"

    .line 6
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/FloatWindowService;->d(Z)V

    return-void
.end method

.method public c(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->c:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/FloatWindowService;->f(Z)V

    goto :goto_f

    :cond_b
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/FloatWindowService;->f(Z)V

    .line 4
    :goto_f
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->d:Z

    return-void
.end method

.method public d(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->d:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/FloatWindowService;->f(Z)V

    goto :goto_f

    :cond_b
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/FloatWindowService;->f(Z)V

    .line 4
    :goto_f
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$c;->c:Z

    return-void
.end method

.method public e(II)V
    .registers 4

    .line 1
    sget v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->f:I

    if-ne p1, v0, :cond_8

    sget v0, Lcn/manstep/phonemirrorBox/FloatWindowService;->g:I

    if-eq p2, v0, :cond_b

    .line 2
    :cond_8
    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/FloatWindowService;->e(II)V

    :cond_b
    return-void
.end method
