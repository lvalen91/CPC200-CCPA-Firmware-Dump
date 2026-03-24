.class public Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static b:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;


# instance fields
.field private a:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->a:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;

    return-void
.end method

.method public static a()Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
    .registers 4

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->b:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->b:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->b:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->b:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;

    return-object v0
.end method


# virtual methods
.method public b(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->a:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2}, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;->E(IZ)V

    :cond_7
    return-void
.end method

.method public c(Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->a:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;

    return-void
.end method
