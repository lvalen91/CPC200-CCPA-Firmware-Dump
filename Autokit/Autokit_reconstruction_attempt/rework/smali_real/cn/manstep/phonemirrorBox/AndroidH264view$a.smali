.class Lcn/manstep/phonemirrorBox/AndroidH264view$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AndroidH264view;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/AndroidH264view;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AndroidH264view;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    monitor-enter v0

    const/4 v1, 0x2

    .line 2
    :try_start_4
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_77

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/AndroidH264view;->b()V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AndroidH264view;->d(Lcn/manstep/phonemirrorBox/AndroidH264view;)Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_24

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AndroidH264view;->d(Lcn/manstep/phonemirrorBox/AndroidH264view;)Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->k(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/AndroidH264view;->e(Lcn/manstep/phonemirrorBox/AndroidH264view;Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    .line 7
    :cond_24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AndroidH264view;->d(Lcn/manstep/phonemirrorBox/AndroidH264view;)Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    move-result-object p1

    if-nez p1, :cond_66

    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AndroidH264view;->f(Lcn/manstep/phonemirrorBox/AndroidH264view;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    new-instance v2, Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-direct {v2, v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;-><init>(Lcn/manstep/phonemirrorBox/AndroidH264view$a;)V

    invoke-static {p1, v2}, Lcn/manstep/phonemirrorBox/AndroidH264view;->e(Lcn/manstep/phonemirrorBox/AndroidH264view;Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AndroidH264view;->d(Lcn/manstep/phonemirrorBox/AndroidH264view;)Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->l(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AndroidH264view;->d(Lcn/manstep/phonemirrorBox/AndroidH264view;)Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    move-result-object p1

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/AndroidH264view;->g(Lcn/manstep/phonemirrorBox/AndroidH264view;)I

    move-result v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/AndroidH264view;->h(Lcn/manstep/phonemirrorBox/AndroidH264view;)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->m(Lcn/manstep/phonemirrorBox/AndroidH264view$b;Landroid/view/Surface;II)V

    .line 11
    :cond_66
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->invalidate()V

    goto :goto_88

    :cond_77
    const/4 v1, 0x1

    .line 14
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v1, p1, :cond_88

    .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$a;->a:Lcn/manstep/phonemirrorBox/AndroidH264view;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->invalidate()V

    .line 17
    :cond_88
    :goto_88
    monitor-exit v0

    return-void

    :catchall_8a
    move-exception p1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_4 .. :try_end_8c} :catchall_8a

    throw p1
.end method
