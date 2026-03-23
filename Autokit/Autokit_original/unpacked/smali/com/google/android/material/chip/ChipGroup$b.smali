.class Lcom/google/android/material/chip/ChipGroup$b;
.super Ljava/lang/Object;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/chip/ChipGroup;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "b"
.end annotation

.field final synthetic a:Lcom/google/android/material/chip/ChipGroup;

.method private constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$a;)V
  .registers 3
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/chip/ChipGroup$b;-><init>(Lcom/google/android/material/chip/ChipGroup;)V
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-static { v0 }, Lcom/google/android/material/chip/ChipGroup;->f(Lcom/google/android/material/chip/ChipGroup;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-virtual { v0 }, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipIds()Ljava/util/List;
    move-result-object v0
  .line 3
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-static { v0 }, Lcom/google/android/material/chip/ChipGroup;->g(Lcom/google/android/material/chip/ChipGroup;)Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-virtual { p1 }, Landroid/widget/CompoundButton;->getId()I
    move-result v0
    const/4 v2, 1
    invoke-static { p2, v0, v2 }, Lcom/google/android/material/chip/ChipGroup;->h(Lcom/google/android/material/chip/ChipGroup;IZ)V
  .line 5
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-virtual { p1 }, Landroid/widget/CompoundButton;->getId()I
    move-result p1
    invoke-static { p2, p1, v1 }, Lcom/google/android/material/chip/ChipGroup;->i(Lcom/google/android/material/chip/ChipGroup;IZ)V
    return-void
  :L1
  .line 6
    invoke-virtual { p1 }, Landroid/widget/CompoundButton;->getId()I
    move-result p1
    const/4 v0, -1
    if-eqz p2, :L3
  .line 7
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-static { p2 }, Lcom/google/android/material/chip/ChipGroup;->j(Lcom/google/android/material/chip/ChipGroup;)I
    move-result p2
    if-eq p2, v0, :L2
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-static { p2 }, Lcom/google/android/material/chip/ChipGroup;->j(Lcom/google/android/material/chip/ChipGroup;)I
    move-result p2
    if-eq p2, p1, :L2
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-static { p2 }, Lcom/google/android/material/chip/ChipGroup;->k(Lcom/google/android/material/chip/ChipGroup;)Z
    move-result p2
    if-eqz p2, :L2
  .line 8
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-static { p2 }, Lcom/google/android/material/chip/ChipGroup;->j(Lcom/google/android/material/chip/ChipGroup;)I
    move-result v0
    invoke-static { p2, v0, v1 }, Lcom/google/android/material/chip/ChipGroup;->h(Lcom/google/android/material/chip/ChipGroup;IZ)V
  :L2
  .line 9
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-static { p2, p1 }, Lcom/google/android/material/chip/ChipGroup;->l(Lcom/google/android/material/chip/ChipGroup;I)V
    goto :L4
  :L3
  .line 10
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-static { p2 }, Lcom/google/android/material/chip/ChipGroup;->j(Lcom/google/android/material/chip/ChipGroup;)I
    move-result p2
    if-ne p2, p1, :L4
  .line 11
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;
    invoke-static { p1, v0 }, Lcom/google/android/material/chip/ChipGroup;->l(Lcom/google/android/material/chip/ChipGroup;I)V
  :L4
    return-void
.end method
