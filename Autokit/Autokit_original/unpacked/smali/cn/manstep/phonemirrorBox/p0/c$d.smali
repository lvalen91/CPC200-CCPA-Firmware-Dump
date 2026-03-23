.class Lcn/manstep/phonemirrorBox/p0/c$d;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/p0/c;->k(I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/p0/c;

.method constructor <init>(Lcn/manstep/phonemirrorBox/p0/c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/p0/c$d;->b:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L1
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/s;->b()V
    const-wide/16 v0, 1000
  :L0
  .line 2
    invoke-static { v0, v1 }, Ljava/lang/Thread;->sleep(J)V
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/p0/c$d;->b:Lcn/manstep/phonemirrorBox/p0/c;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/p0/c;->d(Lcn/manstep/phonemirrorBox/p0/c;)Ljava/lang/ref/WeakReference;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->k(Landroid/content/Context;)Z
    return-void
.end method
