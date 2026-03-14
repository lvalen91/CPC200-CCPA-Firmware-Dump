.class Landroidx/core/view/v$c;
.super Landroidx/core/view/v$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/core/view/v;->c0()Landroidx/core/view/v$g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroidx/core/view/v$g<",
    "Ljava/lang/CharSequence;",
    ">;"
  }
.end annotation

.method constructor <init>(ILjava/lang/Class;II)V
  .registers 5
  .line 1
    invoke-direct { p0, p1, p2, p3, p4 }, Landroidx/core/view/v$g;-><init>(ILjava/lang/Class;II)V
    return-void
.end method

.method bridge synthetic d(Landroid/view/View;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/core/view/v$c;->i(Landroid/view/View;)Ljava/lang/CharSequence;
    move-result-object p1
    return-object p1
.end method

.method bridge synthetic e(Landroid/view/View;Ljava/lang/Object;)V
  .registers 3
  .line 1
    check-cast p2, Ljava/lang/CharSequence;
    invoke-virtual { p0, p1, p2 }, Landroidx/core/view/v$c;->j(Landroid/view/View;Ljava/lang/CharSequence;)V
    return-void
.end method

.method bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Z
  .registers 3
  .line 1
    check-cast p1, Ljava/lang/CharSequence;
    check-cast p2, Ljava/lang/CharSequence;
    invoke-virtual { p0, p1, p2 }, Landroidx/core/view/v$c;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result p1
    return p1
.end method

.method i(Landroid/view/View;)Ljava/lang/CharSequence;
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;
    move-result-object p1
    return-object p1
.end method

.method j(Landroid/view/View;Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    invoke-virtual { p1, p2 }, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V
    return-void
.end method

.method k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
  .registers 3
  .line 1
    invoke-static { p1, p2 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result p1
    xor-int/lit8 p1, p1, 1
    return p1
.end method
