.class Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$a;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 5
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$a;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;
    new-instance v0, Landroid/content/Intent;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$a;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;
    const-class v2, Lcn/manstep/phonemirrorBox/KeyLearnActivity;
    invoke-direct { v0, v1, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p1, v0 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    return-void
.end method
