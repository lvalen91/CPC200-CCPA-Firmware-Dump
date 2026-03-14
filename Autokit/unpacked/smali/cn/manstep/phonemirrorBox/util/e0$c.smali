.class Lcn/manstep/phonemirrorBox/util/e0$c;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/p$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/e0;->r()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/util/e0;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/e0;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$c;->a:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 2
    const-string p1, "utilUploadLog,uploadLog:failure: box.log !!!"
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    sget-object p1, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$c;->a:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/e0;->d(Lcn/manstep/phonemirrorBox/util/e0;)V
    return-void
.end method

.method public c(Ljava/lang/String;)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "utilUploadLog,uploadLog:success: box.log "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$c;->a:Lcn/manstep/phonemirrorBox/util/e0;
    sget-object v1, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    const/4 v2, 0
    invoke-static { v0, p1, v1, v2 }, Lcn/manstep/phonemirrorBox/util/e0;->c(Lcn/manstep/phonemirrorBox/util/e0;Ljava/lang/String;Ljava/lang/String;Z)V
    return-void
.end method
