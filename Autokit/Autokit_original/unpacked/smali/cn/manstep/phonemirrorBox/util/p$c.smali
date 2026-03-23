.class Lcn/manstep/phonemirrorBox/util/p$c;
.super Ljava/lang/Object;
.implements Lokhttp3/Callback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/p;->k(I)Lokhttp3/Callback;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:I

.field final synthetic b:Lcn/manstep/phonemirrorBox/util/p;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/p;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/p$c;->b:Lcn/manstep/phonemirrorBox/util/p;
    iput p2, p0, Lcn/manstep/phonemirrorBox/util/p$c;->a:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
  .registers 6
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/p$c;->b:Lcn/manstep/phonemirrorBox/util/p;
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/p$c;->a:I
    invoke-virtual { p2 }, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 1
    invoke-static { p1, v0, v2, v1 }, Lcn/manstep/phonemirrorBox/util/p;->a(Lcn/manstep/phonemirrorBox/util/p;IILjava/lang/String;)V
  .line 2
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "HTTP,requestCallback:onFailure: \n"
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
  .registers 7
  .line 1
    invoke-virtual { p2 }, Lokhttp3/Response;->isSuccessful()Z
    move-result p1
    const/4 v0, 1
    if-nez p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/p$c;->b:Lcn/manstep/phonemirrorBox/util/p;
    iget v1, p0, Lcn/manstep/phonemirrorBox/util/p$c;->a:I
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "code="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Lokhttp3/Response;->code()I
    move-result p2
    invoke-virtual { v2, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p1, v1, v0, p2 }, Lcn/manstep/phonemirrorBox/util/p;->a(Lcn/manstep/phonemirrorBox/util/p;IILjava/lang/String;)V
    return-void
  :L0
  .line 3
    invoke-virtual { p2 }, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    move-result-object p1
    if-eqz p1, :L2
  .line 4
    invoke-virtual { p1 }, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    move-result-object p1
    const-string p2, "\\$"
  .line 5
    invoke-virtual { p1, p2 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p2
  .line 6
    array-length v1, p2
    const/4 v2, 2
    if-ne v1, v2, :L1
  .line 7
    aget-object p1, p2, v0
  :L1
  .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/util/p$c;->b:Lcn/manstep/phonemirrorBox/util/p;
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/p$c;->a:I
    const/4 v1, 0
    invoke-static { p2, v0, v1, p1 }, Lcn/manstep/phonemirrorBox/util/p;->a(Lcn/manstep/phonemirrorBox/util/p;IILjava/lang/String;)V
    goto :L3
  :L2
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/p$c;->b:Lcn/manstep/phonemirrorBox/util/p;
    iget p2, p0, Lcn/manstep/phonemirrorBox/util/p$c;->a:I
    const-string v1, "responseBody=null"
    invoke-static { p1, p2, v0, v1 }, Lcn/manstep/phonemirrorBox/util/p;->a(Lcn/manstep/phonemirrorBox/util/p;IILjava/lang/String;)V
  :L3
    return-void
.end method
