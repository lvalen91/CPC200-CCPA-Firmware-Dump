.class public Lcn/manstep/phonemirrorBox/h0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private e:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/h0/b;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/h0/b;->b:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/h0/b;->c:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/h0/b;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 6
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/h0/b;->e:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcn/manstep/phonemirrorBox/h0/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcn/manstep/phonemirrorBox/h0/b;)Ljava/util/concurrent/ThreadFactory;
    .registers 10

    .line 1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/h0/b;->a:Ljava/lang/String;

    .line 2
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/h0/b;->b:Ljava/lang/Boolean;

    .line 3
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/h0/b;->c:Ljava/lang/Integer;

    .line 4
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/h0/b;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 5
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/h0/b;->e:Ljava/util/concurrent/ThreadFactory;

    if-eqz p0, :cond_d

    goto :goto_11

    .line 6
    :cond_d
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    :goto_11
    move-object v1, p0

    if-eqz v2, :cond_1c

    .line 7
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v7, 0x0

    invoke-direct {p0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    move-object v3, p0

    .line 8
    new-instance p0, Lcn/manstep/phonemirrorBox/h0/b$a;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/manstep/phonemirrorBox/h0/b$a;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p0
.end method

.method private static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    .line 1
    throw p0
.end method


# virtual methods
.method public b()Ljava/util/concurrent/ThreadFactory;
    .registers 2

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/h0/b;->c(Lcn/manstep/phonemirrorBox/h0/b;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/h0/b;
    .registers 3

    const-string v0, "%d"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-%d"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/h0/b;->a:Ljava/lang/String;

    goto :goto_1e

    .line 3
    :cond_1c
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/h0/b;->a:Ljava/lang/String;

    :goto_1e
    return-object p0
.end method
