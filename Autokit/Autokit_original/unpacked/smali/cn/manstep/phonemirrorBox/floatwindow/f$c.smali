.class Lcn/manstep/phonemirrorBox/floatwindow/f$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/floatwindow/f;->g(Landroid/content/Context;Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/floatwindow/f;

.method constructor <init>(Lcn/manstep/phonemirrorBox/floatwindow/f;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$c;->b:Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/f$c;->b:Lcn/manstep/phonemirrorBox/floatwindow/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/f;->b(Lcn/manstep/phonemirrorBox/floatwindow/f;)Landroid/widget/ImageView;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
    return-void
.end method
