.class Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$f;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->A0()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroid/app/AlertDialog;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/app/AlertDialog;)V
  .registers 3
  .line 1
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$f;->b:Landroid/app/AlertDialog;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$f;->b:Landroid/app/AlertDialog;
    invoke-virtual { p1 }, Landroid/app/AlertDialog;->dismiss()V
    return-void
.end method
