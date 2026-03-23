.class public Lcn/manstep/phonemirrorBox/MyApplication;
.super Landroid/app/Application;
.source "SourceFile"

.field private static d:Lcn/manstep/phonemirrorBox/MyApplication;

.field public b:J

.field public c:Landroid/util/DisplayMetrics;

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/app/Application;-><init>()V
    const-wide/16 v0, 0
  .line 2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/MyApplication;->b:J
    return-void
.end method

.method private a()V
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->h()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroid/content/ComponentName;
    invoke-virtual { p0 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    const-class v2, Lcn/manstep/phonemirrorBox/ForegroundService;
    invoke-direct { v0, v1, v2 }, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 3
    invoke-virtual { p0 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    const/4 v2, 2
    const/4 v3, 1
  .line 4
    invoke-virtual { v1, v0, v2, v3 }, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
  :L0
    return-void
.end method

.method public static b()Lcn/manstep/phonemirrorBox/MyApplication;
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/MyApplication;->d:Lcn/manstep/phonemirrorBox/MyApplication;
    return-object v0
.end method

.method private d()V
  .registers 6
    const-string v0, "ro.product.manufacturer"
    const-string v1, ""
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
  .line 3
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
  :L0
    const-string v2, "ro.board.platform"
  .line 4
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 5
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
  .line 6
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
    const-string v4, "ATC"
  .line 7
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const-string v0, "ac8317"
  .line 8
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const-string v0, "AC821X"
  .line 9
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const-string v0, "CA7054"
  .line 10
    invoke-virtual { v3, v0 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 1
  .line 11
    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->u:Z
  .line 12
    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->v:Z
  :L1
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    sget-boolean v1, Lcn/manstep/phonemirrorBox/p;->A:Z
    const-string v2, "BG_CONN"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/MyApplication;->i(Z)V
    return-void
.end method

.method public static h()Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 11
  :L0
  .line 1
    new-instance v0, Ljava/lang/Exception;
    const-string v1, "Exception"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
    move-exception v0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
    move-result-object v0
    array-length v1, v0
    const/4 v2, 0
    const/4 v3, 0
  :L2
    const/4 v4, 1
    if-ge v3, v1, :L6
    aget-object v5, v0, v3
  .line 3
    invoke-virtual { v5 }, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
    move-result-object v6
    const-string v7, "de.robv.android.xposed.XposedBridge"
    invoke-virtual { v6, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L4
  .line 4
    invoke-virtual { v5 }, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
    move-result-object v6
    const-string v8, "main"
    invoke-virtual { v6, v8 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L4
    const-string v0, "MyApplication,isXposedHookByStack: Xposed is active on the device."
  .line 5
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    const/4 v2, 1
    goto :L6
  :L4
  .line 6
    invoke-virtual { v5 }, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v6, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L5
  .line 7
    invoke-virtual { v5 }, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
    move-result-object v5
    const-string v6, "handleHookedMethod"
    invoke-virtual { v5, v6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L5
    const-string v0, "MyApplication,isXposedHookByStack: A method on the stack trace has been hooked using Xposed."
  .line 8
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L3
  :L5
    add-int/lit8 v3, v3, 1
    goto :L2
  :L6
    return v2
.end method

.method private k()V
  .registers 5
  .line 1
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/MyApplication$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MyApplication$a;-><init>(Lcn/manstep/phonemirrorBox/MyApplication;)V
    const-wide/16 v2, 1500
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V
  .line 2
    invoke-static { p0 }, Lc/m/a;->l(Landroid/content/Context;)V
    return-void
.end method

.method public c()[I
  .registers 6
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->b()I
    move-result v0
    const/4 v1, -1
    if-eq v0, v1, :L0
    goto :L1
  :L0
    const/4 v0, -1
  :L1
    const/4 v2, 4
    const/4 v3, 1
    if-ne v0, v1, :L5
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/x;->i()Z
    move-result v0
    if-nez v0, :L2
  .line 3
    invoke-virtual { p0 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034116
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-nez v0, :L3
    goto :L4
  :L2
  .line 4
    invoke-virtual { p0 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034132
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-nez v0, :L4
  :L3
    const/4 v0, 1
    goto :L5
  :L4
    const/4 v0, 4
  :L5
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v2, "AndroidMode"
    invoke-virtual { v1, v2, v0 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v2, "iPhoneMode"
    const/4 v4, 2
    invoke-virtual { v1, v2, v4 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
    new-array v2, v4, [I
    const/4 v4, 0
    aput v1, v2, v4
    aput v0, v2, v3
    return-object v2
.end method

.method public e()V
  .registers 8
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "ATP"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :L2
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "CloseLog"
    const/4 v3, 1
    invoke-virtual { v0, v1, v3 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    sput-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static/range { v0 .. v0 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->k(Landroid/content/Context;)Z
  :L0
    const-string v0, "\n\n"
  .line 4
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MyApplication,onCreate:===========onCreate==========="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/app/Application;->getPackageName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "-"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "2025.03.19.1126"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ",PID="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "initLog: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v3
    invoke-static/range { v3 .. v3 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v3
    const-string v4, "com.android.systemui"
    const-string v5, "com.android.systemui.usb.UsbPermissionActivity"
    invoke-static { v3, v4, v5 }, Lcn/manstep/phonemirrorBox/util/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    move-result v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v3, "MyApplication"
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 7
    invoke-virtual { p0 }, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
  .line 8
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 9
    new-instance v4, Ljava/io/File;
    invoke-direct { v4, v0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 10
    invoke-virtual { v4 }, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :L2
    invoke-virtual { v4 }, Ljava/io/File;->isDirectory()Z
    move-result v0
    if-eqz v0, :L2
  .line 11
    invoke-virtual { v4 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v0
    if-eqz v0, :L2
  .line 12
    array-length v4, v0
  :L1
    if-ge v2, v4, :L2
    aget-object v5, v0, v2
  .line 13
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static { v3, v5 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
    add-int/lit8 v2, v2, 1
    goto :L1
  :L2
    return-void
.end method

.method public f()V
  .registers 11
    const-string v0, "window"
  .line 1
    invoke-virtual { p0, v0 }, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowManager;
  .line 2
    new-instance v1, Landroid/util/DisplayMetrics;
    invoke-direct { v1 }, Landroid/util/DisplayMetrics;-><init>()V
  .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 17
    if-lt v2, v3, :L0
  .line 4
    invoke-interface { v0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v2
    invoke-virtual { v2, v1 }, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    goto :L1
  :L0
  .line 5
    invoke-interface { v0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v2
    invoke-virtual { v2, v1 }, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
  :L1
  .line 6
    new-instance v2, Landroid/util/DisplayMetrics;
    invoke-direct { v2 }, Landroid/util/DisplayMetrics;-><init>()V
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/MyApplication;->c:Landroid/util/DisplayMetrics;
  .line 7
    invoke-virtual { v2, v1 }, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V
  .line 8
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    sput v2, Lcn/manstep/phonemirrorBox/p;->k:I
  .line 9
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    sput v2, Lcn/manstep/phonemirrorBox/p;->l:I
  .line 10
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I
    sput v2, Lcn/manstep/phonemirrorBox/p;->p:I
  .line 11
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F
    sput v2, Lcn/manstep/phonemirrorBox/p;->q:F
  .line 12
    invoke-interface { v0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v0
    invoke-virtual { v0, v1 }, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
  .line 13
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    sput v0, Lcn/manstep/phonemirrorBox/p;->n:I
  .line 14
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    sput v0, Lcn/manstep/phonemirrorBox/p;->o:I
  .line 15
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "initSize: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v1, Lcn/manstep/phonemirrorBox/p;->k:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ","
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lcn/manstep/phonemirrorBox/p;->n:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v1, Lcn/manstep/phonemirrorBox/p;->o:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MyApplication"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    sget v1, Lcn/manstep/phonemirrorBox/p;->k:I
    sget v2, Lcn/manstep/phonemirrorBox/p;->l:I
    sget v3, Lcn/manstep/phonemirrorBox/p;->p:I
    invoke-virtual { v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/u;->m0(III)V
  .line 17
    sget v4, Lcn/manstep/phonemirrorBox/p;->k:I
    sget v5, Lcn/manstep/phonemirrorBox/p;->l:I
    sget v6, Lcn/manstep/phonemirrorBox/p;->n:I
    sget v7, Lcn/manstep/phonemirrorBox/p;->o:I
  .line 18
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "vwh"
    const-string v2, ""
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
  .line 19
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const/4 v1, 0
    const-string v2, "vandroidautoh"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v9
  .line 20
    invoke-static/range { v4 .. v9 }, Lcn/manstep/phonemirrorBox/c0;->j(IIIILjava/lang/String;I)Lcn/manstep/phonemirrorBox/c0;
  .line 21
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const/16 v1, 30
    const-string v2, "fps"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    sput v0, Lcn/manstep/phonemirrorBox/p;->C:I
    return-void
.end method

.method public g()Z
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/e0/a;->a()Lcn/manstep/phonemirrorBox/e0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/e0/a;->b()Z
    move-result v0
    return v0
.end method

.method public i(Z)V
  .registers 7
  .line 1
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->A:Z
  .line 2
    new-instance v0, Landroid/content/ComponentName;
    invoke-virtual { p0 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    const-class v2, Lcn/manstep/phonemirrorBox/Main1Activity;
    invoke-direct { v0, v1, v2 }, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 3
    invoke-virtual { p0 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
  .line 4
    invoke-virtual { v1, v0 }, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    move-result v2
    const/4 v3, 1
    const/4 v4, 2
    if-nez p1, :L0
    if-eq v2, v4, :L1
  .line 5
    invoke-virtual { v1, v0, v4, v3 }, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    goto :L1
  :L0
    if-ne v2, v4, :L1
  .line 6
    invoke-virtual { v1, v0, v3, v3 }, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
  :L1
    return-void
.end method

.method public j()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/MyApplication;->c()[I
    move-result-object v0
    const/4 v1, 1
  .line 2
    aget v1, v0, v1
    const/4 v2, 0
  .line 3
    aget v0, v0, v2
  .line 4
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V
  .line 5
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
  .line 6
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "setWorkMode\uff1a androidMode="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", iPhoneMode="
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "MyApplication"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
  .line 8
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V
  :L0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MyApplication,onConfigurationChanged: orientation = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", uiMode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public onCreate()V
  .registers 7
  .line 1
    invoke-super { p0 }, Landroid/app/Application;->onCreate()V
  .line 2
    sput-object p0, Lcn/manstep/phonemirrorBox/MyApplication;->d:Lcn/manstep/phonemirrorBox/MyApplication;
  .line 3
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v0
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/MyApplication;->b:J
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/e0/a;->a()Lcn/manstep/phonemirrorBox/e0/a;
    move-result-object v0
    invoke-virtual { p0, v0 }, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/b0;->p(Landroid/content/Context;)V
  .line 6
    invoke-virtual { p0 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v2, "densityd"
    const/4 v3, 0
    invoke-virtual { v1, v2, v3 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
    if-lez v1, :L0
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v2
    const-string v4, "density"
    const/high16 v5, 16384
    invoke-virtual { v2, v4, v5 }, Lcn/manstep/phonemirrorBox/b0;->l(Ljava/lang/String;F)F
    move-result v2
    iput v2, v0, Landroid/util/DisplayMetrics;->density:F
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v2
    const-string v4, "sdensity"
    invoke-virtual { v2, v4, v5 }, Lcn/manstep/phonemirrorBox/b0;->l(Ljava/lang/String;F)F
    move-result v2
    iput v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F
  .line 10
    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I
  :L0
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "NightMode"
    const/4 v2, 2
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L1
  .line 12
    invoke-static { v2 }, Landroidx/appcompat/app/f;->H(I)V
    goto :L3
  :L1
    if-nez v0, :L2
  .line 13
    invoke-static { v1 }, Landroidx/appcompat/app/f;->H(I)V
    goto :L3
  :L2
    const/4 v0, -1
  .line 14
    invoke-static { v0 }, Landroidx/appcompat/app/f;->H(I)V
  :L3
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v2, "DecodeMethod"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    if-nez v0, :L4
    const/4 v0, 1
    goto :L5
  :L4
    const/4 v0, 0
  :L5
    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
  .line 16
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/MyApplication;->e()V
  .line 17
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/MyApplication;->f()V
  .line 18
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v2, "UiVersion"
    const/16 v4, 255
    invoke-virtual { v0, v2, v4 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    if-eq v0, v4, :L6
    goto :L8
  :L6
  .line 19
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/b0;->b()V
  .line 20
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const/16 v4, 37
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-virtual { v0, v2, v4 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 21
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/b0;->C()V
  .line 22
    invoke-static { }, Lcn/manstep/phonemirrorBox/p;->e()I
    move-result v0
    if-nez v0, :L7
  .line 23
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    const-string v4, "BgKeyValid"
    invoke-virtual { v0, v4, v2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  :L7
  .line 24
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MyApplication;->a()V
  :L8
  .line 25
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v2, "MicType"
    invoke-virtual { v0, v2, v3 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    if-ne v0, v1, :L9
    goto :L10
  :L9
    const/4 v1, 0
  :L10
    sput-boolean v1, Lcn/manstep/phonemirrorBox/p;->s:Z
  .line 26
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/c0;->q()Z
    move-result v1
    const-string v2, "IsTextureView"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z
  .line 27
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "LanguageID"
    invoke-virtual { v0, v1, v3 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    if-eqz v0, :L11
  .line 28
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/x;->a(Landroid/content/Context;I)V
  :L11
  .line 29
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/q;->j(Landroid/content/Context;)V
  .line 30
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
  .line 31
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MyApplication;->d()V
  .line 32
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/MyApplication;->j()V
  .line 33
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/u;->l0(Landroid/content/Context;)V
  .line 34
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/MyApplication;->k()V
  .line 35
    invoke-virtual { p0 }, Landroid/app/Application;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034119
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->H:Z
    return-void
.end method
