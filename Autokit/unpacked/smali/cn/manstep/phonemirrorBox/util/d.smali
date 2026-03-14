.class public Lcn/manstep/phonemirrorBox/util/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/util/d$b;
  }
.end annotation

.field private b:Ljava/util/LinkedList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/LinkedList<",
      "Lcn/manstep/phonemirrorBox/util/c;",
      ">;"
    }
  .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Ljava/util/LinkedList;Landroid/content/Context;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/LinkedList<",
      "Lcn/manstep/phonemirrorBox/util/c;",
      ">;",
      "Landroid/content/Context;",
      ")V"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-direct { p0 }, Landroid/widget/BaseAdapter;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/d;->c:Ljava/lang/ref/WeakReference;
  .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p2 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/d;->c:Ljava/lang/ref/WeakReference;
  .line 4
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/d;->b:Ljava/util/LinkedList;
    return-void
.end method

.method public getCount()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d;->b:Ljava/util/LinkedList;
    invoke-virtual { v0 }, Ljava/util/LinkedList;->size()I
    move-result v0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d;->b:Ljava/util/LinkedList;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
    move-result-object p1
    return-object p1
  :L0
    const/4 p1, 0
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
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/util/d;->c:Ljava/lang/ref/WeakReference;
    invoke-virtual { p2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/content/Context;
    invoke-static { p2 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p2
    const v0, 2131493020
    const/4 v1, 0
    invoke-virtual { p2, v0, p3, v1 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p2
  .line 2
    new-instance p3, Lcn/manstep/phonemirrorBox/util/d$b;
    const/4 v0, 0
    invoke-direct { p3, v0 }, Lcn/manstep/phonemirrorBox/util/d$b;-><init>(Lcn/manstep/phonemirrorBox/util/d$a;)V
    const v0, 2131296898
  .line 3
    invoke-virtual { p2, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p3, Lcn/manstep/phonemirrorBox/util/d$b;->a:Landroid/widget/TextView;
    const v0, 2131296552
  .line 4
    invoke-virtual { p2, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p3, Lcn/manstep/phonemirrorBox/util/d$b;->b:Landroid/widget/ImageView;
  .line 5
    invoke-virtual { p2, p3 }, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    goto :L1
  :L0
  .line 6
    invoke-virtual { p2 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Lcn/manstep/phonemirrorBox/util/d$b;
  :L1
  .line 7
    iget-object v0, p3, Lcn/manstep/phonemirrorBox/util/d$b;->a:Landroid/widget/TextView;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/d;->b:Ljava/util/LinkedList;
    invoke-virtual { v1, p1 }, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/util/c;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/c;->b()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 8
    iget-object p3, p3, Lcn/manstep/phonemirrorBox/util/d$b;->b:Landroid/widget/ImageView;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d;->b:Ljava/util/LinkedList;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/util/c;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/c;->a()Landroid/graphics/Bitmap;
    move-result-object p1
    invoke-virtual { p3, p1 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    return-object p2
.end method
