.class public Lc/g/h/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/g/h/f$c;,
        Lc/g/h/f$a;,
        Lc/g/h/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lc/g/h/d;IZILandroid/os/Handler;Lc/g/h/f$c;)Landroid/graphics/Typeface;
    .registers 8

    .line 1
    new-instance v0, Lc/g/h/a;

    invoke-direct {v0, p6, p5}, Lc/g/h/a;-><init>(Lc/g/h/f$c;Landroid/os/Handler;)V

    if-eqz p3, :cond_c

    .line 2
    invoke-static {p0, p1, v0, p2, p4}, Lc/g/h/e;->e(Landroid/content/Context;Lc/g/h/d;Lc/g/h/a;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p3, 0x0

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lc/g/h/e;->d(Landroid/content/Context;Lc/g/h/d;ILjava/util/concurrent/Executor;Lc/g/h/a;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
