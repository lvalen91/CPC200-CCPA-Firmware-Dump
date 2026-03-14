.class Lcn/manstep/phonemirrorBox/d0/j$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/d0/j;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/CheckBox;

.field v:Landroidx/recyclerview/widget/RecyclerView;

.method constructor <init>(Landroid/view/View;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "WrongViewCast"
    }
  .end annotation
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V
    const v0, 2131296504
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d0/j$a;->t:Landroid/widget/TextView;
    const v0, 2131296490
  .line 3
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d0/j$a;->v:Landroidx/recyclerview/widget/RecyclerView;
  .line 4
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual { p1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-direct { v1, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V
    const v0, 2131296411
  .line 5
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/CheckBox;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/j$a;->u:Landroid/widget/CheckBox;
    return-void
.end method
