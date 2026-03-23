.class Lcn/manstep/phonemirrorBox/AndroidH264view$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/AndroidH264view;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "c"
.end annotation

.field public a:[B

.field public b:Ljava/util/Vector;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Vector<",
      "[B>;"
    }
  .end annotation
.end field

.method private constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/Vector;
    const/16 v1, 320
    invoke-direct { v0, v1 }, Ljava/util/Vector;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b:Ljava/util/Vector;
    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/AndroidH264view$a;)V
  .registers 2
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AndroidH264view$c;-><init>()V
    return-void
.end method

.method private d([BII)V
  .registers 8
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b:Ljava/util/Vector;
    invoke-virtual { v0 }, Ljava/util/Vector;->clear()V
    move v0, p2
  :L0
    if-ge v0, p3, :L2
  .line 2
    aget-byte v1, p1, v0
    if-nez v1, :L1
    add-int/lit8 v1, v0, 1
    aget-byte v1, p1, v1
    if-nez v1, :L1
    add-int/lit8 v1, v0, 2
    aget-byte v1, p1, v1
    if-nez v1, :L1
    add-int/lit8 v1, v0, 3
    aget-byte v1, p1, v1
    const/4 v2, 1
    if-ne v1, v2, :L1
    add-int/lit8 v1, v0, 4
    aget-byte v1, p1, v1
    and-int/lit8 v1, v1, 31
    const/4 v2, 5
    if-ne v1, v2, :L1
    goto :L2
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    sub-int v1, v0, p2
    if-lez v1, :L3
  .line 3
    new-array v2, v1, [B
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->a:[B
    const/4 v3, 0
  .line 4
    invoke-static { p1, p2, v2, v3, v1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    sub-int p2, p3, v1
  .line 5
    new-array v2, p2, [B
  .line 6
    invoke-static { p1, v0, v2, v3, p2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b:Ljava/util/Vector;
    invoke-virtual { p1, v2 }, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
  :L3
  .line 8
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "spsppsDataLen :"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, " I frame len: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sub-int/2addr p3, v1
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public a()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->a:[B
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b:Ljava/util/Vector;
    invoke-virtual { v0 }, Ljava/util/Vector;->size()I
    move-result v0
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public b()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->a:[B
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b:Ljava/util/Vector;
    invoke-virtual { v0 }, Ljava/util/Vector;->clear()V
    return-void
.end method

.method public c([BII)V
  .registers 7
    add-int/lit8 v0, p2, 4
  .line 1
    aget-byte v1, p1, v0
    and-int/lit8 v1, v1, 31
    const/4 v2, 7
    if-eq v1, v2, :L2
    aget-byte v1, p1, v0
    and-int/lit8 v1, v1, 31
    const/16 v2, 8
    if-ne v1, v2, :L0
    goto :L2
  :L0
  .line 2
    aget-byte v0, p1, v0
    and-int/lit8 v0, v0, 31
    const/4 v1, 5
    if-ne v0, v1, :L1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "new I frame coming, clear cache :"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b:Ljava/util/Vector;
    invoke-virtual { v1 }, Ljava/util/Vector;->size()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b:Ljava/util/Vector;
    invoke-virtual { v0 }, Ljava/util/Vector;->clear()V
  :L1
  .line 5
    new-array v0, p3, [B
    const/4 v1, 0
  .line 6
    invoke-static { p1, p2, v0, v1, p3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->b:Ljava/util/Vector;
    invoke-virtual { p1, v0 }, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    return-void
  :L2
    const-string v0, "is SPS PPS frame coming, save it!!"
  .line 8
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 9
    invoke-direct { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/AndroidH264view$c;->d([BII)V
    return-void
.end method
