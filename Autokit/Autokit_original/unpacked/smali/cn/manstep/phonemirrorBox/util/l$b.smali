.class Lcn/manstep/phonemirrorBox/util/l$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/l;->A(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Z

.field final synthetic c:Lcn/manstep/phonemirrorBox/util/l;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/l;Z)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l$b;->c:Lcn/manstep/phonemirrorBox/util/l;
    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/util/l$b;->b:Z
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 2
  .line 1
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/util/l$b;->b:Z
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/l$b;->c:Lcn/manstep/phonemirrorBox/util/l;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/l;->g(Lcn/manstep/phonemirrorBox/util/l;)V
  :L0
    return-void
.end method
