.class public Landroidx/databinding/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_9

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_9
    return-void
.end method

.method public static b(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/g;)V
    .registers 4

    if-nez p2, :cond_6

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_e

    .line 2
    :cond_6
    new-instance v0, Landroidx/databinding/j/a$a;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/j/a$a;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/g;)V

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_e
    return-void
.end method
