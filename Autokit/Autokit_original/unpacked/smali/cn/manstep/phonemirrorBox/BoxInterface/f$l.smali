.class Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = "l"
.end annotation

.field private a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

.field private b:Ljava/nio/ByteBuffer;

.field private c:Ljava/nio/ByteBuffer;

.field final synthetic d:Lcn/manstep/phonemirrorBox/BoxInterface/f;

.method public constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
  .line 3
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->m()I
    move-result p1
    invoke-static { p1 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
  .line 4
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    const/high16 p1, 16
  .line 5
    invoke-static { p1 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c:Ljava/nio/ByteBuffer;
  .line 6
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    return-void
.end method

.method public constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .registers 4
  .line 7
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 8
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
  .line 9
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->m()I
    move-result p1
    invoke-static { p1 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
  .line 10
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
  .line 11
    invoke-static { p2 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c:Ljava/nio/ByteBuffer;
  .line 12
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Ljava/nio/ByteBuffer;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c:Ljava/nio/ByteBuffer;
    return-object p0
.end method

.method private i(Z)V
  .catch Ljava/lang/Exception; { :L2 .. :L8 } :L9
  .registers 10
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->e(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    move-result v1
    if-eqz v1, :L10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->e(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v1
    if-nez v1, :L0
    goto/16 :L10
  :L0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v1
    if-eqz p1, :L1
    const/4 v2, 6
    if-eq v1, v2, :L1
    const/4 v2, 7
    if-eq v1, v2, :L1
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a()V
  :L1
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->b()Z
    move-result v1
    if-eqz v1, :L10
    const/16 v1, 16
  :L2
    new-array v2, v1, [B
    const/4 v3, 0
    const/4 v4, 0
  :L3
    if-ge v4, v1, :L4
    const-string v5, "SkBRDy3gmrw1ieH0"
  .line 6
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q(Lcn/manstep/phonemirrorBox/BoxInterface/f;)I
    move-result v6
    add-int/2addr v6, v4
    rem-int/2addr v6, v1
    invoke-virtual { v5, v6 }, Ljava/lang/String;->charAt(I)C
    move-result v5
    int-to-byte v5, v5
    aput-byte v5, v2, v4
    add-int/lit8 v4, v4, 1
    goto :L3
  :L4
    new-array v4, v1, [B
  .line 7
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q(Lcn/manstep/phonemirrorBox/BoxInterface/f;)I
    move-result v5
    and-int/lit16 v5, v5, 255
    int-to-byte v5, v5
    const/4 v6, 1
    aput-byte v5, v4, v6
    const/4 v5, 4
  .line 8
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q(Lcn/manstep/phonemirrorBox/BoxInterface/f;)I
    move-result v7
    shr-int/lit8 v7, v7, 8
    and-int/lit16 v7, v7, 255
    int-to-byte v7, v7
    aput-byte v7, v4, v5
    const/16 v5, 9
  .line 9
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q(Lcn/manstep/phonemirrorBox/BoxInterface/f;)I
    move-result v7
    shr-int/lit8 v1, v7, 16
    and-int/lit16 v1, v1, 255
    int-to-byte v1, v1
    aput-byte v1, v4, v5
    const/16 v1, 12
  .line 10
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q(Lcn/manstep/phonemirrorBox/BoxInterface/f;)I
    move-result v5
    shr-int/lit8 v5, v5, 24
    and-int/lit16 v5, v5, 255
    int-to-byte v5, v5
    aput-byte v5, v4, v1
  .line 11
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v1
    if-nez p1, :L5
  .line 12
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v1
    new-array v1, v1, [B
  .line 13
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v5
    invoke-static { v5, v3, v1, v3, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L5
  .line 14
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;
    const-string v7, "AES"
    invoke-direct { v5, v2, v7 }, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
  .line 15
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct { v2, v4 }, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    const-string v4, "AES/CFB/NoPadding"
  .line 16
    invoke-static { v4 }, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    move-result-object v4
    if-eqz p1, :L6
  .line 17
    invoke-virtual { v4, v6, v5, v2 }, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    goto :L7
  :L6
    const/4 p1, 2
  .line 18
    invoke-virtual { v4, p1, v5, v2 }, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
  :L7
  .line 19
    invoke-virtual { v4, v1 }, Ljavax/crypto/Cipher;->doFinal([B)[B
    move-result-object p1
  .line 20
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v1
    invoke-static { p1, v3, v1, v3, v0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  :L8
    goto :L10
  :L9
    move-exception p1
  .line 21
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "handleCryptData: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "BoxProtocol"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L10
    return-void
.end method

.method public c()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->e(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c:Ljava/nio/ByteBuffer;
    invoke-virtual { v1 }, Ljava/nio/ByteBuffer;->capacity()I
    move-result v1
    if-le v0, v1, :L0
    const-string v0, "Out of dataBuffer.capacity"
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->e(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v0
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c:Ljava/nio/ByteBuffer;
  .line 4
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { v0, v1 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
  :L0
    return-void
.end method

.method public d()Ljava/nio/ByteBuffer;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c:Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public e()[B
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c:Ljava/nio/ByteBuffer;
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object v0
    return-object v0
.end method

.method public f()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->e(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v0
    return v0
.end method

.method public g()[B
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object v0
    return-object v0
.end method

.method public h()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->m()I
    move-result v0
    return v0
.end method

.method public j()V
  .registers 4
    const/4 v0, 1
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->i(Z)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->g(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v1
    const/4 v2, 0
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->e(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v1
    const/4 v2, 4
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v1
    const/16 v2, 8
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->k(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v1
    const/16 v2, 12
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    return-void
.end method

.method public k()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->i(Z)V
    return-void
.end method

.method public l()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->h(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
    const/4 v2, 4
    invoke-virtual { v1, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
    const/16 v2, 8
    invoke-virtual { v1, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b:Ljava/nio/ByteBuffer;
    const/16 v2, 12
    invoke-virtual { v1, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->l(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
    return-void
.end method
