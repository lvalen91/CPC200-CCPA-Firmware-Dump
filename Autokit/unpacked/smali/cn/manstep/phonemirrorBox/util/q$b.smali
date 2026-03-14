.class Lcn/manstep/phonemirrorBox/util/q$b;
.super Ljava/lang/Object;
.implements Landroid/widget/PopupWindow$OnDismissListener;
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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/q$b;->c:Lcn/manstep/phonemirrorBox/util/q;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/q$b;->b:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onDismiss()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$b;->b:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/q$c;->k(Lcn/manstep/phonemirrorBox/util/q$c;)Lcn/manstep/phonemirrorBox/util/q$d;
    move-result-object v0
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$b;->b:Lcn/manstep/phonemirrorBox/util/q$c;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/q$c;->k(Lcn/manstep/phonemirrorBox/util/q$c;)Lcn/manstep/phonemirrorBox/util/q$d;
    move-result-object v0
    invoke-interface { v0, v1 }, Lcn/manstep/phonemirrorBox/util/q$d;->a(Z)V
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$b;->c:Lcn/manstep/phonemirrorBox/util/q;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/q;->a(Lcn/manstep/phonemirrorBox/util/q;)Lcn/manstep/phonemirrorBox/util/q$d;
    move-result-object v0
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$b;->c:Lcn/manstep/phonemirrorBox/util/q;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/q;->a(Lcn/manstep/phonemirrorBox/util/q;)Lcn/manstep/phonemirrorBox/util/q$d;
    move-result-object v0
    invoke-interface { v0, v1 }, Lcn/manstep/phonemirrorBox/util/q$d;->a(Z)V
  :L1
    return-void
.end method
