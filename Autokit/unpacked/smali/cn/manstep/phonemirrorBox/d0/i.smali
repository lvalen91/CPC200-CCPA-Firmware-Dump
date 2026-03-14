.class public Lcn/manstep/phonemirrorBox/d0/i;
.super Landroidx/recyclerview/widget/RecyclerView$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/d0/i$b;,
    Lcn/manstep/phonemirrorBox/d0/i$a;
  }
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroidx/recyclerview/widget/RecyclerView$f<",
    "Lcn/manstep/phonemirrorBox/d0/i$a;",
    ">;"
  }
.end annotation

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/util/m;",
      ">;"
    }
  .end annotation
.end field

.field private e:Lcn/manstep/phonemirrorBox/d0/i$b;

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcn/manstep/phonemirrorBox/d0/i$b;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/util/m;",
      ">;",
      "Lcn/manstep/phonemirrorBox/d0/i$b;",
      ")V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$f;-><init>()V
  .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/i;->c:Landroid/content/Context;
  .line 3
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/d0/i;->d:Ljava/util/List;
  .line 4
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/d0/i;->e:Lcn/manstep/phonemirrorBox/d0/i$b;
    return-void
.end method

.method static synthetic u(Lcn/manstep/phonemirrorBox/util/m;Landroid/widget/CompoundButton;Z)V
  .registers 3
  .line 1
    invoke-virtual { p0, p2 }, Lcn/manstep/phonemirrorBox/util/m;->d(Z)V
    return-void
.end method

.method public c()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/i;->d:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    return v0
.end method

.method public bridge synthetic j(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
  .registers 3
  .line 1
    check-cast p1, Lcn/manstep/phonemirrorBox/d0/i$a;
    invoke-virtual { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/d0/i;->w(Lcn/manstep/phonemirrorBox/d0/i$a;I)V
    return-void
.end method

.method public bridge synthetic l(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
  .registers 3
  .line 1
    invoke-virtual { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/d0/i;->x(Landroid/view/ViewGroup;I)Lcn/manstep/phonemirrorBox/d0/i$a;
    move-result-object p1
    return-object p1
.end method

.method public synthetic v(Lcn/manstep/phonemirrorBox/util/m;Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/i;->e:Lcn/manstep/phonemirrorBox/d0/i$b;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p2, p1 }, Lcn/manstep/phonemirrorBox/d0/i$b;->a(Landroid/view/View;Lcn/manstep/phonemirrorBox/util/m;)V
  :L0
    return-void
.end method

.method public w(Lcn/manstep/phonemirrorBox/d0/i$a;I)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/i;->d:Ljava/util/List;
    invoke-interface { v0, p2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Lcn/manstep/phonemirrorBox/util/m;
  .line 2
    iget-object v0, p1, Lcn/manstep/phonemirrorBox/d0/i$a;->t:Landroid/widget/TextView;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/util/m;->b()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 3
    iget-object v0, p1, Lcn/manstep/phonemirrorBox/d0/i$a;->u:Landroid/widget/CheckBox;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/util/m;->c()Z
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setChecked(Z)V
  .line 4
    iget-object v0, p1, Lcn/manstep/phonemirrorBox/d0/i$a;->u:Landroid/widget/CheckBox;
    new-instance v1, Lcn/manstep/phonemirrorBox/d0/b;
    invoke-direct { v1, p2 }, Lcn/manstep/phonemirrorBox/d0/b;-><init>(Lcn/manstep/phonemirrorBox/util/m;)V
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
  .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    new-instance v0, Lcn/manstep/phonemirrorBox/d0/a;
    invoke-direct { v0, p0, p2 }, Lcn/manstep/phonemirrorBox/d0/a;-><init>(Lcn/manstep/phonemirrorBox/d0/i;Lcn/manstep/phonemirrorBox/util/m;)V
    invoke-virtual { p1, v0 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public x(Landroid/view/ViewGroup;I)Lcn/manstep/phonemirrorBox/d0/i$a;
  .registers 5
  .line 1
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/d0/i;->c:Landroid/content/Context;
    invoke-static { p2 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p2
    const v0, 2131492950
    const/4 v1, 0
  .line 2
    invoke-virtual { p2, v0, p1, v1 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
  .line 3
    new-instance p2, Lcn/manstep/phonemirrorBox/d0/i$a;
    invoke-direct { p2, p1 }, Lcn/manstep/phonemirrorBox/d0/i$a;-><init>(Landroid/view/View;)V
    return-object p2
.end method
