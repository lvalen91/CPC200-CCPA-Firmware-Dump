.class public Lcn/manstep/phonemirrorBox/w;
.super Lcn/manstep/phonemirrorBox/b;
.source "SourceFile"

.field private a:[Ljava/lang/String;

.field private b:[I

.method public constructor <init>(Landroid/content/Context;Z)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/b;-><init>()V
    const/16 p2, 18
    new-array p2, p2, [I
  .line 2
    fill-array-data p2, :L0
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/w;->b:[I
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131099818
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getColor(I)I
  .line 4
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131099775
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getColor(I)I
  .line 5
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131099820
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getColor(I)I
  .line 6
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131099875
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getColor(I)I
  .line 7
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131099828
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getColor(I)I
  .line 8
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/w;->g(Landroid/content/Context;)V
    return-void
  :L0
  .array-data 4
    1t 0t 0t 0t
    2t 0t 0t 0t
    5t 0t 0t 0t
    8t 0t 0t 0t
    9t 0t 0t 0t
    10t 0t 0t 0t
    3t 0t 0t 0t
    11t 0t 0t 0t
    4t 0t 0t 0t
    7t 0t 0t 0t
    15t 0t 0t 0t
    6t 0t 0t 0t
    13t 0t 0t 0t
    12t 0t 0t 0t
    14t 0t 0t 0t
    17t 0t 0t 0t
    16t 0t 0t 0t
    18t 0t 0t 0t
  .end array-data
.end method

.method private g(Landroid/content/Context;)V
  .registers 5
    const/16 v0, 18
    new-array v0, v0, [Ljava/lang/String;
  .line 1
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689916
  .line 2
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    aput-object v1, v0, v2
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689881
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 1
    aput-object v1, v0, v2
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689911
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 2
    aput-object v1, v0, v2
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131690001
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 3
    aput-object v1, v0, v2
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689747
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 4
    aput-object v1, v0, v2
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689597
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 5
    aput-object v1, v0, v2
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689910
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 6
    aput-object v1, v0, v2
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689958
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 7
    aput-object v1, v0, v2
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689905
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 8
    aput-object v1, v0, v2
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689918
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 9
    aput-object v1, v0, v2
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689990
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 10
    aput-object v1, v0, v2
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689880
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 11
    aput-object v1, v0, v2
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689793
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 12
    aput-object v1, v0, v2
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689951
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 13
    aput-object v1, v0, v2
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689941
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 14
    aput-object v1, v0, v2
  .line 17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689570
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 15
    aput-object v1, v0, v2
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689704
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 16
    aput-object v1, v0, v2
  .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    const v1, 2131689741
    invoke-virtual { p1, v1 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object p1
    const/16 v1, 17
    aput-object p1, v0, v1
    return-void
.end method

.method public a()[I
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->b:[I
    return-object v0
.end method

.method public c(Landroid/content/Context;I)I
  .registers 3
    const/4 p1, 0
    return p1
.end method

.method public d()[Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/w;->a:[Ljava/lang/String;
    return-object v0
.end method

.method public e()I
  .registers 2
    const/4 v0, 3
    return v0
.end method

.method public f(Landroid/content/Context;Landroid/widget/Button;ZZZ)V
  .registers 8
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "KeyLearnExImpl,setBtnStyle: bDefault="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    if-eqz p3, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    const p3, 2131230817
    invoke-virtual { p1, p3 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p2, p1 }, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    return-void
  :L0
    if-eqz p4, :L2
    if-eqz p5, :L1
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    const p3, 2131230819
    invoke-virtual { p1, p3 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p2, p1 }, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto :L4
  :L1
  .line 4
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    const p3, 2131230818
    invoke-virtual { p1, p3 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p2, p1 }, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto :L4
  :L2
    if-eqz p5, :L3
  .line 5
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    const p3, 2131230816
    invoke-virtual { p1, p3 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p2, p1 }, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto :L4
  :L3
  .line 6
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    const p3, 2131230815
    invoke-virtual { p1, p3 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    invoke-virtual { p2, p1 }, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
  :L4
    return-void
.end method
