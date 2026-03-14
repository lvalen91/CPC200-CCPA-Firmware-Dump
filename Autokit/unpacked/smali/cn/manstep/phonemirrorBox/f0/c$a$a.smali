.class Lcn/manstep/phonemirrorBox/f0/c$a$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/f0/c$a;->onAudioFocusChange(I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/f0/c$a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/f0/c$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/c$a$a;->b:Lcn/manstep/phonemirrorBox/f0/c$a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->y()Z
    move-result v0
    if-nez v0, :L0
    const/16 v0, 201
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/c$a$a;->b:Lcn/manstep/phonemirrorBox/f0/c$a;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/f0/c$a;->a:Lcn/manstep/phonemirrorBox/f0/c;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/f0/c;->j(Lcn/manstep/phonemirrorBox/f0/c;Z)Z
  :L0
    return-void
.end method
