.class final Lc/p/c0$a;
.super Landroid/util/Property;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/p/c0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroid/util/Property<",
    "Landroid/view/View;",
    "Ljava/lang/Float;",
    ">;"
  }
.end annotation

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
    return-void
.end method

.method public a(Landroid/view/View;)Ljava/lang/Float;
  .registers 2
  .line 1
    invoke-static { p1 }, Lc/p/c0;->c(Landroid/view/View;)F
    move-result p1
    invoke-static { p1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object p1
    return-object p1
.end method

.method public b(Landroid/view/View;Ljava/lang/Float;)V
  .registers 3
  .line 1
    invoke-virtual { p2 }, Ljava/lang/Float;->floatValue()F
    move-result p2
    invoke-static { p1, p2 }, Lc/p/c0;->g(Landroid/view/View;F)V
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 2
  .line 1
    check-cast p1, Landroid/view/View;
    invoke-virtual { p0, p1 }, Lc/p/c0$a;->a(Landroid/view/View;)Ljava/lang/Float;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
  .registers 3
  .line 1
    check-cast p1, Landroid/view/View;
    check-cast p2, Ljava/lang/Float;
    invoke-virtual { p0, p1, p2 }, Lc/p/c0$a;->b(Landroid/view/View;Ljava/lang/Float;)V
    return-void
.end method
