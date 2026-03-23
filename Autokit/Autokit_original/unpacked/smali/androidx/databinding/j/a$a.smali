.class final Landroidx/databinding/j/a$a;
.super Ljava/lang/Object;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/databinding/j/a;->b(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/g;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.field final synthetic a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field final synthetic b:Landroidx/databinding/g;

.method constructor <init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/g;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/databinding/j/a$a;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iput-object p2, p0, Landroidx/databinding/j/a$a;->b:Landroidx/databinding/g;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/databinding/j/a$a;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2 }, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
  :L0
  .line 3
    iget-object p1, p0, Landroidx/databinding/j/a$a;->b:Landroidx/databinding/g;
    invoke-interface { p1 }, Landroidx/databinding/g;->a()V
    return-void
.end method
