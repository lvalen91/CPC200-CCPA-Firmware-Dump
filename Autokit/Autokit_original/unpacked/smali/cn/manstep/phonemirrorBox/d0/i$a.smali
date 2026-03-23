.class Lcn/manstep/phonemirrorBox/d0/i$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/d0/i;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "a"
.end annotation

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/CheckBox;

.method public constructor <init>(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V
    const v0, 2131296491
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/d0/i$a;->t:Landroid/widget/TextView;
    const v0, 2131296411
  .line 3
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/CheckBox;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/i$a;->u:Landroid/widget/CheckBox;
    return-void
.end method
