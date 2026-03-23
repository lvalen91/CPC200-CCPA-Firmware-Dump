.class final Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;
.super Landroid/util/Property;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
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
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    int-to-float p1, p1
    invoke-static { p1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object p1
    return-object p1
.end method

.method public b(Landroid/view/View;Ljava/lang/Float;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    invoke-virtual { p2 }, Ljava/lang/Float;->intValue()I
    move-result p2
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->requestLayout()V
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 2
  .line 1
    check-cast p1, Landroid/view/View;
    invoke-virtual { p0, p1 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;->a(Landroid/view/View;)Ljava/lang/Float;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
  .registers 3
  .line 1
    check-cast p1, Landroid/view/View;
    check-cast p2, Ljava/lang/Float;
    invoke-virtual { p0, p1, p2 }, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;->b(Landroid/view/View;Ljava/lang/Float;)V
    return-void
.end method
