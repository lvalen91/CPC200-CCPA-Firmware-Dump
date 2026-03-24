.class public Lcn/manstep/phonemirrorBox/util/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Ljava/lang/String; = ""

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "Logger: \n"

    :try_start_2
    const-string v1, "util"

    .line 1
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lcn/manstep/phonemirrorBox/util/s;->c:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_23
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_3a

    :catch_b
    move-exception v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_3a

    :catch_23
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 7

    const-string v0, "check: "

    .line 1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    invoke-static {p0, v3, v1}, Lcn/manstep/phonemirrorBox/util/c0;->h(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n\n"

    .line 7
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->m(Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version Info:   \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "INFO"

    invoke-static {v3, v1}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 10
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 11
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",Point: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AcousticEchoCanceler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :try_start_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/util/JniTools;->check()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9c} :catch_9f
    .catch Ljava/lang/Error; {:try_start_86 .. :try_end_9c} :catch_9d

    goto :goto_a7

    :catch_9d
    move-exception v1

    goto :goto_a0

    :catch_9f
    move-exception v1

    .line 15
    :goto_a0
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 16
    :goto_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/c0;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static b()V
    .registers 6

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->c:Z

    if-eqz v0, :cond_6a

    .line 2
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->getSysInfo()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/b0;->c()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INFO"

    invoke-static {v2, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    .line 5
    invoke-static {v2, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device SIZE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v5

    invoke-virtual {v5}, Lcn/manstep/phonemirrorBox/u;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/u;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v2, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->appenderClose()V

    :cond_6a
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    const-string v0, "AutoPlay"

    .line 1
    invoke-static {v0, p0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->c:Z

    if-eqz v0, :cond_f

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz v0, :cond_c

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/mars/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 4
    :cond_c
    sget-boolean p0, Lcn/manstep/phonemirrorBox/p;->c:Z

    goto :goto_29

    .line 5
    :cond_f
    sget-boolean p0, Lcn/manstep/phonemirrorBox/p;->c:Z

    .line 6
    sget-boolean p0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz p0, :cond_16

    goto :goto_29

    .line 7
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<<<<<< "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/manstep/phonemirrorBox/util/s;->b:Ljava/lang/String;

    :goto_29
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    const-string v0, "AutoPlay"

    .line 1
    invoke-static {v0, p0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->c:Z

    if-eqz v0, :cond_f

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz v0, :cond_c

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/mars/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 4
    :cond_c
    sget-boolean p0, Lcn/manstep/phonemirrorBox/p;->c:Z

    goto :goto_29

    .line 5
    :cond_f
    sget-boolean p0, Lcn/manstep/phonemirrorBox/p;->c:Z

    .line 6
    sget-boolean p0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz p0, :cond_16

    goto :goto_29

    .line 7
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<<<<<< "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/manstep/phonemirrorBox/util/s;->b:Ljava/lang/String;

    :goto_29
    return-void
.end method

.method public static g(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)V
    .registers 2

    const-string v0, "AutoPlay"

    .line 1
    invoke-static {v0, p0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->c:Z

    if-eqz v0, :cond_f

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz v0, :cond_c

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 4
    :cond_c
    sget-boolean p0, Lcn/manstep/phonemirrorBox/p;->c:Z

    goto :goto_29

    .line 5
    :cond_f
    sget-boolean p0, Lcn/manstep/phonemirrorBox/p;->c:Z

    .line 6
    sget-boolean p0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz p0, :cond_16

    goto :goto_29

    .line 7
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<<<<<< "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/manstep/phonemirrorBox/util/s;->b:Ljava/lang/String;

    :goto_29
    return-void
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/log"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance p1, Lcom/tencent/mars/xlog/Xlog;

    invoke-direct {p1}, Lcom/tencent/mars/xlog/Xlog;-><init>()V

    invoke-static {p1}, Lcom/tencent/mars/xlog/Log;->setLogImp(Lcom/tencent/mars/xlog/Log$LogImp;)V

    .line 3
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->c:Z

    invoke-static {p1}, Lcom/tencent/mars/xlog/Log;->setConsoleLogOpen(Z)V

    .line 4
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->appenderClose()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v7, "b097b02f615064965b621448ab6195fe91416c55536433fe888951e154ff7dc9074b0fdd0bca5bd4c23c30176a8596cd52d8a3b8ffde946dabc888e431c97c2e"

    move-object v4, p0

    move-object v5, p2

    .line 5
    invoke-static/range {v1 .. v7}, Lcom/tencent/mars/xlog/Log;->appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/n;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->l(Landroid/content/Context;ZLjava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static l(Landroid/content/Context;ZLjava/io/File;)Z
    .registers 5

    if-eqz p2, :cond_35

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_1b

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CrashLog"

    invoke-static {p1, p2, v0}, Lcn/manstep/phonemirrorBox/util/s;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 3
    :cond_1b
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "app"

    invoke-static {p1, p2, v0}, Lcn/manstep/phonemirrorBox/util/s;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_2c
    sput-boolean v1, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    goto :goto_31

    .line 5
    :cond_2f
    sput-boolean v1, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    .line 6
    :goto_31
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/s;->a(Landroid/content/Context;)V

    return v1

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Ljava/lang/String;)V
    .registers 2

    const-string v0, "AutoPlay"

    .line 1
    invoke-static {v0, p0}, Lcn/manstep/phonemirrorBox/util/s;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->c:Z

    if-eqz v0, :cond_f

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz v0, :cond_c

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/mars/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 4
    :cond_c
    sget-boolean p0, Lcn/manstep/phonemirrorBox/p;->c:Z

    goto :goto_29

    .line 5
    :cond_f
    sget-boolean p0, Lcn/manstep/phonemirrorBox/p;->c:Z

    .line 6
    sget-boolean p0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz p0, :cond_16

    goto :goto_29

    .line 7
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<<<<<< "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/manstep/phonemirrorBox/util/s;->b:Ljava/lang/String;

    :goto_29
    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .registers 2

    const-string v0, "AutoPlay"

    .line 1
    invoke-static {v0, p0}, Lcn/manstep/phonemirrorBox/util/s;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->c:Z

    if-eqz v0, :cond_f

    .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz v0, :cond_c

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/mars/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 4
    :cond_c
    sget-boolean p0, Lcn/manstep/phonemirrorBox/p;->c:Z

    goto :goto_29

    .line 5
    :cond_f
    sget-boolean p0, Lcn/manstep/phonemirrorBox/p;->c:Z

    .line 6
    sget-boolean p0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz p0, :cond_16

    goto :goto_29

    .line 7
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<<<<<< "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/manstep/phonemirrorBox/util/s;->b:Ljava/lang/String;

    :goto_29
    return-void
.end method
