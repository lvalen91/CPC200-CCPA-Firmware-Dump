.class Lcn/manstep/phonemirrorBox/l0/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/l;->V2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Landroid/widget/CheckBox;

.field final synthetic e:Landroid/widget/CheckBox;

.field final synthetic f:Lcn/manstep/phonemirrorBox/l0/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->c:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->d:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->e:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    const-string v0, "playRecord->run: "

    const-string v1, "AudioDebug"

    .line 1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->x2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1bf

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1bf

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Ld/b/a/b;->z()Landroid/media/AudioTrack;

    move-result-object v3

    if-eqz v3, :cond_1bf

    .line 3
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v4

    invoke-virtual {v4}, Ld/b/a/b;->z()Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v4

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v5}, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v5

    invoke-virtual {v5}, Ld/b/a/b;->z()Landroid/media/AudioTrack;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v3, v2, v4, v5, v6}, Lcn/manstep/phonemirrorBox/l0/l;->z2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/io/File;III)D

    move-result-wide v3

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    long-to-double v5, v5

    .line 5
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v7}, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v7

    invoke-virtual {v7}, Ld/b/a/b;->A()I

    move-result v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    .line 6
    new-array v9, v7, [B

    const/4 v10, 0x0

    .line 7
    :try_start_68
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playRecord->run: size="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/FileInputStream;->available()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", len="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", ChannelCount="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v12}, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v12

    invoke-virtual {v12}, Ld/b/a/b;->z()Landroid/media/AudioTrack;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :catch_a3
    :goto_a3
    invoke-virtual {v11, v9, v10, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    int-to-float v12, v2

    .line 10
    iget-object v13, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v13}, Lcn/manstep/phonemirrorBox/l0/l;->A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;

    move-result-object v13

    iget v13, v13, Lcn/manstep/phonemirrorBox/j0/a$a;->a:I

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v13, v13, v14

    iget-object v14, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v14}, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v14

    invoke-virtual {v14}, Ld/b/a/b;->z()Landroid/media/AudioTrack;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v14

    int-to-float v14, v14

    mul-float v13, v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float v12, v12, v13

    .line 11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_ed

    .line 12
    iget-object v13, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v13}, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v13

    invoke-virtual {v13, v9, v10, v2}, Ld/b/a/b;->f([BII)V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_e8} :catch_f1

    float-to-long v12, v12

    .line 13
    :try_start_e9
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ec
    .catch Ljava/lang/InterruptedException; {:try_start_e9 .. :try_end_ec} :catch_a3
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_f1

    goto :goto_a3

    .line 14
    :cond_ed
    :try_start_ed
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f1

    goto :goto_108

    :catch_f1
    move-exception v2

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_108
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/b;->z()Landroid/media/AudioTrack;

    move-result-object v0

    if-nez v0, :cond_1c7

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v3

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    long-to-double v11, v11

    cmpg-double v2, v0, v11

    if-ltz v2, :cond_140

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/b;->z()Landroid/media/AudioTrack;

    move-result-object v0

    if-nez v0, :cond_135

    goto :goto_140

    :cond_135
    const-wide/16 v0, 0x1f4

    .line 18
    :try_start_137
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13a
    .catch Ljava/lang/InterruptedException; {:try_start_137 .. :try_end_13a} :catch_13b

    goto :goto_108

    :catch_13b
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_108

    .line 20
    :cond_140
    :goto_140
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/b;->z()Landroid/media/AudioTrack;

    move-result-object v0

    const-wide/16 v1, 0x64

    if-eqz v0, :cond_15f

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->h2(Lcn/manstep/phonemirrorBox/l0/l;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->C2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/l0/l$p;

    move-result-object v0

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 22
    :cond_15f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->b:Landroid/widget/CheckBox;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->c:Landroid/widget/CheckBox;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->d:Landroid/widget/CheckBox;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->e:Landroid/widget/CheckBox;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_193
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_193

    .line 29
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->C2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/l0/l$p;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c7

    .line 30
    :cond_1bf
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/l$e$a;

    invoke-direct {v0, p0, v2}, Lcn/manstep/phonemirrorBox/l0/l$e$a;-><init>(Lcn/manstep/phonemirrorBox/l0/l$e;Ljava/io/File;)V

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/j;->d(Ljava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;

    :cond_1c7
    :goto_1c7
    return-void
.end method
