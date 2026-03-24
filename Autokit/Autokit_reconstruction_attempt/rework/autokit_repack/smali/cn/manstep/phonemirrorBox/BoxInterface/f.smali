.class public Lcn/manstep/phonemirrorBox/BoxInterface/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/BoxInterface/f$j;,
        Lcn/manstep/phonemirrorBox/BoxInterface/f$h;,
        Lcn/manstep/phonemirrorBox/BoxInterface/f$k;,
        Lcn/manstep/phonemirrorBox/BoxInterface/f$l;,
        Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    }
.end annotation


# static fields
.field private static N:I = 0x2

.field public static O:Z

.field public static P:Z

.field public static Q:Z

.field public static R:Z


# instance fields
.field private A:Lcn/manstep/phonemirrorBox/BoxInterface/f$h;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/BoxInterface/a;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private final I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private J:Z

.field private K:[B

.field private L:I

.field private M:Z

.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field public f:Z

.field public g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:I

.field private o:Lcn/manstep/phonemirrorBox/q0/g;

.field private p:Z

.field private q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

.field private r:Lcn/manstep/phonemirrorBox/util/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/manstep/phonemirrorBox/util/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Thread;

.field private t:Ljava/lang/Thread;

.field private u:Ljava/lang/Thread;

.field private v:Ljava/util/concurrent/ScheduledExecutorService;

.field private w:Ljava/lang/Thread;

.field private x:Z

.field public y:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public z:Lcn/manstep/phonemirrorBox/BoxInterface/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->a:Z

    const/4 v1, 0x2

    .line 3
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I

    .line 5
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I

    .line 6
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I

    .line 7
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f:Z

    .line 8
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z

    .line 9
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h:Z

    const-string v2, ""

    .line 10
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k:Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->l:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m:Z

    .line 15
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I

    .line 16
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p:Z

    const/4 v2, -0x1

    .line 17
    iput v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->G:I

    .line 18
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->H:Z

    .line 19
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z

    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 21
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K:[B

    .line 22
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->L:I

    .line 23
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M:Z

    const-string v0, "BoxProtocol,BoxProtocol: ===***==="

    .line 24
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O()V

    .line 26
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P(Landroid/content/Context;)V

    .line 27
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C:Z

    .line 28
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I

    .line 29
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I

    .line 30
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    .line 31
    new-instance v0, Lcn/manstep/phonemirrorBox/util/z;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/util/z;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    .line 32
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/util/z;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;

    .line 34
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->A:Lcn/manstep/phonemirrorBox/BoxInterface/f$h;

    .line 35
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Q()V

    .line 36
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u1()V

    .line 37
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v1()V

    .line 38
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;

    if-nez v0, :cond_8b

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$a;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$a;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V

    const-string v3, "readUsb"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;

    .line 40
    :cond_8b
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;

    if-nez v0, :cond_9d

    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$b;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$b;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V

    const-string v3, "iosAudio"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;

    .line 42
    :cond_9d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;

    if-nez v0, :cond_b1

    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V

    const-string v3, "audioRecord"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;

    .line 44
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x:Z

    .line 45
    :cond_b1
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;

    invoke-direct {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    .line 46
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "checkOpenThread_ started"

    .line 47
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    # PATCHED: Start iosAudio playback thread
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;

    if-eqz p1, :skip_audio_start

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :skip_audio_start

    const-string p1, "readThread_ started"

    .line 49
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private A0(ILjava/lang/String;Z)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 2
    array-length v0, p2

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C0(I[BIZ)Z

    move-result p1

    return p1
.end method

.method private B0(I[BI)Z
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C0(I[BIZ)Z

    move-result p1

    return p1
.end method

.method private C0(I[BIZ)Z
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,sendDevInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    if-eqz p4, :cond_3d

    return v1

    .line 3
    :cond_3d
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BoxProtocol,sendDevInfo: cmd="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    new-instance p4, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    invoke-direct {p4, p0, p3}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 5
    invoke-static {p4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 6
    invoke-static {p4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object p1

    invoke-static {p1, p3}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 7
    invoke-virtual {p4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    .line 8
    invoke-virtual {p4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p1

    invoke-static {p2, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-virtual {p4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 10
    monitor-enter p0

    .line 11
    :try_start_72
    invoke-virtual {p4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object p1

    invoke-virtual {p4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result p2

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 12
    invoke-virtual {p4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p1

    invoke-virtual {p4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result p2

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-nez p1, :cond_95

    const-string p1, "BoxProtocol,sendDevInfo: Write device info data err"

    .line 13
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 14
    monitor-exit p0

    return v1

    :cond_95
    const-string p1, "BoxProtocol,sendDevInfo: sendDevInfo() success "

    .line 15
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 16
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_9d
    const-string p1, "BoxProtocol,sendDevInfo: Write device info head err"

    .line 17
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 18
    monitor-exit p0

    return v1

    :catchall_a4
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_72 .. :try_end_a6} :catchall_a4

    throw p1
.end method

.method private M(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_46

    .line 2
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_30

    const/4 p1, 0x3

    if-eq v0, p1, :cond_25

    if-eq v0, v1, :cond_1a

    goto :goto_46

    :cond_1a
    const-string p1, "Close camera"

    .line 3
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 p1, 0x1f

    .line 4
    invoke-static {v3, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_46

    :cond_25
    const-string p1, "Open camera"

    .line 5
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 p1, 0x1e

    .line 6
    invoke-static {v3, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_46

    .line 7
    :cond_30
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K:[B

    array-length v2, v2

    if-ne v0, v2, :cond_46

    .line 8
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k1([BI)V

    const/16 p1, 0x1d

    .line 9
    invoke-static {v3, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    :cond_46
    :goto_46
    return-void
.end method

.method private N(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_a4

    .line 2
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const-string v3, "UTF-8"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_74

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4f

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4f

    const/16 v2, 0x64

    if-eq v0, v2, :cond_3a

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_25

    goto/16 :goto_a4

    .line 3
    :cond_25
    :try_start_25
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v2

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v4

    invoke-direct {v0, v2, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 p1, 0xdb

    .line 4
    invoke-static {v4, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z

    goto :goto_a4

    .line 5
    :cond_3a
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v2

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v4

    invoke-direct {v0, v2, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 p1, 0xd9

    .line 6
    invoke-static {v4, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z

    goto :goto_a4

    .line 7
    :cond_4f
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    new-array v0, v0, [B

    .line 8
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v3

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v4

    invoke-static {v3, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "COVER"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0xda

    .line 11
    invoke-static {v4, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z

    goto :goto_a4

    .line 12
    :cond_74
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v2

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v4

    invoke-direct {v0, v2, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 p1, 0xd8

    .line 13
    invoke-static {v4, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z
    :try_end_88
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_88} :catch_89

    goto :goto_a4

    :catch_89
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDashboardData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BoxProtocol"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method private O()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    const/4 v0, -0x2

    .line 2
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    return-void
.end method

.method private P(Landroid/content/Context;)V
    .registers 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    .line 2
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V

    .line 5
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    invoke-direct {v0, v1, v1, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V

    .line 7
    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V

    .line 8
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V

    .line 10
    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V

    .line 11
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    const/4 v4, 0x4

    invoke-direct {v0, v4, v2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V

    .line 13
    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V

    .line 14
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->u:Z

    const/4 v3, 0x7

    const/4 v5, 0x5

    if-eqz v0, :cond_57

    .line 16
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    invoke-direct {v0, v3, v2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V

    .line 17
    invoke-virtual {v0, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V

    .line 18
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 19
    :cond_57
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    invoke-direct {v0, v5, v2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V

    .line 20
    invoke-virtual {v0, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V

    .line 21
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :goto_64
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    const/4 v6, 0x6

    invoke-direct {v0, v6, v2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V

    .line 23
    invoke-virtual {v0, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V

    .line 24
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    invoke-direct {v0, v5, v1, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V

    .line 26
    invoke-virtual {v0, v6}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V

    .line 27
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    invoke-direct {v0, v4, v1, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V

    .line 29
    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V

    .line 30
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private R(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_78

    const/4 v1, 0x4

    if-eq p1, v1, :cond_65

    const/4 v1, 0x5

    if-eq p1, v1, :cond_52

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3d

    const/4 v1, 0x7

    if-eq p1, v1, :cond_28

    .line 1
    sput v0, Lcn/manstep/phonemirrorBox/p;->F:I

    .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/d;

    invoke-direct {v0, p1}, Lcn/manstep/phonemirrorBox/q0/d;-><init>(I)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    const-string v1, "Unknown"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V

    goto/16 :goto_9f

    .line 4
    :cond_28
    sput v0, Lcn/manstep/phonemirrorBox/p;->F:I

    .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/e;

    invoke-direct {v0, p1}, Lcn/manstep/phonemirrorBox/q0/e;-><init>(I)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    const-string v1, "Carlink"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V

    goto :goto_9f

    .line 7
    :cond_3d
    sput v0, Lcn/manstep/phonemirrorBox/p;->F:I

    .line 8
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/e;

    invoke-direct {v0, p1}, Lcn/manstep/phonemirrorBox/q0/e;-><init>(I)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    const-string v1, "HiCar"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V

    goto :goto_9f

    .line 10
    :cond_52
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/a;

    invoke-direct {v0, p1}, Lcn/manstep/phonemirrorBox/q0/a;-><init>(I)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    const-string v1, "AndroidAuto"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V

    goto :goto_9f

    .line 12
    :cond_65
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/f;

    invoke-direct {v0, p1}, Lcn/manstep/phonemirrorBox/q0/f;-><init>(I)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    const-string v1, "iPhoneMirror"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V

    goto :goto_9f

    .line 14
    :cond_78
    sput v0, Lcn/manstep/phonemirrorBox/p;->F:I

    .line 15
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/c;

    invoke-direct {v0, p1}, Lcn/manstep/phonemirrorBox/q0/c;-><init>(I)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    const-string v1, "CarPlay"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V

    goto :goto_9f

    .line 17
    :cond_8d
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/b;

    invoke-direct {v0, p1}, Lcn/manstep/phonemirrorBox/q0/b;-><init>(I)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;

    .line 18
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    const-string v1, "AndroidMirror"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V

    :goto_9f
    return-void
.end method

.method private X(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_31

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_25

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1f

    const/4 v1, 0x6

    if-eq p1, v1, :cond_19

    const/4 v1, 0x7

    if-eq p1, v1, :cond_13

    goto :goto_36

    :cond_13
    const/16 p1, 0x7f

    .line 1
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_36

    :cond_19
    const/16 p1, 0x7e

    .line 2
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_36

    :cond_1f
    const/16 p1, 0x7d

    .line 3
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_36

    :cond_25
    const/16 p1, 0x7a

    .line 4
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_36

    :cond_2b
    const/16 p1, 0x79

    .line 5
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_36

    :cond_31
    const/16 p1, 0x78

    .line 6
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    :goto_36
    return-void
.end method

.method private Y(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    .registers 26

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_81c

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v0, v5, :cond_788

    const/16 v7, 0xd

    const/16 v8, 0xb

    const/16 v9, 0x10

    const/16 v10, 0xf

    const/4 v11, 0x6

    const/4 v13, 0x3

    if-eq v0, v13, :cond_6b0

    const/16 v14, 0x19

    if-eq v0, v6, :cond_642

    const/16 v15, 0x18

    const/16 v12, 0x20

    if-eq v0, v11, :cond_48a

    const/4 v11, 0x7

    if-eq v0, v11, :cond_961

    if-eq v0, v4, :cond_322

    if-eq v0, v7, :cond_2d3

    const/16 v4, 0xe

    if-eq v0, v4, :cond_289

    const/16 v4, 0x12

    if-eq v0, v4, :cond_27b

    const/16 v5, 0x13

    if-eq v0, v5, :cond_242

    if-eq v0, v15, :cond_23d

    if-eq v0, v14, :cond_1e9

    const/16 v5, 0x2a

    if-eq v0, v5, :cond_1e4

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_1df

    sparse-switch v0, :sswitch_data_962

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,onCmd: Unknown cmd = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto/16 :goto_961

    :sswitch_6a
    const-string v0, "BoxProtocol,onCmd: recv  CMD_ENABLE_CRYPT"

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 4
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m:Z

    goto/16 :goto_961

    .line 5
    :sswitch_73
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-ne v12, v0, :cond_961

    const-string v5, "unknown"

    .line 6
    :try_start_7b
    new-instance v0, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v0, v6, v2, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_86
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7b .. :try_end_86} :catch_88

    move-object v5, v0

    goto :goto_90

    :catch_88
    move-exception v0

    .line 7
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 8
    :goto_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,onCmd: Recv CMD_BOX_SOFTWARE_VERSION: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 9
    invoke-direct {v1, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOX:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->x(Ljava/lang/String;)V

    .line 12
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z

    if-eqz v0, :cond_da

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "W"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;

    :cond_da
    const/16 v0, 0x7c

    .line 14
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 15
    :sswitch_e1
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-ne v6, v0, :cond_961

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoxProtocol,onCmd: CMD_UPDATE iStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 18
    invoke-direct {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X(I)V

    goto/16 :goto_961

    .line 19
    :sswitch_108
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-ne v6, v0, :cond_961

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoxProtocol,onCmd: CMD_UPDATE_PROGRESS progress: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/16 v2, 0x78

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z

    goto/16 :goto_961

    .line 23
    :sswitch_135
    invoke-static {v3, v12}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 24
    :sswitch_13a
    invoke-direct/range {p0 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V

    goto/16 :goto_961

    .line 25
    :sswitch_13f
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoxProtocol,onCmd: recv  CMD_DEBUG_TEST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto/16 :goto_961

    :sswitch_15d
    const/16 v0, 0x22

    .line 27
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 28
    :sswitch_164
    invoke-direct/range {p0 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V

    goto/16 :goto_961

    .line 29
    :sswitch_169
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->a()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v2

    if-ne v0, v2, :cond_961

    .line 30
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;-><init>()V

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->b(Ljava/nio/ByteBuffer;)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoxProtocol,onCmd: Recv CMD_CARPLAY_MODE_CHANGE:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto/16 :goto_961

    .line 33
    :cond_1df
    invoke-direct/range {p0 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r1(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V

    goto/16 :goto_961

    .line 34
    :cond_1e4
    invoke-direct/range {p0 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V

    goto/16 :goto_961

    .line 35
    :cond_1e9
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-lt v0, v6, :cond_961

    .line 36
    :try_start_1ef
    new-instance v0, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v5

    const-string v6, "UTF-8"

    invoke-direct {v0, v4, v2, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoxProtocol,onCmd->BoxInfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w(Ljava/lang/String;)V

    const/16 v0, 0x23

    .line 39
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    :try_end_21e
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_21e} :catch_220

    goto/16 :goto_961

    :catch_220
    move-exception v0

    const-string v2, "BoxProtocol"

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_961

    .line 41
    :cond_23d
    invoke-direct/range {p0 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s1(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V

    goto/16 :goto_961

    .line 42
    :cond_242
    :try_start_242
    new-instance v0, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v5

    sub-int/2addr v5, v3

    const-string v6, "UTF-8"

    invoke-direct {v0, v4, v2, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,onCmd: Recv CMD_BLUETOOTH_ONLINE_LIST: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/16 v0, 0xd3

    .line 44
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    :try_end_26f
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_26f} :catch_271

    goto/16 :goto_961

    :catch_271
    move-exception v0

    .line 45
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto/16 :goto_961

    .line 46
    :cond_27b
    iget-boolean v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z

    if-eqz v0, :cond_284

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z

    goto/16 :goto_961

    .line 48
    :cond_284
    invoke-direct/range {p0 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V

    goto/16 :goto_961

    .line 49
    :cond_289
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-gt v0, v9, :cond_961

    const-string v4, ""

    .line 50
    :try_start_291
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v6

    sub-int/2addr v6, v3

    const-string v7, "UTF-8"

    invoke-direct {v5, v0, v2, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_2a1} :catch_2a7

    .line 51
    :try_start_2a1
    iput-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->l:Ljava/lang/String;
    :try_end_2a3
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2a3} :catch_2a4

    goto :goto_2b0

    :catch_2a4
    move-exception v0

    move-object v4, v5

    goto :goto_2a8

    :catch_2a7
    move-exception v0

    .line 52
    :goto_2a8
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    move-object v5, v4

    .line 53
    :goto_2b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,onCmd: Recv CMD_BOX_WIFI_NAME: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto/16 :goto_961

    .line 54
    :cond_2d3
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-gt v0, v9, :cond_961

    const-string v4, ""

    .line 55
    :try_start_2db
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v6

    sub-int/2addr v6, v3

    const-string v7, "UTF-8"

    invoke-direct {v5, v0, v2, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2eb
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_2eb} :catch_2f6

    .line 56
    :try_start_2eb
    iput-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k:Ljava/lang/String;

    const/16 v0, 0xd7

    .line 57
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    :try_end_2f2
    .catch Ljava/lang/Exception; {:try_start_2eb .. :try_end_2f2} :catch_2f3

    goto :goto_2ff

    :catch_2f3
    move-exception v0

    move-object v4, v5

    goto :goto_2f7

    :catch_2f6
    move-exception v0

    .line 58
    :goto_2f7
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    move-object v5, v4

    .line 59
    :goto_2ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,onCmd: Recv CMD_BOX_BLUETOOTH_NAME: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto/16 :goto_961

    .line 60
    :cond_322
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BoxProtocol,onCmd: Recv CarPlay_CMD: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    if-eq v0, v3, :cond_46f

    if-eq v0, v5, :cond_460

    if-eq v0, v13, :cond_428

    if-eq v0, v10, :cond_3ff

    const/16 v4, 0x1f4

    if-eq v0, v4, :cond_3f8

    const/16 v4, 0x1f5

    if-eq v0, v4, :cond_3f1

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_3e1

    const/16 v4, 0x3e9

    if-eq v0, v4, :cond_3d6

    packed-switch v0, :pswitch_data_990

    packed-switch v0, :pswitch_data_99c

    goto/16 :goto_961

    :pswitch_35e
    const-string v0, "BoxProtocol,onCmd: Recv CarPlay_SupportWifiNeedKo======================="

    .line 62
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto/16 :goto_961

    :pswitch_365
    const/16 v0, 0xd1

    .line 63
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 64
    :pswitch_36c
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    const/16 v0, 0xd0

    .line 65
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 66
    :pswitch_375
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z

    .line 67
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    const/16 v0, 0xcf

    .line 68
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 69
    :pswitch_380
    iput-boolean v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h:Z

    const/16 v0, 0xce

    .line 70
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 71
    :pswitch_389
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h:Z

    const/16 v0, 0xcd

    .line 72
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :pswitch_392
    const/16 v0, 0xcc

    .line 73
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :pswitch_399
    const/16 v0, 0xcb

    .line 74
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :pswitch_3a0
    const/16 v0, 0xca

    .line 75
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :pswitch_3a7
    const/16 v0, 0xc9

    .line 76
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :pswitch_3ae
    const/16 v0, 0x77

    .line 77
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 78
    invoke-virtual {v1, v8}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    goto/16 :goto_961

    :pswitch_3b8
    const/16 v0, 0x76

    .line 79
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 80
    :pswitch_3bf
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z

    const/16 v0, 0x75

    .line 81
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 82
    :pswitch_3c8
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z

    const-string v0, "BoxProtocol,onCmd: ======Car Mic======"

    .line 83
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v0, 0x74

    .line 84
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 85
    :cond_3d6
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Q:Z

    .line 86
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z

    const/16 v0, 0xc8

    .line 87
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :cond_3e1
    const-string v0, "BoxProtocol,onCmd: Recv CarPlay_SupportWifi"

    .line 88
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 89
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z

    .line 90
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->A(Z)V

    goto/16 :goto_961

    :cond_3f1
    const/16 v0, 0xd5

    .line 91
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :cond_3f8
    const/16 v0, 0xd4

    .line 92
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 93
    :cond_3ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config.bUseBoxMic: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/manstep/phonemirrorBox/p;->s:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const-string v0, "BoxProtocol,onCmd: ======Box Mic======"

    .line 94
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 95
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f:Z

    const/16 v0, 0x74

    .line 96
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 97
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->s:Z

    xor-int/2addr v0, v3

    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z

    goto/16 :goto_961

    :cond_428
    const-string v0, "recv  CarPlay_RequestHostUI..."

    .line 98
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->n()V

    .line 100
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/carplay.png"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_444

    .line 102
    invoke-static {v6, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 103
    :cond_444
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_961

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2022"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_961

    const/16 v0, 0xc8

    .line 104
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto/16 :goto_961

    .line 105
    :cond_460
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z

    if-eqz v0, :cond_961

    .line 106
    iput-boolean v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x:Z

    const-string v0, "BoxProtocol"

    const-string v2, "onCmd: Stop record audio========"

    .line 107
    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_961

    .line 108
    :cond_46f
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z

    if-eqz v0, :cond_961

    .line 109
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x:Z

    .line 110
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    monitor-enter v2

    .line 111
    :try_start_478
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    const-string v0, "BoxProtocol"

    const-string v3, "onCmd: Start record audio========"

    .line 112
    invoke-static {v0, v3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    monitor-exit v2

    goto/16 :goto_961

    :catchall_487
    move-exception v0

    monitor-exit v2
    :try_end_489
    .catchall {:try_start_478 .. :try_end_489} :catchall_487

    throw v0

    .line 114
    :cond_48a
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_49a

    goto/16 :goto_961

    .line 115
    :cond_49a
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    .line 118
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v14

    invoke-virtual {v14}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v14

    const-string v10, "2024.12.13.1130"

    invoke-virtual {v14, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0xc

    if-ltz v10, :cond_4ce

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    int-to-long v11, v10

    goto :goto_4d0

    :cond_4ce
    const-wide/16 v11, 0x0

    :goto_4d0
    and-int/lit8 v10, v9, 0x1

    shr-int/2addr v9, v5

    and-int/2addr v9, v13

    if-eqz v9, :cond_4df

    if-eq v9, v3, :cond_4dd

    if-eq v9, v5, :cond_4db

    goto :goto_4e0

    :cond_4db
    const/4 v9, 0x4

    goto :goto_4e0

    :cond_4dd
    const/4 v9, 0x1

    goto :goto_4e0

    :cond_4df
    const/4 v9, 0x2

    .line 120
    :goto_4e0
    iget v14, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b:I

    if-eq v9, v14, :cond_4f2

    .line 121
    iput v9, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b:I

    if-eq v3, v9, :cond_4ef

    if-ne v6, v9, :cond_4eb

    goto :goto_4ef

    .line 122
    :cond_4eb
    invoke-static {v5, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_4f2

    .line 123
    :cond_4ef
    :goto_4ef
    invoke-static {v5, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 124
    :cond_4f2
    :goto_4f2
    iget v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I

    if-eq v5, v10, :cond_551

    .line 125
    iput v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I

    .line 126
    iget-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v5, v5, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I

    const/4 v9, 0x5

    if-ne v5, v9, :cond_548

    if-nez v10, :cond_51a

    .line 127
    sget v5, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_532

    iget-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    if-eqz v5, :cond_532

    const/16 v17, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move/from16 v18, v0

    move/from16 v19, v7

    .line 128
    invoke-virtual/range {v16 .. v21}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V

    goto :goto_532

    .line 129
    :cond_51a
    sget v5, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_532

    iget-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    if-eqz v5, :cond_532

    const/16 v17, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move/from16 v18, v0

    move/from16 v19, v7

    .line 130
    invoke-virtual/range {v16 .. v21}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V

    .line 131
    :cond_532
    :goto_532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "COMPRESS_METHORD_H264  boffscreen= "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 132
    :cond_548
    iget v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I

    if-ne v5, v3, :cond_54e

    const/16 v8, 0xa

    :cond_54e
    invoke-static {v3, v8}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 133
    :cond_551
    iget v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I

    if-ne v0, v3, :cond_559

    iget v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I

    if-eq v7, v3, :cond_59d

    .line 134
    :cond_559
    iput v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I

    .line 135
    iput v7, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I

    .line 136
    invoke-static {v13, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 137
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_59d

    .line 138
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_59d

    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    if-eqz v2, :cond_59d

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new w h "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 140
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    const/16 v17, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move/from16 v18, v0

    move/from16 v19, v7

    invoke-virtual/range {v16 .. v21}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V

    .line 141
    :cond_59d
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_5a6

    return-void

    .line 142
    :cond_5a6
    iget-boolean v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->a:Z

    if-eqz v2, :cond_961

    .line 143
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I

    if-eq v2, v13, :cond_60b

    const/4 v5, 0x5

    if-eq v2, v5, :cond_5b5

    goto/16 :goto_961

    .line 144
    :cond_5b5
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5d7

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v2

    add-int/lit8 v21, v2, -0x14

    .line 146
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    if-eqz v2, :cond_961

    const/16 v17, 0x8

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v20

    move-object/from16 v16, v2

    move/from16 v18, v0

    move/from16 v19, v7

    move-wide/from16 v22, v11

    invoke-virtual/range {v16 .. v23}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h(III[BIJ)V

    goto/16 :goto_961

    :cond_5d7
    if-ne v2, v5, :cond_961

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v2

    sub-int/2addr v2, v3

    add-int/lit8 v5, v2, 0x20

    .line 149
    new-array v5, v5, [B

    .line 150
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 151
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v2, 0x24

    .line 152
    invoke-virtual {v8, v6, v9}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v8, v4, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/16 v0, 0xc

    .line 154
    invoke-virtual {v8, v0, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/high16 v0, 0x10000

    .line 155
    invoke-virtual {v8, v15, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v0

    const/16 v4, 0x20

    invoke-static {v0, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    invoke-static {v5}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->F([B)V

    goto/16 :goto_961

    .line 158
    :cond_60b
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_961

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v2

    sub-int/2addr v2, v3

    add-int/lit8 v5, v2, 0x20

    .line 160
    new-array v5, v5, [B

    .line 161
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 162
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v2, 0x24

    .line 163
    invoke-virtual {v8, v6, v9}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v8, v4, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/16 v0, 0xc

    .line 165
    invoke-virtual {v8, v0, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/high16 v0, 0x20000

    .line 166
    invoke-virtual {v8, v15, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v0

    const/16 v4, 0x20

    invoke-static {v0, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    invoke-static {v5}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->F([B)V

    goto/16 :goto_961

    :cond_642
    const-string v0, "BoxProtocol"

    const-string v4, "onCmd: #CMD_PLUGOUT."

    .line 169
    invoke-static {v0, v4}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-ne v0, v6, :cond_679

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_679

    const-string v0, "BoxProtocol,onCmd: CMD_PLUGOUT: Manually disconnected by the user on the phone end."

    .line 172
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 173
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f05000e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_676

    .line 174
    invoke-static {v6, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 175
    :cond_676
    invoke-static {v3, v14}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 176
    :cond_679
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_68c

    iget-object v6, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    if-eqz v6, :cond_68c

    const/4 v7, 0x0

    .line 177
    iget v8, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I

    iget v9, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V

    .line 178
    :cond_68c
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    .line 179
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    const-string v0, "BoxProtocol"

    const-string v4, "onCmd: #CMD_PLUGOUT Phone Disconnected."

    .line 180
    invoke-static {v0, v4}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_69d

    goto :goto_69e

    :cond_69d
    const/4 v2, 0x2

    :goto_69e
    invoke-static {v3, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 182
    invoke-direct/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t1()V

    .line 183
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->v()V

    const/4 v0, -0x2

    .line 184
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    goto/16 :goto_961

    .line 185
    :cond_6b0
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-ne v6, v0, :cond_961

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BoxProtocol,onCmd: Recv CMD_PHASE iPhase = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 188
    iget-boolean v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z

    if-eqz v2, :cond_6db

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z

    goto/16 :goto_961

    :cond_6db
    if-eq v0, v13, :cond_77a

    if-eq v0, v6, :cond_774

    const/4 v2, 0x5

    if-eq v0, v2, :cond_76f

    if-eq v0, v11, :cond_77a

    if-eq v0, v4, :cond_750

    if-eq v0, v7, :cond_71e

    const/16 v2, 0xa

    if-eq v0, v2, :cond_750

    if-eq v0, v8, :cond_719

    packed-switch v0, :pswitch_data_9b4

    goto/16 :goto_961

    :pswitch_6f3
    const/16 v0, 0x35

    .line 190
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :pswitch_6fa
    const/16 v0, 0x34

    .line 191
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :pswitch_701
    const/16 v0, 0x33

    .line 192
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    const-string v0, "BoxProtocol,onCmd: Hardware Error: Wifi"

    .line 193
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto/16 :goto_961

    :pswitch_70d
    const/16 v0, 0x32

    .line 194
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    const-string v0, "BoxProtocol,onCmd: Hardware Error: Bluetooth"

    .line 195
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto/16 :goto_961

    .line 196
    :cond_719
    invoke-static {v3, v9}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :cond_71e
    const-string v0, "BoxProtocol"

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCmd: PHASE_LinkFailed phoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",bPhoneConnected="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_961

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-nez v0, :cond_961

    const/16 v0, 0xcc

    .line 199
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :cond_750
    const/16 v0, 0x9

    .line 200
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 201
    invoke-static {v3, v10}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 202
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    const/4 v5, 0x2

    iget v6, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I

    iget v7, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V

    .line 203
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    const-string v0, "BoxProtocol"

    const-string v2, "onCmd: #PHASE_CARPLAY_WORING/PHASE_NonAIRPLAY_WORING"

    .line 204
    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_961

    .line 205
    :cond_76f
    invoke-static {v3, v11}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    :cond_774
    const/4 v0, 0x5

    .line 206
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto/16 :goto_961

    .line 207
    :cond_77a
    invoke-static {v3, v10}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 208
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    const-string v0, "BoxProtocol"

    const-string v2, "onCmd: #PHASE_IOS_WORING/PHASE_ANDROID_WORKING"

    .line 209
    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_961

    .line 210
    :cond_788
    iget-boolean v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z

    if-eqz v0, :cond_791

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z

    goto/16 :goto_961

    .line 212
    :cond_791
    iput v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I

    .line 213
    iput v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b:I

    .line 214
    iput v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I

    .line 215
    iput v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-ne v0, v6, :cond_7af

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    .line 218
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    .line 219
    invoke-direct {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R(I)V

    goto :goto_7e7

    .line 220
    :cond_7af
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-ne v0, v4, :cond_7e7

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_7ca

    const/4 v2, 0x1

    :cond_7ca
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,onCmd: Recv bWifiDeviceConected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 224
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    invoke-direct {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R(I)V

    .line 225
    :cond_7e7
    :goto_7e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,onCmd: Recv CMD_PLUG, Phone Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",WorkMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/v0/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 226
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;

    if-eqz v0, :cond_817

    .line 227
    invoke-interface {v0}, Lcn/manstep/phonemirrorBox/q0/g;->j()I

    move-result v0

    sput v0, Lcn/manstep/phonemirrorBox/p;->G:I

    .line 228
    :cond_817
    invoke-direct/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Z()V

    goto/16 :goto_961

    .line 229
    :cond_81c
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v4

    if-ne v0, v4, :cond_94b

    .line 230
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Lcn/manstep/phonemirrorBox/util/z;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x24

    .line 231
    invoke-static {v3, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 232
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->j(Ljava/nio/ByteBuffer;)V

    .line 233
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v4, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I

    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoxProtocol,onCmd: Recv CMD_OPEN:  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v4, v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v4, v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v4, v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "fps "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v4, v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v4, v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->e:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 235
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v4, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I

    const/16 v5, 0xfa0

    if-gt v4, v5, :cond_945

    iget v4, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I

    if-gt v4, v5, :cond_945

    iget v4, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I

    const/16 v5, 0x3c

    if-le v4, v5, :cond_8b3

    goto/16 :goto_945

    .line 236
    :cond_8b3
    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I

    const/16 v4, 0x7b

    if-nez v0, :cond_8c0

    .line 237
    invoke-virtual {v1, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V

    .line 238
    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_917

    .line 239
    :cond_8c0
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v0

    sget-object v5, Lcn/manstep/phonemirrorBox/m;->a:[I

    invoke-virtual {v0, v2, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->t(I[I)Z

    move-result v0

    if-eqz v0, :cond_8da

    const-string v0, "BoxProtocol"

    const-string v5, "onCmd: PID ERROR"

    .line 240
    invoke-static {v0, v5}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V

    .line 242
    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_917

    .line 243
    :cond_8da
    iget-boolean v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m:Z

    if-nez v0, :cond_911

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BoxProtocol,box not support crypt!!!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v5

    invoke-virtual {v5}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const-string v0, "2024.07.08.0000"

    .line 245
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v5

    invoke-virtual {v5}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_917

    .line 246
    invoke-virtual {v1, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V

    .line 247
    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_917

    .line 248
    :cond_911
    invoke-virtual {v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h0()Z

    .line 250
    :cond_917
    :goto_917
    iget-boolean v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f:Z

    if-eqz v0, :cond_92c

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z

    if-eqz v0, :cond_92c

    .line 251
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v3, "MicType"

    invoke-virtual {v0, v3, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F0(I)Z

    .line 252
    :cond_92c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,onCmd: Recv CMD_OPEN: g_Open.iBoxversion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_961

    :cond_945
    :goto_945
    const-string v0, "BoxProtocol,onCmd: Recv CMD_OPEN: data exception!!!"

    .line 253
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_961

    .line 254
    :cond_94b
    invoke-virtual/range {p1 .. p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    if-nez v0, :cond_95c

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z

    const-string v0, "BoxProtocol"

    const-string v2, "onCmd: Resend g_Open!! #####################"

    .line 256
    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_961

    :cond_95c
    const-string v0, "NULL!!!!!!"

    .line 257
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_961
    :goto_961
    :sswitch_961
    return-void

    :sswitch_data_962
    .sparse-switch
        0xb -> :sswitch_169
        0x16 -> :sswitch_164
        0x77 -> :sswitch_15d
        0x88 -> :sswitch_13f
        0x99 -> :sswitch_13a
        0xa1 -> :sswitch_135
        0xb1 -> :sswitch_108
        0xbb -> :sswitch_e1
        0xcc -> :sswitch_73
        0xf0 -> :sswitch_6a
        0xff -> :sswitch_961
    .end sparse-switch

    :pswitch_data_990
    .packed-switch 0x7
        :pswitch_3c8
        :pswitch_3bf
        :pswitch_3b8
        :pswitch_3ae
    .end packed-switch

    :pswitch_data_99c
    .packed-switch 0x3eb
        :pswitch_3a7
        :pswitch_3a0
        :pswitch_399
        :pswitch_392
        :pswitch_389
        :pswitch_380
        :pswitch_375
        :pswitch_36c
        :pswitch_365
        :pswitch_35e
    .end packed-switch

    :pswitch_data_9b4
    .packed-switch 0x3e9
        :pswitch_70d
        :pswitch_701
        :pswitch_6fa
        :pswitch_6f3
    .end packed-switch
.end method

.method private Z()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->A(Landroid/content/Context;Z)V

    const/4 v0, 0x4

    .line 2
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_12
    const/16 v3, 0xa

    if-ge v2, v3, :cond_3e

    .line 3
    sget-boolean v3, Lcn/manstep/phonemirrorBox/MainActivity;->b0:Z

    if-nez v3, :cond_3e

    const-wide/16 v3, 0xc8

    .line 4
    :try_start_1c
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_3b

    :catch_20
    move-exception v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phonePlugIn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoxProtocol"

    invoke-static {v4, v3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 6
    :cond_3e
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_47

    .line 7
    invoke-static {v1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_54

    .line 8
    :cond_47
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M:Z

    if-eqz v2, :cond_52

    const/4 v0, 0x3

    .line 9
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 10
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M:Z

    goto :goto_54

    .line 11
    :cond_52
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M:Z

    .line 12
    :goto_54
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    if-eq v0, v3, :cond_66

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    if-eqz v4, :cond_66

    const/4 v5, 0x1

    .line 13
    iget v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I

    iget v7, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V

    :cond_66
    return-void
.end method

.method private a0()V
    .registers 17

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readThreadRun: start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoxProtocol"

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    invoke-direct {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    .line 3
    :cond_23
    :goto_23
    iget-boolean v11, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C:Z

    if-nez v11, :cond_14b

    const-wide/16 v11, 0xa

    cmp-long v13, v5, v11

    if-gez v13, :cond_45

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "readThreadRun: time1="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_45
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object v13

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v14

    invoke-static {v13, v14}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->H([BI)Z

    move-result v13

    if-eqz v13, :cond_146

    .line 7
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->l()V

    .line 8
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v13

    invoke-virtual {v13}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c()Z

    move-result v13

    if-nez v13, :cond_72

    const-string v7, "readThreadRun: receive error head!!!"

    .line 9
    invoke-static {v2, v7}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v7, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Lcn/manstep/phonemirrorBox/util/z;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c1()Z

    const-wide/16 v7, 0x0

    goto :goto_23

    .line 12
    :cond_72
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    cmp-long v13, v5, v11

    if-gez v13, :cond_91

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 14
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "readThreadRun: time2="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_91
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v13

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v14

    invoke-static {v13, v14}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->H([BI)Z

    move-result v13

    if-eqz v13, :cond_140

    .line 16
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->k()V

    const/4 v13, 0x7

    .line 17
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v14

    invoke-static {v14}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I

    move-result v14

    if-ne v13, v14, :cond_ed

    .line 18
    sget v13, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_cf

    .line 19
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "readThreadRun: (phoneType == PHONE_TYPE_UNKNOWN), CMD_AUDIO_FRAME decode_type="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v15

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_cf
    iget-boolean v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->H:Z

    if-nez v3, :cond_f0

    sget v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    if-eq v3, v14, :cond_f0

    .line 21
    iget-object v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_dd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    .line 22
    invoke-virtual {v4, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->t(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V

    goto :goto_dd

    .line 23
    :cond_ed
    invoke-direct {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V

    :cond_f0
    const/4 v3, 0x6

    .line 24
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v4

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I

    move-result v4

    if-ne v3, v4, :cond_ff

    const-wide/16 v3, 0x1

    add-long/2addr v5, v3

    goto :goto_117

    :cond_ff
    const/4 v3, 0x4

    .line 25
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v4

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I

    move-result v4

    if-eq v3, v4, :cond_115

    const/4 v3, 0x2

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v4

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I

    move-result v4

    if-ne v3, v4, :cond_117

    :cond_115
    const-wide/16 v5, 0x0

    :cond_117
    :goto_117
    cmp-long v3, v5, v11

    if-gez v3, :cond_23

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 27
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readThreadRun: readHead="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v9, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ",readData="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v9

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_140
    const-string v1, "readThreadRun: readThread err 2"

    .line 28
    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b

    :cond_146
    const-string v1, "readThreadRun: readThread err 1"

    .line 29
    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_14b
    :goto_14b
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcn/manstep/phonemirrorBox/util/z;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readThreadRun: end readThread------:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    .registers 10

    const-string v0, "BoxProtocol,saveBluetoothPairList: "

    const-string v1, "BoxProtocol"

    const-string v2, "saveBluetoothPairList: ###"

    .line 1
    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_14

    return-void

    .line 3
    :cond_14
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_af

    .line 5
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 6
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p1

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    invoke-direct {v5, p1, v7, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    if-lez v3, :cond_45

    const-string p1, "\n"

    .line 7
    invoke-virtual {v5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j1(I)V

    goto :goto_48

    .line 8
    :cond_45
    invoke-virtual {p0, v7}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j1(I)V

    .line 9
    :goto_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bluetooth_pair_list"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0, v7, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 13
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    const/16 p1, 0xd2

    .line 14
    invoke-static {v4, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_95} :catch_96

    goto :goto_af

    :catch_96
    move-exception p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveBluetoothPairList: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    :goto_af
    return-void
.end method

.method private f0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    .registers 11

    const-string v0, "/"

    .line 1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_d

    return-void

    .line 2
    :cond_d
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/n;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    :try_start_11
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 4
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    const-string v7, "ISO-8859-1"

    const/4 v8, 0x4

    invoke-direct {v4, v5, v8, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v2, v8

    .line 5
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    add-int/2addr v2, v8

    .line 6
    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v8, "log"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/hwbox.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;

    goto :goto_87

    .line 10
    :cond_6e
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "apk"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/c0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 12
    :cond_87
    :goto_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BoxProtocol,saveFileFromBox: Recv file "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from Box, file content "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " byte"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->m(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z

    .line 14
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p1

    invoke-static {p1, v2, v5, v0}, Lcn/manstep/phonemirrorBox/util/n;->x([BIILjava/lang/String;)Z

    if-eqz v3, :cond_d3

    const/16 p1, 0x21

    .line 15
    invoke-static {v7, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_b9} :catch_ba

    goto :goto_d3

    :catch_ba
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol, saveFileFromBox: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_d3
    :goto_d3
    return-void
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Lcn/manstep/phonemirrorBox/BoxInterface/f$h;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->A:Lcn/manstep/phonemirrorBox/BoxInterface/f$h;

    return-object p0
.end method

.method private g1([B)Z
    .registers 4

    .line 1
    array-length v0, p1

    const/16 v1, 0xa2

    invoke-direct {p0, v1, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z

    move-result p1

    return p1
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x:Z

    return p0
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Lcn/manstep/phonemirrorBox/util/z;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    return-object p0
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/BoxInterface/f;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;

    return-object p1
.end method

.method private k1([BI)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic m(Lcn/manstep/phonemirrorBox/BoxInterface/f;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method static synthetic n(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v0(I)Z

    move-result p0

    return p0
.end method

.method static synthetic o(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic p(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m:Z

    return p0
.end method

.method static synthetic q(Lcn/manstep/phonemirrorBox/BoxInterface/f;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I

    return p0
.end method

.method static synthetic r(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->a0()V

    return-void
.end method

.method private r1(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->W()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_6a

    .line 3
    :try_start_f
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 4
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v4

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result p1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v2, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,showConnectionPinCode: phoneType="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Pincode: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 p1, 0x6

    if-eq v0, p1, :cond_4b

    const/4 p1, 0x7

    if-ne v0, p1, :cond_6a

    .line 6
    :cond_4b
    invoke-virtual {p0, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p1(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4e} :catch_4f

    goto :goto_6a

    :catch_4f
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConnectionPinCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BoxProtocol"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    :goto_6a
    const/16 p1, 0xe6

    .line 8
    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    return-void
.end method

.method static synthetic s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C:Z

    return p0
.end method

.method private s1(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->W()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_6f

    .line 3
    :try_start_f
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 4
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v4

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result p1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v2, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->i()Z

    move-result p1

    if-nez p1, :cond_31

    const-string v3, ""

    .line 6
    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,showConnectionUrl: phoneType="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", HiCarURL: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 p1, 0x6

    if-ne v0, p1, :cond_6f

    .line 7
    invoke-virtual {p0, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q1(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_53} :catch_54

    goto :goto_6f

    :catch_54
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showConnectionUrl: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BoxProtocol"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    const/16 p1, 0xd6

    .line 9
    invoke-static {v1, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    return-void
.end method

.method private t(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "unknown"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 3
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,checkBoxVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-eq v0, v2, :cond_31

    .line 5
    invoke-virtual {p0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V

    goto :goto_41

    :cond_31
    const/16 v0, 0x11

    .line 6
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Y"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V

    :goto_41
    return-void
.end method

.method private t1()V
    .registers 3

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x:Z

    .line 3
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAllAudio: AudioPlayerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxProtocol"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    .line 5
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->K()V

    goto :goto_29

    :cond_39
    return-void
.end method

.method private u(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 3
    new-array v2, v1, [B

    .line 4
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v1, :cond_3b

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " readCount = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", length = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 p2, 0x0

    goto :goto_3c

    :cond_3b
    const/4 p2, 0x1

    .line 6
    :goto_3c
    invoke-virtual {p0, p3, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_44

    move v0, p2

    goto :goto_5d

    :catch_44
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BoxProtocol,copyAssetFiletoBox: \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_5d
    return v0
.end method

.method private v0(I)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 3
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v3

    invoke-static {v3, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 4
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 5
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    .line 6
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 7
    monitor-enter p0

    .line 8
    :try_start_29
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object v3

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v1

    invoke-static {v3, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_52

    .line 9
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,sendCmd: cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret = false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    :goto_52
    monitor-exit p0

    goto :goto_6b

    :catchall_54
    move-exception p1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_29 .. :try_end_56} :catchall_54

    throw p1

    .line 11
    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,sendCmd: bOpened_ = false, cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_6b
    return v0
.end method

.method private w(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_68

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_68

    .line 3
    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v1, v3

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoxProtocol,copyLocalFileToBox: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", length = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const p1, 0x19000

    if-le v1, p1, :cond_3f

    const-string p1, "BoxProtocol,copyLocalFileToBox: The local file that needs to be sent to the box is larger than 100kb!!! "

    .line 5
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return v2

    .line 6
    :cond_3f
    :try_start_3f
    new-array p1, v1, [B

    .line 7
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 10
    invoke-virtual {p0, p2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z

    move-result p1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_50} :catch_51

    return p1

    :catch_51
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_68
    :goto_68
    return v2
.end method

.method private w0(II)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 4
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 5
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    .line 6
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 8
    monitor-enter p0

    .line 9
    :try_start_31
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object v1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v3

    invoke-static {v1, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 10
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result v0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    .line 11
    :goto_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,sendCmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 12
    monitor-exit p0

    goto :goto_92

    :catchall_73
    move-exception p1

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_31 .. :try_end_75} :catchall_73

    throw p1

    .line 13
    :cond_76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,sendCmd: bOpened_ = false, cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_92
    return v0
.end method

.method private x(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x11

    if-eq p1, v0, :cond_28

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_25

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_22

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_22
    const-string p1, "CarPlay_StopBleAdv"

    return-object p1

    :cond_25
    const-string p1, "CarPlay_StartBleAdv"

    return-object p1

    :cond_28
    const-string p1, "CarPlay_StopNightMode"

    return-object p1

    :cond_2b
    const-string p1, "CarPlay_StartNightMode"

    return-object p1
.end method

.method private z0(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x3

    aput-byte p2, v0, v1

    .line 1
    :try_start_21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z

    move-result v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p1

    .line 2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_3f
    return v2
.end method


# virtual methods
.method public A()Z
    .registers 2

    const-string v0, "BoxProtocol,getBluetoothOnlineList: 1013"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v0, 0x3f5

    .line 2
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    move-result v0

    return v0
.end method

.method B()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k:Ljava/lang/String;

    return-object v0

    :cond_d
    const-string v0, "Auto Box"

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method public D0(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_5
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BoxProtocol"

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h1([B)Z

    move-result p1
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2a} :catch_2b

    return p1

    :catch_2b
    const/4 p1, 0x0

    return p1
.end method

.method public E()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method public E0()Z
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendManualDisconnectTemp: isUnauthorized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxProtocol"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 2
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v0(I)Z

    move-result v0

    return v0
.end method

.method public F()I
    .registers 2

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->L:I

    return v0
.end method

.method public F0(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    const/16 p1, 0xf

    .line 1
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    move-result p1

    return p1

    :cond_a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    const/16 p1, 0x15

    .line 2
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    move-result p1

    return p1

    :cond_14
    const/4 p1, 0x7

    .line 3
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    move-result p1

    return p1
.end method

.method public G()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K:[B

    return-object v0
.end method

.method public G0(Lcn/manstep/phonemirrorBox/BoxInterface/e;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2
    :cond_f
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/e;->a()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 4
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    .line 5
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/e;->c(Ljava/nio/ByteBuffer;I)V

    .line 6
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 7
    monitor-enter p0

    .line 8
    :try_start_30
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object p1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v1

    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 9
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_58

    :cond_4d
    const-string p1, "Send multi touch data err"

    .line 10
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_58

    :cond_53
    const-string p1, "Send multi touch head err"

    .line 11
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 12
    :goto_58
    monitor-exit p0

    return-void

    :catchall_5a
    move-exception p1

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public H()Lcn/manstep/phonemirrorBox/BoxInterface/a;
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->G:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_7
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z(I)Lcn/manstep/phonemirrorBox/BoxInterface/a;

    move-result-object v0

    return-object v0
.end method

.method public H0()V
    .registers 6

    const-string v0, "sendPid: "

    const-string v1, "BoxProtocol"

    .line 1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string v3, "pid"

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_2a

    :catch_13
    move-exception v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_2a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa0

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v2, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->A0(ILjava/lang/String;Z)Z

    return-void
.end method

.method public I()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public I0(IIII)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2
    :cond_f
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 4
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    const/4 v2, 0x0

    if-eqz p1, :cond_3d

    const/4 v3, 0x1

    if-eq p1, v3, :cond_33

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2b

    goto :goto_46

    .line 5
    :cond_2b
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_46

    .line 6
    :cond_33
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v3, 0xf

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_46

    .line 7
    :cond_3d
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v3, 0xe

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 8
    :goto_46
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    const/16 v4, 0x8

    shl-int/2addr p2, v4

    or-int/2addr p2, v3

    invoke-virtual {p1, v2, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v4, p4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 p2, 0xc

    iget p3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b:I

    iget p4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I

    shl-int/2addr p4, v1

    or-int/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 13
    monitor-enter p0

    .line 14
    :try_start_7b
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object p1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result p2

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 15
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result p2

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-eqz p1, :cond_98

    goto :goto_a3

    :cond_98
    const-string p1, "Send touch data err"

    .line 16
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_a3

    :cond_9e
    const-string p1, "Send touch head err"

    .line 17
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 18
    :goto_a3
    monitor-exit p0

    return-void

    :catchall_a5
    move-exception p1

    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_7b .. :try_end_a7} :catchall_a5

    throw p1
.end method

.method public J()Lcn/manstep/phonemirrorBox/q0/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;

    return-object v0
.end method

.method public J0(Ljava/lang/String;I)Z
    .registers 3

    if-lez p2, :cond_b

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D0(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public K()I
    .registers 2

    .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    return v0
.end method

.method public K0(I)Z
    .registers 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    const/16 p1, 0x19

    .line 1
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    move-result p1

    return p1

    :cond_a
    const/16 p1, 0x18

    .line 2
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    move-result p1

    return p1
.end method

.method public L()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method public L0(I)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,send_AndroidWorkMode: mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const-string v0, "/etc/android_work_mode"

    .line 2
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z0(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public M0(I)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send_CarplayLogoType: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxProtocol"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 2
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w0(II)Z

    move-result p1

    return p1
.end method

.method public N0(I)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,send_NightMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (0:day 1:night)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-nez p1, :cond_21

    const/16 v0, 0x11

    .line 2
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    goto :goto_30

    :cond_21
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2a

    const/16 v0, 0x10

    .line 3
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    goto :goto_30

    :cond_2a
    const/4 v0, 0x2

    const-string v1, "DayNightMode"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f1(Ljava/lang/String;I)Z

    :goto_30
    const-string v0, "/tmp/night_mode"

    .line 5
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z0(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public O0()Z
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->A()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/c0;->h()I

    move-result v0

    goto :goto_17

    .line 3
    :cond_f
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/c0;->f()I

    move-result v0

    .line 4
    :goto_17
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P0(I)Z

    move-result v0

    return v0
.end method

.method public P0(I)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,send_ScreenDPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const-string v0, "/tmp/screen_dpi"

    .line 2
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z0(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public Q()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->t()Lcn/manstep/phonemirrorBox/util/x;

    move-result-object v0

    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D:I

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->t()Lcn/manstep/phonemirrorBox/util/x;

    move-result-object v0

    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,initBoundSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public Q0()Z
    .registers 2

    const/16 v0, 0x15

    .line 1
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v0(I)Z

    move-result v0

    return v0
.end method

.method public R0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_4
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object v0

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 4
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v0

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result p1

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 5
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_24
    const-string p1, "BoxProtocol,send_audio_record: Write audioRecord data err"

    .line 6
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 7
    monitor-exit p0

    return v1

    :cond_2b
    const-string p1, "BoxProtocol,send_audio_record: Write audioRecord head err"

    .line 8
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 9
    monitor-exit p0

    return v1

    :catchall_32
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public S()Z
    .registers 3

    .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public S0([B)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    invoke-direct {v1, p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 2
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 3
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    array-length v3, p1

    const/4 v4, 0x4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 4
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    .line 5
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v2

    array-length v5, p1

    invoke-static {p1, v0, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 8
    monitor-enter p0

    .line 9
    :try_start_33
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object p1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v2

    invoke-static {p1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 10
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v1

    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 11
    monitor-exit p0

    return v3

    :cond_51
    const-string p1, "BoxProtocol,send_camera_info: Write data err"

    .line 12
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 13
    monitor-exit p0

    return v0

    :cond_58
    const-string p1, "BoxProtocol,send_camera_info: Write head err"

    .line 14
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 15
    monitor-exit p0

    return v0

    :catchall_5f
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_33 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public T()Z
    .registers 3

    .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public T0(I)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send_carplay_cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxProtocol"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w0(II)Z

    move-result p1

    return p1
.end method

.method public U()Z
    .registers 3

    .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public U0(I)Z
    .registers 3

    const/16 v0, 0x88

    .line 1
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w0(II)Z

    move-result p1

    return p1
.end method

.method public V()Z
    .registers 2

    .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public V0()Z
    .registers 5

    .line 1
    :goto_0
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I

    if-gtz v0, :cond_13

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I

    goto :goto_0

    .line 3
    :cond_13
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 4
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    const/16 v3, 0xf0

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 5
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 6
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    .line 7
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 9
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->W(I)V

    .line 10
    monitor-enter p0

    .line 11
    :try_start_3f
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object v1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v2

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 12
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result v3

    .line 13
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,sendCmd CMD_ENABLE_CRYPT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 14
    monitor-exit p0

    return v3

    :catchall_79
    move-exception v0

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_3f .. :try_end_7b} :catchall_79

    goto :goto_7d

    :goto_7c
    throw v0

    :goto_7d
    goto :goto_7c
.end method

.method public W()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z

    return v0
.end method

.method public W0(I)Z
    .registers 3

    const/16 v0, 0x77

    .line 1
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w0(II)Z

    move-result p1

    return p1
.end method

.method public X0()Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->W()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->H0()V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    sget v2, Lcn/manstep/phonemirrorBox/p;->C:I

    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I

    .line 4
    sget-boolean v2, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-eqz v2, :cond_26

    .line 5
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D:I

    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I

    .line 6
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E:I

    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I

    const/16 v2, 0xa0

    .line 7
    iput v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F:I

    const/16 v2, 0x19

    .line 8
    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I

    goto :goto_5d

    .line 9
    :cond_26
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D:I

    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I

    .line 10
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E:I

    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->A()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v2, "DPI"

    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/c0;->h()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F:I

    goto :goto_5d

    .line 13
    :cond_49
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v2, "DPI"

    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/c0;->f()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F:I

    .line 14
    :goto_5d
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->V0()Z

    .line 15
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F:I

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P0(I)Z

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "fps, dpi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoxProtocol,send_g_open: AutoPlay Video resolution and frame rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Config.bUseSoftDecode = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->L0(I)Z

    .line 19
    sget v0, Lcn/manstep/phonemirrorBox/p;->r:I

    if-gez v0, :cond_ce

    .line 20
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    invoke-static {}, Lcn/manstep/phonemirrorBox/p;->a()I

    move-result v2

    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I

    goto :goto_d2

    .line 21
    :cond_ce
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iput v0, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I

    .line 22
    :goto_d2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,send_g_open: g_Open.iBoxversion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 23
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_f1

    if-gez v0, :cond_10a

    .line 24
    :cond_f1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,send_g_open: error phoneWorkMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 25
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I

    .line 26
    :cond_10a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,send_g_open: phoneWorkMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",androidWorkMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->i:I

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 28
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 29
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g()I

    move-result v4

    invoke-static {v2, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 30
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    .line 31
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->e()[B

    move-result-object v2

    .line 32
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v4

    .line 33
    array-length v5, v2

    invoke-static {v2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 35
    monitor-enter p0

    .line 36
    :try_start_163
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object v2

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v4

    invoke-static {v2, v4}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result v2

    if-eqz v2, :cond_18d

    .line 37
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v2

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result v0

    if-eqz v0, :cond_186

    const-string v0, "BoxProtocol,send_g_open: success "

    .line 38
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 39
    monitor-exit p0

    return v3

    :cond_186
    const-string v0, "BoxProtocol,send_g_open: Write g_Open data err"

    .line 40
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 41
    monitor-exit p0

    return v1

    :cond_18d
    const-string v0, "BoxProtocol,send_g_open: Write g_Open head err"

    .line 42
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 43
    monitor-exit p0

    return v1

    :catchall_194
    move-exception v0

    .line 44
    monitor-exit p0
    :try_end_196
    .catchall {:try_start_163 .. :try_end_196} :catchall_194

    throw v0
.end method

.method public Y0()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$f;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$f;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V

    const-string v2, "send_g_open_async"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public Z0()Z
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const-string v1, "/tmp/iphone_work_mode\u0000"

    .line 1
    invoke-virtual {p0, v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const-string p1, "BoxProtocol,UploadAssets: context==null"

    .line 1
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_9
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2022"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_20

    const-string v0, "other_link.hwfs"

    .line 3
    invoke-direct {p0, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_20
    const-string v1, "adb"

    .line 4
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "adb.pub"

    .line 5
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "helloworld0"

    .line 6
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "helloworld1"

    .line 7
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "helloworld2"

    .line 8
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libby265n.so"

    .line 9
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libby265n_x86.so"

    .line 10
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap40.so"

    .line 11
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap41.so"

    .line 12
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap43.so"

    .line 13
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap50.so"

    .line 14
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap50_x86.so"

    .line 15
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap442.so"

    .line 16
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap422.so"

    .line 17
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "mirrorcoper.apk"

    .line 18
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap60.so"

    .line 19
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap70.so"

    .line 20
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap71.so"

    .line 21
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap80.so"

    .line 22
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap90.so"

    .line 23
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "libscreencap100.so"

    .line 24
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "HWTouch.dex"

    .line 25
    invoke-direct {p0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d1

    const/4 v0, 0x1

    :cond_d1
    return v0
.end method

.method public a1()V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$g;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$g;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V

    const-string v2, "send_invalidMode"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b0()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxProtocol"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f:Z

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z

    const/4 v1, -0x2

    .line 4
    sput v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    .line 5
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Q:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z

    .line 7
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    .line 8
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m:Z

    .line 9
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h:Z

    .line 10
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I

    return-void
.end method

.method public b1()Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z

    .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    const/4 v0, -0x2

    .line 3
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send_manualDisconnect: isUnauthorized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxProtocol"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 5
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v0(I)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "CarPlayLogoType"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    return-void

    .line 2
    :cond_12
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "CarPlayOEMIconName"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "\n"

    if-nez v0, :cond_53

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "custom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_53

    .line 4
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oemIconLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_53
    :goto_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "name = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oemIconVisible = 1\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "model = Magic-Car-Link-1.00\noemIconPath = /etc/oem_icon.png\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v0, "/etc/airplay.conf\u0000"

    invoke-virtual {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z

    return-void
.end method

.method public c0(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;

    sput p1, Lcn/manstep/phonemirrorBox/p;->C:I

    iput p1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z

    move-result p1

    return p1
.end method

.method public c1()Z
    .registers 5

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    const/16 v3, 0xce

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 3
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    .line 4
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 5
    monitor-enter p0

    .line 6
    :try_start_16
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object v2

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "BoxProtocol,sendCmd: CMD_BOX_REBOOT , ret = false"

    .line 7
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x1

    .line 8
    :goto_2b
    monitor-exit p0

    return v1

    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public d0(II)Z
    .registers 3

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D:I

    .line 2
    iput p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E:I

    .line 3
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z

    move-result p1

    return p1
.end method

.method public d1(Z)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->I(Z)V

    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f(Landroid/content/Context;)V

    return-void
.end method

.method public e1([B)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,setBoxBluetoothName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/16 v1, 0xf

    if-le v0, v1, :cond_21

    const-string p1, "BoxProtocol,setBoxBluetoothName: Bluetooth name is too long."

    .line 3
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_21
    const/16 v0, 0xd

    .line 4
    array-length v1, p1

    invoke-direct {p0, v0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z

    move-result p1

    return p1
.end method

.method public f(Landroid/content/Context;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "CarPlayLogoType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_16

    const-string v4, "carplay"

    const/4 v5, 0x0

    goto :goto_2c

    .line 2
    :cond_16
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v4

    const-string v5, "CarPlayOEMIconPath"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v5

    const-string v6, "CarBrandId"

    invoke-virtual {v5, v6, v3}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v5

    .line 4
    :goto_2c
    invoke-virtual {p0, v5, v3}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t0(II)Z

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BoxProtocol,UploadLocalLogoPNGPublic: filePath = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "/etc/icon_256x256.png\u0000"

    const-string v6, "/etc/icon_180x180.png\u0000"

    const-string v7, "/etc/icon_120x120.png\u0000"

    if-eqz v3, :cond_61

    .line 7
    invoke-virtual {p0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M0(I)Z

    const-string v0, "CarLogo/default.png"

    .line 8
    invoke-direct {p0, p1, v0, v7}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 9
    invoke-direct {p0, p1, v0, v6}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    invoke-direct {p0, p1, v0, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_60
    return-void

    :cond_61
    const-string v3, "custom"

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 12
    invoke-direct {p0, v4, v7}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    invoke-direct {p0, v4, v6}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    invoke-direct {p0, v4, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c(Landroid/content/Context;)V

    return-void

    .line 16
    :cond_7e
    invoke-direct {p0, p1, v4, v7}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    invoke-direct {p0, p1, v4, v6}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    invoke-direct {p0, p1, v4, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-ne v0, v1, :cond_8d

    .line 19
    invoke-virtual {p0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M0(I)Z

    goto :goto_9b

    .line 20
    :cond_8d
    invoke-virtual {p0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M0(I)Z

    .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c(Landroid/content/Context;)V

    :goto_9b
    return-void
.end method

.method public f1(Ljava/lang/String;I)Z
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_5
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_8} :catch_2b

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBoxConfig: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BoxProtocol"

    invoke-static {v0, p2}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g1([B)Z

    move-result p1

    return p1

    :catch_2b
    const/4 p1, 0x0

    return p1
.end method

.method public g0(II)Z
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "androidAutoSizeW"

    .line 2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "androidAutoSizeH"

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BoxProtocol,sendAndroidAutoSize: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h1([B)Z

    move-result p1
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2f} :catch_30

    return p1

    :catch_30
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendAndroidAutoSize: \n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BoxProtocol"

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public h0()Z
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f()I

    move-result v0

    if-ne v0, v1, :cond_28

    :cond_d
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p:Z

    if-nez v0, :cond_28

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "BoxProtocol,sendAndroidWorkModeAssets: UploadAssets failed!"

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_28

    :cond_25
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p:Z

    .line 5
    :cond_28
    :goto_28
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p:Z

    return v0
.end method

.method public h1([B)Z
    .registers 4

    .line 1
    array-length v0, p1

    const/16 v1, 0x19

    invoke-direct {p0, v1, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z

    move-result p1

    return p1
.end method

.method public i0()Z
    .registers 6

    const-string v0, ""

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "version"

    const-string v3, "2025.03.19.1126"

    .line 2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "code"

    const/16 v3, 0x25

    .line 3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "lang"

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/x;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uuid"

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "size"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcn/manstep/phonemirrorBox/p;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "model"

    .line 7
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ro.board.platform"

    .line 8
    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "platform"

    .line 9
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    .line 11
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "huid"

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/u;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_9e} :catch_9f

    goto :goto_ba

    :catch_9f
    move-exception v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAppInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BoxProtocol"

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_ba
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j0([B)Z

    move-result v0

    return v0
.end method

.method public i1([B)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,setBoxWifiName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/16 v1, 0xf

    if-le v0, v1, :cond_21

    const-string p1, "BoxProtocol,setBoxWifiName: Wifi name is too long."

    .line 3
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_21
    const/16 v0, 0xe

    .line 4
    array-length v1, p1

    invoke-direct {p0, v0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z

    move-result p1

    return p1
.end method

.method public j0([B)Z
    .registers 4

    .line 1
    array-length v0, p1

    const/16 v1, 0xa0

    invoke-direct {p0, v1, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z

    move-result p1

    return p1
.end method

.method public j1(I)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,setBtPairedCount: count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->L:I

    return-void
.end method

.method public k0(Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->H:Z

    if-eqz p1, :cond_b

    const/16 p1, 0x16

    .line 2
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    move-result p1

    return p1

    :cond_b
    const/16 p1, 0x17

    .line 3
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    move-result p1

    return p1
.end method

.method public l0([B)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,sendAutoConnByBtAddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1c

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1c
    invoke-direct {p0, v1, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z

    move-result p1

    return p1
.end method

.method public l1(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->G:I

    return-void
.end method

.method public m0()Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,sendAutoConnect: cmd=1002,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bOpened_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->W()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z

    if-nez v0, :cond_30

    goto :goto_43

    .line 3
    :cond_30
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h:Z

    if-eqz v0, :cond_3c

    const-string v0, "BoxProtocol"

    const-string v2, "sendAutoConnect: bBluetoothConnected=true"

    .line 4
    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3c
    const/16 v0, 0x3ea

    .line 5
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    move-result v0

    return v0

    :cond_43
    :goto_43
    return v1
.end method

.method public m1(I)V
    .registers 2

    return-void
.end method

.method public n0([B)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,sendBluetoothAddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1c

    const/4 p1, 0x0

    return p1

    :cond_1c
    const/16 v0, 0xa

    .line 3
    invoke-direct {p0, v0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z

    move-result p1

    return p1
.end method

.method public n1(Z)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z

    if-eqz p1, :cond_1e

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,setUnauthorized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 v0, 0x7b

    .line 3
    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    :cond_1e
    return-void
.end method

.method public o0([BI)Z
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBluetoothPairedList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxProtocol"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z

    move-result p1

    return p1
.end method

.method public o1(I)Z
    .registers 3

    const-string v0, "WiFiChannel"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f1(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public p0([B)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,sendBluetoothPinCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    const/4 p1, 0x0

    return p1

    :cond_1b
    const/16 v0, 0xc

    .line 3
    invoke-direct {p0, v0, p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z

    move-result p1

    return p1
.end method

.method public p1(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public q0()Z
    .registers 8

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "mediaDelay"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 3
    :try_start_12
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    const-string v6, "syncTime"

    .line 4
    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "drivePosition"

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    const-string v4, "IsLeftDrive"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    goto :goto_36

    :cond_35
    const/4 v1, 0x1

    :goto_36
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "vandroidautoh"

    const/16 v4, 0x2d0

    invoke-virtual {v0, v1, v4}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/c0;->b(I)Lcn/manstep/phonemirrorBox/util/x;

    move-result-object v0

    const-string v1, "androidAutoSizeW"

    .line 8
    iget v4, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "androidAutoSizeH"

    .line 9
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "HiCarConnectMode"

    .line 10
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->I()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "GNSSCapability"

    const/4 v1, 0x7

    .line 11
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "DashboardInfo"

    .line 12
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->b0()Z

    move-result v0
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_73} :catch_9f

    const-string v1, "UseBTPhone"

    if-eqz v0, :cond_7b

    .line 14
    :try_start_77
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7e

    .line 15
    :cond_7b
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    :goto_7e
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BoxProtocol,sendBoxAllSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h1([B)Z

    move-result v0
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_9e} :catch_9f

    return v0

    :catch_9f
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBoxAllSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxProtocol"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public q1(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i:Ljava/lang/String;

    return-void
.end method

.method public r0([B)Z
    .registers 4

    .line 1
    array-length v0, p1

    const/16 v1, 0x10

    if-le v0, v1, :cond_c

    const-string p1, "BoxProtocol,sendBoxName: Box name is too long."

    .line 2
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_c
    const-string v0, "/etc/box_name\u0000"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public s0(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_5
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h1([B)Z

    move-result p1
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_14} :catch_15

    return p1

    :catch_15
    const/4 p1, 0x0

    return p1
.end method

.method public t0(II)Z
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,sendCarManufacturerInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 p1, 0x4

    .line 5
    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 p2, 0x14

    invoke-direct {p0, p2, p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z

    move-result p1

    return p1
.end method

.method public u0(I)Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxProtocol,sendChargeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const-string v0, "/tmp/charge_mode"

    .line 2
    invoke-direct {p0, v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z0(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public u1()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;

    if-nez v0, :cond_12

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$d;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$d;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V

    const-string v2, "checkOpen"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;

    :cond_12
    return-void
.end method

.method public v1()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_28

    .line 2
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    new-instance v2, Lcn/manstep/phonemirrorBox/h0/b;

    invoke-direct {v2}, Lcn/manstep/phonemirrorBox/h0/b;-><init>()V

    const-string v3, "heartBeat-%d"

    invoke-virtual {v2, v3}, Lcn/manstep/phonemirrorBox/h0/b;->f(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/h0/b;

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/h0/b;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    new-instance v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$e;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$e;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_28
    return-void
.end method

.method public w1(Ljava/lang/String;[B)Z
    .registers 13

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/high16 v2, 0x3200000

    if-le v0, v2, :cond_1e

    const-string p1, "BoxProtocol"

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload_file_to_box: The file is too large. size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 4
    array-length v2, v0

    .line 5
    array-length v3, p2

    .line 6
    new-instance v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    add-int/lit8 v5, v2, 0x4

    const/4 v6, 0x4

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-direct {v4, p0, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 7
    invoke-static {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v7

    const/16 v8, 0x99

    invoke-static {v7, v8}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 8
    invoke-static {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v7

    invoke-static {v7, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 9
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    .line 10
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v5, 0x4

    .line 11
    :goto_4a
    array-length v7, v0

    if-ge v2, v7, :cond_5c

    .line 12
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    aget-byte v9, v0, v2

    invoke-virtual {v7, v5, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    move v5, v8

    goto :goto_4a

    .line 13
    :cond_5c
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/2addr v5, v6

    .line 14
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object v0

    invoke-static {p2, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 16
    monitor-enter p0

    .line 17
    :try_start_6f
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object p2

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v0

    invoke-static {p2, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p2

    if-eqz p2, :cond_b8

    .line 18
    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p2

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    invoke-static {p2, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p2

    if-nez p2, :cond_a1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BoxProtocol,upload_file_to_box: Write carplay_cmd data err, boxFileName: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 20
    monitor-exit p0

    return v1

    .line 21
    :cond_a1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BoxProtocol,upload_file_to_box: send_carplay_cmd() success , boxFileName: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 22
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 23
    :cond_b8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BoxProtocol,upload_file_to_box: Write carplay_cmd head err, boxFileName: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 24
    monitor-exit p0

    return v1

    :catchall_ce
    move-exception p1

    .line 25
    monitor-exit p0
    :try_end_d0
    .catchall {:try_start_6f .. :try_end_d0} :catchall_ce

    goto :goto_d2

    :goto_d1
    throw p1

    :goto_d2
    goto :goto_d1
.end method

.method public x0(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2
    :cond_f
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 4
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 5
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V

    const/4 v1, 0x0

    if-eqz p1, :cond_46

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_32

    return-void

    .line 6
    :cond_32
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v2, 0xd

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_4f

    .line 7
    :cond_3c
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v2, 0xc

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_4f

    .line 8
    :cond_46
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v2, 0xb

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 9
    :goto_4f
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V

    .line 10
    monitor-enter p0

    .line 11
    :try_start_53
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B

    move-result-object p1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I

    move-result v1

    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 12
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B

    move-result-object p1

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I

    move-result v0

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z

    move-result p1

    if-eqz p1, :cond_70

    goto :goto_7b

    :cond_70
    const-string p1, "Send command data err"

    .line 13
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    goto :goto_7b

    :cond_76
    const-string p1, "Send commadn head err"

    .line 14
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 15
    :goto_7b
    monitor-exit p0

    return-void

    :catchall_7d
    move-exception p1

    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_53 .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method public y()V
    .registers 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I

    .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->A:Lcn/manstep/phonemirrorBox/BoxInterface/f$h;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 5
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b()V

    .line 6
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->A:Lcn/manstep/phonemirrorBox/BoxInterface/f$h;

    .line 7
    :cond_12
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V

    const-wide/16 v0, 0x320

    .line 8
    :try_start_17
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_20

    .line 9
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 10
    :cond_20
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;

    if-eqz v3, :cond_29

    .line 11
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 12
    :cond_29
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;

    if-eqz v3, :cond_32

    .line 13
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 14
    :cond_32
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;

    if-eqz v3, :cond_3b

    .line 15
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 16
    :cond_3b
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;

    if-eqz v3, :cond_5b

    .line 17
    sget-object v3, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    monitor-enter v3
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_42} :catch_53
    .catchall {:try_start_17 .. :try_end_42} :catchall_51

    .line 18
    :try_start_42
    sget-object v4, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 19
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_4e

    .line 20
    :try_start_48
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4d} :catch_53
    .catchall {:try_start_48 .. :try_end_4d} :catchall_51

    goto :goto_5b

    :catchall_4e
    move-exception v0

    .line 21
    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v0
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_51} :catch_53
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    goto :goto_92

    :catch_53
    move-exception v0

    .line 22
    :try_start_54
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    .line 23
    :cond_5b
    :goto_5b
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;

    .line 25
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;

    .line 26
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;

    .line 27
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;

    .line 28
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    .line 29
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h()V

    goto :goto_6b

    .line 30
    :cond_7b
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    if-eqz v0, :cond_87

    .line 32
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b;->e()V

    .line 33
    :cond_87
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;

    .line 34
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b0()V

    const-string v0, "BoxProtocol destroy()"

    .line 35
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    return-void

    .line 36
    :goto_92
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;

    .line 38
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;

    .line 39
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;

    .line 40
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;

    .line 41
    goto :goto_9e

    :goto_9d
    throw v0

    :goto_9e
    goto :goto_9d
.end method

.method public y0()V
    .registers 6

    const-string v0, "BoxProtocol,sendConfig: "

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q0()Z

    .line 3
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i0()Z

    .line 4
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d()V

    .line 5
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e()V

    .line 6
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "NightMode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N0(I)Z

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "ChargeMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u0(I)Z

    .line 10
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->U0(I)Z

    .line 12
    :cond_38
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "BtName"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    goto :goto_68

    .line 14
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendConfig: btName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BoxProtocol"

    invoke-static {v4, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e1([B)Z

    .line 16
    :goto_68
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "WifiName"

    invoke-virtual {v0, v1, v3}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    goto :goto_80

    .line 18
    :cond_79
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i1([B)Z

    .line 19
    :goto_80
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r0([B)Z

    .line 20
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "MicType"

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F0(I)Z

    .line 21
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const/4 v1, 0x5

    const-string v3, "wifi_type"

    invoke-virtual {v0, v3, v1}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K0(I)Z

    .line 22
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "AudioTransferMode"

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k0(Z)Z

    .line 23
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlaying_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d7

    const/16 v0, 0xc9

    .line 24
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z

    :cond_d7
    return-void
.end method

.method public z(I)Lcn/manstep/phonemirrorBox/BoxInterface/a;
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_2f

    :cond_c
    if-gez p1, :cond_f

    return-object v1

    .line 2
    :cond_f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_26

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    return-object p1

    .line 4
    :cond_26
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;

    return-object p1

    :cond_2f
    :goto_2f
    return-object v1
.end method
