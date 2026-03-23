.class Lcn/manstep/phonemirrorBox/v0/e$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/v0/e;->R(Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/v0/e;

.method constructor <init>(Lcn/manstep/phonemirrorBox/v0/e;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/e$b;->b:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/e$b;->b:Lcn/manstep/phonemirrorBox/v0/e;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->q(Lcn/manstep/phonemirrorBox/v0/e;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
    move-result-object v0
    const/16 v1, 501
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->M(I)V
    return-void
.end method
