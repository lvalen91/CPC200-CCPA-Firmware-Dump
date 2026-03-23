.class Lcn/manstep/phonemirrorBox/AdjustSizeActivity$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AdjustSizeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AdjustSizeActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$b;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$b;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/AdjustSizeActivity;->L(Lcn/manstep/phonemirrorBox/AdjustSizeActivity;)Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/customview/AdjustSizeView;->m()V
    return-void
.end method
