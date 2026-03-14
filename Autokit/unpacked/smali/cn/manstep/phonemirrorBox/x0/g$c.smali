.class Lcn/manstep/phonemirrorBox/x0/g$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/x0/g;->s(Landroid/view/View;)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/x0/g;

.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/g$c;->b:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    new-instance v0, Landroid/content/Intent;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/g$c;->b:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { v1 }, Landroidx/lifecycle/a;->i()Landroid/app/Application;
    move-result-object v1
    const-class v2, Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    invoke-direct { v0, v1, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const/high16 v1, 4096
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/g$c;->b:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-virtual { v1 }, Landroidx/lifecycle/a;->i()Landroid/app/Application;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/g$c;->b:Lcn/manstep/phonemirrorBox/x0/g;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x0/g;->o(Lcn/manstep/phonemirrorBox/x0/g;)Landroidx/lifecycle/o;
    move-result-object v0
    const/4 v1, 0
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
    return-void
.end method
