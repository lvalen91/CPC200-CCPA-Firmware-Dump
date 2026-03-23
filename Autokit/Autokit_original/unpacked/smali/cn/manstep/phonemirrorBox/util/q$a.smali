.class Lcn/manstep/phonemirrorBox/util/q$a;
.super Ljava/lang/Object;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/q;-><init>(Lcn/manstep/phonemirrorBox/util/q$c;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/util/q$c;

.field final synthetic c:Lcn/manstep/phonemirrorBox/util/q;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/q;Lcn/manstep/phonemirrorBox/util/q$c;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/q$a;->c:Lcn/manstep/phonemirrorBox/util/q;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/q$a;->b:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/widget/AdapterView<",
      "*>;",
      "Landroid/view/View;",
      "IJ)V"
    }
  .end annotation
  .registers 13
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$a;->b:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/q$c;->j(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/widget/AdapterView$OnItemClickListener;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$a;->b:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/q$c;->j(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/widget/AdapterView$OnItemClickListener;
    move-result-object v1
    move-object v2, p1
    move-object v3, p2
    move v4, p3
    move-wide v5, p4
    invoke-interface/range { v1 .. v6 }, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
  :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/q$a;->c:Lcn/manstep/phonemirrorBox/util/q;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/q;->b(Lcn/manstep/phonemirrorBox/util/q;)Landroid/widget/ListPopupWindow;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/widget/ListPopupWindow;->dismiss()V
    return-void
.end method
