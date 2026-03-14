.class Lcn/manstep/phonemirrorBox/androidOffscreenView$a;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/androidOffscreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/androidOffscreenView;

.method constructor <init>(Lcn/manstep/phonemirrorBox/androidOffscreenView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView$a;->a:Lcn/manstep/phonemirrorBox/androidOffscreenView;
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 3
  .line 1
    iget p1, p1, Landroid/os/Message;->what:I
    const/4 v0, 1
    if-eq p1, v0, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView$a;->a:Lcn/manstep/phonemirrorBox/androidOffscreenView;
    const/16 v0, 8
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setVisibility(I)V
    goto :L1
  :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView$a;->a:Lcn/manstep/phonemirrorBox/androidOffscreenView;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setVisibility(I)V
  :L1
    return-void
.end method
