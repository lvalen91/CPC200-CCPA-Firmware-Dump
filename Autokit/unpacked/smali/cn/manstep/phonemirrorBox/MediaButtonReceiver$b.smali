.class public Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/MediaButtonReceiver;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "b"
.end annotation

.field private static b:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;

.field private a:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method private constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->a:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;
    return-void
.end method

.method public static a()Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->b:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->b:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->b:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->b:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
    return-object v0
.end method

.method public b(IZ)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->a:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2 }, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;->E(IZ)V
  :L0
    return-void
.end method

.method public c(Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->a:Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;
    return-void
.end method
