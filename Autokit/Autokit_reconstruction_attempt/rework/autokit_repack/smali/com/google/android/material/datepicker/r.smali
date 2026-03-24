.class Lcom/google/android/material/datepicker/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/android/material/datepicker/r;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/datepicker/r;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    sput-object v0, Lcom/google/android/material/datepicker/r;->c:Lcom/google/android/material/datepicker/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/util/TimeZone;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/r;->a:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/datepicker/r;->b:Ljava/util/TimeZone;

    return-void
.end method

.method static c()Lcom/google/android/material/datepicker/r;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/material/datepicker/r;->c:Lcom/google/android/material/datepicker/r;

    return-object v0
.end method


# virtual methods
.method a()Ljava/util/Calendar;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->b:Ljava/util/TimeZone;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/r;->b(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .registers 4

    if-nez p1, :cond_7

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 2
    :goto_b
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->a:Ljava/lang/Long;

    if-eqz v0, :cond_16

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_16
    return-object p1
.end method
