.class Lcn/manstep/phonemirrorBox/l0/v$f;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/v;->u2(Landroidx/appcompat/widget/SwitchCompat;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/SwitchCompat;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/v;Landroidx/appcompat/widget/SwitchCompat;)V
  .registers 3
  .line 1
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/v$f;->b:Landroidx/appcompat/widget/SwitchCompat;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$f;->b:Landroidx/appcompat/widget/SwitchCompat;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V
    return-void
.end method
