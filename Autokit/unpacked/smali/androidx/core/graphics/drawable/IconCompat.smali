.class public Landroidx/core/graphics/drawable/IconCompat;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"

.field final static k:Landroid/graphics/PorterDuff$Mode;

.field public a:I

.field b:Ljava/lang/Object;

.field public c:[B

.field public d:Landroid/os/Parcelable;

.field public e:I

.field public f:I

.field public g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    sput-object v0, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;
    return-void
.end method

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
  .line 4
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;
    const/4 v1, 0
  .line 5
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I
  .line 6
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I
  .line 7
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;
  .line 8
    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;
    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;
  .line 9
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;
    return-void
.end method

.method private static b(Landroid/graphics/drawable/Icon;)I
  .catch Ljava/lang/IllegalAccessException; { :L1 .. :L2 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L1 .. :L2 } :L3
  .catch Ljava/lang/NoSuchMethodException; { :L1 .. :L2 } :L3
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/graphics/drawable/Icon;->getResId()I
    move-result p0
    return p0
  :L0
    const/4 v0, 0
  :L1
  .line 3
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    const-string v2, "getResId"
    new-array v3, v0, [Ljava/lang/Class;
    invoke-virtual { v1, v2, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
    new-array v2, v0, [Ljava/lang/Object;
    invoke-virtual { v1, p0, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Integer;
    invoke-virtual { p0 }, Ljava/lang/Integer;->intValue()I
    move-result p0
  :L2
    return p0
  :L3
    return v0
.end method

.method private static e(I)Ljava/lang/String;
  .registers 1
    packed-switch p0, :L6
    const-string p0, "UNKNOWN"
    return-object p0
  :L0
    const-string p0, "URI_MASKABLE"
    return-object p0
  :L1
    const-string p0, "BITMAP_MASKABLE"
    return-object p0
  :L2
    const-string p0, "URI"
    return-object p0
  :L3
    const-string p0, "DATA"
    return-object p0
  :L4
    const-string p0, "RESOURCE"
    return-object p0
  :L5
    const-string p0, "BITMAP"
    return-object p0
  :L6
  .packed-switch 1
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method

.method public a()I
  .registers 4
  .line 1
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    const/4 v1, -1
    if-ne v0, v1, :L0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    check-cast v0, Landroid/graphics/drawable/Icon;
    invoke-static { v0 }, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/graphics/drawable/Icon;)I
    move-result v0
    return v0
  :L0
  .line 3
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    const/4 v1, 2
    if-ne v0, v1, :L1
  .line 4
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I
    return v0
  :L1
  .line 5
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "called getResId() on "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public c()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;
    invoke-static { v0 }, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;
  .line 2
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    const/4 v1, 0
    packed-switch v0, :L8
  :L0
    goto :L7
  :L1
  .line 3
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    goto :L7
  :L2
  .line 4
    new-instance v0, Ljava/lang/String;
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
    const-string v3, "UTF-16"
    invoke-static { v3 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v3
    invoke-direct { v0, v2, v3 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
  .line 5
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    const/4 v3, 2
    if-ne v2, v3, :L7
  .line 6
    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;
    if-nez v2, :L7
  .line 7
    check-cast v0, Ljava/lang/String;
    const/4 v2, -1
    const-string v3, ":"
    invoke-virtual { v0, v3, v2 }, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    move-result-object v0
    aget-object v0, v0, v1
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;
    goto :L7
  :L3
  .line 8
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;
    if-eqz v0, :L4
  .line 9
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    goto :L7
  :L4
  .line 10
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    const/4 v2, 3
  .line 11
    iput v2, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
  .line 12
    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I
  .line 13
    array-length v0, v0
    iput v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I
    goto :L7
  :L5
  .line 14
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;
    if-eqz v0, :L6
  .line 15
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    goto :L7
  :L6
  .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "Invalid icon"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L7
    return-void
  :L8
  .packed-switch -1
    :L5
    :L0
    :L3
    :L2
    :L1
    :L2
    :L3
    :L2
  .end packed-switch
.end method

.method public d(Z)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;
    invoke-virtual { v0 }, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;
  .line 2
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    const-string v1, "UTF-16"
    packed-switch v0, :L9
  :L0
    goto :L8
  :L1
  .line 3
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    invoke-virtual { p1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v1 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object p1
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
    goto :L8
  :L2
  .line 4
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    check-cast p1, [B
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
    goto :L8
  :L3
  .line 5
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    check-cast p1, Ljava/lang/String;
    invoke-static { v1 }, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object p1
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
    goto :L8
  :L4
    if-eqz p1, :L5
  .line 6
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    check-cast p1, Landroid/graphics/Bitmap;
  .line 7
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 8
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v2, 90
    invoke-virtual { p1, v1, v2, v0 }, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
  .line 9
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object p1
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B
    goto :L8
  :L5
  .line 10
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    check-cast p1, Landroid/os/Parcelable;
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;
    goto :L8
  :L6
    if-nez p1, :L7
  .line 11
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    check-cast p1, Landroid/os/Parcelable;
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;
    goto :L8
  :L7
  .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "Can't serialize Icon created with IconCompat#createFromIcon"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L8
    return-void
  :L9
  .packed-switch -1
    :L6
    :L0
    :L4
    :L3
    :L2
    :L1
    :L4
    :L1
  .end packed-switch
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    const/4 v1, -1
    if-ne v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    invoke-static { v0 }, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "Icon(typ="
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    invoke-static { v1 }, Landroidx/core/graphics/drawable/IconCompat;->e(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 4
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I
    packed-switch v1, :L8
    goto :L5
  :L1
    const-string v1, " uri="
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto :L5
  :L2
    const-string v1, " len="
  .line 6
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  .line 7
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I
    if-eqz v1, :L5
    const-string v1, " off="
  .line 8
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    goto :L5
  :L3
    const-string v1, " pkg="
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;
  .line 10
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " id="
  .line 11
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
  .line 12
    invoke-virtual { p0 }, Landroidx/core/graphics/drawable/IconCompat;->a()I
    move-result v3
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v1, v2
    const-string v2, "0x%08x"
    invoke-static { v2, v1 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L5
  :L4
    const-string v1, " size="
  .line 13
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    check-cast v1, Landroid/graphics/Bitmap;
  .line 14
    invoke-virtual { v1 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
  .line 15
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;
    check-cast v1, Landroid/graphics/Bitmap;
  .line 16
    invoke-virtual { v1 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  :L5
  .line 17
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;
    if-eqz v1, :L6
    const-string v1, " tint="
  .line 18
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 19
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  :L6
  .line 20
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;
    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;
    if-eq v1, v2, :L7
    const-string v1, " mode="
  .line 21
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  :L7
    const-string v1, ")"
  .line 22
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 23
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L8
  .packed-switch 1
    :L4
    :L3
    :L2
    :L1
    :L4
    :L1
  .end packed-switch
.end method
