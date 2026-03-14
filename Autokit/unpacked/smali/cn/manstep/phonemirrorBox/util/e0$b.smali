.class Lcn/manstep/phonemirrorBox/util/e0$b;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/p$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/e0;->t()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcn/manstep/phonemirrorBox/util/e0;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/e0;Ljava/io/File;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$b;->b:Lcn/manstep/phonemirrorBox/util/e0;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/e0$b;->a:Ljava/io/File;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 2
    const-string p1, "utilUploadLog,uploadLog:failure: app.log !!!"
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$b;->b:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/e0;->d(Lcn/manstep/phonemirrorBox/util/e0;)V
    return-void
.end method

.method public c(Ljava/lang/String;)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "utilUploadLog,uploadLog:success: app.log "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$b;->b:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/e0;->b(Lcn/manstep/phonemirrorBox/util/e0;)V
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$b;->b:Lcn/manstep/phonemirrorBox/util/e0;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/e0$b;->a:Ljava/io/File;
    invoke-virtual { v1 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 1
    invoke-static { v0, p1, v1, v2 }, Lcn/manstep/phonemirrorBox/util/e0;->c(Lcn/manstep/phonemirrorBox/util/e0;Ljava/lang/String;Ljava/lang/String;Z)V
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$b;->b:Lcn/manstep/phonemirrorBox/util/e0;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/e0;->a(Lcn/manstep/phonemirrorBox/util/e0;)Landroid/content/Context;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/n;->b(Landroid/content/Context;)V
    return-void
.end method
