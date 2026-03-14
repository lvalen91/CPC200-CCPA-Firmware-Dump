.class public Lcn/manstep/phonemirrorBox/s0/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
  .catchall { :L0 .. :L7 } :L11
  .catchall { :L8 .. :L10 } :L11
  .registers 7
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
    if-eqz p0, :L11
  .line 9
    array-length v1, p0
    const/4 v2, 0
  :L6
    if-ge v2, v1, :L11
    aget-object v3, p0, v2
  .line 10
    invoke-virtual { v3 }, Landroid/content/pm/Signature;->toByteArray()[B
    move-result-object v3
    const-string v4, "X.509"
  .line 11
    invoke-static { v4 }, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    move-result-object v4
  .line 12
    new-instance v5, Ljava/io/ByteArrayInputStream;
    invoke-direct { v5, v3 }, Ljava/io/ByteArrayInputStream;-><init>([B)V
    invoke-virtual { v4, v5 }, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    move-result-object v3
    check-cast v3, Ljava/security/cert/X509Certificate;
  .line 13
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v4
  :L7
    const-string v5, "\n"
    if-lez v4, :L9
  :L8
  .line 14
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L9
  .line 15
    invoke-virtual { v3 }, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;
    move-result-object v4
    invoke-interface { v4 }, Ljava/security/Principal;->getName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 16
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  .line 17
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  .line 18
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/security/cert/X509Certificate;->getType()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 19
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  :L10
    add-int/lit8 v2, v2, 1
    goto :L6
  :L11
  .line 20
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
  .catch Ljava/lang/Exception; { :L0 .. :L8 } :L9
  .catch Ljava/lang/Error; { :L0 .. :L8 } :L9
  .registers 7
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
    if-eqz p0, :L9
  .line 9
    array-length v1, p0
    const/4 v2, 0
  :L6
    if-ge v2, v1, :L9
    aget-object v3, p0, v2
  .line 10
    invoke-virtual { v3 }, Landroid/content/pm/Signature;->toByteArray()[B
    move-result-object v3
    const-string v4, "X.509"
  .line 11
    invoke-static { v4 }, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    move-result-object v4
  .line 12
    new-instance v5, Ljava/io/ByteArrayInputStream;
    invoke-direct { v5, v3 }, Ljava/io/ByteArrayInputStream;-><init>([B)V
  .line 13
    invoke-virtual { v4, v5 }, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    move-result-object v3
    check-cast v3, Ljava/security/cert/X509Certificate;
  .line 14
    invoke-virtual { v3 }, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;
    move-result-object v3
    const/16 v4, 16
  .line 15
    invoke-virtual { v3, v4 }, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    move-result-object v3
  .line 16
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v4
    if-lez v4, :L7
    const-string v4, ","
  .line 17
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L7
  .line 18
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L8
    add-int/lit8 v2, v2, 1
    goto :L6
  :L9
  .line 19
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method
