.class public final synthetic Lcn/manstep/phonemirrorBox/d0/c;
.super Ljava/lang/Object;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.source "lambda"

.field public final synthetic a:Lcn/manstep/phonemirrorBox/d0/j;

.field public final synthetic b:Lcn/manstep/phonemirrorBox/util/o;

.field public final synthetic c:Lcn/manstep/phonemirrorBox/d0/j$a;

.method public synthetic constructor <init>(Lcn/manstep/phonemirrorBox/d0/j;Lcn/manstep/phonemirrorBox/util/o;Lcn/manstep/phonemirrorBox/d0/j$a;)V
  .registers 4
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/c;->a:Lcn/manstep/phonemirrorBox/d0/j;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/d0/c;->b:Lcn/manstep/phonemirrorBox/util/o;
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/d0/c;->c:Lcn/manstep/phonemirrorBox/d0/j$a;
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
  .registers 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/c;->a:Lcn/manstep/phonemirrorBox/d0/j;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d0/c;->b:Lcn/manstep/phonemirrorBox/util/o;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/d0/c;->c:Lcn/manstep/phonemirrorBox/d0/j$a;
    invoke-virtual { v0, v1, v2, p1, p2 }, Lcn/manstep/phonemirrorBox/d0/j;->u(Lcn/manstep/phonemirrorBox/util/o;Lcn/manstep/phonemirrorBox/d0/j$a;Landroid/widget/CompoundButton;Z)V
    return-void
.end method
