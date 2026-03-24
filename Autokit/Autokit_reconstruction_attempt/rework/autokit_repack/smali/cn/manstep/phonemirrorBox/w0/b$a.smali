.class Lcn/manstep/phonemirrorBox/w0/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/w0/b;->e(Landroid/view/TextureView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/w0/b;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/w0/b;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b$a;->a:Lcn/manstep/phonemirrorBox/w0/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_14

    .line 2
    :cond_9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b$a;->a:Lcn/manstep/phonemirrorBox/w0/b;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/w0/b;->b(Lcn/manstep/phonemirrorBox/w0/b;)V

    goto :goto_14

    .line 3
    :cond_f
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b$a;->a:Lcn/manstep/phonemirrorBox/w0/b;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/w0/b;->a(Lcn/manstep/phonemirrorBox/w0/b;)V

    :goto_14
    return-void
.end method
