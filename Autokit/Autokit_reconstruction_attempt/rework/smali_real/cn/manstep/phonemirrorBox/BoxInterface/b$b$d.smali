.class Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field b:Ljava/lang/StringBuilder;

.field final synthetic c:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;


# direct methods
.method private constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;Lcn/manstep/phonemirrorBox/BoxInterface/b$a;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v0

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_74

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->b:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v1

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->c()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "fps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cnt: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", render_cnt: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->g(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->e(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvcDecoder,FrameRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->h(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    :cond_74
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->d(J)J

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$d;->c:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->f(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;J)J

    return-void
.end method
