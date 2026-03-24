.class public Lcn/manstep/phonemirrorBox/util/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 5

    if-eqz p1, :cond_8

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->o()Z

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->I()Z

    .line 3
    :cond_8
    sget-object p1, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z

    .line 4
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/n;->b(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->e(Ljava/io/File;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->e(Ljava/io/File;)V

    .line 7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->e(Ljava/io/File;)V

    .line 9
    :cond_31
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/b0;->b()V

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/manstep/phonemirrorBox/util/w$b;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/util/w$b;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .registers 5

    if-eqz p1, :cond_8

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->o()Z

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->I()Z

    .line 3
    :cond_8
    sget-object p1, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z

    .line 4
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/n;->b(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->e(Ljava/io/File;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->e(Ljava/io/File;)V

    .line 7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/n;->e(Ljava/io/File;)V

    .line 9
    :cond_31
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/b0;->b()V

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_49

    const-string p1, "activity"

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 12
    invoke-virtual {p1}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    .line 13
    :cond_49
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/manstep/phonemirrorBox/util/w$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/util/w$a;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
