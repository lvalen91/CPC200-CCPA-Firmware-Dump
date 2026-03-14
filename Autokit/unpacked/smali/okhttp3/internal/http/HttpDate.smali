.class public final Lokhttp3/internal/http/HttpDate;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private final static BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field public final static MAX_DATE:J = 253402300799999L

.field private final static STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ThreadLocal<",
      "Ljava/text/DateFormat;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 3
  .line 1
    new-instance v0, Lokhttp3/internal/http/HttpDate$1;
    invoke-direct { v0 }, Lokhttp3/internal/http/HttpDate$1;-><init>()V
    sput-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    const/16 v0, 15
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0
    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"
    aput-object v2, v0, v1
    const/4 v1, 1
    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"
    aput-object v2, v0, v1
    const/4 v1, 2
    const-string v2, "EEE MMM d HH:mm:ss yyyy"
    aput-object v2, v0, v1
    const/4 v1, 3
    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"
    aput-object v2, v0, v1
    const/4 v1, 4
    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"
    aput-object v2, v0, v1
    const/4 v1, 5
    const-string v2, "EEE, dd MMM yy HH:mm:ss z"
    aput-object v2, v0, v1
    const/4 v1, 6
    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"
    aput-object v2, v0, v1
    const/4 v1, 7
    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"
    aput-object v2, v0, v1
    const/16 v1, 8
    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"
    aput-object v2, v0, v1
    const/16 v1, 9
    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"
    aput-object v2, v0, v1
    const/16 v1, 10
    const-string v2, "EEE dd MMM yy HH:mm:ss z"
    aput-object v2, v0, v1
    const/16 v1, 11
    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"
    aput-object v2, v0, v1
    const/16 v1, 12
    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"
    aput-object v2, v0, v1
    const/16 v1, 13
    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"
    aput-object v2, v0, v1
    const/16 v1, 14
    const-string v2, "EEE MMM d yyyy HH:mm:ss z"
    aput-object v2, v0, v1
  .line 2
    sput-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;
  .line 3
    array-length v0, v0
    new-array v0, v0, [Ljava/text/DateFormat;
    sput-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
  .registers 2
  .line 1
    sget-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    invoke-virtual { v0 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/text/DateFormat;
    invoke-virtual { v0, p0 }, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
  .catchall { :L2 .. :L8 } :L7
  .registers 10
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    new-instance v0, Ljava/text/ParsePosition;
    const/4 v2, 0
    invoke-direct { v0, v2 }, Ljava/text/ParsePosition;-><init>(I)V
  .line 3
    sget-object v3, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    invoke-virtual { v3 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/text/DateFormat;
    invoke-virtual { v3, p0, v0 }, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    move-result-object v3
  .line 4
    invoke-virtual { v0 }, Ljava/text/ParsePosition;->getIndex()I
    move-result v4
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v5
    if-ne v4, v5, :L1
    return-object v3
  :L1
  .line 5
    sget-object v3, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;
    monitor-enter v3
  :L2
  .line 6
    sget-object v4, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;
    array-length v4, v4
    const/4 v5, 0
  :L3
    if-ge v5, v4, :L6
  .line 7
    sget-object v6, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;
    aget-object v6, v6, v5
    if-nez v6, :L4
  .line 8
    new-instance v6, Ljava/text/SimpleDateFormat;
    sget-object v7, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;
    aget-object v7, v7, v5
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-direct { v6, v7, v8 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
  .line 9
    sget-object v7, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;
    invoke-virtual { v6, v7 }, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
  .line 10
    sget-object v7, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;
    aput-object v6, v7, v5
  :L4
  .line 11
    invoke-virtual { v0, v2 }, Ljava/text/ParsePosition;->setIndex(I)V
  .line 12
    invoke-virtual { v6, p0, v0 }, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    move-result-object v6
  .line 13
    invoke-virtual { v0 }, Ljava/text/ParsePosition;->getIndex()I
    move-result v7
    if-eqz v7, :L5
  .line 14
    monitor-exit v3
    return-object v6
  :L5
    add-int/lit8 v5, v5, 1
    goto :L3
  :L6
  .line 15
    monitor-exit v3
    return-object v1
  :L7
    move-exception p0
    monitor-exit v3
  :L8
    goto :L10
  :L9
    throw p0
  :L10
    goto :L9
.end method
