.class Lcn/manstep/phonemirrorBox/n0/a$a;
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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$a;->b:Lcn/manstep/phonemirrorBox/n0/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
    const/16 v0, -20
  .line 1
    invoke-static { v0 }, Landroid/os/Process;->setThreadPriority(I)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$a;->b:Lcn/manstep/phonemirrorBox/n0/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/n0/a;->k()V
    return-void
.end method
