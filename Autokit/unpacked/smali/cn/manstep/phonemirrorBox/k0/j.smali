.class public Lcn/manstep/phonemirrorBox/k0/j;
.super Landroid/app/Dialog;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.source "SourceFile"

.field private b:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/g0/a;",
      ">;"
    }
  .end annotation
.end field

.field private c:Lcn/manstep/phonemirrorBox/d0/f;

.field private d:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private e:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private f:Landroid/content/pm/PackageManager;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
    const v0, 2131755249
  .line 1
    invoke-direct { p0, p1, v0 }, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/j;->d:Ljava/lang/ref/WeakReference;
    const-string v0, "android.permission.RECORD_AUDIO"
  .line 3
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/k0/j;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/j;->e:Ljava/util/List;
  .line 4
    invoke-virtual { p1 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/j;->f:Landroid/content/pm/PackageManager;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/k0/j;)Ljava/lang/ref/WeakReference;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/j;->d:Ljava/lang/ref/WeakReference;
    return-object p0
.end method

.method private b(Ljava/lang/String;)V
  .catch Landroid/content/pm/PackageManager$NameNotFoundException; { :L0 .. :L1 } :L2
  .registers 6
    const/4 v0, 0
  :L0
  .line 1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/j;->f:Landroid/content/pm/PackageManager;
    const/4 v2, 0
    invoke-virtual { v1, p1, v2 }, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    move-result-object v1
  .line 2
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/k0/j;->f:Landroid/content/pm/PackageManager;
    invoke-virtual { v1, v2 }, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 3
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/k0/j;->f:Landroid/content/pm/PackageManager;
    invoke-virtual { v2, p1 }, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
  .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/k0/j;->f:Landroid/content/pm/PackageManager;
    invoke-virtual { v1, v2 }, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    move-result-object v1
    invoke-interface { v1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
  :L1
    goto :L3
  :L2
    move-exception v1
  .line 5
    invoke-virtual { v1 }, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    const-string v1, ""
  :L3
  .line 6
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :L4
    move-object v1, p1
  :L4
  .line 7
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/k0/j;->b:Ljava/util/List;
    new-instance v3, Lcn/manstep/phonemirrorBox/g0/a;
    invoke-direct { v3, v1, p1, v0 }, Lcn/manstep/phonemirrorBox/g0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    invoke-interface { v2, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .catch Landroid/content/pm/PackageManager$NameNotFoundException; { :L1 .. :L3 } :L5
  .registers 13
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    invoke-virtual { p1 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    const/4 v2, 0
  .line 3
    invoke-virtual { v1, v2 }, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    move-result-object v3
    const/4 v4, 0
  :L0
  .line 4
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v5
    add-int/lit8 v5, v5, -1
    if-ge v4, v5, :L7
  .line 5
    invoke-interface { v3, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroid/content/pm/PackageInfo;
  :L1
  .line 6
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    const/16 v7, 4096
    invoke-virtual { v1, v6, v7 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v6
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    if-eqz v6, :L6
  .line 7
    array-length v7, v6
    const/4 v8, 0
  :L2
    if-ge v8, v7, :L6
    aget-object v9, v6, v8
  .line 8
    invoke-virtual { v9, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :L4
  .line 9
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "RecordAppListDialog,getPackagesByPermission: "
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const-string v6, "com.android.phone"
  .line 10
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    invoke-virtual { v6, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :L6
  .line 11
    invoke-virtual { p1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v6
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    invoke-virtual { v6, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :L6
    const-string v6, "com.android.gallery3d"
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
  .line 12
    invoke-virtual { v6, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :L6
  .line 13
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    invoke-interface { v0, v5 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L3
    goto :L6
  :L4
    add-int/lit8 v8, v8, 1
    goto :L2
  :L5
    move-exception v5
  .line 14
    invoke-virtual { v5 }, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
  :L6
    add-int/lit8 v4, v4, 1
    goto :L0
  :L7
    return-object v0
.end method

.method private e()V
  .registers 4
  .line 1
    new-instance v0, Ljava/util/LinkedList;
    invoke-direct { v0 }, Ljava/util/LinkedList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/j;->b:Ljava/util/List;
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/d0/f;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/j;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/k0/j;->b:Ljava/util/List;
    invoke-direct { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/d0/f;-><init>(Landroid/content/Context;Ljava/util/List;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/j;->c:Lcn/manstep/phonemirrorBox/d0/f;
    const v0, 2131296596
  .line 3
    invoke-virtual { p0, v0 }, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ListView;
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/j;->c:Lcn/manstep/phonemirrorBox/d0/f;
    invoke-virtual { v0, v1 }, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
  .line 5
    invoke-virtual { v0, p0 }, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    return-void
.end method

.method private f()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 20
    if-le v0, v1, :L0
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k0/j;->g()V
    goto :L1
  :L0
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k0/j;->h()V
  :L1
    return-void
.end method

.method private g()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L9
  .catch Ljava/io/IOException; { :L7 .. :L8 } :L9
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/ProcessBuilder;
    const/4 v1, 3
    new-array v1, v1, [Ljava/lang/String;
    const/4 v2, 0
    const-string v3, "sh"
    aput-object v3, v1, v2
    const-string v2, "-c"
    const/4 v3, 1
    aput-object v2, v1, v3
    const/4 v2, 2
    const-string v4, "ps"
    aput-object v4, v1, v2
    invoke-direct { v0, v1 }, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0, v3 }, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
  :L0
  .line 3
    invoke-virtual { v0 }, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    move-result-object v0
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 4
    invoke-virtual { v0 }, Ljava/io/IOException;->printStackTrace()V
    const/4 v0, 0
  :L3
    if-nez v0, :L4
    return-void
  :L4
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/j;->b:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->clear()V
  .line 6
    invoke-virtual { v0 }, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v0
  .line 7
    new-instance v1, Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/InputStreamReader;
    invoke-direct { v2, v0 }, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct { v1, v2 }, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
  :L5
  .line 8
    invoke-virtual { v1 }, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v0
  :L6
    if-nez v0, :L7
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/j;->c:Lcn/manstep/phonemirrorBox/d0/f;
    invoke-virtual { v0 }, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    return-void
  :L7
  .line 10
    invoke-virtual { v0 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
    const-string v2, "\\s+"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
  .line 11
    array-length v2, v0
    if-lez v2, :L5
  .line 12
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/k0/j;->e:Ljava/util/List;
    array-length v4, v0
    sub-int/2addr v4, v3
    aget-object v4, v0, v4
    invoke-interface { v2, v4 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L5
  .line 13
    array-length v2, v0
    sub-int/2addr v2, v3
    aget-object v0, v0, v2
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/k0/j;->b(Ljava/lang/String;)V
  :L8
    goto :L5
  :L9
    move-exception v0
  .line 14
    invoke-virtual { v0 }, Ljava/io/IOException;->printStackTrace()V
    goto :L5
.end method

.method private h()V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/j;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    const-string v1, "activity"
    invoke-virtual { v0, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/ActivityManager;
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    move-result-object v0
    if-eqz v0, :L1
  .line 3
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v1
    if-lez v1, :L1
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/j;->b:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->clear()V
  .line 5
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;
  .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/k0/j;->e:Ljava/util/List;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    invoke-interface { v2, v3 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
  .line 7
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/k0/j;->b(Ljava/lang/String;)V
    goto :L0
  :L1
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/j;->c:Lcn/manstep/phonemirrorBox/d0/f;
    invoke-virtual { v0 }, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    new-instance v0, Landroid/content/Intent;
    invoke-direct { v0 }, Landroid/content/Intent;-><init>()V
    const/high16 v1, 4096
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"
  .line 3
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    const-string v1, "package"
    const/4 v2, 0
  .line 4
    invoke-static { v1, p2, v2 }, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    move-result-object p2
    invoke-virtual { v0, p2 }, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
  :L0
  .line 5
    invoke-virtual { p1, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 6
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "RecordAppListDialog,getAppDetailSetting: \n"
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    return-void
.end method

.method public dismiss()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/app/Dialog;->dismiss()V
    return-void
.end method

.method public hide()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/app/Dialog;->hide()V
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
    const p1, 2131493015
  .line 2
    invoke-virtual { p0, p1 }, Landroid/app/Dialog;->setContentView(I)V
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k0/j;->e()V
    const p1, 2131296557
  .line 4
    invoke-virtual { p0, p1 }, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageView;
  .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/j$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/k0/j$a;-><init>(Lcn/manstep/phonemirrorBox/k0/j;)V
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/widget/AdapterView<",
      "*>;",
      "Landroid/view/View;",
      "IJ)V"
    }
  .end annotation
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/j;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/content/Context;
    const-string p2, "activity"
    invoke-virtual { p1, p2 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/app/ActivityManager;
    if-eqz p1, :L3
  :L0
  .line 2
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/k0/j;->b:Ljava/util/List;
    invoke-interface { p2, p3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Lcn/manstep/phonemirrorBox/g0/a;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/g0/a;->c()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 3
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p4, "RecordAppListDialog, onItemClick: \n"
    invoke-virtual { p2, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/j;->d:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/content/Context;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/k0/j;->b:Ljava/util/List;
    invoke-interface { p2, p3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Lcn/manstep/phonemirrorBox/g0/a;
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/g0/a;->c()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/k0/j;->d(Landroid/content/Context;Ljava/lang/String;)V
    return-void
.end method

.method public onWindowFocusChanged(Z)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Dialog;->onWindowFocusChanged(Z)V
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k0/j;->f()V
  .line 3
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "RecordAppListDialog, onWindowFocusChanged: app count "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/j;->b:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/j;->b:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result p1
    if-nez p1, :L0
  .line 5
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/k0/j;->hide()V
  :L0
    return-void
.end method

.method public show()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/app/Dialog;->show()V
    return-void
.end method
