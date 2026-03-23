.class Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;
.super Ljava/lang/Object;
.implements Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/yalantis/ucrop/util/ImageHeaderParser;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "StreamReader"
.end annotation

.field private final is:Ljava/io/InputStream;

.method public constructor <init>(Ljava/io/InputStream;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;
    return-void
.end method

.method public getUInt16()I
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;
    invoke-virtual { v0 }, Ljava/io/InputStream;->read()I
    move-result v0
    shl-int/lit8 v0, v0, 8
    const v1, 65280
    and-int/2addr v0, v1
    iget-object v1, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;
    invoke-virtual { v1 }, Ljava/io/InputStream;->read()I
    move-result v1
    and-int/lit16 v1, v1, 255
    or-int/2addr v0, v1
    return v0
.end method

.method public getUInt8()S
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;
    invoke-virtual { v0 }, Ljava/io/InputStream;->read()I
    move-result v0
    and-int/lit16 v0, v0, 255
    int-to-short v0, v0
    return v0
.end method

.method public read([BI)I
  .registers 6
    move v0, p2
  :L0
    if-lez v0, :L1
  .line 1
    iget-object v1, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;
    sub-int v2, p2, v0
    invoke-virtual { v1, p1, v2, v0 }, Ljava/io/InputStream;->read([BII)I
    move-result v1
    const/4 v2, -1
    if-eq v1, v2, :L1
    sub-int/2addr v0, v1
    goto :L0
  :L1
    sub-int/2addr p2, v0
    return p2
.end method

.method public skip(J)J
  .registers 10
    const-wide/16 v0, 0
    cmp-long v2, p1, v0
    if-gez v2, :L0
    return-wide v0
  :L0
    move-wide v2, p1
  :L1
    cmp-long v4, v2, v0
    if-lez v4, :L5
  .line 1
    iget-object v4, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;
    invoke-virtual { v4, v2, v3 }, Ljava/io/InputStream;->skip(J)J
    move-result-wide v4
    cmp-long v6, v4, v0
    if-lez v6, :L3
  :L2
    sub-long/2addr v2, v4
    goto :L1
  :L3
  .line 2
    iget-object v4, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;
    invoke-virtual { v4 }, Ljava/io/InputStream;->read()I
    move-result v4
    const/4 v5, -1
    if-ne v4, v5, :L4
    goto :L5
  :L4
    const-wide/16 v4, 1
    goto :L2
  :L5
    sub-long/2addr p1, v2
    return-wide p1
.end method
