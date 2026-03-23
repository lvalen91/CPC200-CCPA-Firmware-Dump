.class public Lcn/manstep/phonemirrorBox/o0/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Z
  .registers 1
    if-eqz p0, :L1
  .line 1
    invoke-interface { p0 }, Ljava/lang/CharSequence;->length()I
    move-result p0
    if-nez p0, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
    return p0
.end method

.method public static b(Ljava/lang/CharSequence;)Z
  .registers 5
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/o0/a;->a(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    invoke-interface { p0 }, Ljava/lang/CharSequence;->length()I
    move-result v0
    const/4 v2, 0
  :L1
    if-ge v2, v0, :L3
  .line 3
    invoke-interface { p0, v2 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v3
    invoke-static { v3 }, Ljava/lang/Character;->isDigit(C)Z
    move-result v3
    if-nez v3, :L2
    return v1
  :L2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L3
    const/4 p0, 1
    return p0
.end method

.method public static c(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Iterable<",
      "*>;",
      "Ljava/lang/String;",
      ")",
      "Ljava/lang/String;"
    }
  .end annotation
  .registers 2
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 1
    invoke-interface { p0 }, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    move-result-object p0
    invoke-static { p0, p1 }, Lcn/manstep/phonemirrorBox/o0/a;->d(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static d(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Iterator<",
      "*>;",
      "Ljava/lang/String;",
      ")",
      "Ljava/lang/String;"
    }
  .end annotation
  .registers 5
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 1
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    const-string v1, ""
    if-nez v0, :L1
    return-object v1
  :L1
  .line 2
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
  .line 3
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-nez v2, :L3
    if-eqz v0, :L2
  .line 4
    invoke-virtual { v0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
  :L2
    return-object v1
  :L3
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    const/16 v2, 256
    invoke-direct { v1, v2 }, Ljava/lang/StringBuilder;-><init>(I)V
    if-eqz v0, :L4
  .line 6
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  :L4
  .line 7
    invoke-interface { p0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L6
    if-eqz p1, :L5
  .line 8
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L5
  .line 9
    invoke-interface { p0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L4
  .line 10
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto :L4
  :L6
  .line 11
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method
