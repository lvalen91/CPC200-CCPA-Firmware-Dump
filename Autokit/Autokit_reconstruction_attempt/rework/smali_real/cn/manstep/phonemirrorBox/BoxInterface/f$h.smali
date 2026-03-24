.class Lcn/manstep/phonemirrorBox/BoxInterface/f$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

.field private b:Lcn/manstep/phonemirrorBox/util/i;

.field final synthetic c:Lcn/manstep/phonemirrorBox/BoxInterface/f;


# direct methods
.method public constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->c:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->c:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-direct {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;-><init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/util/i;

    invoke-direct {p1}, Lcn/manstep/phonemirrorBox/util/i;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcn/manstep/phonemirrorBox/BoxInterface/f$l;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->g()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-le v1, v2, :cond_2d

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataVec_.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/util/i;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v1, v3}, Lcn/manstep/phonemirrorBox/util/i;->f(I)V

    goto :goto_2

    .line 4
    :cond_2d
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->e()Z

    move-result v1

    if-nez v1, :cond_65

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->a(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Lcn/manstep/phonemirrorBox/BoxInterface/f$i;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->c()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$l;->b(Lcn/manstep/phonemirrorBox/BoxInterface/f$l;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->b:Lcn/manstep/phonemirrorBox/util/i;

    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/util/i;->f(I)V

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$h;->a:Lcn/manstep/phonemirrorBox/BoxInterface/f$l;

    goto :goto_6a

    :cond_65
    const-wide/16 v1, 0x64

    .line 10
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_6a
    .catchall {:try_start_2 .. :try_end_6a} :catchall_6c

    .line 11
    :goto_6a
    monitor-exit p0

    return-object v0

    :catchall_6c
    move-exception v0

    monitor-exit p0

    goto :goto_70

    :goto_6f
    throw v0

    :goto_70
    goto :goto_6f
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 2
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
