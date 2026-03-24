.class public Landroidx/databinding/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient a:Landroidx/databinding/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/databinding/a;->a:Landroidx/databinding/i;

    if-nez v0, :cond_7

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_f

    .line 5
    iget-object v0, p0, Landroidx/databinding/a;->a:Landroidx/databinding/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :catchall_f
    move-exception p1

    .line 6
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method
