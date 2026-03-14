.class Lcn/manstep/phonemirrorBox/MainActivity$i;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity;->g1()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$i;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .catch Landroid/content/ActivityNotFoundException; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    new-instance p1, Landroid/content/Intent;
    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"
    invoke-direct { p1, v0 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "package:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$i;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-virtual { v1 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    const/high16 v0, 4096
  .line 3
    invoke-virtual { p1, v0 }, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$i;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-virtual { v0, p1 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
  :L1
    goto :L3
  :L2
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$i;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->w0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  :L3
    return-void
.end method
