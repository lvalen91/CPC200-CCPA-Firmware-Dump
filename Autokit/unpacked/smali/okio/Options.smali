.class public final Lokio/Options;
.super Ljava/util/AbstractList;
.implements Ljava/util/RandomAccess;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/util/AbstractList<",
    "Lokio/ByteString;",
    ">;",
    "Ljava/util/RandomAccess;"
  }
.end annotation

.field final byteStrings:[Lokio/ByteString;

.field final trie:[I

.method private constructor <init>([Lokio/ByteString;[I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/util/AbstractList;-><init>()V
  .line 2
    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;
  .line 3
    iput-object p2, p0, Lokio/Options;->trie:[I
    return-void
.end method

.method private static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(J",
      "Lokio/Buffer;",
      "I",
      "Ljava/util/List<",
      "Lokio/ByteString;",
      ">;II",
      "Ljava/util/List<",
      "Ljava/lang/Integer;",
      ">;)V"
    }
  .end annotation
  .registers 25
    move-object/from16 v0, p2
    move/from16 v1, p3
    move-object/from16 v10, p4
    move/from16 v2, p5
    move/from16 v11, p6
    move-object/from16 v12, p7
    if-ge v2, v11, :L27
    move v3, v2
  :L0
    if-ge v3, v11, :L2
  .line 1
    invoke-interface { v10, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lokio/ByteString;
    invoke-virtual { v4 }, Lokio/ByteString;->size()I
    move-result v4
    if-lt v4, v1, :L1
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
  :L2
  .line 2
    invoke-interface/range { p4 .. p5 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lokio/ByteString;
    add-int/lit8 v4, v11, -1
  .line 3
    invoke-interface { v10, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lokio/ByteString;
    const/4 v5, -1
  .line 4
    invoke-virtual { v3 }, Lokio/ByteString;->size()I
    move-result v6
    if-ne v1, v6, :L3
  .line 5
    invoke-interface { v12, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-virtual { v3 }, Ljava/lang/Integer;->intValue()I
    move-result v5
    add-int/lit8 v2, v2, 1
  .line 6
    invoke-interface { v10, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lokio/ByteString;
  :L3
    move v6, v2
  .line 7
    invoke-virtual { v3, v1 }, Lokio/ByteString;->getByte(I)B
    move-result v2
    invoke-virtual { v4, v1 }, Lokio/ByteString;->getByte(I)B
    move-result v7
    const-wide/16 v8, 2
    if-eq v2, v7, :L19
    add-int/lit8 v2, v6, 1
    const/4 v3, 1
  :L4
    if-ge v2, v11, :L6
    add-int/lit8 v4, v2, -1
  .line 8
    invoke-interface { v10, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lokio/ByteString;
    invoke-virtual { v4, v1 }, Lokio/ByteString;->getByte(I)B
    move-result v4
  .line 9
    invoke-interface { v10, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lokio/ByteString;
    invoke-virtual { v7, v1 }, Lokio/ByteString;->getByte(I)B
    move-result v7
    if-eq v4, v7, :L5
    add-int/lit8 v3, v3, 1
  :L5
    add-int/lit8 v2, v2, 1
    goto :L4
  :L6
  .line 10
    invoke-static/range { p2 .. p2 }, Lokio/Options;->intCount(Lokio/Buffer;)I
    move-result v2
    int-to-long v13, v2
    add-long v13, p0, v13
    add-long/2addr v13, v8
    mul-int/lit8 v2, v3, 2
    int-to-long v7, v2
    add-long/2addr v13, v7
  .line 11
    invoke-virtual { v0, v3 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
  .line 12
    invoke-virtual { v0, v5 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
    move v2, v6
  :L7
    if-ge v2, v11, :L10
  .line 13
    invoke-interface { v10, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lokio/ByteString;
    invoke-virtual { v3, v1 }, Lokio/ByteString;->getByte(I)B
    move-result v3
    if-eq v2, v6, :L8
    add-int/lit8 v4, v2, -1
  .line 14
    invoke-interface { v10, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lokio/ByteString;
    invoke-virtual { v4, v1 }, Lokio/ByteString;->getByte(I)B
    move-result v4
    if-eq v3, v4, :L9
  :L8
    and-int/lit16 v3, v3, 255
  .line 15
    invoke-virtual { v0, v3 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
  :L9
    add-int/lit8 v2, v2, 1
    goto :L7
  :L10
  .line 16
    new-instance v9, Lokio/Buffer;
    invoke-direct { v9 }, Lokio/Buffer;-><init>()V
    move v7, v6
  :L11
    if-ge v7, v11, :L18
  .line 17
    invoke-interface { v10, v7 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokio/ByteString;
    invoke-virtual { v2, v1 }, Lokio/ByteString;->getByte(I)B
    move-result v2
    add-int/lit8 v3, v7, 1
    move v4, v3
  :L12
    if-ge v4, v11, :L14
  .line 18
    invoke-interface { v10, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lokio/ByteString;
    invoke-virtual { v5, v1 }, Lokio/ByteString;->getByte(I)B
    move-result v5
    if-eq v2, v5, :L13
    move v8, v4
    goto :L15
  :L13
    add-int/lit8 v4, v4, 1
    goto :L12
  :L14
    move v8, v11
  :L15
    if-ne v3, v8, :L16
    add-int/lit8 v2, v1, 1
  .line 19
    invoke-interface { v10, v7 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lokio/ByteString;
    invoke-virtual { v3 }, Lokio/ByteString;->size()I
    move-result v3
    if-ne v2, v3, :L16
  .line 20
    invoke-interface { v12, v7 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
    invoke-virtual { v0, v2 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
    move/from16 v16, v8
    move-object/from16 p0, v9
    goto :L17
  :L16
  .line 21
    invoke-static { v9 }, Lokio/Options;->intCount(Lokio/Buffer;)I
    move-result v2
    int-to-long v2, v2
    add-long/2addr v2, v13
    const-wide/16 v4, -1
    mul-long v2, v2, v4
    long-to-int v3, v2
    invoke-virtual { v0, v3 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
    add-int/lit8 v5, v1, 1
    move-wide v2, v13
    move-object v4, v9
    move-object/from16 v6, p4
    move/from16 v16, v8
    move-object/from16 p0, v9
    move-object/from16 v9, p7
  .line 22
    invoke-static/range { v2 .. v9 }, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
  :L17
    move-object/from16 v9, p0
    move/from16 v7, v16
    goto :L11
  :L18
    move-object/from16 p0, v9
  .line 23
    invoke-virtual/range { p0 .. p0 }, Lokio/Buffer;->size()J
    move-result-wide v1
    move-object/from16 v3, p0
    invoke-virtual { v0, v3, v1, v2 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
    goto/16 :L26
  :L19
    const/4 v2, 0
  .line 24
    invoke-virtual { v3 }, Lokio/ByteString;->size()I
    move-result v7
    invoke-virtual { v4 }, Lokio/ByteString;->size()I
    move-result v13
    invoke-static { v7, v13 }, Ljava/lang/Math;->min(II)I
    move-result v7
    move v13, v1
  :L20
    if-ge v13, v7, :L21
  .line 25
    invoke-virtual { v3, v13 }, Lokio/ByteString;->getByte(I)B
    move-result v14
    invoke-virtual { v4, v13 }, Lokio/ByteString;->getByte(I)B
    move-result v15
    if-ne v14, v15, :L21
    add-int/lit8 v2, v2, 1
    add-int/lit8 v13, v13, 1
    goto :L20
  :L21
  .line 26
    invoke-static/range { p2 .. p2 }, Lokio/Options;->intCount(Lokio/Buffer;)I
    move-result v4
    int-to-long v13, v4
    add-long v13, p0, v13
    add-long/2addr v13, v8
    int-to-long v7, v2
    add-long/2addr v13, v7
    const-wide/16 v7, 1
    add-long/2addr v7, v13
    neg-int v4, v2
  .line 27
    invoke-virtual { v0, v4 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
  .line 28
    invoke-virtual { v0, v5 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
    move v4, v1
  :L22
    add-int v5, v1, v2
    if-ge v4, v5, :L23
  .line 29
    invoke-virtual { v3, v4 }, Lokio/ByteString;->getByte(I)B
    move-result v5
    and-int/lit16 v5, v5, 255
    invoke-virtual { v0, v5 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
    add-int/lit8 v4, v4, 1
    goto :L22
  :L23
    add-int/lit8 v1, v6, 1
    if-ne v1, v11, :L25
  .line 30
    invoke-interface { v10, v6 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lokio/ByteString;
    invoke-virtual { v1 }, Lokio/ByteString;->size()I
    move-result v1
    if-ne v5, v1, :L24
  .line 31
    invoke-interface { v12, v6 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual { v1 }, Ljava/lang/Integer;->intValue()I
    move-result v1
    invoke-virtual { v0, v1 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
    goto :L26
  :L24
  .line 32
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    throw v0
  :L25
  .line 33
    new-instance v9, Lokio/Buffer;
    invoke-direct { v9 }, Lokio/Buffer;-><init>()V
  .line 34
    invoke-static { v9 }, Lokio/Options;->intCount(Lokio/Buffer;)I
    move-result v1
    int-to-long v1, v1
    add-long/2addr v1, v7
    const-wide/16 v3, -1
    mul-long v1, v1, v3
    long-to-int v2, v1
    invoke-virtual { v0, v2 }, Lokio/Buffer;->writeInt(I)Lokio/Buffer;
    move-wide v1, v7
    move-object v3, v9
    move v4, v5
    move-object/from16 v5, p4
    move/from16 v7, p6
    move-object/from16 v8, p7
  .line 35
    invoke-static/range { v1 .. v8 }, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
  .line 36
    invoke-virtual { v9 }, Lokio/Buffer;->size()J
    move-result-wide v1
    invoke-virtual { v0, v9, v1, v2 }, Lokio/Buffer;->write(Lokio/Buffer;J)V
  :L26
    return-void
  :L27
  .line 37
    new-instance v0, Ljava/lang/AssertionError;
    invoke-direct { v0 }, Ljava/lang/AssertionError;-><init>()V
    goto :L29
  :L28
    throw v0
  :L29
    goto :L28
.end method

.method private static intCount(Lokio/Buffer;)I
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lokio/Buffer;->size()J
    move-result-wide v0
    const-wide/16 v2, 4
    div-long/2addr v0, v2
    long-to-int p0, v0
    return p0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
  .registers 11
  .line 1
    array-length v0, p0
    const/4 v1, 0
    if-nez v0, :L0
  .line 2
    new-instance p0, Lokio/Options;
    new-array v0, v1, [Lokio/ByteString;
    const/4 v1, 2
    new-array v1, v1, [I
    fill-array-data v1, :L18
    invoke-direct { p0, v0, v1 }, Lokio/Options;-><init>([Lokio/ByteString;[I)V
    return-object p0
  :L0
  .line 3
    new-instance v6, Ljava/util/ArrayList;
    invoke-static { p0 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    invoke-direct { v6, v0 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
  .line 4
    invoke-static { v6 }, Ljava/util/Collections;->sort(Ljava/util/List;)V
  .line 5
    new-instance v9, Ljava/util/ArrayList;
    invoke-direct { v9 }, Ljava/util/ArrayList;-><init>()V
    const/4 v0, 0
  :L1
  .line 6
    invoke-interface { v6 }, Ljava/util/List;->size()I
    move-result v2
    if-ge v0, v2, :L2
    const/4 v2, -1
  .line 7
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-interface { v9, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v0, v0, 1
    goto :L1
  :L2
    const/4 v0, 0
  :L3
  .line 8
    invoke-interface { v6 }, Ljava/util/List;->size()I
    move-result v2
    if-ge v0, v2, :L4
  .line 9
    aget-object v2, p0, v0
    invoke-static { v6, v2 }, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    move-result v2
  .line 10
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface { v9, v2, v3 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    add-int/lit8 v0, v0, 1
    goto :L3
  :L4
  .line 11
    invoke-interface { v6, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lokio/ByteString;
    invoke-virtual { v0 }, Lokio/ByteString;->size()I
    move-result v0
    if-eqz v0, :L15
    const/4 v0, 0
  :L5
  .line 12
    invoke-interface { v6 }, Ljava/util/List;->size()I
    move-result v2
    if-ge v0, v2, :L11
  .line 13
    invoke-interface { v6, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lokio/ByteString;
    add-int/lit8 v3, v0, 1
    move v4, v3
  :L6
  .line 14
    invoke-interface { v6 }, Ljava/util/List;->size()I
    move-result v5
    if-ge v4, v5, :L10
  .line 15
    invoke-interface { v6, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Lokio/ByteString;
  .line 16
    invoke-virtual { v5, v2 }, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z
    move-result v7
    if-nez v7, :L7
    goto :L10
  :L7
  .line 17
    invoke-virtual { v5 }, Lokio/ByteString;->size()I
    move-result v7
    invoke-virtual { v2 }, Lokio/ByteString;->size()I
    move-result v8
    if-eq v7, v8, :L9
  .line 18
    invoke-interface { v9, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual { v5 }, Ljava/lang/Integer;->intValue()I
    move-result v5
    invoke-interface { v9, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/lang/Integer;
    invoke-virtual { v7 }, Ljava/lang/Integer;->intValue()I
    move-result v7
    if-le v5, v7, :L8
  .line 19
    invoke-interface { v6, v4 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
  .line 20
    invoke-interface { v9, v4 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
    goto :L6
  :L8
    add-int/lit8 v4, v4, 1
    goto :L6
  :L9
  .line 21
    new-instance p0, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "duplicate option: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L10
    move v0, v3
    goto :L5
  :L11
  .line 22
    new-instance v0, Lokio/Buffer;
    invoke-direct { v0 }, Lokio/Buffer;-><init>()V
    const-wide/16 v2, 0
    const/4 v5, 0
    const/4 v7, 0
  .line 23
    invoke-interface { v6 }, Ljava/util/List;->size()I
    move-result v8
    move-object v4, v0
    invoke-static/range { v2 .. v9 }, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
  .line 24
    invoke-static { v0 }, Lokio/Options;->intCount(Lokio/Buffer;)I
    move-result v2
    new-array v3, v2, [I
  :L12
    if-ge v1, v2, :L13
  .line 25
    invoke-virtual { v0 }, Lokio/Buffer;->readInt()I
    move-result v4
    aput v4, v3, v1
    add-int/lit8 v1, v1, 1
    goto :L12
  :L13
  .line 26
    invoke-virtual { v0 }, Lokio/Buffer;->exhausted()Z
    move-result v0
    if-eqz v0, :L14
  .line 27
    new-instance v0, Lokio/Options;
    invoke-virtual { p0 }, [Lokio/ByteString;->clone()Ljava/lang/Object;
    move-result-object p0
    check-cast p0, [Lokio/ByteString;
    invoke-direct { v0, p0, v3 }, Lokio/Options;-><init>([Lokio/ByteString;[I)V
    return-object v0
  :L14
  .line 28
    new-instance p0, Ljava/lang/AssertionError;
    invoke-direct { p0 }, Ljava/lang/AssertionError;-><init>()V
    throw p0
  :L15
  .line 29
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string v0, "the empty byte string is not a supported option"
    invoke-direct { p0, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    goto :L17
  :L16
    throw p0
  :L17
    goto :L16
  :L18
  .array-data 4
    0t 0t 0t 0t
    -1t -1t -1t -1t
  .end array-data
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lokio/Options;->get(I)Lokio/ByteString;
    move-result-object p1
    return-object p1
.end method

.method public get(I)Lokio/ByteString;
  .registers 3
  .line 2
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;
    aget-object p1, v0, p1
    return-object p1
.end method

.method public final size()I
  .registers 2
  .line 1
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;
    array-length v0, v0
    return v0
.end method
