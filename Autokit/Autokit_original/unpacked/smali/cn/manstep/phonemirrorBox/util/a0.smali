.class public Lcn/manstep/phonemirrorBox/util/a0;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:J

.field private final b:Landroid/os/Handler;

.field private c:Z

.field private d:I

.method public constructor <init>(J)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/a0;->c:Z
    const/4 v0, -1
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/a0;->d:I
  .line 4
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/util/a0;->a:J
  .line 5
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/a0;->b:Landroid/os/Handler;
    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;)V
  .registers 5
  .line 6
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 1
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/a0;->c:Z
    const/4 v0, -1
  .line 8
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/a0;->d:I
  .line 9
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/util/a0;->a:J
  .line 10
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/util/a0;->b:Landroid/os/Handler;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/util/a0;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/util/a0;->c:Z
    return p1
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/util/a0;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/a0;->d:I
    return p1
.end method

.method public c(ILjava/lang/Runnable;)V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/a0;->c:Z
    if-nez v0, :L0
    iget v0, p0, Lcn/manstep/phonemirrorBox/util/a0;->d:I
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    invoke-interface { p2 }, Ljava/lang/Runnable;->run()V
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/a0;->d:I
    const/4 p1, 0
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/util/a0;->c:Z
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/a0;->b:Landroid/os/Handler;
    new-instance p2, Lcn/manstep/phonemirrorBox/util/a0$a;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/util/a0$a;-><init>(Lcn/manstep/phonemirrorBox/util/a0;)V
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/util/a0;->a:J
    invoke-virtual { p1, p2, v0, v1 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method
