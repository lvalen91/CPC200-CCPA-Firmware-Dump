.class Lcn/manstep/phonemirrorBox/l0/l$c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/l;->Y2(I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:I

.field final synthetic c:Lcn/manstep/phonemirrorBox/l0/l;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$c;->c:Lcn/manstep/phonemirrorBox/l0/l;
    iput p2, p0, Lcn/manstep/phonemirrorBox/l0/l$c;->b:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/l0/l$c;->b:I
    const/4 v1, 5
    if-ne v0, v1, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$c;->c:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->t2(Lcn/manstep/phonemirrorBox/l0/l;)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$c;->c:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->u2(Lcn/manstep/phonemirrorBox/l0/l;)V
  :L1
    return-void
.end method
