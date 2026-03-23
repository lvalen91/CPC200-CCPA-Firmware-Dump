.class public final synthetic Lcn/manstep/phonemirrorBox/l0/c;
.super Ljava/lang/Object;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.source "lambda"

.field public final synthetic a:Lcn/manstep/phonemirrorBox/l0/r;

.method public synthetic constructor <init>(Lcn/manstep/phonemirrorBox/l0/r;)V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/c;->a:Lcn/manstep/phonemirrorBox/l0/r;
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
  .registers 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/c;->a:Lcn/manstep/phonemirrorBox/l0/r;
    invoke-virtual { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/l0/r;->q2(Landroid/widget/CompoundButton;Z)V
    return-void
.end method
