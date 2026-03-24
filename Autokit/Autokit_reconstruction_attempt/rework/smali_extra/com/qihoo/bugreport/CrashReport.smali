.class public Lcom/qihoo/bugreport/CrashReport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static b:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

.field private static c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 3

    .prologue
    .line 63
    sget-object v0, Lcom/qihoo/bugreport/CrashReport;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static getExceptionHandlerInstance()Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/qihoo/bugreport/CrashReport;->b:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 28
    if-nez p0, :cond_3

    .line 53
    :cond_2
    :goto_2
    return-void

    .line 34
    :cond_3
    :try_start_3
    sget-object v0, Lcom/qihoo/bugreport/CrashReport;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 39
    sget-object v0, Lcom/qihoo/bugreport/CrashReport;->c:Landroid/content/Context;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/qihoo/bugreport/CrashReport;->b:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    if-nez v0, :cond_2

    .line 48
    :cond_f
    sput-object p0, Lcom/qihoo/bugreport/CrashReport;->c:Landroid/content/Context;

    sget-object v0, Lcom/qihoo/bugreport/CrashReport;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0, v0}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    move-result-object v0

    sput-object v0, Lcom/qihoo/bugreport/CrashReport;->b:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_2

    .line 52
    :catch_1a
    move-exception v0

    goto :goto_2
.end method

.method public static prepareInit()V
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/qihoo/bugreport/CrashReport;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_a

    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/qihoo/bugreport/CrashReport;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    :cond_a
    return-void
.end method
