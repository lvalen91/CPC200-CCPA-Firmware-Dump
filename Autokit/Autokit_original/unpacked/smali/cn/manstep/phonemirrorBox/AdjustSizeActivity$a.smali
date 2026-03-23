.class Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;
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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 5
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    invoke-virtual { p1 }, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object p1
    new-instance v0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$a;-><init>(Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;)V
    new-instance v1, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$b;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$b;-><init>(Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;)V
    const-string v2, "\u4fee\u6539\u4e3a\u5f53\u524d\u5206\u8fa8\u7387\uff1f"
    invoke-static { p1, v2, v0, v1 }, Lcn/manstep/phonemirrorBox/k0/a;->J2(Landroidx/fragment/app/n;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    return-void
.end method
