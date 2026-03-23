.class Lcn/manstep/phonemirrorBox/util/b0$a;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/p$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/util/b0;->g(Lcn/manstep/phonemirrorBox/util/b0$d;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/util/b0$d;

.field final synthetic b:Lcn/manstep/phonemirrorBox/util/b0;

.method constructor <init>(Lcn/manstep/phonemirrorBox/util/b0;Lcn/manstep/phonemirrorBox/util/b0$d;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->b:Lcn/manstep/phonemirrorBox/util/b0;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->a:Lcn/manstep/phonemirrorBox/util/b0$d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 9
    const-string p1, "checkApp->failure"
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->a:Lcn/manstep/phonemirrorBox/util/b0$d;
    if-eqz v0, :L0
    const-wide/16 v3, -400
    const/4 v6, 0
    const-string v1, ""
    const-string v2, ""
    const-string v5, ""
  .line 3
    invoke-interface/range { v0 .. v6 }, Lcn/manstep/phonemirrorBox/util/b0$d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
  :L0
    return-void
.end method

.method public c(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L0 .. :L7 } :L8
  .registers 14
    const-string v0, "cku"
  .line 1
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "checkApp->success: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L0
  .line 2
    new-instance v1, Lorg/json/JSONObject;
    invoke-direct { v1, p1 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string p1, "err"
  .line 3
    invoke-virtual { v1, p1 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result p1
    const/4 v2, 0
    const/4 v3, 1
    if-nez p1, :L4
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->b:Lcn/manstep/phonemirrorBox/util/b0;
    const-string v4, "token"
    invoke-virtual { v1, v4 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-static { p1, v4 }, Lcn/manstep/phonemirrorBox/util/b0;->a(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;
    const-string p1, "ver"
  .line 5
    invoke-virtual { v1, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string p1, "notes"
  .line 6
    invoke-virtual { v1, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    const-string p1, "id"
  .line 7
    invoke-virtual { v1, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    const-string p1, "size"
  .line 8
    invoke-virtual { v1, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v7
    const-string p1, "forced"
  .line 9
    invoke-virtual { v1, p1 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result p1
  .line 10
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->b:Lcn/manstep/phonemirrorBox/util/b0;
    invoke-static { v4, v6 }, Lcn/manstep/phonemirrorBox/util/b0;->b(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;
  .line 11
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->b:Lcn/manstep/phonemirrorBox/util/b0;
    invoke-static { v4, v5 }, Lcn/manstep/phonemirrorBox/util/b0;->c(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;
  .line 12
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->a:Lcn/manstep/phonemirrorBox/util/b0$d;
    if-eqz v4, :L5
    const-string v4, "2025.03.19.1126"
  .line 13
    invoke-virtual { v4, v5 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v4
    if-gez v4, :L3
  .line 14
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->a:Lcn/manstep/phonemirrorBox/util/b0$d;
    if-ne p1, v3, :L1
    const/4 v10, 1
    goto :L2
  :L1
    const/4 v10, 0
  :L2
    invoke-interface/range { v4 .. v10 }, Lcn/manstep/phonemirrorBox/util/b0$d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
    goto :L5
  :L3
  .line 15
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->a:Lcn/manstep/phonemirrorBox/util/b0$d;
    const-string v6, ""
    const-wide/16 v7, -200
    const/4 v10, 0
    invoke-interface/range { v4 .. v10 }, Lcn/manstep/phonemirrorBox/util/b0$d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
    goto :L5
  :L4
  .line 16
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->a:Lcn/manstep/phonemirrorBox/util/b0$d;
    if-eqz v4, :L5
  .line 17
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->a:Lcn/manstep/phonemirrorBox/util/b0$d;
    const-string v6, ""
    const-string v7, ""
    mul-int/lit8 p1, p1, -1
    int-to-long v8, p1
    const-string v10, ""
    const/4 v11, 0
    invoke-interface/range { v5 .. v11 }, Lcn/manstep/phonemirrorBox/util/b0$d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
  :L5
  .line 18
    invoke-virtual { v1, v0 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L9
  .line 19
    invoke-virtual { v1, v0 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result p1
    if-nez p1, :L6
    const/4 v2, 1
  :L6
    sput-boolean v2, Lcn/manstep/phonemirrorBox/p;->B:Z
  :L7
    goto :L9
  :L8
    move-exception p1
  .line 20
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "checkApp->success: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 21
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/b0$a;->a:Lcn/manstep/phonemirrorBox/util/b0$d;
    if-eqz v1, :L9
    const-wide/16 v4, -500
  .line 22
    invoke-virtual { p1 }, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v6
    const/4 v7, 0
    const-string v2, ""
    const-string v3, ""
    invoke-interface/range { v1 .. v7 }, Lcn/manstep/phonemirrorBox/util/b0$d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
  :L9
    return-void
.end method
