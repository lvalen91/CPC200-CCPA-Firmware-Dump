.class Landroidx/core/view/v$b;
.super Landroidx/core/view/v$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/core/view/v;->n0()Landroidx/core/view/v$g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroidx/core/view/v$g<",
    "Ljava/lang/Boolean;",
    ">;"
  }
.end annotation

.method constructor <init>(ILjava/lang/Class;I)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Landroidx/core/view/v$g;-><init>(ILjava/lang/Class;I)V
    return-void
.end method

.method bridge synthetic d(Landroid/view/View;)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/core/view/v$b;->i(Landroid/view/View;)Ljava/lang/Boolean;
    move-result-object p1
    return-object p1
.end method

.method bridge synthetic e(Landroid/view/View;Ljava/lang/Object;)V
  .registers 3
  .line 1
    check-cast p2, Ljava/lang/Boolean;
    invoke-virtual { p0, p1, p2 }, Landroidx/core/view/v$b;->j(Landroid/view/View;Ljava/lang/Boolean;)V
    return-void
.end method

.method bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Z
  .registers 3
  .line 1
    check-cast p1, Ljava/lang/Boolean;
    check-cast p2, Ljava/lang/Boolean;
    invoke-virtual { p0, p1, p2 }, Landroidx/core/view/v$b;->k(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    move-result p1
    return p1
.end method

.method i(Landroid/view/View;)Ljava/lang/Boolean;
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->isScreenReaderFocusable()Z
    move-result p1
    invoke-static { p1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p1
    return-object p1
.end method

.method j(Landroid/view/View;Ljava/lang/Boolean;)V
  .registers 3
  .line 1
    invoke-virtual { p2 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p2
    invoke-virtual { p1, p2 }, Landroid/view/View;->setScreenReaderFocusable(Z)V
    return-void
.end method

.method k(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
  .registers 3
  .line 1
    invoke-virtual { p0, p1, p2 }, Landroidx/core/view/v$g;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    move-result p1
    xor-int/lit8 p1, p1, 1
    return p1
.end method
