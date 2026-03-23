.class Lcn/manstep/phonemirrorBox/x0/i$h;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/i;->R(Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/x0/i;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/i;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/i$h;->b:Lcn/manstep/phonemirrorBox/x0/i;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/i$h;->b:Lcn/manstep/phonemirrorBox/x0/i;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/x0/c;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/content/Context;
    const/4 v0, 1
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/w;->a(Landroid/content/Context;Z)V
    return-void
.end method
