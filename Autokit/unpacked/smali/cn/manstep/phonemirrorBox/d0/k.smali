.class public Lcn/manstep/phonemirrorBox/d0/k;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/d0/k$b;
  }
.end annotation

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private d:I

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroid/widget/BaseAdapter;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/d0/k;->d:I
  .line 3
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/k;->b:Landroid/content/Context;
  .line 4
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/d0/k;->c:Ljava/util/List;
    return-void
.end method

.method public a(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/d0/k;->d:I
    return-void
.end method

.method public getCount()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/k;->c:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/k;->c:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    return-object p1
.end method

.method public getItemId(I)J
  .registers 4
    int-to-long v0, p1
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 6
    if-nez p2, :L0
  .line 1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/d0/k;->b:Landroid/content/Context;
    invoke-static { p2 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p2
    const p3, 2131492952
    const/4 v0, 0
    invoke-virtual { p2, p3, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p2
  .line 2
    new-instance p3, Lcn/manstep/phonemirrorBox/d0/k$b;
    invoke-direct { p3, p0, v0 }, Lcn/manstep/phonemirrorBox/d0/k$b;-><init>(Lcn/manstep/phonemirrorBox/d0/k;Lcn/manstep/phonemirrorBox/d0/k$a;)V
    const v0, 2131296582
  .line 3
    invoke-virtual { p2, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p3, Lcn/manstep/phonemirrorBox/d0/k$b;->a:Landroid/widget/TextView;
    const v0, 2131296558
  .line 4
    invoke-virtual { p2, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p3, Lcn/manstep/phonemirrorBox/d0/k$b;->b:Landroid/widget/ImageView;
  .line 5
    invoke-virtual { p2, p3 }, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    goto :L1
  :L0
  .line 6
    invoke-virtual { p2 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Lcn/manstep/phonemirrorBox/d0/k$b;
  :L1
  .line 7
    iget-object v0, p3, Lcn/manstep/phonemirrorBox/d0/k$b;->a:Landroid/widget/TextView;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d0/k;->c:Ljava/util/List;
    invoke-interface { v1, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/CharSequence;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 8
    iget v0, p0, Lcn/manstep/phonemirrorBox/d0/k;->d:I
    if-ne p1, v0, :L2
  .line 9
    iget-object p1, p3, Lcn/manstep/phonemirrorBox/d0/k$b;->b:Landroid/widget/ImageView;
    const p3, 2131230976
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setImageResource(I)V
    goto :L3
  :L2
  .line 10
    iget-object p1, p3, Lcn/manstep/phonemirrorBox/d0/k$b;->b:Landroid/widget/ImageView;
    const p3, 2131230978
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setImageResource(I)V
  :L3
    return-object p2
.end method
