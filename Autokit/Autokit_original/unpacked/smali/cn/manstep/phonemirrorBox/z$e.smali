.class Lcn/manstep/phonemirrorBox/z$e;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/z;->S2()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/z;

.method constructor <init>(Lcn/manstep/phonemirrorBox/z;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z$e;->b:Lcn/manstep/phonemirrorBox/z;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->j()V
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 3
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$e;->b:Lcn/manstep/phonemirrorBox/z;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/k;->i0(Z)V
    return-void
.end method
