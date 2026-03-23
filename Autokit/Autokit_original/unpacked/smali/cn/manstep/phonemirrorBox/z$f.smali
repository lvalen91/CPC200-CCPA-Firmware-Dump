.class Lcn/manstep/phonemirrorBox/z$f;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/z;->P2()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/z;

.method constructor <init>(Lcn/manstep/phonemirrorBox/z;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z$f;->b:Lcn/manstep/phonemirrorBox/z;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/s;->b()V
    const-wide/16 v0, 1000
  :L0
  .line 2
    invoke-static { v0, v1 }, Ljava/lang/Thread;->sleep(J)V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 3
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->printStackTrace()V
  :L3
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$f;->b:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static/range { v0 .. v0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->k(Landroid/content/Context;)Z
    return-void
.end method
