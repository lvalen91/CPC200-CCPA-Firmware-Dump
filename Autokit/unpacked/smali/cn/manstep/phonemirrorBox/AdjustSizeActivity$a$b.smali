.class Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;->onClick(Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$b;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a$b;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$a;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;
    invoke-virtual { p1 }, Landroid/app/Activity;->finish()V
    return-void
.end method
