.class Lcn/manstep/phonemirrorBox/d/a$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/d/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/d/a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/d/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d/a$b;->b:Lcn/manstep/phonemirrorBox/d/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d/a$b;->b:Lcn/manstep/phonemirrorBox/d/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/d/a;->i()V
    return-void
.end method
