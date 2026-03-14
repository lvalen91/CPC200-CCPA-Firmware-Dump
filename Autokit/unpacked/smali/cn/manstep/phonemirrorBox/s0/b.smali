.class public Lcn/manstep/phonemirrorBox/s0/b;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/Exception; { :L0 .. :L11 } :L12
  .catch Ljava/lang/Error; { :L0 .. :L11 } :L12
  .registers 13
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object p0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 28
    if-lt v2, v3, :L1
    const/high16 v2, 2048
    goto :L2
  :L1
    const/16 v2, 64
  :L2
    invoke-virtual { v1, p0, v2 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object p0
  .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v1, v3, :L4
  .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
  .line 5
    invoke-virtual { p0 }, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z
    move-result v1
    if-eqz v1, :L3
  .line 6
    invoke-virtual { p0 }, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;
    move-result-object p0
    goto :L5
  :L3
  .line 7
    invoke-virtual { p0 }, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;
    move-result-object p0
    goto :L5
  :L4
  .line 8
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
  :L5
    if-eqz p0, :L12
  .line 9
    array-length v1, p0
    const/4 v2, 0
    const/4 v3, 0
  :L6
    if-ge v3, v1, :L12
    aget-object v4, p0, v3
  .line 10
    invoke-virtual { v4 }, Landroid/content/pm/Signature;->toByteArray()[B
    move-result-object v4
  .line 11
    invoke-static { p1 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object v5
  .line 12
    invoke-virtual { v5, v4 }, Ljava/security/MessageDigest;->digest([B)[B
    move-result-object v4
  .line 13
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
  .line 14
    array-length v6, v4
    const/4 v7, 0
  :L7
    if-ge v7, v6, :L9
    aget-byte v8, v4, v7
    and-int/lit16 v8, v8, 255
  .line 15
    invoke-static { v8 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v8
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { v8, v9 }, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v8
  .line 16
    invoke-virtual { v8 }, Ljava/lang/String;->length()I
    move-result v9
    const/4 v10, 1
    if-ne v9, v10, :L8
    const-string v9, "0"
  .line 17
    invoke-virtual { v5, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L8
  .line 18
    invoke-virtual { v5, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v7, v7, 1
    goto :L7
  :L9
  .line 19
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v4
    if-lez v4, :L10
    const-string v4, ","
  .line 20
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L10
  .line 21
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L11
    add-int/lit8 v3, v3, 1
    goto :L6
  :L12
  .line 22
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method
