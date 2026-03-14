.class public Lcn/manstep/phonemirrorBox/BoxInterface/f;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/BoxInterface/f$j;,
    Lcn/manstep/phonemirrorBox/BoxInterface/f$h;,
    Lcn/manstep/phonemirrorBox/BoxInterface/f$k;,
    Lcn/manstep/phonemirrorBox/BoxInterface/f$l;,
    Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
  }
.end annotation

.field private static N:I = 2

.field public static O:Z

.field public static P:Z

.field public static Q:Z

.field public static R:Z

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

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->a:Z
    const/4 v1, 2
  .line 3
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b:I
    const/4 v1, 0
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
    const/4 v2, -1
  .line 17
    iput v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->G:I
  .line 18
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->H:Z
  .line 19
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-direct { v2, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->I:Ljava/util/concurrent/atomic/AtomicBoolean;
  .line 20
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z
    const/16 v2, 20
    new-array v2, v2, [B
  .line 21
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K:[B
  .line 22
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->L:I
  .line 23
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M:Z
    const-string v0, "BoxProtocol,BoxProtocol: ===***==="
  .line 24
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 25
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O()V
  .line 26
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P(Landroid/content/Context;)V
  .line 27
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C:Z
  .line 28
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I
  .line 29
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I
  .line 30
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
  .line 31
    new-instance v0, Lcn/manstep/phonemirrorBox/util/z;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/util/z;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
  .line 32
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/util/z;->b(Ljava/lang/Object;)Ljava/lang/Object;
  .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;
  .line 34
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->A:Lcn/manstep/phonemirrorBox/BoxInterface/f$h;
  .line 35
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Q()V
  .line 36
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u1()V
  .line 37
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v1()V
  .line 38
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;
    if-nez v0, :L0
  .line 39
    new-instance v0, Ljava/lang/Thread;
    new-instance v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$a;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$a;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    const-string v3, "readUsb"
    invoke-direct { v0, v2, v3 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;
  :L0
  .line 40
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;
    if-nez v0, :L1
  .line 41
    new-instance v0, Ljava/lang/Thread;
    new-instance v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$b;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$b;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    const-string v3, "iosAudio"
    invoke-direct { v0, v2, v3 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;
  :L1
  .line 42
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;
    if-nez v0, :L2
  .line 43
    new-instance v0, Ljava/lang/Thread;
    new-instance v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$c;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    const-string v3, "audioRecord"
    invoke-direct { v0, v2, v3 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;
  .line 44
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x:Z
  :L2
  .line 45
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
  .line 46
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;
    invoke-virtual { p1 }, Ljava/lang/Thread;->start()V
    const-string p1, "checkOpenThread_ started"
  .line 47
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 48
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;
    invoke-virtual { p1 }, Ljava/lang/Thread;->start()V
    const-string p1, "readThread_ started"
  .line 49
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 50
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;
    invoke-virtual { p1 }, Ljava/lang/Thread;->start()V
    return-void
.end method

.method private A0(ILjava/lang/String;Z)Z
  .registers 5
  .line 1
    invoke-virtual { p2 }, Ljava/lang/String;->getBytes()[B
    move-result-object p2
  .line 2
    array-length v0, p2
    invoke-direct { p0, p1, p2, v0, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C0(I[BIZ)Z
    move-result p1
    return p1
.end method

.method private B0(I[BI)Z
  .registers 5
    const/4 v0, 1
  .line 1
    invoke-direct { p0, p1, p2, p3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C0(I[BIZ)Z
    move-result p1
    return p1
.end method

.method private C0(I[BIZ)Z
  .catchall { :L1 .. :L5 } :L4
  .registers 7
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,sendDevInfo: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v1, p2
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    if-eqz p4, :L0
    return v1
  :L0
  .line 3
    new-instance p4, Ljava/lang/StringBuilder;
    invoke-direct { p4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "BoxProtocol,sendDevInfo: cmd="
    invoke-virtual { p4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p4
    invoke-static { p4 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    new-instance p4, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    invoke-direct { p4, p0, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 5
    invoke-static { p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v0
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 6
    invoke-static { p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object p1
    invoke-static { p1, p3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 7
    invoke-virtual { p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
  .line 8
    invoke-virtual { p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p1
    invoke-static { p2, v1, p1, v1, p3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 9
    invoke-virtual { p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 10
    monitor-enter p0
  :L1
  .line 11
    invoke-virtual { p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object p1
    invoke-virtual { p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result p2
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-eqz p1, :L3
  .line 12
    invoke-virtual { p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p1
    invoke-virtual { p4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result p2
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-nez p1, :L2
    const-string p1, "BoxProtocol,sendDevInfo: Write device info data err"
  .line 13
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 14
    monitor-exit p0
    return v1
  :L2
    const-string p1, "BoxProtocol,sendDevInfo: sendDevInfo() success "
  .line 15
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 16
    monitor-exit p0
    const/4 p1, 1
    return p1
  :L3
    const-string p1, "BoxProtocol,sendDevInfo: Write device info head err"
  .line 17
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 18
    monitor-exit p0
    return v1
  :L4
    move-exception p1
  .line 19
    monitor-exit p0
  :L5
    throw p1
.end method

.method private M(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
  .registers 6
  .line 1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    const/4 v1, 4
    if-lt v0, v1, :L3
  .line 2
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    const/4 v2, 0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    const/4 v2, 2
    const/4 v3, 1
    if-eq v0, v2, :L2
    const/4 p1, 3
    if-eq v0, p1, :L1
    if-eq v0, v1, :L0
    goto :L3
  :L0
    const-string p1, "Close camera"
  .line 3
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 p1, 31
  .line 4
    invoke-static { v3, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L3
  :L1
    const-string p1, "Open camera"
  .line 5
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 p1, 30
  .line 6
    invoke-static { v3, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L3
  :L2
  .line 7
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    sub-int/2addr v0, v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K:[B
    array-length v2, v2
    if-ne v0, v2, :L3
  .line 8
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p1
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k1([BI)V
    const/16 p1, 29
  .line 9
    invoke-static { v3, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L3
    return-void
.end method

.method private N(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
  .catch Ljava/io/UnsupportedEncodingException; { :L0 .. :L4 } :L5
  .registers 8
  .line 1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    const/4 v1, 4
    if-lt v0, v1, :L6
  .line 2
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    const/4 v2, 0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    const-string v3, "UTF-8"
    const/4 v4, 1
    if-eq v0, v4, :L3
    const/4 v5, 2
    if-eq v0, v5, :L2
    const/4 v5, 3
    if-eq v0, v5, :L2
    const/16 v2, 100
    if-eq v0, v2, :L1
    const/16 v2, 200
    if-eq v0, v2, :L0
    goto/16 :L6
  :L0
  .line 3
    new-instance v0, Ljava/lang/String;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v2
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result p1
    sub-int/2addr p1, v1
    sub-int/2addr p1, v4
    invoke-direct { v0, v2, v1, p1, v3 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    const/16 p1, 219
  .line 4
    invoke-static { v4, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z
    goto :L6
  :L1
  .line 5
    new-instance v0, Ljava/lang/String;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v2
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result p1
    sub-int/2addr p1, v1
    sub-int/2addr p1, v4
    invoke-direct { v0, v2, v1, p1, v3 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    const/16 p1, 217
  .line 6
    invoke-static { v4, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z
    goto :L6
  :L2
  .line 7
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    sub-int/2addr v0, v1
    sub-int/2addr v0, v4
    new-array v0, v0, [B
  .line 8
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v3
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result p1
    sub-int/2addr p1, v1
    sub-int/2addr p1, v4
    invoke-static { v3, v1, v0, v2, p1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 9
    new-instance p1, Landroid/os/Bundle;
    invoke-direct { p1 }, Landroid/os/Bundle;-><init>()V
    const-string v1, "COVER"
  .line 10
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    const/16 v0, 218
  .line 11
    invoke-static { v4, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z
    goto :L6
  :L3
  .line 12
    new-instance v0, Ljava/lang/String;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v2
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result p1
    sub-int/2addr p1, v1
    sub-int/2addr p1, v4
    invoke-direct { v0, v2, v1, p1, v3 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    const/16 p1, 216
  .line 13
    invoke-static { v4, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z
  :L4
    goto :L6
  :L5
    move-exception p1
  .line 14
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "handleDashboardData: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "BoxProtocol"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L6
    return-void
.end method

.method private O()V
  .registers 2
    const/4 v0, 0
  .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    const/4 v0, -2
  .line 2
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    return-void
.end method

.method private P(Landroid/content/Context;)V
  .registers 9
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
  .line 2
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l(Landroid/content/Context;)V
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    const/4 v1, 2
    const/4 v2, 1
    invoke-direct { v0, v1, v2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
    const/4 v3, 0
  .line 4
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V
  .line 5
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v3, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    invoke-direct { v0, v1, v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 7
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V
  .line 8
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v3, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 9
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    const/4 v3, 3
    invoke-direct { v0, v3, v2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 10
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V
  .line 11
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v4, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 12
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    const/4 v4, 4
    invoke-direct { v0, v4, v2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 13
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V
  .line 14
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v3, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 15
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->u:Z
    const/4 v3, 7
    const/4 v5, 5
    if-eqz v0, :L0
  .line 16
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    invoke-direct { v0, v3, v2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 17
    invoke-virtual { v0, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V
  .line 18
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v6, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L1
  :L0
  .line 19
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    invoke-direct { v0, v5, v2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 20
    invoke-virtual { v0, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V
  .line 21
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v6, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
  .line 22
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    const/4 v6, 6
    invoke-direct { v0, v6, v2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 23
    invoke-virtual { v0, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V
  .line 24
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v2, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 25
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    invoke-direct { v0, v5, v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 26
    invoke-virtual { v0, v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V
  .line 27
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v2, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 28
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    invoke-direct { v0, v4, v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 29
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->J(I)V
  .line 30
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { p1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method private R(I)V
  .registers 4
    const/4 v0, 1
    if-eq p1, v0, :L5
    const/4 v1, 3
    if-eq p1, v1, :L4
    const/4 v1, 4
    if-eq p1, v1, :L3
    const/4 v1, 5
    if-eq p1, v1, :L2
    const/4 v1, 6
    if-eq p1, v1, :L1
    const/4 v1, 7
    if-eq p1, v1, :L0
  .line 1
    sput v0, Lcn/manstep/phonemirrorBox/p;->F:I
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/d;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/q0/d;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    const-string v1, "Unknown"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V
    goto/16 :L6
  :L0
  .line 4
    sput v0, Lcn/manstep/phonemirrorBox/p;->F:I
  .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/e;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/q0/e;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    const-string v1, "Carlink"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V
    goto :L6
  :L1
  .line 7
    sput v0, Lcn/manstep/phonemirrorBox/p;->F:I
  .line 8
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/e;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/q0/e;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    const-string v1, "HiCar"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V
    goto :L6
  :L2
  .line 10
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/a;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/q0/a;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    const-string v1, "AndroidAuto"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V
    goto :L6
  :L3
  .line 12
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/f;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/q0/f;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    const-string v1, "iPhoneMirror"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V
    goto :L6
  :L4
  .line 14
    sput v0, Lcn/manstep/phonemirrorBox/p;->F:I
  .line 15
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/c;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/q0/c;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    const-string v1, "CarPlay"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V
    goto :L6
  :L5
  .line 17
    new-instance v0, Lcn/manstep/phonemirrorBox/q0/b;
    invoke-direct { v0, p1 }, Lcn/manstep/phonemirrorBox/q0/b;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;
  .line 18
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object p1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    const-string v1, "AndroidMirror"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/v0/a;->c(Ljava/lang/String;Z)V
  :L6
    return-void
.end method

.method private X(I)V
  .registers 4
    const/4 v0, 1
    if-eq p1, v0, :L5
    const/4 v1, 2
    if-eq p1, v1, :L4
    const/4 v1, 3
    if-eq p1, v1, :L3
    const/4 v1, 5
    if-eq p1, v1, :L2
    const/4 v1, 6
    if-eq p1, v1, :L1
    const/4 v1, 7
    if-eq p1, v1, :L0
    goto :L6
  :L0
    const/16 p1, 127
  .line 1
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L6
  :L1
    const/16 p1, 126
  .line 2
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L6
  :L2
    const/16 p1, 125
  .line 3
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L6
  :L3
    const/16 p1, 122
  .line 4
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L6
  :L4
    const/16 p1, 121
  .line 5
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L6
  :L5
    const/16 p1, 120
  .line 6
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L6
    return-void
.end method

.method private Y(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
  .catch Ljava/io/UnsupportedEncodingException; { :L2 .. :L3 } :L4
  .catch Ljava/lang/Exception; { :L18 .. :L19 } :L20
  .catch Ljava/lang/Exception; { :L22 .. :L23 } :L24
  .catch Ljava/lang/Exception; { :L28 .. :L29 } :L32
  .catch Ljava/lang/Exception; { :L29 .. :L30 } :L31
  .catch Ljava/lang/Exception; { :L36 .. :L37 } :L40
  .catch Ljava/lang/Exception; { :L37 .. :L38 } :L39
  .catchall { :L67 .. :L69 } :L68
  .registers 26
    move-object/from16 v1, p0
  .line 1
    invoke-static/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v0
    const/4 v2, 0
    const/4 v3, 1
    if-eq v0, v3, :L116
    const/16 v4, 8
    const/4 v5, 2
    const/4 v6, 4
    if-eq v0, v5, :L110
    const/16 v7, 13
    const/16 v8, 11
    const/16 v9, 16
    const/16 v10, 15
    const/4 v11, 6
    const/4 v13, 3
    if-eq v0, v13, :L98
    const/16 v14, 25
    if-eq v0, v6, :L92
    const/16 v15, 24
    const/16 v12, 32
    if-eq v0, v11, :L70
    const/4 v11, 7
    if-eq v0, v11, :L126
    if-eq v0, v4, :L43
    if-eq v0, v7, :L35
    const/16 v4, 14
    if-eq v0, v4, :L27
    const/16 v4, 18
    if-eq v0, v4, :L25
    const/16 v5, 19
    if-eq v0, v5, :L22
    if-eq v0, v15, :L21
    if-eq v0, v14, :L17
    const/16 v5, 42
    if-eq v0, v5, :L16
    const/16 v5, 43
    if-eq v0, v5, :L15
    sparse-switch v0, :L127
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,onCmd: Unknown cmd = "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto/16 :L126
  :L0
    const-string v0, "BoxProtocol,onCmd: recv  CMD_ENABLE_CRYPT"
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 4
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m:Z
    goto/16 :L126
  :L1
  .line 5
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-ne v12, v0, :L126
    const-string v5, "unknown"
  :L2
  .line 6
    new-instance v0, Ljava/lang/String;
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v6
    const-string v7, "ISO-8859-1"
    invoke-direct { v0, v6, v2, v4, v7 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
  :L3
    move-object v5, v0
    goto :L5
  :L4
    move-exception v0
  .line 7
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
  .line 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,onCmd: Recv CMD_BOX_SOFTWARE_VERSION: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 9
    invoke-direct { v1, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t(Ljava/lang/String;)V
  .line 10
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BOX:"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v0
    invoke-virtual { v0, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->x(Ljava/lang/String;)V
  .line 12
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z
    if-eqz v0, :L6
  .line 13
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    sget-object v2, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "W"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
  :L6
    const/16 v0, 124
  .line 14
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L7
  .line 15
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-ne v6, v0, :L126
  .line 16
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
  .line 17
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "BoxProtocol,onCmd: CMD_UPDATE iStatus: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 18
    invoke-direct { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X(I)V
    goto/16 :L126
  :L8
  .line 19
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-ne v6, v0, :L126
  .line 20
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
  .line 21
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "BoxProtocol,onCmd: CMD_UPDATE_PROGRESS progress: "
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/16 v2, 120
  .line 22
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-static { v3, v2, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->P(IILjava/lang/Object;)Z
    goto/16 :L126
  :L9
  .line 23
    invoke-static { v3, v12 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L10
  .line 24
    invoke-direct/range { p0 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    goto/16 :L126
  :L11
  .line 25
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
  .line 26
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "BoxProtocol,onCmd: recv  CMD_DEBUG_TEST: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto/16 :L126
  :L12
    const/16 v0, 34
  .line 27
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L13
  .line 28
    invoke-direct/range { p0 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    goto/16 :L126
  :L14
  .line 29
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->a()I
    move-result v0
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v2
    if-ne v0, v2, :L126
  .line 30
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;-><init>()V
  .line 31
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->b(Ljava/nio/ByteBuffer;)V
  .line 32
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "BoxProtocol,onCmd: Recv CMD_CARPLAY_MODE_CHANGE:  "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->a:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->b:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->c:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->d:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->e:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->f:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->g:I
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto/16 :L126
  :L15
  .line 33
    invoke-direct/range { p0 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r1(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    goto/16 :L126
  :L16
  .line 34
    invoke-direct/range { p0 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    goto/16 :L126
  :L17
  .line 35
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-lt v0, v6, :L126
  :L18
  .line 36
    new-instance v0, Ljava/lang/String;
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v4
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v5
    const-string v6, "UTF-8"
    invoke-direct { v0, v4, v2, v5, v6 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
  .line 37
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "BoxProtocol,onCmd->BoxInfo: "
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 38
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v2
    invoke-virtual { v2, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w(Ljava/lang/String;)V
    const/16 v0, 35
  .line 39
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L19
    goto/16 :L126
  :L20
    move-exception v0
    const-string v2, "BoxProtocol"
  .line 40
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "onCmd: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L126
  :L21
  .line 41
    invoke-direct/range { p0 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s1(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    goto/16 :L126
  :L22
  .line 42
    new-instance v0, Ljava/lang/String;
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v4
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v5
    sub-int/2addr v5, v3
    const-string v6, "UTF-8"
    invoke-direct { v0, v4, v2, v5, v6 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    iput-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j:Ljava/lang/String;
  .line 43
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,onCmd: Recv CMD_BLUETOOTH_ONLINE_LIST: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/16 v0, 211
  .line 44
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L23
    goto/16 :L126
  :L24
    move-exception v0
  .line 45
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto/16 :L126
  :L25
  .line 46
    iget-boolean v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z
    if-eqz v0, :L26
  .line 47
    invoke-virtual/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z
    goto/16 :L126
  :L26
  .line 48
    invoke-direct/range { p0 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    goto/16 :L126
  :L27
  .line 49
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-gt v0, v9, :L126
    const-string v4, ""
  :L28
  .line 50
    new-instance v5, Ljava/lang/String;
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v0
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v6
    sub-int/2addr v6, v3
    const-string v7, "UTF-8"
    invoke-direct { v5, v0, v2, v6, v7 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
  :L29
  .line 51
    iput-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->l:Ljava/lang/String;
  :L30
    goto :L34
  :L31
    move-exception v0
    move-object v4, v5
    goto :L33
  :L32
    move-exception v0
  :L33
  .line 52
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    move-object v5, v4
  :L34
  .line 53
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,onCmd: Recv CMD_BOX_WIFI_NAME: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ", len="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v2
    sub-int/2addr v2, v3
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto/16 :L126
  :L35
  .line 54
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-gt v0, v9, :L126
    const-string v4, ""
  :L36
  .line 55
    new-instance v5, Ljava/lang/String;
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v0
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v6
    sub-int/2addr v6, v3
    const-string v7, "UTF-8"
    invoke-direct { v5, v0, v2, v6, v7 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
  :L37
  .line 56
    iput-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k:Ljava/lang/String;
    const/16 v0, 215
  .line 57
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L38
    goto :L42
  :L39
    move-exception v0
    move-object v4, v5
    goto :L41
  :L40
    move-exception v0
  :L41
  .line 58
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    move-object v5, v4
  :L42
  .line 59
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,onCmd: Recv CMD_BOX_BLUETOOTH_NAME: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ", len="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v2
    sub-int/2addr v2, v3
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto/16 :L126
  :L43
  .line 60
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
  .line 61
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "BoxProtocol,onCmd: Recv CarPlay_CMD: "
    invoke-virtual { v4, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    if-eq v0, v3, :L66
    if-eq v0, v5, :L65
    if-eq v0, v13, :L63
    if-eq v0, v10, :L62
    const/16 v4, 500
    if-eq v0, v4, :L61
    const/16 v4, 501
    if-eq v0, v4, :L60
    const/16 v4, 1000
    if-eq v0, v4, :L59
    const/16 v4, 1001
    if-eq v0, v4, :L58
    packed-switch v0, :L128
    packed-switch v0, :L129
    goto/16 :L126
  :L44
    const-string v0, "BoxProtocol,onCmd: Recv CarPlay_SupportWifiNeedKo======================="
  .line 62
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    goto/16 :L126
  :L45
    const/16 v0, 209
  .line 63
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L46
  .line 64
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    const/16 v0, 208
  .line 65
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L47
  .line 66
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z
  .line 67
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    const/16 v0, 207
  .line 68
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L48
  .line 69
    iput-boolean v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h:Z
    const/16 v0, 206
  .line 70
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L49
  .line 71
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h:Z
    const/16 v0, 205
  .line 72
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L50
    const/16 v0, 204
  .line 73
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L51
    const/16 v0, 203
  .line 74
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L52
    const/16 v0, 202
  .line 75
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L53
    const/16 v0, 201
  .line 76
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L54
    const/16 v0, 119
  .line 77
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 78
    invoke-virtual { v1, v8 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
    goto/16 :L126
  :L55
    const/16 v0, 118
  .line 79
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L56
  .line 80
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z
    const/16 v0, 117
  .line 81
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L57
  .line 82
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z
    const-string v0, "BoxProtocol,onCmd: ======Car Mic======"
  .line 83
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 116
  .line 84
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L58
  .line 85
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Q:Z
  .line 86
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z
    const/16 v0, 200
  .line 87
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L59
    const-string v0, "BoxProtocol,onCmd: Recv CarPlay_SupportWifi"
  .line 88
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 89
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z
  .line 90
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v0
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->A(Z)V
    goto/16 :L126
  :L60
    const/16 v0, 213
  .line 91
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L61
    const/16 v0, 212
  .line 92
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L62
  .line 93
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Config.bUseBoxMic: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v2, Lcn/manstep/phonemirrorBox/p;->s:Z
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const-string v0, "BoxProtocol,onCmd: ======Box Mic======"
  .line 94
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 95
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f:Z
    const/16 v0, 116
  .line 96
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 97
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->s:Z
    xor-int/2addr v0, v3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z
    goto/16 :L126
  :L63
    const-string v0, "recv  CarPlay_RequestHostUI..."
  .line 98
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 99
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->n()V
  .line 100
    new-instance v0, Ljava/io/File;
    const-string v3, "/sdcard/carplay.png"
    invoke-direct { v0, v3 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 101
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result v0
    if-nez v0, :L64
  .line 102
    invoke-static { v6, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L64
  .line 103
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v2, 5
    if-ne v0, v2, :L126
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v0
    const-string v2, "2022"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v0
    if-gez v0, :L126
    const/16 v0, 200
  .line 104
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto/16 :L126
  :L65
  .line 105
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z
    if-eqz v0, :L126
  .line 106
    iput-boolean v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x:Z
    const-string v0, "BoxProtocol"
    const-string v2, "onCmd: Stop record audio========"
  .line 107
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L126
  :L66
  .line 108
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z
    if-eqz v0, :L126
  .line 109
    iput-boolean v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x:Z
  .line 110
    sget-object v2, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    monitor-enter v2
  :L67
  .line 111
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-virtual { v0 }, Ljava/lang/Object;->notify()V
    const-string v0, "BoxProtocol"
    const-string v3, "onCmd: Start record audio========"
  .line 112
    invoke-static { v0, v3 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 113
    monitor-exit v2
    goto/16 :L126
  :L68
    move-exception v0
    monitor-exit v2
  :L69
    throw v0
  :L70
  .line 114
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    if-nez v0, :L71
    goto/16 :L126
  :L71
  .line 115
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
  .line 116
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v7
    invoke-virtual { v7, v6 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v7
  .line 117
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v9
    invoke-virtual { v9, v4 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v9
  .line 118
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v14
    invoke-virtual { v14 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v14
    const-string v10, "2024.12.13.1130"
    invoke-virtual { v14, v10 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v10
    const/16 v11, 12
    if-ltz v10, :L72
  .line 119
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v10
    invoke-virtual { v10, v11 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v10
    int-to-long v11, v10
    goto :L73
  :L72
    const-wide/16 v11, 0
  :L73
    and-int/lit8 v10, v9, 1
    shr-int/2addr v9, v5
    and-int/2addr v9, v13
    if-eqz v9, :L76
    if-eq v9, v3, :L75
    if-eq v9, v5, :L74
    goto :L77
  :L74
    const/4 v9, 4
    goto :L77
  :L75
    const/4 v9, 1
    goto :L77
  :L76
    const/4 v9, 2
  :L77
  .line 120
    iget v14, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b:I
    if-eq v9, v14, :L80
  .line 121
    iput v9, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b:I
    if-eq v3, v9, :L79
    if-ne v6, v9, :L78
    goto :L79
  :L78
  .line 122
    invoke-static { v5, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L80
  :L79
  .line 123
    invoke-static { v5, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L80
  .line 124
    iget v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I
    if-eq v5, v10, :L85
  .line 125
    iput v10, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I
  .line 126
    iget-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v5, v5, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I
    const/4 v9, 5
    if-ne v5, v9, :L83
    if-nez v10, :L81
  .line 127
    sget v5, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v9, -1
    if-eq v5, v9, :L82
    iget-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    if-eqz v5, :L82
    const/16 v17, 3
    const/16 v20, 0
    const/16 v21, 0
    move-object/from16 v16, v5
    move/from16 v18, v0
    move/from16 v19, v7
  .line 128
    invoke-virtual/range { v16 .. v21 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V
    goto :L82
  :L81
  .line 129
    sget v5, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v9, -1
    if-eq v5, v9, :L82
    iget-object v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    if-eqz v5, :L82
    const/16 v17, 4
    const/16 v20, 0
    const/16 v21, 0
    move-object/from16 v16, v5
    move/from16 v18, v0
    move/from16 v19, v7
  .line 130
    invoke-virtual/range { v16 .. v21 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V
  :L82
  .line 131
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "COMPRESS_METHORD_H264  boffscreen= "
    invoke-virtual { v5, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v9, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I
    invoke-virtual { v5, v9 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L83
  .line 132
    iget v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I
    if-ne v5, v3, :L84
    const/16 v8, 10
  :L84
    invoke-static { v3, v8 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L85
  .line 133
    iget v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I
    if-ne v0, v3, :L86
    iget v3, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I
    if-eq v7, v3, :L87
  :L86
  .line 134
    iput v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I
  .line 135
    iput v7, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I
  .line 136
    invoke-static { v13, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 137
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I
    const/4 v3, 5
    if-ne v2, v3, :L87
  .line 138
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v3, -1
    if-eq v2, v3, :L87
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    if-eqz v2, :L87
  .line 139
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "new w h "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, "x"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v7 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 140
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    const/16 v17, 7
    const/16 v20, 0
    const/16 v21, 0
    move-object/from16 v16, v2
    move/from16 v18, v0
    move/from16 v19, v7
    invoke-virtual/range { v16 .. v21 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V
  :L87
  .line 141
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v2
    const/16 v3, 20
    if-gt v2, v3, :L88
    return-void
  :L88
  .line 142
    iget-boolean v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->a:Z
    if-eqz v2, :L126
  .line 143
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I
    if-eq v2, v13, :L91
    const/4 v5, 5
    if-eq v2, v5, :L89
    goto/16 :L126
  :L89
  .line 144
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v5, -1
    if-eq v2, v5, :L90
  .line 145
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v2
    add-int/lit8 v21, v2, -20
  .line 146
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    if-eqz v2, :L126
    const/16 v17, 8
  .line 147
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v20
    move-object/from16 v16, v2
    move/from16 v18, v0
    move/from16 v19, v7
    move-wide/from16 v22, v11
    invoke-virtual/range { v16 .. v23 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h(III[BIJ)V
    goto/16 :L126
  :L90
    if-ne v2, v5, :L126
  .line 148
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v2
    sub-int/2addr v2, v3
    add-int/lit8 v5, v2, 32
  .line 149
    new-array v5, v5, [B
  .line 150
    invoke-static { v5 }, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    move-result-object v8
  .line 151
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { v8, v9 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    add-int/lit8 v9, v2, 36
  .line 152
    invoke-virtual { v8, v6, v9 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 153
    invoke-virtual { v8, v4, v0 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    const/16 v0, 12
  .line 154
    invoke-virtual { v8, v0, v7 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    const/high16 v0, 1
  .line 155
    invoke-virtual { v8, v15, v0 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 156
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v0
    const/16 v4, 32
    invoke-static { v0, v3, v5, v4, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 157
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->F([B)V
    goto/16 :L126
  :L91
  .line 158
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v5, -1
    if-ne v2, v5, :L126
  .line 159
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v2
    sub-int/2addr v2, v3
    add-int/lit8 v5, v2, 32
  .line 160
    new-array v5, v5, [B
  .line 161
    invoke-static { v5 }, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    move-result-object v8
  .line 162
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { v8, v9 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    add-int/lit8 v9, v2, 36
  .line 163
    invoke-virtual { v8, v6, v9 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 164
    invoke-virtual { v8, v4, v0 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    const/16 v0, 12
  .line 165
    invoke-virtual { v8, v0, v7 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    const/high16 v0, 2
  .line 166
    invoke-virtual { v8, v15, v0 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 167
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v0
    const/16 v4, 32
    invoke-static { v0, v3, v5, v4, v2 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 168
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->F([B)V
    goto/16 :L126
  :L92
    const-string v0, "BoxProtocol"
    const-string v4, "onCmd: #CMD_PLUGOUT."
  .line 169
    invoke-static { v0, v4 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 170
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-ne v0, v6, :L94
  .line 171
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    if-ne v0, v3, :L94
    const-string v0, "BoxProtocol,onCmd: CMD_PLUGOUT: Manually disconnected by the user on the phone end."
  .line 172
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 173
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v4, 2131034126
    invoke-virtual { v0, v4 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-eqz v0, :L93
  .line 174
    invoke-static { v6, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L93
  .line 175
    invoke-static { v3, v14 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L94
  .line 176
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v4, -1
    if-eq v0, v4, :L95
    iget-object v6, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    if-eqz v6, :L95
    const/4 v7, 0
  .line 177
    iget v8, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I
    iget v9, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I
    const/4 v10, 0
    const/4 v11, 0
    invoke-virtual/range { v6 .. v11 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V
  :L95
  .line 178
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
  .line 179
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    const-string v0, "BoxProtocol"
    const-string v4, "onCmd: #CMD_PLUGOUT Phone Disconnected."
  .line 180
    invoke-static { v0, v4 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 181
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v4, -1
    if-ne v0, v4, :L96
    goto :L97
  :L96
    const/4 v2, 2
  :L97
    invoke-static { v3, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 182
    invoke-direct/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t1()V
  .line 183
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->v()V
    const/4 v0, -2
  .line 184
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    goto/16 :L126
  :L98
  .line 185
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-ne v6, v0, :L126
  .line 186
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
  .line 187
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "BoxProtocol,onCmd: Recv CMD_PHASE iPhase = "
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 188
    iget-boolean v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z
    if-eqz v2, :L99
  .line 189
    invoke-virtual/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z
    goto/16 :L126
  :L99
    if-eq v0, v13, :L109
    if-eq v0, v6, :L108
    const/4 v2, 5
    if-eq v0, v2, :L107
    if-eq v0, v11, :L109
    if-eq v0, v4, :L106
    if-eq v0, v7, :L105
    const/16 v2, 10
    if-eq v0, v2, :L106
    if-eq v0, v8, :L104
    packed-switch v0, :L130
    goto/16 :L126
  :L100
    const/16 v0, 53
  .line 190
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L101
    const/16 v0, 52
  .line 191
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L102
    const/16 v0, 51
  .line 192
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    const-string v0, "BoxProtocol,onCmd: Hardware Error: Wifi"
  .line 193
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto/16 :L126
  :L103
    const/16 v0, 50
  .line 194
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    const-string v0, "BoxProtocol,onCmd: Hardware Error: Bluetooth"
  .line 195
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto/16 :L126
  :L104
  .line 196
    invoke-static { v3, v9 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L105
    const-string v0, "BoxProtocol"
  .line 197
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "onCmd: PHASE_LinkFailed phoneType="
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v4, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, ",bPhoneConnected="
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v4, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 198
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v2, -2
    if-ne v0, v2, :L126
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    if-nez v0, :L126
    const/16 v0, 204
  .line 199
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L106
    const/16 v0, 9
  .line 200
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 201
    invoke-static { v3, v10 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 202
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    const/4 v5, 2
    iget v6, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I
    iget v7, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I
    const/4 v8, 0
    const/4 v9, 0
    invoke-virtual/range { v4 .. v9 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V
  .line 203
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    const-string v0, "BoxProtocol"
    const-string v2, "onCmd: #PHASE_CARPLAY_WORING/PHASE_NonAIRPLAY_WORING"
  .line 204
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L126
  :L107
  .line 205
    invoke-static { v3, v11 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L108
    const/4 v0, 5
  .line 206
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto/16 :L126
  :L109
  .line 207
    invoke-static { v3, v10 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 208
    sput-boolean v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    const-string v0, "BoxProtocol"
    const-string v2, "onCmd: #PHASE_IOS_WORING/PHASE_ANDROID_WORKING"
  .line 209
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L126
  :L110
  .line 210
    iget-boolean v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z
    if-eqz v0, :L111
  .line 211
    invoke-virtual/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z
    goto/16 :L126
  :L111
  .line 212
    iput v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I
  .line 213
    iput v5, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b:I
  .line 214
    iput v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I
  .line 215
    iput v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I
  .line 216
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-ne v0, v6, :L112
  .line 217
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
  .line 218
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
  .line 219
    invoke-direct { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R(I)V
    goto :L114
  :L112
  .line 220
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-ne v0, v4, :L114
  .line 221
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
  .line 222
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v6 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    if-ne v0, v3, :L113
    const/4 v2, 1
  :L113
    sput-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
  .line 223
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,onCmd: Recv bWifiDeviceConected: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R:Z
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 224
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    invoke-direct { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->R(I)V
  :L114
  .line 225
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,onCmd: Recv CMD_PLUG, Phone Type: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ",WorkMode:"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/v0/a;->u()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 226
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->o:Lcn/manstep/phonemirrorBox/q0/g;
    if-eqz v0, :L115
  .line 227
    invoke-interface { v0 }, Lcn/manstep/phonemirrorBox/q0/g;->j()I
    move-result v0
    sput v0, Lcn/manstep/phonemirrorBox/p;->G:I
  :L115
  .line 228
    invoke-direct/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Z()V
    goto/16 :L126
  :L116
  .line 229
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g()I
    move-result v0
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v4
    if-ne v0, v4, :L124
  .line 230
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual { v0, v4 }, Lcn/manstep/phonemirrorBox/util/z;->b(Ljava/lang/Object;)Ljava/lang/Object;
    const/16 v0, 36
  .line 231
    invoke-static { v3, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 232
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v4
    invoke-virtual { v0, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->j(Ljava/nio/ByteBuffer;)V
  .line 233
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v4, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I
    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I
  .line 234
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "BoxProtocol,onCmd: Recv CMD_OPEN:  "
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, " "
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v4, v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "x"
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v4, v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "@"
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v4, v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "fps "
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v4, v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, " "
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v4, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v4, v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->e:I
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, " "
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 235
    iget-object v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v4, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I
    const/16 v5, 4000
    if-gt v4, v5, :L123
    iget v4, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I
    if-gt v4, v5, :L123
    iget v4, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I
    const/16 v5, 60
    if-le v4, v5, :L117
    goto/16 :L123
  :L117
  .line 236
    iget v0, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I
    const/16 v4, 123
    if-nez v0, :L118
  .line 237
    invoke-virtual { v1, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V
  .line 238
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L121
  :L118
  .line 239
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v0
    sget-object v5, Lcn/manstep/phonemirrorBox/m;->a:[I
    invoke-virtual { v0, v2, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->t(I[I)Z
    move-result v0
    if-eqz v0, :L119
    const-string v0, "BoxProtocol"
    const-string v5, "onCmd: PID ERROR"
  .line 240
    invoke-static { v0, v5 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 241
    invoke-virtual { v1, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V
  .line 242
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L121
  :L119
  .line 243
    iget-boolean v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->m:Z
    if-nez v0, :L120
  .line 244
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "BoxProtocol,box not support crypt!!!"
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const-string v0, "2024.07.08.0000"
  .line 245
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v0, v5 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v0
    if-gez v0, :L121
  .line 246
    invoke-virtual { v1, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V
  .line 247
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L121
  :L120
  .line 248
    invoke-virtual { v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V
  .line 249
    invoke-virtual/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h0()Z
  :L121
  .line 250
    iget-boolean v0, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f:Z
    if-eqz v0, :L122
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z
    if-eqz v0, :L122
  .line 251
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v3, "MicType"
    invoke-virtual { v0, v3, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F0(I)Z
  :L122
  .line 252
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,onCmd: Recv CMD_OPEN: g_Open.iBoxversion = "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L126
  :L123
    const-string v0, "BoxProtocol,onCmd: Recv CMD_OPEN: data exception!!!"
  .line 253
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L126
  :L124
  .line 254
    invoke-virtual/range { p1 .. p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    if-nez v0, :L125
  .line 255
    invoke-virtual/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z
    const-string v0, "BoxProtocol"
    const-string v2, "onCmd: Resend g_Open!! #####################"
  .line 256
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto :L126
  :L125
    const-string v0, "NULL!!!!!!"
  .line 257
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  :L126
    return-void
  :L127
  .sparse-switch
    11 -> :L14
    22 -> :L13
    119 -> :L12
    136 -> :L11
    153 -> :L10
    161 -> :L9
    177 -> :L8
    187 -> :L7
    204 -> :L1
    240 -> :L0
    255 -> :L126
  .end sparse-switch
  :L128
  .packed-switch 7
    :L57
    :L56
    :L55
    :L54
  .end packed-switch
  :L129
  .packed-switch 1003
    :L53
    :L52
    :L51
    :L50
    :L49
    :L48
    :L47
    :L46
    :L45
    :L44
  .end packed-switch
  :L130
  .packed-switch 1001
    :L103
    :L102
    :L101
    :L100
  .end packed-switch
.end method

.method private Z()V
  .catch Ljava/lang/InterruptedException; { :L1 .. :L2 } :L3
  .registers 11
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    const/4 v1, 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->A(Landroid/content/Context;Z)V
    const/4 v0, 4
  .line 2
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    const/4 v0, 0
    const/4 v2, 0
  :L0
    const/16 v3, 10
    if-ge v2, v3, :L5
  .line 3
    sget-boolean v3, Lcn/manstep/phonemirrorBox/MainActivity;->b0:Z
    if-nez v3, :L5
    const-wide/16 v3, 200
  :L1
  .line 4
    invoke-static { v3, v4 }, Ljava/lang/Thread;->sleep(J)V
  :L2
    goto :L4
  :L3
    move-exception v3
  .line 5
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "phonePlugIn: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const-string v4, "BoxProtocol"
    invoke-static { v4, v3 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L4
    add-int/lit8 v2, v2, 1
    goto :L0
  :L5
  .line 6
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v3, -1
    if-ne v2, v3, :L6
  .line 7
    invoke-static { v1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L8
  :L6
  .line 8
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M:Z
    if-eqz v2, :L7
    const/4 v0, 3
  .line 9
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 10
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M:Z
    goto :L8
  :L7
  .line 11
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M:Z
  :L8
  .line 12
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    if-eq v0, v3, :L9
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    if-eqz v4, :L9
    const/4 v5, 1
  .line 13
    iget v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I
    iget v7, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I
    const/4 v8, 0
    const/4 v9, 0
    invoke-virtual/range { v4 .. v9 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->g(III[BI)V
  :L9
    return-void
.end method

.method private a0()V
  .registers 17
    move-object/from16 v0, p0
  .line 1
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "readThreadRun: start "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "BoxProtocol"
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    invoke-direct { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    const-wide/16 v5, 0
    const-wide/16 v7, 0
    const-wide/16 v9, 0
  :L0
  .line 3
    iget-boolean v11, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C:Z
    if-nez v11, :L13
    const-wide/16 v11, 10
    cmp-long v13, v5, v11
    if-gez v13, :L1
  .line 4
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v7
  .line 5
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct { v13 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v14, "readThreadRun: time1="
    invoke-virtual { v13, v14 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13, v7, v8 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v13 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v13
    invoke-static { v2, v13 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  :L1
  .line 6
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object v13
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v14
    invoke-static { v13, v14 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->H([BI)Z
    move-result v13
    if-eqz v13, :L12
  .line 7
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->l()V
  .line 8
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v13
    invoke-virtual { v13 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c()Z
    move-result v13
    if-nez v13, :L2
    const-string v7, "readThreadRun: receive error head!!!"
  .line 9
    invoke-static { v2, v7 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 10
    iget-object v7, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-virtual { v7, v8 }, Lcn/manstep/phonemirrorBox/util/z;->b(Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    invoke-virtual/range { p0 .. p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c1()Z
    const-wide/16 v7, 0
    goto :L0
  :L2
  .line 12
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
    cmp-long v13, v5, v11
    if-gez v13, :L3
  .line 13
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v9
  .line 14
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct { v13 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v14, "readThreadRun: time2="
    invoke-virtual { v13, v14 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13, v9, v10 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v13 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v13
    invoke-static { v2, v13 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  :L3
  .line 15
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v13
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v14
    invoke-static { v13, v14 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->H([BI)Z
    move-result v13
    if-eqz v13, :L11
  .line 16
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->k()V
    const/4 v13, 7
  .line 17
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v14
    invoke-static { v14 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v14
    if-ne v13, v14, :L6
  .line 18
    sget v13, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v14, -2
    if-ne v13, v14, :L4
  .line 19
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct { v13 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "readThreadRun: (phoneType == PHONE_TYPE_UNKNOWN), CMD_AUDIO_FRAME decode_type="
    invoke-virtual { v13, v15 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v15
    const/4 v3, 0
    invoke-virtual { v15, v3 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v3
    invoke-virtual { v13, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v13 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L4
  .line 20
    iget-boolean v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->H:Z
    if-nez v3, :L7
    sget v3, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    if-eq v3, v14, :L7
  .line 21
    iget-object v3, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v3 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L5
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L7
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcn/manstep/phonemirrorBox/BoxInterface/a;
  .line 22
    invoke-virtual { v4, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->t(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
    goto :L5
  :L6
  .line 23
    invoke-direct { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
  :L7
    const/4 v3, 6
  .line 24
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v4
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v4
    if-ne v3, v4, :L8
    const-wide/16 v3, 1
    add-long/2addr v5, v3
    goto :L10
  :L8
    const/4 v3, 4
  .line 25
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v4
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v4
    if-eq v3, v4, :L9
    const/4 v3, 2
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v4
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    move-result v4
    if-ne v3, v4, :L10
  :L9
    const-wide/16 v5, 0
  :L10
    cmp-long v3, v5, v11
    if-gez v3, :L0
  .line 26
    invoke-static { }, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v3
  .line 27
    new-instance v11, Ljava/lang/StringBuilder;
    invoke-direct { v11 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "readThreadRun: readHead="
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sub-long v12, v9, v7
    invoke-virtual { v11, v12, v13 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v12, ",readData="
    invoke-virtual { v11, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sub-long/2addr v3, v9
    invoke-virtual { v11, v3, v4 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v11 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L0
  :L11
    const-string v1, "readThreadRun: readThread err 2"
  .line 28
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    goto :L13
  :L12
    const-string v1, "readThreadRun: readThread err 1"
  .line 29
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L13
  .line 30
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-virtual { v1, v3 }, Lcn/manstep/phonemirrorBox/util/z;->b(Ljava/lang/Object;)Ljava/lang/Object;
  .line 31
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "readThreadRun: end readThread------:"
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method private e0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
  .catch Ljava/lang/Exception; { :L1 .. :L4 } :L5
  .registers 10
    const-string v0, "BoxProtocol,saveBluetoothPairList: "
    const-string v1, "BoxProtocol"
    const-string v2, "saveBluetoothPairList: ###"
  .line 1
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;
    invoke-virtual { v2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/content/Context;
    if-nez v2, :L0
    return-void
  :L0
  .line 3
    invoke-virtual { v2 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v2
  .line 4
    invoke-virtual { v2 }, Ljava/io/File;->exists()Z
    move-result v3
    if-eqz v3, :L6
    invoke-virtual { v2 }, Ljava/io/File;->isDirectory()Z
    move-result v3
    if-nez v3, :L1
    goto/16 :L6
  :L1
  .line 5
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v3
    const/4 v4, 1
    sub-int/2addr v3, v4
  .line 6
    new-instance v5, Ljava/lang/String;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p1
    const-string v6, "UTF-8"
    const/4 v7, 0
    invoke-direct { v5, p1, v7, v3, v6 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    if-lez v3, :L2
    const-string p1, "\n"
  .line 7
    invoke-virtual { v5, p1 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p1
    array-length p1, p1
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j1(I)V
    goto :L3
  :L2
  .line 8
    invoke-virtual { p0, v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j1(I)V
  :L3
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 10
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 11
    new-instance p1, Ljava/io/FileOutputStream;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "/bluetooth_pair_list"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
  .line 12
    invoke-virtual { v5 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    invoke-virtual { p1, v0, v7, v3 }, Ljava/io/FileOutputStream;->write([BII)V
  .line 13
    invoke-virtual { p1 }, Ljava/io/FileOutputStream;->close()V
    const/16 p1, 210
  .line 14
    invoke-static { v4, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L4
    goto :L6
  :L5
    move-exception p1
  .line 15
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "saveBluetoothPairList: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L6
    return-void
.end method

.method private f0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
  .catch Ljava/lang/Exception; { :L1 .. :L4 } :L5
  .registers 11
    const-string v0, "/"
  .line 1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    if-nez v1, :L0
    return-void
  :L0
  .line 2
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/n;->r(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v1
  :L1
  .line 3
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v2
    const/4 v3, 0
    invoke-virtual { v2, v3 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v2
  .line 4
    new-instance v4, Ljava/lang/String;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v5
    add-int/lit8 v6, v2, -1
    const-string v7, "ISO-8859-1"
    const/4 v8, 4
    invoke-direct { v4, v5, v8, v6, v7 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    add-int/2addr v2, v8
  .line 5
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v5
    invoke-virtual { v5, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v5
    add-int/2addr v2, v8
  .line 6
    invoke-virtual { v4, v0 }, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    move-result v6
    const/4 v7, 1
    add-int/2addr v6, v7
    invoke-virtual { v4, v6 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v4
  .line 7
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 8
    invoke-virtual { v4 }, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v6
    const-string v8, "log"
    invoke-virtual { v6, v8 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v6
    if-eqz v6, :L2
  .line 9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "/hwbox.log"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    goto :L3
  :L2
  .line 10
    invoke-virtual { v4 }, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v1
    const-string v6, "apk"
    invoke-virtual { v1, v6 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L3
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/c0;->f(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
    const/4 v3, 1
  :L3
  .line 12
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "BoxProtocol,saveFileFromBox: Recv file "
    invoke-virtual { v1, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, " from Box, file content "
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, " byte"
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->m(Ljava/lang/String;)V
  .line 13
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z
  .line 14
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p1
    invoke-static { p1, v2, v5, v0 }, Lcn/manstep/phonemirrorBox/util/n;->x([BIILjava/lang/String;)Z
    if-eqz v3, :L6
    const/16 p1, 33
  .line 15
    invoke-static { v7, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L4
    goto :L6
  :L5
    move-exception p1
  .line 16
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol, saveFileFromBox: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L6
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
    const/16 v1, 162
    invoke-direct { p0, v1, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z
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
    const/4 v2, 0
    invoke-static { p1, p2, v0, v2, v1 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
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
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v0(I)Z
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
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->a0()V
    return-void
.end method

.method private r1(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
  .catch Ljava/lang/Exception; { :L1 .. :L3 } :L4
  .registers 8
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->W()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    const/4 v1, 1
    const/4 v2, 4
    if-lt v0, v2, :L5
  :L1
  .line 3
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    const/4 v3, 0
    invoke-virtual { v0, v3 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
  .line 4
    new-instance v3, Ljava/lang/String;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v4
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result p1
    sub-int/2addr p1, v2
    sub-int/2addr p1, v1
    const-string v5, "ISO-8859-1"
    invoke-direct { v3, v4, v2, p1, v5 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,showConnectionPinCode: phoneType="
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", Pincode: "
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 p1, 6
    if-eq v0, p1, :L2
    const/4 p1, 7
    if-ne v0, p1, :L5
  :L2
  .line 6
    invoke-virtual { p0, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p1(Ljava/lang/String;)V
  :L3
    goto :L5
  :L4
    move-exception p1
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "showConnectionPinCode: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "BoxProtocol"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L5
    const/16 p1, 230
  .line 8
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    return-void
.end method

.method static synthetic s(Lcn/manstep/phonemirrorBox/BoxInterface/f;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C:Z
    return p0
.end method

.method private s1(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)V
  .catch Ljava/lang/Exception; { :L1 .. :L3 } :L4
  .registers 8
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->W()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    const/4 v1, 1
    const/4 v2, 4
    if-lt v0, v2, :L5
  :L1
  .line 3
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    const/4 v3, 0
    invoke-virtual { v0, v3 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
  .line 4
    new-instance v3, Ljava/lang/String;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v4
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result p1
    sub-int/2addr p1, v2
    sub-int/2addr p1, v1
    const-string v5, "ISO-8859-1"
    invoke-direct { v3, v4, v2, p1, v5 }, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->i()Z
    move-result p1
    if-nez p1, :L2
    const-string v3, ""
  :L2
  .line 6
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,showConnectionUrl: phoneType="
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", HiCarURL: "
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 p1, 6
    if-ne v0, p1, :L5
  .line 7
    invoke-virtual { p0, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q1(Ljava/lang/String;)V
  :L3
    goto :L5
  :L4
    move-exception p1
  .line 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "showConnectionUrl: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string v0, "BoxProtocol"
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L5
    const/16 p1, 214
  .line 9
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    return-void
.end method

.method private t(Ljava/lang/String;)V
  .registers 5
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
    const-string v0, "unknown"
  .line 2
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
    return-void
  :L1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,checkBoxVersion: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 1
    const/16 v2, 18
    if-eq v0, v2, :L2
  .line 5
    invoke-virtual { p0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V
    goto :L3
  :L2
    const/16 v0, 17
  .line 6
    invoke-virtual { p1, v0, v2 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p1
    const-string v0, "Y"
  .line 7
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    xor-int/2addr p1, v1
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V
  :L3
    return-void
.end method

.method private t1()V
  .registers 3
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->g:Z
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x:Z
  :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "stopAllAudio: AudioPlayerCount="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxProtocol"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;
  .line 5
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->K()V
    goto :L1
  :L2
    return-void
.end method

.method private u(Landroid/content/Context;Ljava/lang/String;)Z
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "/tmp/"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\u0000"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 2
    invoke-direct { p0, p1, p2, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    move-result p1
    return p1
.end method

.method private v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L3 } :L4
  .registers 10
    const/4 v0, 0
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object p1
    invoke-virtual { p1, p2 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object p1
  .line 2
    invoke-virtual { p1 }, Ljava/io/InputStream;->available()I
    move-result v1
  .line 3
    new-array v2, v1, [B
  .line 4
    invoke-virtual { p1, v2 }, Ljava/io/InputStream;->read([B)I
    move-result v3
    if-eq v3, v1, :L1
  .line 5
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "filename = "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, " readCount = "
    invoke-virtual { v4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ", length = "
    invoke-virtual { v4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 p2, 0
    goto :L2
  :L1
    const/4 p2, 1
  :L2
  .line 6
    invoke-virtual { p0, p3, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z
  .line 7
    invoke-virtual { p1 }, Ljava/io/InputStream;->close()V
  :L3
    move v0, p2
    goto :L5
  :L4
    move-exception p1
  .line 8
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "BoxProtocol,copyAssetFiletoBox: \n"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
    return v0
.end method

.method private v0(I)Z
  .catchall { :L0 .. :L4 } :L3
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    if-eqz v0, :L5
  .line 2
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    const/4 v2, 0
    invoke-direct { v1, p0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 3
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v3
    invoke-static { v3, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 4
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v3
    invoke-static { v3, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 5
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
  .line 6
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 7
    monitor-enter p0
  :L0
  .line 8
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object v3
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v1
    invoke-static { v3, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result v1
    if-eqz v1, :L1
    goto :L2
  :L1
  .line 9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,sendCmd: cmd = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ", ret = false"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, 0
  :L2
  .line 10
    monitor-exit p0
    goto :L6
  :L3
    move-exception p1
    monitor-exit p0
  :L4
    throw p1
  :L5
  .line 11
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,sendCmd: bOpened_ = false, cmd = "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L6
    return v0
.end method

.method private w(Ljava/lang/String;Ljava/lang/String;)Z
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .registers 8
  .line 1
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L4
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v1
    if-nez v1, :L0
    goto :L4
  :L0
  .line 3
    invoke-virtual { v0 }, Ljava/io/File;->length()J
    move-result-wide v3
    long-to-int v1, v3
  .line 4
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "BoxProtocol,copyLocalFileToBox: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ", length = "
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const p1, 102400
    if-le v1, p1, :L1
    const-string p1, "BoxProtocol,copyLocalFileToBox: The local file that needs to be sent to the box is larger than 100kb!!! "
  .line 5
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return v2
  :L1
  .line 6
    new-array p1, v1, [B
  .line 7
    new-instance v1, Ljava/io/FileInputStream;
    invoke-direct { v1, v0 }, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
  .line 8
    invoke-virtual { v1, p1 }, Ljava/io/FileInputStream;->read([B)I
  .line 9
    invoke-virtual { v1 }, Ljava/io/FileInputStream;->close()V
  .line 10
    invoke-virtual { p0, p2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z
    move-result p1
  :L2
    return p1
  :L3
    move-exception p1
  .line 11
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L4
    return v2
.end method

.method private w0(II)Z
  .catchall { :L0 .. :L4 } :L3
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    if-eqz v0, :L5
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    const/4 v1, 4
    invoke-direct { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    invoke-static { v2, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 4
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
  .line 6
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v1, v2, p2 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 7
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 8
    monitor-enter p0
  :L0
  .line 9
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object v1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v3
    invoke-static { v1, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result v1
    if-eqz v1, :L1
  .line 10
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result v0
    goto :L2
  :L1
    const/4 v0, 0
  :L2
  .line 11
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,sendCmd: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 12
    monitor-exit p0
    goto :L6
  :L3
    move-exception p1
    monitor-exit p0
  :L4
    throw p1
  :L5
  .line 13
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,sendCmd: bOpened_ = false, cmd = "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, ","
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L6
    return v0
.end method

.method private x(I)Ljava/lang/String;
  .registers 4
    const/16 v0, 16
    if-eq p1, v0, :L3
    const/16 v0, 17
    if-eq p1, v0, :L2
    const/16 v0, 30
    if-eq p1, v0, :L1
    const/16 v0, 31
    if-eq p1, v0, :L0
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, ""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L0
    const-string p1, "CarPlay_StopBleAdv"
    return-object p1
  :L1
    const-string p1, "CarPlay_StartBleAdv"
    return-object p1
  :L2
    const-string p1, "CarPlay_StopNightMode"
    return-object p1
  :L3
    const-string p1, "CarPlay_StartNightMode"
    return-object p1
.end method

.method private z0(Ljava/lang/String;I)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 7
    const/4 v0, 4
    new-array v0, v0, [B
    and-int/lit16 v1, p2, 255
    int-to-byte v1, v1
    const/4 v2, 0
    aput-byte v1, v0, v2
    shr-int/lit8 v1, p2, 8
    and-int/lit16 v1, v1, 255
    int-to-byte v1, v1
    const/4 v3, 1
    aput-byte v1, v0, v3
    shr-int/lit8 v1, p2, 16
    and-int/lit16 v1, v1, 255
    int-to-byte v1, v1
    const/4 v3, 2
    aput-byte v1, v0, v3
    shr-int/lit8 p2, p2, 24
    and-int/lit16 p2, p2, 255
    int-to-byte p2, p2
    const/4 v1, 3
    aput-byte p2, v0, v1
  :L0
  .line 1
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "\u0000"
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z
    move-result v2
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 2
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    return v2
.end method

.method public A()Z
  .registers 2
    const-string v0, "BoxProtocol,getBluetoothOnlineList: 1013"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 1013
  .line 2
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
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
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k:Ljava/lang/String;
    return-object v0
  :L0
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
  .catch Lorg/json/JSONException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    new-instance v0, Lorg/json/JSONObject;
    invoke-direct { v0 }, Lorg/json/JSONObject;-><init>()V
  :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
  .line 3
    invoke-virtual { v0 }, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object p1
    const-string p2, "BoxProtocol"
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "sendInfo: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { p2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 5
    invoke-virtual { p1 }, Ljava/lang/String;->getBytes()[B
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h1([B)Z
    move-result p1
  :L1
    return p1
  :L2
    const/4 p1, 0
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
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "sendManualDisconnectTemp: isUnauthorized="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxProtocol"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v0, 15
  .line 2
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v0(I)Z
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
    const/4 v0, 1
    if-ne p1, v0, :L0
    const/16 p1, 15
  .line 1
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
    move-result p1
    return p1
  :L0
    const/4 v0, 2
    if-ne p1, v0, :L1
    const/16 p1, 21
  .line 2
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
    move-result p1
    return p1
  :L1
    const/4 p1, 7
  .line 3
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
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
  .catchall { :L1 .. :L6 } :L5
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/e;->a()I
    move-result v1
    invoke-direct { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v1
    const/16 v2, 23
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 4
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { p1, v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/e;->c(Ljava/nio/ByteBuffer;I)V
  .line 6
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 7
    monitor-enter p0
  :L1
  .line 8
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object p1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v1
    invoke-static { p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-eqz p1, :L3
  .line 9
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-eqz p1, :L2
    goto :L4
  :L2
    const-string p1, "Send multi touch data err"
  .line 10
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L4
  :L3
    const-string p1, "Send multi touch head err"
  .line 11
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L4
  .line 12
    monitor-exit p0
    return-void
  :L5
    move-exception p1
    monitor-exit p0
  :L6
    throw p1
.end method

.method public H()Lcn/manstep/phonemirrorBox/BoxInterface/a;
  .registers 3
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->G:I
    const/4 v1, -1
    if-ne v0, v1, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z(I)Lcn/manstep/phonemirrorBox/BoxInterface/a;
    move-result-object v0
    return-object v0
.end method

.method public H0()V
  .catch Lorg/json/JSONException; { :L0 .. :L1 } :L2
  .registers 6
    const-string v0, "sendPid: "
    const-string v1, "BoxProtocol"
  .line 1
    new-instance v2, Lorg/json/JSONObject;
    invoke-direct { v2 }, Lorg/json/JSONObject;-><init>()V
  :L0
    const-string v3, "pid"
  .line 2
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v4
    invoke-virtual { v2, v3, v4 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
  :L1
    goto :L3
  :L2
    move-exception v3
  .line 3
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v1, v3 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L3
  .line 4
    invoke-virtual { v2 }, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v2
  .line 5
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v0, 160
    const/4 v1, 0
  .line 6
    invoke-direct { p0, v0, v2, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->A0(ILjava/lang/String;Z)Z
    return-void
.end method

.method public I()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public I0(IIII)V
  .catchall { :L5 .. :L10 } :L9
  .registers 10
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    const/16 v1, 16
    invoke-direct { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    const/4 v3, 5
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 4
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
    const/4 v2, 0
    if-eqz p1, :L3
    const/4 v3, 1
    if-eq p1, v3, :L2
    const/4 v3, 2
    if-eq p1, v3, :L1
    goto :L4
  :L1
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    invoke-virtual { p1, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    goto :L4
  :L2
  .line 6
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    const/16 v3, 15
    invoke-virtual { p1, v2, v3 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    goto :L4
  :L3
  .line 7
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    const/16 v3, 14
    invoke-virtual { p1, v2, v3 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  :L4
  .line 8
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v3
    invoke-virtual { v3, v2 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v3
    const/16 v4, 8
    shl-int/2addr p2, v4
    or-int/2addr p2, v3
    invoke-virtual { p1, v2, p2 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 9
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    const/4 p2, 4
    invoke-virtual { p1, p2, p3 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 10
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    invoke-virtual { p1, v4, p4 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 11
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    const/16 p2, 12
    iget p3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b:I
    iget p4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c:I
    shl-int/2addr p4, v1
    or-int/2addr p3, p4
    invoke-virtual { p1, p2, p3 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 12
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 13
    monitor-enter p0
  :L5
  .line 14
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object p1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result p2
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-eqz p1, :L7
  .line 15
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result p2
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-eqz p1, :L6
    goto :L8
  :L6
    const-string p1, "Send touch data err"
  .line 16
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L8
  :L7
    const-string p1, "Send touch head err"
  .line 17
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L8
  .line 18
    monitor-exit p0
    return-void
  :L9
    move-exception p1
    monitor-exit p0
  :L10
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
    if-lez p2, :L0
  .line 1
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    invoke-virtual { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D0(Ljava/lang/String;Ljava/lang/Object;)Z
    move-result p1
    return p1
  :L0
    const/4 p1, 0
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
    const/4 v0, 5
    if-ne p1, v0, :L0
    const/16 p1, 25
  .line 1
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
    move-result p1
    return p1
  :L0
    const/16 p1, 24
  .line 2
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
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
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,send_AndroidWorkMode: mode = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const-string v0, "/etc/android_work_mode"
  .line 2
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z0(Ljava/lang/String;I)Z
    move-result p1
    return p1
.end method

.method public M0(I)Z
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "send_CarplayLogoType: type="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxProtocol"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v0, 9
  .line 2
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w0(II)Z
    move-result p1
    return p1
.end method

.method public N0(I)Z
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,send_NightMode: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " (0:day 1:night)"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-nez p1, :L0
    const/16 v0, 17
  .line 2
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
    goto :L2
  :L0
    const/4 v0, 1
    if-ne v0, p1, :L1
    const/16 v0, 16
  .line 3
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
    goto :L2
  :L1
    const/4 v0, 2
    const-string v1, "DayNightMode"
  .line 4
    invoke-virtual { p0, v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f1(Ljava/lang/String;I)Z
  :L2
    const-string v0, "/tmp/night_mode"
  .line 5
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z0(Ljava/lang/String;I)Z
    move-result p1
    return p1
.end method

.method public O0()Z
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->A()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/c0;->h()I
    move-result v0
    goto :L1
  :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/c0;->f()I
    move-result v0
  :L1
  .line 4
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P0(I)Z
    move-result v0
    return v0
.end method

.method public P0(I)Z
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,send_ScreenDPI: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const-string v0, "/tmp/screen_dpi"
  .line 2
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z0(Ljava/lang/String;I)Z
    move-result p1
    return p1
.end method

.method public Q()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->t()Lcn/manstep/phonemirrorBox/util/x;
    move-result-object v0
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D:I
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->t()Lcn/manstep/phonemirrorBox/util/x;
    move-result-object v0
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E:I
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,initBoundSize: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "x"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public Q0()Z
  .registers 2
    const/16 v0, 21
  .line 1
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v0(I)Z
    move-result v0
    return v0
.end method

.method public R0(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Z
  .catchall { :L0 .. :L4 } :L3
  .registers 4
  .line 1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 2
    monitor-enter p0
  :L0
  .line 3
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object v0
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L2
  .line 4
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v0
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result p1
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-eqz p1, :L1
  .line 5
    monitor-exit p0
    const/4 p1, 1
    return p1
  :L1
    const-string p1, "BoxProtocol,send_audio_record: Write audioRecord data err"
  .line 6
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 7
    monitor-exit p0
    return v1
  :L2
    const-string p1, "BoxProtocol,send_audio_record: Write audioRecord head err"
  .line 8
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 9
    monitor-exit p0
    return v1
  :L3
    move-exception p1
  .line 10
    monitor-exit p0
  :L4
    throw p1
.end method

.method public S()Z
  .registers 3
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v1, 5
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public S0([B)Z
  .catchall { :L1 .. :L5 } :L4
  .registers 8
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
  .line 1
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    invoke-direct { v1, p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 2
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    const/16 v3, 22
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 3
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    array-length v3, p1
    const/4 v4, 4
    add-int/2addr v3, v4
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 4
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
  .line 5
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v2
    const/4 v3, 1
    invoke-virtual { v2, v0, v3 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 6
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v2
    array-length v5, p1
    invoke-static { p1, v0, v2, v4, v5 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 7
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 8
    monitor-enter p0
  :L1
  .line 9
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object p1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v2
    invoke-static { p1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-eqz p1, :L3
  .line 10
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v1
    invoke-static { p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-eqz p1, :L2
  .line 11
    monitor-exit p0
    return v3
  :L2
    const-string p1, "BoxProtocol,send_camera_info: Write data err"
  .line 12
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 13
    monitor-exit p0
    return v0
  :L3
    const-string p1, "BoxProtocol,send_camera_info: Write head err"
  .line 14
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 15
    monitor-exit p0
    return v0
  :L4
    move-exception p1
  .line 16
    monitor-exit p0
  :L5
    throw p1
.end method

.method public T()Z
  .registers 3
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v1, 3
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public T0(I)Z
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "send_carplay_cmd: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->x(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxProtocol"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v0, 8
  .line 2
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w0(II)Z
    move-result p1
    return p1
.end method

.method public U()Z
  .registers 3
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
    const/4 v1, 6
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public U0(I)Z
  .registers 3
    const/16 v0, 136
  .line 1
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w0(II)Z
    move-result p1
    return p1
.end method

.method public V()Z
  .registers 2
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public V0()Z
  .catchall { :L2 .. :L5 } :L4
  .registers 5
  :L0
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I
    if-gtz v0, :L1
  .line 2
    new-instance v0, Ljava/util/Random;
    invoke-direct { v0 }, Ljava/util/Random;-><init>()V
    const v1, 2147483647
    invoke-virtual { v0, v1 }, Ljava/util/Random;->nextInt(I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I
    goto :L0
  :L1
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    const/4 v1, 4
    invoke-direct { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 4
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    const/16 v3, 240
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 5
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 6
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
  .line 7
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v1
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I
    const/4 v3, 0
    invoke-virtual { v1, v3, v2 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 8
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 9
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->W(I)V
  .line 10
    monitor-enter p0
  :L2
  .line 11
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object v1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v2
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result v1
    if-eqz v1, :L3
  .line 12
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result v3
  :L3
  .line 13
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,sendCmd CMD_ENABLE_CRYPT: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", ret = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 14
    monitor-exit p0
    return v3
  :L4
    move-exception v0
    monitor-exit p0
  :L5
    goto :L7
  :L6
    throw v0
  :L7
    goto :L6
.end method

.method public W()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z
    return v0
.end method

.method public W0(I)Z
  .registers 3
    const/16 v0, 119
  .line 1
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w0(II)Z
    move-result p1
    return p1
.end method

.method public X0()Z
  .catchall { :L8 .. :L12 } :L11
  .registers 7
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->W()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->H0()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    sget v2, Lcn/manstep/phonemirrorBox/p;->C:I
    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I
  .line 4
    sget-boolean v2, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-eqz v2, :L1
  .line 5
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D:I
    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I
  .line 6
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E:I
    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I
    const/16 v2, 160
  .line 7
    iput v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F:I
    const/16 v2, 25
  .line 8
    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I
    goto :L3
  :L1
  .line 9
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->D:I
    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I
  .line 10
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E:I
    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->A()Z
    move-result v0
    if-eqz v0, :L2
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v2, "DPI"
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object v3
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/c0;->h()I
    move-result v3
    invoke-virtual { v0, v2, v3 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F:I
    goto :L3
  :L2
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v2, "DPI"
    invoke-static { }, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;
    move-result-object v3
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/c0;->f()I
    move-result v3
    invoke-virtual { v0, v2, v3 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F:I
  :L3
  .line 14
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->V0()Z
  .line 15
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F:I
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P0(I)Z
  .line 16
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ""
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "x"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "@"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "fps, dpi="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 17
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "BoxProtocol,send_g_open: AutoPlay Video resolution and frame rate: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, ", Config.bUseSoftDecode = "
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V
  .line 18
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d()I
    move-result v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->L0(I)Z
  .line 19
    sget v0, Lcn/manstep/phonemirrorBox/p;->r:I
    if-gez v0, :L4
  .line 20
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    invoke-static { }, Lcn/manstep/phonemirrorBox/p;->a()I
    move-result v2
    iput v2, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I
    goto :L5
  :L4
  .line 21
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iput v0, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I
  :L5
  .line 22
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,send_g_open: g_Open.iBoxversion = "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    iget v2, v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 23
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
    const/4 v2, 4
    if-gt v0, v2, :L6
    if-gez v0, :L7
  :L6
  .line 24
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,send_g_open: error phoneWorkMode="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 v0, 2
  .line 25
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
  :L7
  .line 26
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,send_g_open: phoneWorkMode="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ",androidWorkMode="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->i:I
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 27
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g()I
    move-result v2
    invoke-direct { v0, p0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 28
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    const/4 v3, 1
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 29
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g()I
    move-result v4
    invoke-static { v2, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 30
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
  .line 31
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->e()[B
    move-result-object v2
  .line 32
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v4
  .line 33
    array-length v5, v2
    invoke-static { v2, v1, v4, v1, v5 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 34
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 35
    monitor-enter p0
  :L8
  .line 36
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object v2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v4
    invoke-static { v2, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result v2
    if-eqz v2, :L10
  .line 37
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result v0
    if-eqz v0, :L9
    const-string v0, "BoxProtocol,send_g_open: success "
  .line 38
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 39
    monitor-exit p0
    return v3
  :L9
    const-string v0, "BoxProtocol,send_g_open: Write g_Open data err"
  .line 40
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 41
    monitor-exit p0
    return v1
  :L10
    const-string v0, "BoxProtocol,send_g_open: Write g_Open head err"
  .line 42
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 43
    monitor-exit p0
    return v1
  :L11
    move-exception v0
  .line 44
    monitor-exit p0
  :L12
    throw v0
.end method

.method public Y0()V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$f;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$f;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    const-string v2, "send_g_open_async"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
    return-void
.end method

.method public Z0()Z
  .registers 3
    const/4 v0, 1
    new-array v0, v0, [B
    const/4 v1, 0
    aput-byte v1, v0, v1
    const-string v1, "/tmp/iphone_work_mode\u0000"
  .line 1
    invoke-virtual { p0, v1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z
    move-result v0
    return v0
.end method

.method public a(Landroid/content/Context;)Z
  .registers 5
    const/4 v0, 0
    if-nez p1, :L0
    const-string p1, "BoxProtocol,UploadAssets: context==null"
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    return v0
  :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v1
    const-string v2, "2022"
    invoke-virtual { v1, v2 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v1
    if-lez v1, :L1
    const-string v0, "other_link.hwfs"
  .line 3
    invoke-direct { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result p1
    return p1
  :L1
    const-string v1, "adb"
  .line 4
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "adb.pub"
  .line 5
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "helloworld0"
  .line 6
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "helloworld1"
  .line 7
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "helloworld2"
  .line 8
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libby265n.so"
  .line 9
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libby265n_x86.so"
  .line 10
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap40.so"
  .line 11
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap41.so"
  .line 12
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap43.so"
  .line 13
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap50.so"
  .line 14
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap50_x86.so"
  .line 15
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap442.so"
  .line 16
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap422.so"
  .line 17
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "mirrorcoper.apk"
  .line 18
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap60.so"
  .line 19
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap70.so"
  .line 20
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap71.so"
  .line 21
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap80.so"
  .line 22
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap90.so"
  .line 23
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "libscreencap100.so"
  .line 24
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "HWTouch.dex"
  .line 25
    invoke-direct { p0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u(Landroid/content/Context;Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L2
    const/4 v0, 1
  :L2
    return v0
.end method

.method public a1()V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$g;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$g;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    const-string v2, "send_invalidMode"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
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
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "reset: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxProtocol"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f:Z
  .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z
    const/4 v1, -2
  .line 4
    sput v1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
  .line 5
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Q:Z
    const/4 v1, 1
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
    const/4 v0, 0
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z
  .line 2
    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z
    const/4 v0, -2
  .line 3
    sput v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N:I
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "send_manualDisconnect: isUnauthorized="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxProtocol"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v0, 15
  .line 5
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v0(I)Z
    move-result v0
    return v0
.end method

.method public c(Landroid/content/Context;)V
  .registers 6
    if-nez p1, :L0
    return-void
  :L0
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const/4 v0, 1
    const-string v1, "CarPlayLogoType"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
    const/4 v0, 2
    if-ne p1, v0, :L1
    return-void
  :L1
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v0, "CarPlayOEMIconName"
    const-string v1, ""
    invoke-virtual { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 3
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const-string v2, "\n"
    if-nez v0, :L3
    invoke-virtual { p1 }, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v0
    const-string v3, "default"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L3
    invoke-virtual { p1 }, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v0
    const-string v3, "custom"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L2
    goto :L3
  :L2
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "oemIconLabel = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  :L3
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "name = "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "oemIconVisible = 1\n"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "model = Magic-Car-Link-1.00\noemIconPath = /etc/oem_icon.png\n"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 7
    invoke-virtual { p1 }, Ljava/lang/String;->getBytes()[B
    move-result-object p1
    const-string v0, "/etc/airplay.conf\u0000"
    invoke-virtual { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z
    return-void
.end method

.method public c0(I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q:Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
    sput p1, Lcn/manstep/phonemirrorBox/p;->C:I
    iput p1, v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z
    move-result p1
    return p1
.end method

.method public c1()Z
  .catchall { :L0 .. :L4 } :L3
  .registers 5
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    const/4 v1, 0
    invoke-direct { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    const/16 v3, 206
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 3
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
  .line 4
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 5
    monitor-enter p0
  :L0
  .line 6
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object v2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "BoxProtocol,sendCmd: CMD_BOX_REBOOT , ret = false"
  .line 7
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L2
  :L1
    const/4 v1, 1
  :L2
  .line 8
    monitor-exit p0
    return v1
  :L3
    move-exception v0
    monitor-exit p0
  :L4
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
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z
    move-result p1
    return p1
.end method

.method public d1(Z)V
  .registers 2
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->I(Z)V
    return-void
.end method

.method public e()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f(Landroid/content/Context;)V
    return-void
.end method

.method public e1([B)Z
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,setBoxBluetoothName: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v1, p1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    array-length v0, p1
    const/16 v1, 15
    if-le v0, v1, :L0
    const-string p1, "BoxProtocol,setBoxBluetoothName: Bluetooth name is too long."
  .line 3
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 p1, 0
    return p1
  :L0
    const/16 v0, 13
  .line 4
    array-length v1, p1
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z
    move-result p1
    return p1
.end method

.method public f(Landroid/content/Context;)V
  .registers 10
    if-nez p1, :L0
    return-void
  :L0
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "CarPlayLogoType"
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    const/4 v1, 2
    const/4 v3, 0
    if-ne v0, v1, :L1
    const-string v4, "carplay"
    const/4 v5, 0
    goto :L2
  :L1
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v4
    const-string v5, "CarPlayOEMIconPath"
    const-string v6, ""
    invoke-virtual { v4, v5, v6 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v5
    const-string v6, "CarBrandId"
    invoke-virtual { v5, v6, v3 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v5
  :L2
  .line 4
    invoke-virtual { p0, v5, v3 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t0(II)Z
  .line 5
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "BoxProtocol,UploadLocalLogoPNGPublic: filePath = "
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 6
    invoke-static { v4 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    const-string v5, "/etc/icon_256x256.png\u0000"
    const-string v6, "/etc/icon_180x180.png\u0000"
    const-string v7, "/etc/icon_120x120.png\u0000"
    if-eqz v3, :L4
  .line 7
    invoke-virtual { p0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M0(I)Z
    const-string v0, "CarLogo/default.png"
  .line 8
    invoke-direct { p0, p1, v0, v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L3
  .line 9
    invoke-direct { p0, p1, v0, v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
  .line 10
    invoke-direct { p0, p1, v0, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
  :L3
    return-void
  :L4
    const-string v3, "custom"
  .line 11
    invoke-virtual { v4, v3 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :L5
  .line 12
    invoke-direct { p0, v4, v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w(Ljava/lang/String;Ljava/lang/String;)Z
  .line 13
    invoke-direct { p0, v4, v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w(Ljava/lang/String;Ljava/lang/String;)Z
  .line 14
    invoke-direct { p0, v4, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w(Ljava/lang/String;Ljava/lang/String;)Z
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/content/Context;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c(Landroid/content/Context;)V
    return-void
  :L5
  .line 16
    invoke-direct { p0, p1, v4, v7 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
  .line 17
    invoke-direct { p0, p1, v4, v6 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
  .line 18
    invoke-direct { p0, p1, v4, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    if-ne v0, v1, :L6
  .line 19
    invoke-virtual { p0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M0(I)Z
    goto :L7
  :L6
  .line 20
    invoke-virtual { p0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->M0(I)Z
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;
    invoke-virtual { p1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/content/Context;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->c(Landroid/content/Context;)V
  :L7
    return-void
.end method

.method public f1(Ljava/lang/String;I)Z
  .catch Lorg/json/JSONException; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    new-instance v0, Lorg/json/JSONObject;
    invoke-direct { v0 }, Lorg/json/JSONObject;-><init>()V
  :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
  :L1
  .line 3
    invoke-virtual { v0 }, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object p1
  .line 4
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "setBoxConfig: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    const-string v0, "BoxProtocol"
    invoke-static { v0, p2 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 5
    invoke-virtual { p1 }, Ljava/lang/String;->getBytes()[B
    move-result-object p1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g1([B)Z
    move-result p1
    return p1
  :L2
    const/4 p1, 0
    return p1
.end method

.method public g0(II)Z
  .catch Lorg/json/JSONException; { :L0 .. :L1 } :L2
  .registers 5
  .line 1
    new-instance v0, Lorg/json/JSONObject;
    invoke-direct { v0 }, Lorg/json/JSONObject;-><init>()V
  :L0
    const-string v1, "androidAutoSizeW"
  .line 2
    invoke-virtual { v0, v1, p1 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    const-string p1, "androidAutoSizeH"
  .line 3
    invoke-virtual { v0, p1, p2 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
  .line 4
    invoke-virtual { v0 }, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object p1
  .line 5
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "BoxProtocol,sendAndroidAutoSize: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 6
    invoke-virtual { p1 }, Ljava/lang/String;->getBytes()[B
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h1([B)Z
    move-result p1
  :L1
    return p1
  :L2
    move-exception p1
  .line 7
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "sendAndroidAutoSize: \n"
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    const-string p2, "BoxProtocol"
    invoke-static { p2, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 p1, 0
    return p1
.end method

.method public h0()Z
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d()I
    move-result v0
    const/4 v1, 3
    if-eq v0, v1, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f()I
    move-result v0
    if-ne v0, v1, :L2
  :L0
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p:Z
    if-nez v0, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->y:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->a(Landroid/content/Context;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "BoxProtocol,sendAndroidWorkModeAssets: UploadAssets failed!"
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L2
  :L1
    const/4 v0, 1
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p:Z
  :L2
  .line 5
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->p:Z
    return v0
.end method

.method public h1([B)Z
  .registers 4
  .line 1
    array-length v0, p1
    const/16 v1, 25
    invoke-direct { p0, v1, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z
    move-result p1
    return p1
.end method

.method public i0()Z
  .catch Lorg/json/JSONException; { :L0 .. :L1 } :L2
  .registers 6
    const-string v0, ""
  .line 1
    new-instance v1, Lorg/json/JSONObject;
    invoke-direct { v1 }, Lorg/json/JSONObject;-><init>()V
  :L0
    const-string v2, "version"
    const-string v3, "2025.03.19.1126"
  .line 2
    invoke-virtual { v1, v2, v3 }, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v2, "code"
    const/16 v3, 37
  .line 3
    invoke-virtual { v1, v2, v3 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    const-string v2, "lang"
  .line 4
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/x;->c()I
    move-result v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, v2, v3 }, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v2, "uuid"
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v3
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, v2, v3 }, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v2, "size"
  .line 6
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v4, Lcn/manstep/phonemirrorBox/p;->k:I
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "x"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v4, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, v2, v3 }, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v2, "model"
  .line 7
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
    invoke-virtual { v1, v2, v3 }, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v2, "ro.board.platform"
  .line 8
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const-string v3, "platform"
  .line 9
    invoke-virtual { v1, v3, v2 }, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
  .line 10
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "("
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, ")"
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v2, "android"
  .line 11
    invoke-virtual { v1, v2, v0 }, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v0, "huid"
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/u;->w()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v0, v2 }, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 13
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "sendAppInfo: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v2, "BoxProtocol"
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L3
  .line 14
    invoke-virtual { v1 }, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v0
  .line 15
    invoke-virtual { v0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->j0([B)Z
    move-result v0
    return v0
.end method

.method public i1([B)Z
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,setBoxWifiName: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v1, p1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    array-length v0, p1
    const/16 v1, 15
    if-le v0, v1, :L0
    const-string p1, "BoxProtocol,setBoxWifiName: Wifi name is too long."
  .line 3
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 p1, 0
    return p1
  :L0
    const/16 v0, 14
  .line 4
    array-length v1, p1
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z
    move-result p1
    return p1
.end method

.method public j0([B)Z
  .registers 4
  .line 1
    array-length v0, p1
    const/16 v1, 160
    invoke-direct { p0, v1, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z
    move-result p1
    return p1
.end method

.method public j1(I)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,setBtPairedCount: count = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->L:I
    return-void
.end method

.method public k0(Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->H:Z
    if-eqz p1, :L0
    const/16 p1, 22
  .line 2
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
    move-result p1
    return p1
  :L0
    const/16 p1, 23
  .line 3
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
    move-result p1
    return p1
.end method

.method public l0([B)Z
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,sendAutoConnByBtAddr: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v1, p1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    array-length v0, p1
    const/16 v1, 17
    if-eq v0, v1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 3
    invoke-direct { p0, v1, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z
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
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,sendAutoConnect: cmd=1002,"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, ", bOpened_="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->W()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->g:Z
    if-nez v0, :L0
    goto :L2
  :L0
  .line 3
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h:Z
    if-eqz v0, :L1
    const-string v0, "BoxProtocol"
    const-string v2, "sendAutoConnect: bBluetoothConnected=true"
  .line 4
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    return v1
  :L1
    const/16 v0, 1002
  .line 5
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
    move-result v0
    return v0
  :L2
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
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,sendBluetoothAddr: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v1, p1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    array-length v0, p1
    const/16 v1, 17
    if-eq v0, v1, :L0
    const/4 p1, 0
    return p1
  :L0
    const/16 v0, 10
  .line 3
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z
    move-result p1
    return p1
.end method

.method public n1(Z)V
  .registers 4
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->J:Z
    if-eqz p1, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,setUnauthorized: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 p1, 1
    const/16 v0, 123
  .line 3
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  :L0
    return-void
.end method

.method public o0([BI)Z
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "sendBluetoothPairedList: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxProtocol"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/16 v0, 18
  .line 2
    invoke-direct { p0, v0, p1, p2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z
    move-result p1
    return p1
.end method

.method public o1(I)Z
  .registers 3
    const-string v0, "WiFiChannel"
  .line 1
    invoke-virtual { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->f1(Ljava/lang/String;I)Z
    move-result p1
    return p1
.end method

.method public p0([B)Z
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,sendBluetoothPinCode: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length v1, p1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    array-length v0, p1
    const/4 v1, 4
    if-eq v0, v1, :L0
    const/4 p1, 0
    return p1
  :L0
    const/16 v0, 12
  .line 3
    invoke-direct { p0, v0, p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z
    move-result p1
    return p1
.end method

.method public p1(Ljava/lang/String;)V
  .registers 2
    return-void
.end method

.method public q0()Z
  .catch Lorg/json/JSONException; { :L0 .. :L3 } :L8
  .catch Lorg/json/JSONException; { :L4 .. :L7 } :L8
  .registers 8
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "mediaDelay"
    const/16 v2, 300
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
  .line 2
    new-instance v2, Lorg/json/JSONObject;
    invoke-direct { v2 }, Lorg/json/JSONObject;-><init>()V
    const/4 v3, 0
  :L0
  .line 3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v5
    invoke-virtual { v4, v5, v6 }, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
    move-result-wide v4
    const-string v6, "syncTime"
  .line 4
    invoke-virtual { v2, v6, v4, v5 }, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
  .line 5
    invoke-virtual { v2, v1, v0 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    const-string v0, "drivePosition"
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v4, "IsLeftDrive"
    const/4 v5, 1
    invoke-virtual { v1, v4, v5 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v1
    if-eqz v1, :L1
    const/4 v1, 0
    goto :L2
  :L1
    const/4 v1, 1
  :L2
    invoke-virtual { v2, v0, v1 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "vandroidautoh"
    const/16 v4, 720
    invoke-virtual { v0, v1, v4 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/c0;->b(I)Lcn/manstep/phonemirrorBox/util/x;
    move-result-object v0
    const-string v1, "androidAutoSizeW"
  .line 8
    iget v4, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I
    invoke-virtual { v2, v1, v4 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    const-string v1, "androidAutoSizeH"
  .line 9
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I
    invoke-virtual { v2, v1, v0 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    const-string v0, "HiCarConnectMode"
  .line 10
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->I()I
    move-result v1
    invoke-virtual { v2, v0, v1 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    const-string v0, "GNSSCapability"
    const/4 v1, 7
  .line 11
    invoke-virtual { v2, v0, v1 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    const-string v0, "DashboardInfo"
  .line 12
    invoke-virtual { v2, v0, v5 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->b0()Z
    move-result v0
  :L3
    const-string v1, "UseBTPhone"
    if-eqz v0, :L5
  :L4
  .line 14
    invoke-virtual { v2, v1, v5 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    goto :L6
  :L5
  .line 15
    invoke-virtual { v2, v1, v3 }, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
  :L6
  .line 16
    invoke-virtual { v2 }, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v0
  .line 17
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "BoxProtocol,sendBoxAllSettings: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 18
    invoke-virtual { v0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h1([B)Z
    move-result v0
  :L7
    return v0
  :L8
    move-exception v0
  .line 19
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "sendBoxAllSettings: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BoxProtocol"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
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
    const/16 v1, 16
    if-le v0, v1, :L0
    const-string p1, "BoxProtocol,sendBoxName: Box name is too long."
  .line 2
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 p1, 0
    return p1
  :L0
    const-string v0, "/etc/box_name\u0000"
  .line 3
    invoke-virtual { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z
    move-result p1
    return p1
.end method

.method public s0(Ljava/lang/String;Ljava/lang/Object;)Z
  .catch Lorg/json/JSONException; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    new-instance v0, Lorg/json/JSONObject;
    invoke-direct { v0 }, Lorg/json/JSONObject;-><init>()V
  :L0
  .line 2
    invoke-virtual { v0, p1, p2 }, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
  .line 3
    invoke-virtual { v0 }, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object p1
  .line 4
    invoke-virtual { p1 }, Ljava/lang/String;->getBytes()[B
    move-result-object p1
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->h1([B)Z
    move-result p1
  :L1
    return p1
  :L2
    const/4 p1, 0
    return p1
.end method

.method public t0(II)Z
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,sendCarManufacturerInfo: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 8
  .line 2
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object v1
  .line 3
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { v1, v2 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    const/4 v2, 0
  .line 4
    invoke-virtual { v1, v2, p1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    const/4 p1, 4
  .line 5
    invoke-virtual { v1, p1, p2 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 6
    invoke-virtual { v1 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object p1
    const/16 p2, 20
    invoke-direct { p0, p2, p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B0(I[BI)Z
    move-result p1
    return p1
.end method

.method public u0(I)Z
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,sendChargeMode: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const-string v0, "/tmp/charge_mode"
  .line 2
    invoke-direct { p0, v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z0(Ljava/lang/String;I)Z
    move-result p1
    return p1
.end method

.method public u1()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$d;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$d;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    const-string v2, "checkOpen"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;
  :L0
    return-void
.end method

.method public v1()V
  .registers 9
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;
    if-nez v0, :L0
  .line 2
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v0, 1
    new-instance v2, Lcn/manstep/phonemirrorBox/h0/b;
    invoke-direct { v2 }, Lcn/manstep/phonemirrorBox/h0/b;-><init>()V
    const-string v3, "heartBeat-%d"
    invoke-virtual { v2, v3 }, Lcn/manstep/phonemirrorBox/h0/b;->f(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/h0/b;
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/h0/b;->b()Ljava/util/concurrent/ThreadFactory;
    move-result-object v2
    invoke-direct { v1, v0, v2 }, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;
  .line 3
    new-instance v2, Lcn/manstep/phonemirrorBox/BoxInterface/f$e;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$e;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    const-wide/16 v3, 0
    const-wide/16 v5, 2000
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface/range { v1 .. v7 }, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
  :L0
    return-void
.end method

.method public w1(Ljava/lang/String;[B)Z
  .catchall { :L3 .. :L7 } :L6
  .registers 13
  .line 1
    array-length v0, p2
    const/4 v1, 0
    const/high16 v2, 800
    if-le v0, v2, :L0
    const-string p1, "BoxProtocol"
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "upload_file_to_box: The file is too large. size="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    array-length p2, p2
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    return v1
  :L0
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
  .line 4
    array-length v2, v0
  .line 5
    array-length v3, p2
  .line 6
    new-instance v4, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    add-int/lit8 v5, v2, 4
    const/4 v6, 4
    add-int/2addr v5, v6
    add-int/2addr v5, v3
    invoke-direct { v4, p0, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 7
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v7
    const/16 v8, 153
    invoke-static { v7, v8 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 8
    invoke-static { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v7
    invoke-static { v7, v5 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 9
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
  .line 10
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v5
    invoke-virtual { v5, v1, v2 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    const/4 v2, 0
    const/4 v5, 4
  :L1
  .line 11
    array-length v7, v0
    if-ge v2, v7, :L2
  .line 12
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v7
    add-int/lit8 v8, v5, 1
    aget-byte v9, v0, v2
    invoke-virtual { v7, v5, v9 }, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v2, 1
    move v5, v8
    goto :L1
  :L2
  .line 13
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0, v5, v3 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    add-int/2addr v5, v6
  .line 14
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object v0
    invoke-static { p2, v1, v0, v5, v3 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 15
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 16
    monitor-enter p0
  :L3
  .line 17
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object p2
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v0
    invoke-static { p2, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p2
    if-eqz p2, :L5
  .line 18
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p2
    invoke-virtual { v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    invoke-static { p2, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p2
    if-nez p2, :L4
  .line 19
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "BoxProtocol,upload_file_to_box: Write carplay_cmd data err, boxFileName: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 20
    monitor-exit p0
    return v1
  :L4
  .line 21
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "BoxProtocol,upload_file_to_box: send_carplay_cmd() success , boxFileName: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 22
    monitor-exit p0
    const/4 p1, 1
    return p1
  :L5
  .line 23
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "BoxProtocol,upload_file_to_box: Write carplay_cmd head err, boxFileName: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 24
    monitor-exit p0
    return v1
  :L6
    move-exception p1
  .line 25
    monitor-exit p0
  :L7
    goto :L9
  :L8
    throw p1
  :L9
    goto :L8
.end method

.method public x0(I)V
  .catchall { :L5 .. :L10 } :L9
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r:Lcn/manstep/phonemirrorBox/util/z;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/util/z;->a()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    const/16 v1, 16
    invoke-direct { v0, p0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;I)V
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v2
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 4
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
    move-result-object v1
    const/4 v2, 5
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->c()V
    const/4 v1, 0
    if-eqz p1, :L3
    const/4 v2, 1
    if-eq p1, v2, :L2
    const/4 v2, 2
    if-eq p1, v2, :L1
    return-void
  :L1
  .line 6
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    const/16 v2, 13
    invoke-virtual { p1, v1, v2 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    goto :L4
  :L2
  .line 7
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    const/16 v2, 12
    invoke-virtual { p1, v1, v2 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    goto :L4
  :L3
  .line 8
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->d()Ljava/nio/ByteBuffer;
    move-result-object p1
    const/16 v2, 11
    invoke-virtual { p1, v1, v2 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  :L4
  .line 9
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->j()V
  .line 10
    monitor-enter p0
  :L5
  .line 11
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->g()[B
    move-result-object p1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->h()I
    move-result v1
    invoke-static { p1, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-eqz p1, :L7
  .line 12
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->e()[B
    move-result-object p1
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->f()I
    move-result v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->d0([BI)Z
    move-result p1
    if-eqz p1, :L6
    goto :L8
  :L6
    const-string p1, "Send command data err"
  .line 13
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L8
  :L7
    const-string p1, "Send commadn head err"
  .line 14
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L8
  .line 15
    monitor-exit p0
    return-void
  :L9
    move-exception p1
    monitor-exit p0
  :L10
    throw p1
.end method

.method public y()V
  .catch Ljava/lang/InterruptedException; { :L1 .. :L6 } :L13
  .catchall { :L1 .. :L6 } :L12
  .catchall { :L6 .. :L7 } :L9
  .catch Ljava/lang/InterruptedException; { :L7 .. :L8 } :L13
  .catchall { :L7 .. :L8 } :L12
  .catchall { :L10 .. :L11 } :L9
  .catch Ljava/lang/InterruptedException; { :L11 .. :L12 } :L13
  .catchall { :L11 .. :L12 } :L12
  .catchall { :L14 .. :L15 } :L12
  .registers 6
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C:Z
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d:I
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e:I
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->A:Lcn/manstep/phonemirrorBox/BoxInterface/f$h;
    const/4 v2, 0
    if-eqz v1, :L0
  .line 5
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b()V
  .line 6
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->A:Lcn/manstep/phonemirrorBox/BoxInterface/f$h;
  :L0
  .line 7
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->n1(Z)V
    const-wide/16 v0, 800
  :L1
  .line 8
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v3, :L2
  .line 9
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->v:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface { v3 }, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
  :L2
  .line 10
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;
    if-eqz v3, :L3
  .line 11
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->t:Ljava/lang/Thread;
    invoke-virtual { v3, v0, v1 }, Ljava/lang/Thread;->join(J)V
  :L3
  .line 12
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;
    if-eqz v3, :L4
  .line 13
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->s:Ljava/lang/Thread;
    invoke-virtual { v3, v0, v1 }, Ljava/lang/Thread;->join(J)V
  :L4
  .line 14
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;
    if-eqz v3, :L5
  .line 15
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u:Ljava/lang/Thread;
    invoke-virtual { v3, v0, v1 }, Ljava/lang/Thread;->join(J)V
  :L5
  .line 16
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;
    if-eqz v3, :L15
  .line 17
    sget-object v3, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    monitor-enter v3
  :L6
  .line 18
    sget-object v4, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h:Ld/b/a/c;
    invoke-virtual { v4 }, Ljava/lang/Object;->notify()V
  .line 19
    monitor-exit v3
  :L7
  .line 20
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w:Ljava/lang/Thread;
    invoke-virtual { v3, v0, v1 }, Ljava/lang/Thread;->join(J)V
  :L8
    goto :L15
  :L9
    move-exception v0
  :L10
  .line 21
    monitor-exit v3
  :L11
    throw v0
  :L12
    move-exception v0
    goto :L19
  :L13
    move-exception v0
  :L14
  .line 22
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L15
  .line 23
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
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L16
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L17
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;
  .line 29
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->h()V
    goto :L16
  :L17
  .line 30
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 31
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
    if-eqz v0, :L18
  .line 32
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/b;->e()V
  :L18
  .line 33
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->z:Lcn/manstep/phonemirrorBox/BoxInterface/b;
  .line 34
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b0()V
    const-string v0, "BoxProtocol destroy()"
  .line 35
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    return-void
  :L19
  .line 36
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
    goto :L21
  :L20
    throw v0
  :L21
    goto :L20
.end method

.method public y0()V
  .registers 6
    const-string v0, "BoxProtocol,sendConfig: "
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->q0()Z
  .line 3
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i0()Z
  .line 4
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d()V
  .line 5
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e()V
  .line 6
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "NightMode"
    const/4 v2, 2
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
  .line 8
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->N0(I)Z
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "ChargeMode"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->u0(I)Z
  .line 10
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z
    if-eqz v0, :L0
    const/4 v0, 1
  .line 11
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->U0(I)Z
  :L0
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "BtName"
    const-string v3, ""
    invoke-virtual { v0, v1, v3 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 13
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L1
    goto :L2
  :L1
  .line 14
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "sendConfig: btName="
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v4, "BoxProtocol"
    invoke-static { v4, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 15
    invoke-virtual { v0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e1([B)Z
  :L2
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "WifiName"
    invoke-virtual { v0, v1, v3 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 17
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L3
    goto :L4
  :L3
  .line 18
    invoke-virtual { v0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->i1([B)Z
  :L4
  .line 19
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->C()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->r0([B)Z
  .line 20
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "MicType"
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->F0(I)Z
  .line 21
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const/4 v1, 5
    const-string v3, "wifi_type"
    invoke-virtual { v0, v3, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K0(I)Z
  .line 22
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "AudioTransferMode"
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->k0(Z)Z
  .line 23
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "MediaPlaying_"
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->K()I
    move-result v3
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :L5
    const/16 v0, 201
  .line 24
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->T0(I)Z
  :L5
    return-void
.end method

.method public z(I)Lcn/manstep/phonemirrorBox/BoxInterface/a;
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    const/4 v1, 0
    if-eqz v0, :L3
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    if-gtz v0, :L0
    goto :L3
  :L0
    if-gez p1, :L1
    return-object v1
  :L1
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    if-lt p1, v0, :L2
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
    invoke-interface { p1, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    return-object p1
  :L2
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->B:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    return-object p1
  :L3
    return-object v1
.end method
