.class Lcn/manstep/phonemirrorBox/o$a;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/p$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/o;->d(Ljava/util/Map;Ljava/lang/String;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>(Lcn/manstep/phonemirrorBox/o;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "CarlinKitHttp,request->failure\uff1a "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    return-void
.end method

.method public c(Ljava/lang/String;)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "CarlinKitHttp,request: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method
