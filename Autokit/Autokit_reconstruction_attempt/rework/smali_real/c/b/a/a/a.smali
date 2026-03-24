.class public Lc/b/a/a/a;
.super Lc/b/a/a/c;
.source "SourceFile"


# static fields
.field private static volatile c:Lc/b/a/a/a;


# instance fields
.field private a:Lc/b/a/a/c;

.field private b:Lc/b/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lc/b/a/a/c;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/a/b;

    invoke-direct {v0}, Lc/b/a/a/b;-><init>()V

    iput-object v0, p0, Lc/b/a/a/a;->b:Lc/b/a/a/c;

    .line 3
    iput-object v0, p0, Lc/b/a/a/a;->a:Lc/b/a/a/c;

    return-void
.end method

.method public static b()Lc/b/a/a/a;
    .registers 3

    .line 1
    sget-object v0, Lc/b/a/a/a;->c:Lc/b/a/a/a;

    if-eqz v0, :cond_7

    .line 2
    sget-object v0, Lc/b/a/a/a;->c:Lc/b/a/a/a;

    return-object v0

    .line 3
    :cond_7
    const-class v0, Lc/b/a/a/a;

    monitor-enter v0

    .line 4
    :try_start_a
    sget-object v1, Lc/b/a/a/a;->c:Lc/b/a/a/a;

    if-nez v1, :cond_15

    .line 5
    new-instance v1, Lc/b/a/a/a;

    invoke-direct {v1}, Lc/b/a/a/a;-><init>()V

    sput-object v1, Lc/b/a/a/a;->c:Lc/b/a/a/a;

    .line 6
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 7
    sget-object v0, Lc/b/a/a/a;->c:Lc/b/a/a/a;

    return-object v0

    :catchall_19
    move-exception v1

    .line 8
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lc/b/a/a/a;->a:Lc/b/a/a/c;

    invoke-virtual {v0}, Lc/b/a/a/c;->a()Z

    move-result v0

    return v0
.end method
