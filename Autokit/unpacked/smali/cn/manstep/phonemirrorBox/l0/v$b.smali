.class Lcn/manstep/phonemirrorBox/l0/v$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/v;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/v;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/v;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$b;->b:Lcn/manstep/phonemirrorBox/l0/v;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$b;->b:Lcn/manstep/phonemirrorBox/l0/v;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    instance-of p1, p1, Lcn/manstep/phonemirrorBox/l0/s;
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$b;->b:Lcn/manstep/phonemirrorBox/l0/v;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/l0/s;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v$b;->b:Lcn/manstep/phonemirrorBox/l0/v;
    invoke-interface { p1, v0 }, Lcn/manstep/phonemirrorBox/l0/s;->f(Landroidx/fragment/app/Fragment;)V
  :L0
    return-void
.end method
