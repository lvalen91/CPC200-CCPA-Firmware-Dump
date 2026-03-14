.class Lcn/manstep/phonemirrorBox/util/a0$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/a0;->c(ILjava/lang/Runnable;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/util/a0;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/a0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/a0$a;->b:Lcn/manstep/phonemirrorBox/util/a0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/a0$a;->b:Lcn/manstep/phonemirrorBox/util/a0;
    const/4 v1, 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/a0;->a(Lcn/manstep/phonemirrorBox/util/a0;Z)Z
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/a0$a;->b:Lcn/manstep/phonemirrorBox/util/a0;
    const/4 v1, -1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/a0;->b(Lcn/manstep/phonemirrorBox/util/a0;I)I
    return-void
.end method
