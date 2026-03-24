.class Lc/g/h/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g/j/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/g/h/e;->d(Landroid/content/Context;Lc/g/h/d;ILjava/util/concurrent/Executor;Lc/g/h/a;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/g/j/a<",
        "Lc/g/h/e$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/g/h/e$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lc/g/h/e$e;

    invoke-virtual {p0, p1}, Lc/g/h/e$d;->b(Lc/g/h/e$e;)V

    return-void
.end method

.method public b(Lc/g/h/e$e;)V
    .registers 6

    .line 1
    sget-object v0, Lc/g/h/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lc/g/h/e;->d:Lc/d/g;

    iget-object v2, p0, Lc/g/h/e$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_11

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_11
    sget-object v2, Lc/g/h/e;->d:Lc/d/g;

    iget-object v3, p0, Lc/g/h/e$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2d

    const/4 v0, 0x0

    .line 6
    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/g/j/a;

    invoke-interface {v2, p1}, Lc/g/j/a;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2c
    return-void

    :catchall_2d
    move-exception p1

    .line 8
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method
