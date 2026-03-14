.class public Lc/g/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
  .registers 4
    if-nez p0, :L0
    const-string p0, "null"
  .line 1
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L3
  :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v1
    if-gtz v1, :L2
  :L1
  .line 4
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    const/16 v1, 46
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/String;->lastIndexOf(I)I
    move-result v1
    if-lez v1, :L2
    add-int/lit8 v1, v1, 1
  .line 6
    invoke-virtual { v0, v1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v0
  :L2
  .line 7
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v0, 123
  .line 8
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 9
    invoke-static { p0 }, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    move-result p0
    invoke-static { p0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L3
    return-void
.end method
