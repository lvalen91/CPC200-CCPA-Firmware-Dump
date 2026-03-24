.class Lcn/manstep/phonemirrorBox/util/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/util/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/lang/Runnable;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic e:Lcn/manstep/phonemirrorBox/util/j;


# direct methods
.method public constructor <init>(Lcn/manstep/phonemirrorBox/util/j;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/j$a;->e:Lcn/manstep/phonemirrorBox/util/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/j$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/util/j$a;->b:Ljava/lang/Runnable;

    .line 4
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/j$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/j$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/j$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_1f

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/j$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/j$a;->e:Lcn/manstep/phonemirrorBox/util/j;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/j;->a(Lcn/manstep/phonemirrorBox/util/j;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/j$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-void

    :catchall_1f
    move-exception v0

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/j$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/j$a;->e:Lcn/manstep/phonemirrorBox/util/j;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/j;->a(Lcn/manstep/phonemirrorBox/util/j;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/j$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_33
    throw v0
.end method
