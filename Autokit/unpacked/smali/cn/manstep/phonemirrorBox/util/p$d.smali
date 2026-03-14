.class Lcn/manstep/phonemirrorBox/util/p$d;
.super Ljava/lang/Object;
.implements Lokhttp3/Callback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/p;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$f;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/util/p;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/p;ILjava/lang/String;)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/p$d;->c:Lcn/manstep/phonemirrorBox/util/p;
    iput p2, p0, Lcn/manstep/phonemirrorBox/util/p$d;->a:I
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/util/p$d;->b:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
  .registers 6
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/p$d;->c:Lcn/manstep/phonemirrorBox/util/p;
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/p$d;->a:I
    invoke-virtual { p2 }, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 1
    invoke-static { p1, v0, v2, v1 }, Lcn/manstep/phonemirrorBox/util/p;->a(Lcn/manstep/phonemirrorBox/util/p;IILjava/lang/String;)V
  .line 2
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "HTTP,downFile: \n"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p2 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
  .registers 5
  .line 1
    invoke-virtual { p2 }, Lokhttp3/Response;->isSuccessful()Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p2 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object p1
    if-eqz p1, :L1
  .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/util/p$d;->c:Lcn/manstep/phonemirrorBox/util/p;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/p$d;->b:Ljava/lang/String;
    iget v1, p0, Lcn/manstep/phonemirrorBox/util/p$d;->a:I
    invoke-static { p2, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/util/p;->b(Lcn/manstep/phonemirrorBox/util/p;Ljava/lang/String;Lokhttp3/ResponseBody;I)V
    goto :L1
  :L0
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/p$d;->c:Lcn/manstep/phonemirrorBox/util/p;
    iget p2, p0, Lcn/manstep/phonemirrorBox/util/p$d;->a:I
    const/4 v0, 1
    const-string v1, ""
    invoke-static { p1, p2, v0, v1 }, Lcn/manstep/phonemirrorBox/util/p;->a(Lcn/manstep/phonemirrorBox/util/p;IILjava/lang/String;)V
  :L1
    return-void
.end method
