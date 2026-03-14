.class Lcn/manstep/phonemirrorBox/AssistTouch$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AssistTouch;->setbDraging(Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/AssistTouch;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AssistTouch;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AssistTouch$a;->b:Lcn/manstep/phonemirrorBox/AssistTouch;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AssistTouch$a;->b:Lcn/manstep/phonemirrorBox/AssistTouch;
    invoke-virtual { v0 }, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v0
    const/high16 v1, 16128
    invoke-virtual { v0, v1 }, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    return-void
.end method
