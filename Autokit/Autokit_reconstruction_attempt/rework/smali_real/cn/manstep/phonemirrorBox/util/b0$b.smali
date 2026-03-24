.class Lcn/manstep/phonemirrorBox/util/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/util/p$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/util/b0;->i(Lcn/manstep/phonemirrorBox/util/b0$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/util/b0$d;

.field final synthetic b:Lcn/manstep/phonemirrorBox/util/b0;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/b0;Lcn/manstep/phonemirrorBox/util/b0$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->b:Lcn/manstep/phonemirrorBox/util/b0;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->a:Lcn/manstep/phonemirrorBox/util/b0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->a:Lcn/manstep/phonemirrorBox/util/b0$d;

    if-eqz v0, :cond_10

    const-wide/16 v3, -0x190

    const/4 v6, 0x0

    const-string v1, ""

    const-string v2, ""

    const-string v5, ""

    .line 2
    invoke-interface/range {v0 .. v6}, Lcn/manstep/phonemirrorBox/util/b0$d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V

    :cond_10
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkBox->success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    :try_start_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "err"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_82

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->b:Lcn/manstep/phonemirrorBox/util/b0;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/util/b0;->a(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "ver"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "notes"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "id"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "size"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string p1, "forced"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->b:Lcn/manstep/phonemirrorBox/util/b0;

    invoke-static {v0, v3}, Lcn/manstep/phonemirrorBox/util/b0;->d(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->b:Lcn/manstep/phonemirrorBox/util/b0;

    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/b0;->e(Lcn/manstep/phonemirrorBox/util/b0;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->a:Lcn/manstep/phonemirrorBox/util/b0$d;

    if-eqz v0, :cond_c1

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_77

    .line 14
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->a:Lcn/manstep/phonemirrorBox/util/b0$d;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_71

    const/4 v7, 0x1

    goto :goto_73

    :cond_71
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_73
    invoke-interface/range {v1 .. v7}, Lcn/manstep/phonemirrorBox/util/b0$d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V

    goto :goto_c1

    .line 15
    :cond_77
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->a:Lcn/manstep/phonemirrorBox/util/b0$d;

    const-string v3, ""

    const-wide/16 v4, -0xc8

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcn/manstep/phonemirrorBox/util/b0$d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V

    goto :goto_c1

    .line 16
    :cond_82
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->a:Lcn/manstep/phonemirrorBox/util/b0$d;

    if-eqz v0, :cond_c1

    .line 17
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->a:Lcn/manstep/phonemirrorBox/util/b0$d;

    const-string v2, ""

    const-string v3, ""

    mul-int/lit8 p1, p1, -0x1

    int-to-long v4, p1

    const-string v6, ""

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcn/manstep/phonemirrorBox/util/b0$d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_95} :catch_96

    goto :goto_c1

    :catch_96
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkApp->success: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/b0$b;->a:Lcn/manstep/phonemirrorBox/util/b0$d;

    if-eqz v1, :cond_c1

    const-wide/16 v4, -0x1f4

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v2, ""

    const-string v3, ""

    invoke-interface/range {v1 .. v7}, Lcn/manstep/phonemirrorBox/util/b0$d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V

    :cond_c1
    :goto_c1
    return-void
.end method
