.class Lcn/manstep/phonemirrorBox/BoxInterface/b$f$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->q()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$f;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-nez v0, :L0
    const/16 v0, 12
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    const/4 v0, 0
  .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b$f;->n:Z
  :L0
    return-void
.end method
