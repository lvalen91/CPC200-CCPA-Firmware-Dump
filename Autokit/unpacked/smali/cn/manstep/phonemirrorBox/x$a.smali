.class final Lcn/manstep/phonemirrorBox/x$a;
.super Ljava/util/HashMap;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/x;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/util/HashMap<",
    "Ljava/lang/Integer;",
    "Ljava/util/Locale;",
    ">;"
  }
.end annotation

.method constructor <init>(I)V
  .registers 6
  .line 1
    invoke-direct { p0, p1 }, Ljava/util/HashMap;-><init>(I)V
    const/4 p1, 1
  .line 2
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/4 p1, 2
  .line 3
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/4 p1, 3
  .line 4
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/4 p1, 4
  .line 5
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/4 p1, 5
  .line 6
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "ar"
    const-string v2, "IL"
    invoke-direct { v0, v1, v2 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/4 p1, 6
  .line 7
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    sget-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/4 p1, 7
  .line 8
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "es"
    const-string v3, "ES"
    invoke-direct { v0, v1, v3 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 8
  .line 9
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    sget-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 9
  .line 10
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "nl"
    const-string v3, "NL"
    invoke-direct { v0, v1, v3 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 10
  .line 11
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "pt"
    const-string v3, "PT"
    invoke-direct { v0, v1, v3 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 11
  .line 12
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "ru"
    const-string v3, "RU"
    invoke-direct { v0, v1, v3 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 12
  .line 13
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "tr"
    const-string v3, "TR"
    invoke-direct { v0, v1, v3 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 13
  .line 14
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "ko"
    const-string v3, "KR"
    invoke-direct { v0, v1, v3 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 14
  .line 15
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "iw"
    invoke-direct { v0, v1, v2 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 15
  .line 16
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    sget-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 16
  .line 17
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "th"
    const-string v2, "TH"
    invoke-direct { v0, v1, v2 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 17
  .line 18
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "in"
    const-string v2, "ID"
    invoke-direct { v0, v1, v2 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 18
  .line 19
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "ms"
    const-string v2, "MY"
    invoke-direct { v0, v1, v2 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 p1, 19
  .line 20
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    new-instance v0, Ljava/util/Locale;
    const-string v1, "nb"
    const-string v2, "NO"
    invoke-direct { v0, v1, v2 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p0, p1, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method
