.class public Landroidx/core/content/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static a:Ljava/lang/Object;

.field private static b:Landroid/util/TypedValue;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    sput-object v0, Landroidx/core/content/a;->a:Ljava/lang/Object;
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
  .registers 4
    if-eqz p1, :L0
  .line 1
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v0
    invoke-static { }, Landroid/os/Process;->myUid()I
    move-result v1
    invoke-virtual { p0, p1, v0, v1 }, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I
    move-result p0
    return p0
  :L0
  .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "permission is null"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static b(Landroid/content/Context;I)I
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/content/Context;->getColor(I)I
    move-result p0
    return p0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getColor(I)I
    move-result p0
    return p0
.end method

.method public static c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
.end method

.method public static d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
  .catchall { :L2 .. :L4 } :L5
  .catchall { :L6 .. :L7 } :L5
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p0
    return-object p0
  :L0
    const/16 v1, 16
    if-lt v0, v1, :L1
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p0
    return-object p0
  :L1
  .line 4
    sget-object v0, Landroidx/core/content/a;->a:Ljava/lang/Object;
    monitor-enter v0
  :L2
  .line 5
    sget-object v1, Landroidx/core/content/a;->b:Landroid/util/TypedValue;
    if-nez v1, :L3
  .line 6
    new-instance v1, Landroid/util/TypedValue;
    invoke-direct { v1 }, Landroid/util/TypedValue;-><init>()V
    sput-object v1, Landroidx/core/content/a;->b:Landroid/util/TypedValue;
  :L3
  .line 7
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget-object v2, Landroidx/core/content/a;->b:Landroid/util/TypedValue;
    const/4 v3, 1
    invoke-virtual { v1, p1, v2, v3 }, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
  .line 8
    sget-object p1, Landroidx/core/content/a;->b:Landroid/util/TypedValue;
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I
  .line 9
    monitor-exit v0
  :L4
  .line 10
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p0
    return-object p0
  :L5
    move-exception p0
  :L6
  .line 11
    monitor-exit v0
  :L7
    throw p0
.end method

.method public static e(Landroid/content/Context;)[Ljava/io/File;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;
    move-result-object p0
    return-object p0
  :L0
    const/4 v0, 1
    new-array v0, v0, [Ljava/io/File;
    const/4 v1, 0
  .line 3
    invoke-virtual { p0 }, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    move-result-object p0
    aput-object p0, v0, v1
    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    move-result-object p0
    return-object p0
  :L0
    const/4 v0, 1
    new-array v0, v0, [Ljava/io/File;
    const/4 v1, 0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    move-result-object p0
    aput-object p0, v0, v1
    return-object v0
.end method

.method public static g(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V
  :L1
    const/4 p0, 1
    return p0
.end method

.method public static h(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L1
    return-void
.end method
