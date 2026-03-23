.class Lcn/manstep/phonemirrorBox/q$a;
.super Ljava/lang/Thread;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/q;->i(Ljava/lang/Throwable;)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/q;

.method constructor <init>(Lcn/manstep/phonemirrorBox/q;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/q$a;->b:Lcn/manstep/phonemirrorBox/q;
    invoke-direct { p0 }, Ljava/lang/Thread;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    invoke-static { }, Landroid/os/Looper;->prepare()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/q$a;->b:Lcn/manstep/phonemirrorBox/q;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/q;->b(Lcn/manstep/phonemirrorBox/q;)Landroid/content/Context;
    move-result-object v0
    if-eqz v0, :L3
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/q$a;->b:Lcn/manstep/phonemirrorBox/q;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/q;->b(Lcn/manstep/phonemirrorBox/q;)Landroid/content/Context;
    move-result-object v0
    const v1, 2131689498
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 4
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
  .line 5
    invoke-static { }, Landroid/os/Looper;->loop()V
    return-void
.end method
