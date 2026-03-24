.class public Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;


# instance fields
.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;

.field private final e:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 6

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->c:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 39
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 42
    new-instance v1, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;

    iget-object v2, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;-><init>(Landroid/content/Context;Ljava/util/Calendar;)V

    iput-object v1, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->d:Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;

    .line 45
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 48
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;
    .registers 4

    .prologue
    .line 52
    const-class v1, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    if-nez v0, :cond_e

    .line 53
    new-instance v0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    invoke-direct {v0, p0, p1}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object v0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    .line 56
    :cond_e
    sget-object v0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a:Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .registers 5

    .prologue
    .line 204
    if-eqz p3, :cond_3

    .line 219
    :goto_2
    return-void

    .line 208
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_12

    .line 210
    iget-object v0, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_2

    .line 216
    :catch_d
    move-exception v0

    invoke-direct {p0, p1, p2, p3}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->b(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    goto :goto_2

    .line 212
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2, p3}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->b(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_d

    goto :goto_2
.end method

.method private declared-synchronized a(Lorg/json/JSONObject;Ljava/lang/Throwable;)Z
    .registers 15

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/qihoo/bugreport/javacrash/ReportField;->me:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v0}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/qihoo/bugreport/javacrash/ReportField;->ct:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v0}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_f2

    move-result v0

    if-nez v0, :cond_1c

    .line 148
    :cond_19
    const/4 v0, 0x1

    .line 198
    :goto_1a
    monitor-exit p0

    return v0

    .line 150
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->c:Landroid/content/Context;

    const-string v1, "qihoo_jiagu_crash_report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 153
    const-string v1, "last_report_me"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v3, "last_report_time"

    const-string v4, "0000/00/00 00:00:00"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    const-string v4, "last_exception_info"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_f2

    move-result-object v4

    .line 159
    :try_start_49
    sget-object v5, Lcom/qihoo/bugreport/javacrash/ReportField;->me:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v5}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    sget-object v6, Lcom/qihoo/bugreport/javacrash/ReportField;->ct:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v6}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy/MM/dd HH:mm:ss"

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 163
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 164
    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 167
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_91

    .line 168
    const-string v0, "last_report_time"

    sget-object v1, Lcom/qihoo/bugreport/javacrash/ReportField;->ct:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    const/4 v0, 0x1

    goto :goto_1a

    .line 175
    :cond_91
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 176
    :cond_9d
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x927c0

    sub-long/2addr v0, v6

    .line 181
    :goto_aa
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gez v0, :cond_c1

    .line 183
    const/4 v0, 0x1

    goto/16 :goto_1a

    .line 178
    :cond_b3
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x1d4c0

    sub-long/2addr v0, v6

    goto :goto_aa

    .line 187
    :cond_c1
    const-string v0, "last_report_me"

    sget-object v1, Lcom/qihoo/bugreport/javacrash/ReportField;->me:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v0, "last_report_time"

    sget-object v1, Lcom/qihoo/bugreport/javacrash/ReportField;->ct:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string v0, "last_exception_info"

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_e7
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_e7} :catch_ea
    .catch Ljava/text/ParseException; {:try_start_49 .. :try_end_e7} :catch_ee
    .catchall {:try_start_49 .. :try_end_e7} :catchall_f2

    .line 194
    const/4 v0, 0x0

    goto/16 :goto_1a

    .line 196
    :catch_ea
    move-exception v0

    const/4 v0, 0x1

    goto/16 :goto_1a

    .line 198
    :catch_ee
    move-exception v0

    const/4 v0, 0x1

    goto/16 :goto_1a

    .line 147
    :catchall_f2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .registers 5

    .prologue
    .line 223
    if-eqz p3, :cond_3

    .line 234
    :cond_2
    :goto_2
    return-void

    .line 227
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_2

    .line 234
    :catch_d
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;ZI)V

    .line 65
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .registers 5

    .prologue
    .line 68
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;ZI)V

    .line 69
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;ZI)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 76
    :try_start_1
    sget-object v2, Lcom/qihoo/jiagu/b;->a:[Ljava/lang/String;

    iget-object v3, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->c:Landroid/content/Context;

    .line 1098
    array-length v4, v2

    move v1, v0

    :goto_7
    if-ge v1, v4, :cond_1a

    aget-object v5, v2, v1

    .line 1099
    invoke-static {v3, v5}, Lcom/qihoo/jiagu/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 76
    :goto_11
    if-nez v0, :cond_1c

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    .line 143
    :goto_16
    return-void

    .line 1098
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1104
    :cond_1a
    const/4 v0, 0x1

    goto :goto_11

    .line 85
    :cond_1c
    iget-object v0, p0, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->d:Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;

    .line 2045
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2048
    sget-object v2, Lcom/qihoo/bugreport/javacrash/ReportField;->t:Lcom/qihoo/bugreport/javacrash/ReportField;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    sget-object v2, Lcom/qihoo/bugreport/javacrash/ReportField;->cpv:Lcom/qihoo/bugreport/javacrash/ReportField;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    sget-object v2, Lcom/qihoo/bugreport/javacrash/ReportField;->st:Lcom/qihoo/bugreport/javacrash/ReportField;

    iget-object v3, v0, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;->a:Ljava/util/Calendar;

    invoke-static {v3}, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2058
    sget-object v3, Lcom/qihoo/bugreport/javacrash/ReportField;->ct:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-static {v2}, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2062
    sget-object v3, Lcom/qihoo/bugreport/javacrash/ReportField;->et:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 2066
    sget-object v4, Lcom/qihoo/bugreport/javacrash/ReportField;->ec:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1, v4, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    sget-object v4, Lcom/qihoo/bugreport/javacrash/ReportField;->jc:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    invoke-static {p2}, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2073
    invoke-virtual {v0, v2, v3, v4}, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 2074
    if-eqz v2, :cond_7a

    .line 2075
    sget-object v3, Lcom/qihoo/bugreport/javacrash/ReportField;->me:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    :cond_7a
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 2317
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2320
    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2322
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2323
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 2080
    invoke-static {v2}, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2081
    if-nez v3, :cond_f0

    .line 2082
    sget-object v3, Lcom/qihoo/bugreport/javacrash/ReportField;->crd:Lcom/qihoo/bugreport/javacrash/ReportField;

    const-string v5, "null"

    invoke-virtual {v1, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    :goto_9b
    invoke-static {v2, v4}, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 2090
    if-eqz v2, :cond_a6

    .line 2091
    sget-object v3, Lcom/qihoo/bugreport/javacrash/ReportField;->em:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    :cond_a6
    invoke-static {}, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;->c()Ljava/lang/String;

    move-result-object v2

    .line 2096
    if-eqz v2, :cond_b1

    .line 2097
    sget-object v3, Lcom/qihoo/bugreport/javacrash/ReportField;->ep:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    :cond_b1
    invoke-static {}, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 2102
    const-string v3, "ed"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c8

    .line 2103
    sget-object v3, Lcom/qihoo/bugreport/javacrash/ReportField;->ed:Lcom/qihoo/bugreport/javacrash/ReportField;

    const-string v4, "ed"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    :cond_c8
    const-string v3, "epd"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_db

    .line 2108
    sget-object v3, Lcom/qihoo/bugreport/javacrash/ReportField;->epd:Lcom/qihoo/bugreport/javacrash/ReportField;

    const-string v4, "epd"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    :cond_db
    invoke-virtual {v0}, Lcom/qihoo/bugreport/javacrash/CrashReportDataFactory;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qihoo/jiagu/c;->a(Ljava/util/EnumMap;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    if-nez v0, :cond_f6

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e8} :catch_ea

    goto/16 :goto_16

    .line 141
    :catch_ea
    move-exception v0

    invoke-direct {p0, p1, p2, p3}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    goto/16 :goto_16

    .line 2084
    :cond_f0
    :try_start_f0
    sget-object v5, Lcom/qihoo/bugreport/javacrash/ReportField;->crd:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1, v5, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9b

    .line 93
    :cond_f6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 95
    const-class v1, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;

    monitor-enter v1
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_fc} :catch_ea

    .line 99
    :try_start_fc
    invoke-direct {p0, v0, p2}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a(Lorg/json/JSONObject;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    .line 101
    monitor-exit v1

    goto/16 :goto_16

    .line 139
    :catchall_108
    move-exception v0

    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_fc .. :try_end_10a} :catchall_108

    :try_start_10a
    throw v0
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_10b} :catch_ea

    .line 107
    :cond_10b
    :try_start_10b
    new-instance v2, Lcom/qihoo/jiagu/e;

    invoke-direct {v2, p0, p3, v0}, Lcom/qihoo/jiagu/e;-><init>(Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;ZLorg/json/JSONObject;)V

    .line 128
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 133
    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/qihoo/bugreport/javacrash/ExceptionHandleReporter;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    .line 139
    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_10b .. :try_end_11c} :catchall_108

    goto/16 :goto_16
.end method
