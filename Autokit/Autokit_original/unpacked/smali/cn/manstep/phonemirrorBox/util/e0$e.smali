.class Lcn/manstep/phonemirrorBox/util/e0$e;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/p$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/e0;->v(Ljava/lang/String;Ljava/lang/String;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/manstep/phonemirrorBox/util/e0;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/e0;Ljava/lang/String;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$e;->b:Lcn/manstep/phonemirrorBox/util/e0;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/e0$e;->a:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$e;->b:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/e0;->a(Lcn/manstep/phonemirrorBox/util/e0;)Landroid/content/Context;
    move-result-object p1
    const v0, 2131689996
    const/4 v1, 0
    invoke-static { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/widget/Toast;->show()V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$e;->b:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/e0;->k()V
    return-void
.end method

.method public c(Ljava/lang/String;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$e;->b:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/e0;->a(Lcn/manstep/phonemirrorBox/util/e0;)Landroid/content/Context;
    move-result-object v0
    const v1, 2131689998
    const/4 v2, 0
    invoke-static { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$e;->b:Lcn/manstep/phonemirrorBox/util/e0;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/e0$e;->a:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/util/e0;->j(Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$e;->b:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/e0;->e(Lcn/manstep/phonemirrorBox/util/e0;)Lcn/manstep/phonemirrorBox/util/e0$g;
    move-result-object v0
    if-eqz v0, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$e;->b:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/e0;->e(Lcn/manstep/phonemirrorBox/util/e0;)Lcn/manstep/phonemirrorBox/util/e0$g;
    move-result-object v0
    const/4 v1, 1
    invoke-interface { v0, v1, p1 }, Lcn/manstep/phonemirrorBox/util/e0$g;->a(ZLjava/lang/String;)V
  :L0
    return-void
.end method
