.class Lcn/manstep/phonemirrorBox/util/d0$b;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/p$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/d0;->j()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/util/d0;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/d0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$b;->a:Lcn/manstep/phonemirrorBox/util/d0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 2
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0$b;->a:Lcn/manstep/phonemirrorBox/util/d0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/d0;->b(Lcn/manstep/phonemirrorBox/util/d0;)V
    return-void
.end method

.method public c(Ljava/lang/String;)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "utilUpdateVersion,checkBoxUpdate->success: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0$b;->a:Lcn/manstep/phonemirrorBox/util/d0;
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/d0;->c(Lcn/manstep/phonemirrorBox/util/d0;Ljava/lang/String;)V
    return-void
.end method
