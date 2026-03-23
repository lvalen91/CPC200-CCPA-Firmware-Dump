.class Lcn/manstep/phonemirrorBox/n0/a$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/n0/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/n0/a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/n0/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$b;->b:Lcn/manstep/phonemirrorBox/n0/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
    const/16 v0, -19
  .line 1
    invoke-static { v0 }, Landroid/os/Process;->setThreadPriority(I)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$b;->b:Lcn/manstep/phonemirrorBox/n0/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/n0/a;->l()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$b;->b:Lcn/manstep/phonemirrorBox/n0/a;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/n0/a;->a(Lcn/manstep/phonemirrorBox/n0/a;)Ld/b/a/b;
    move-result-object v0
    if-eqz v0, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$b;->b:Lcn/manstep/phonemirrorBox/n0/a;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/n0/a;->a(Lcn/manstep/phonemirrorBox/n0/a;)Ld/b/a/b;
    move-result-object v0
    invoke-virtual { v0 }, Ld/b/a/b;->i()V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$b;->b:Lcn/manstep/phonemirrorBox/n0/a;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/n0/a;->c(Lcn/manstep/phonemirrorBox/n0/a;Ld/b/a/b;)Ld/b/a/b;
  :L0
    return-void
.end method
