.class Lcn/manstep/phonemirrorBox/w0/b$a;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/w0/b;->e(Landroid/view/TextureView;Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/w0/b;

.method constructor <init>(Lcn/manstep/phonemirrorBox/w0/b;Landroid/os/Looper;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b$a;->a:Lcn/manstep/phonemirrorBox/w0/b;
    invoke-direct { p0, p2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 3
  .line 1
    iget p1, p1, Landroid/os/Message;->what:I
    const/4 v0, 1
    if-eq p1, v0, :L1
    const/4 v0, 2
    if-eq p1, v0, :L0
    goto :L2
  :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b$a;->a:Lcn/manstep/phonemirrorBox/w0/b;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/w0/b;->b(Lcn/manstep/phonemirrorBox/w0/b;)V
    goto :L2
  :L1
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/w0/b$a;->a:Lcn/manstep/phonemirrorBox/w0/b;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/w0/b;->a(Lcn/manstep/phonemirrorBox/w0/b;)V
  :L2
    return-void
.end method
