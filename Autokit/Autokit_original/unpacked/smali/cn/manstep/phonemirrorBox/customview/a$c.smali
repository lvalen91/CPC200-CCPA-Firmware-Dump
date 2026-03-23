.class Lcn/manstep/phonemirrorBox/customview/a$c;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/customview/a;->D(Landroid/content/Context;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/customview/a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/customview/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$c;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$c;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/customview/a;->A(Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a$g;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$c;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/customview/a;->A(Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a$g;
    move-result-object p1
    invoke-interface { p1 }, Lcn/manstep/phonemirrorBox/customview/a$g;->a()V
  :L0
    return-void
.end method
