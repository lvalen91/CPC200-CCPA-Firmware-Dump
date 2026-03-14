.class public Lcn/manstep/phonemirrorBox/l0/w;
.super Lcn/manstep/phonemirrorBox/l0/m;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/m;-><init>()V
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
    const p3, 2131492946
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, p3, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 6
  .line 1
    invoke-super { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/l0/m;->g1(Landroid/view/View;Landroid/os/Bundle;)V
    const p2, 2131296956
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/webkit/WebView;
  .line 3
    invoke-virtual { p2 }, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, v1 }, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    const-string v1, "terms_privacy"
    const v2, 2131886087
    invoke-static { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/n;->t(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
  .line 6
    invoke-virtual { p2, v0 }, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    const p2, 2131296370
  .line 7
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/w$a;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/w$a;-><init>(Lcn/manstep/phonemirrorBox/l0/w;)V
    invoke-virtual { p1, p2 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method protected g2()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    instance-of v0, v0, Lcn/manstep/phonemirrorBox/l0/s;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/l0/s;
    invoke-interface { v0, p0 }, Lcn/manstep/phonemirrorBox/l0/s;->f(Landroidx/fragment/app/Fragment;)V
  :L0
    return-void
.end method
