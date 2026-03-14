.class Lcn/manstep/phonemirrorBox/AssistCmd$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AssistCmd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/AssistCmd;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AssistCmd;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AssistCmd$a;->b:Lcn/manstep/phonemirrorBox/AssistCmd;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AssistCmd$a;->b:Lcn/manstep/phonemirrorBox/AssistCmd;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AssistCmd;->b(Lcn/manstep/phonemirrorBox/AssistCmd;)Z
    move-result p1
    if-eqz p1, :L5
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AssistCmd$a;->b:Lcn/manstep/phonemirrorBox/AssistCmd;
    invoke-virtual { p1 }, Landroid/widget/ImageView;->getId()I
    move-result p1
    packed-switch p1, :L6
  :L0
    goto :L5
  :L1
    const/4 p1, 2
  .line 3
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->J(I)V
    const-string p1, "KEY_ROTATE"
  .line 4
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto :L5
  :L2
    const/16 p1, 10
  .line 5
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->J(I)V
    const-string p1, "KEY_QUIT"
  .line 6
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto :L5
  :L3
    const/4 p1, 0
  .line 7
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->J(I)V
    const-string p1, "KEY_HOME"
  .line 8
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto :L5
  :L4
    const/4 p1, 1
  .line 9
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->J(I)V
    const-string p1, "KEY_BACK"
  .line 10
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L5
    return-void
  :L6
  .packed-switch 2131296336
    :L4
    :L0
    :L3
    :L0
    :L2
    :L1
  .end packed-switch
.end method
