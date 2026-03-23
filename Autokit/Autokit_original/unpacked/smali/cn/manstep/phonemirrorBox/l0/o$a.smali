.class Lcn/manstep/phonemirrorBox/l0/o$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/o;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/o;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/o;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$a;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$a;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/o;->h2(Lcn/manstep/phonemirrorBox/l0/o;)Lcn/manstep/phonemirrorBox/util/l;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/l;->D()V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/o$a;->b:Lcn/manstep/phonemirrorBox/l0/o;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/l0/m;->g2()V
    return-void
.end method
