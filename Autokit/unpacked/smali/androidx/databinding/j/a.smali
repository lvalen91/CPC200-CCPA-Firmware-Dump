.class public Landroidx/databinding/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/widget/CompoundButton;Z)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/widget/CompoundButton;->isChecked()Z
    move-result v0
    if-eq v0, p1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/CompoundButton;->setChecked(Z)V
  :L0
    return-void
.end method

.method public static b(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/g;)V
  .registers 4
    if-nez p2, :L0
  .line 1
    invoke-virtual { p0, p1 }, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    goto :L1
  :L0
  .line 2
    new-instance v0, Landroidx/databinding/j/a$a;
    invoke-direct { v0, p1, p2 }, Landroidx/databinding/j/a$a;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/g;)V
    invoke-virtual { p0, v0 }, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
  :L1
    return-void
.end method
