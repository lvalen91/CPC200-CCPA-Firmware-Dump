.class Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b(II)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;)I
    move-result v0
    const/4 v1, 2
    if-ge v0, v1, :L1
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-eqz v0, :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;
    const/4 v1, 4
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;I)I
  :L1
    return-void
.end method
