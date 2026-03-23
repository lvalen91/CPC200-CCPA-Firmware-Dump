.class public final synthetic Lcn/manstep/phonemirrorBox/l0/e;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "lambda"

.field public final synthetic b:Lcn/manstep/phonemirrorBox/l0/r;

.method public synthetic constructor <init>(Lcn/manstep/phonemirrorBox/l0/r;)V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/e;->b:Lcn/manstep/phonemirrorBox/l0/r;
    return-void
.end method

.method public final run()V
  .registers 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/e;->b:Lcn/manstep/phonemirrorBox/l0/r;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/l0/r;->m2()V
    return-void
.end method
