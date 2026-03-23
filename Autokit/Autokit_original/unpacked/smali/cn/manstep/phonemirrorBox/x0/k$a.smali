.class Lcn/manstep/phonemirrorBox/x0/k$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/k;->r()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/x0/k;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/k;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$a;->b:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/k$a;->b:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/k;->n(Lcn/manstep/phonemirrorBox/x0/k;)Ljava/lang/ref/WeakReference;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/n;
    new-instance v1, Lcn/manstep/phonemirrorBox/x0/k$a$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/x0/k$a$a;-><init>(Lcn/manstep/phonemirrorBox/x0/k$a;)V
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/h;->z2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/h$c;)V
    return-void
.end method
