.class public Lcn/manstep/phonemirrorBox/widget/a;
.super Landroid/widget/Toast;
.source "SourceFile"

.method public static a(Landroid/content/Context;I)V
  .registers 3
    if-eqz p0, :L0
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    const/4 v0, 0
    invoke-static { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/widget/Toast;->show()V
  :L0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/CharSequence;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-static { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/widget/Toast;->show()V
    return-void
.end method

.method public static c(Landroid/content/Context;I)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    const/4 v0, 1
    invoke-static { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/widget/Toast;->show()V
    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
  .registers 4
  .line 9
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    move-result-object p1
    invoke-static { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p0
    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
  .registers 6
    const-string v0, "layout_inflater"
  .line 1
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/LayoutInflater;
    if-eqz v0, :L0
  .line 2
    new-instance v1, Landroid/widget/Toast;
    invoke-direct { v1, p0 }, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V
    const p0, 2131493038
    const/4 v2, 0
  .line 3
    invoke-virtual { v0, p0, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p0
    const v0, 2131296631
  .line 4
    invoke-virtual { p0, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
  .line 5
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 6
    invoke-virtual { v1, p2 }, Landroid/widget/Toast;->setDuration(I)V
  .line 7
    invoke-virtual { v1, p0 }, Landroid/widget/Toast;->setView(Landroid/view/View;)V
    goto :L1
  :L0
  .line 8
    invoke-static { p0, p1, p2 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
  :L1
    return-object v1
.end method
