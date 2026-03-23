.class Lcn/manstep/phonemirrorBox/MainActivity$z$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity$z;->onSystemUiVisibilityChange(I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity$z;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity$z;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$z$a;->b:Lcn/manstep/phonemirrorBox/MainActivity$z;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$z$a;->b:Lcn/manstep/phonemirrorBox/MainActivity$z;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/MainActivity$z;->a:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/MainActivity;->A0(Lcn/manstep/phonemirrorBox/MainActivity;)V
    return-void
.end method
