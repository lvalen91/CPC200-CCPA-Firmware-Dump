.class Lcn/manstep/phonemirrorBox/BoxInterface/a$b$a;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/a$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 3
  .line 1
    iget p1, p1, Landroid/os/Message;->what:I
    const/4 v0, 1
    if-eq p1, v0, :L0
    goto :L1
  :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/a$b$a;->a:Lcn/manstep/phonemirrorBox/BoxInterface/a$b;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a$b;->a(Lcn/manstep/phonemirrorBox/BoxInterface/a$b;)V
  :L1
    return-void
.end method
