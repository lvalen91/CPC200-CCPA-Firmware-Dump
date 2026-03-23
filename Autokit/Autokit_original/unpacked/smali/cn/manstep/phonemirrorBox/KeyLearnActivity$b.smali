.class Lcn/manstep/phonemirrorBox/KeyLearnActivity$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/KeyLearnActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;Landroid/widget/LinearLayout;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$b;->c:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$b;->b:Landroid/widget/LinearLayout;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$b;->c:Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$b;->b:Landroid/widget/LinearLayout;
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->o0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;Landroid/widget/LinearLayout;)V
    return-void
.end method
