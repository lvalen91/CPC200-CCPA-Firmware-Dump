.class public final Landroidx/core/content/b;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
  .registers 6
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I
    move-result p2
    const/4 v0, -1
    if-ne p2, v0, :L0
    return v0
  :L0
  .line 2
    invoke-static { p1 }, Landroidx/core/app/d;->b(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    const/4 p2, 0
    if-nez p1, :L1
    return p2
  :L1
    if-nez p4, :L4
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object p4
    invoke-virtual { p4, p3 }, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    move-result-object p3
    if-eqz p3, :L3
  .line 4
    array-length p4, p3
    if-gtz p4, :L2
    goto :L3
  :L2
  .line 5
    aget-object p4, p3, p2
    goto :L4
  :L3
    return v0
  :L4
  .line 6
    invoke-static { p0, p1, p4 }, Landroidx/core/app/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    move-result p0
    if-eqz p0, :L5
    const/4 p0, -2
    return p0
  :L5
    return p2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
  .registers 5
  .line 1
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v0
  .line 2
    invoke-static { }, Landroid/os/Process;->myUid()I
    move-result v1
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v2
  .line 3
    invoke-static { p0, p1, v0, v1, v2 }, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    move-result p0
    return p0
.end method
