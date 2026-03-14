.class Lcn/manstep/phonemirrorBox/AutoStartService$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/AutoStartService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/AutoStartService;

.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoStartService;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$b;->b:Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$b;->b:Lcn/manstep/phonemirrorBox/AutoStartService;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/AutoStartService;->k(Lcn/manstep/phonemirrorBox/AutoStartService;)V
    return-void
.end method
