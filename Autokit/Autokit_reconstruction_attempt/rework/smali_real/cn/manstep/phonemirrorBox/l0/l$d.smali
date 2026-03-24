.class Lcn/manstep/phonemirrorBox/l0/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/l;->U2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->w2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/b;->A()I

    move-result v0

    .line 3
    new-array v1, v0, [B

    .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1f} :catch_88

    :try_start_1f
    const-string v3, "DTMF-14809414327.pcm"

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x46fa0000    # 32000.0f

    div-float/2addr v3, v4

    const v4, 0x44bb8000    # 1500.0f

    mul-float v3, v3, v4

    .line 7
    :goto_32
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->h2(Lcn/manstep/phonemirrorBox/l0/l;)Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v4

    invoke-virtual {v4}, Ld/b/a/b;->z()Landroid/media/AudioTrack;

    move-result-object v4

    if-eqz v4, :cond_64

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_57

    .line 9
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/l0/l;->q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;

    move-result-object v6

    invoke-virtual {v6, v1, v4, v5}, Ld/b/a/b;->f([BII)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_56} :catch_73
    .catchall {:try_start_1f .. :try_end_56} :catchall_71

    goto :goto_32

    :cond_57
    float-to-long v4, v3

    .line 10
    :try_start_58
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_5c
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_73
    .catchall {:try_start_58 .. :try_end_5b} :catchall_71

    goto :goto_60

    :catch_5c
    move-exception v4

    .line 11
    :try_start_5d
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 12
    :goto_60
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto :goto_32

    .line 13
    :cond_64
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_67} :catch_73
    .catchall {:try_start_5d .. :try_end_67} :catchall_71

    .line 14
    :try_start_67
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->w2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    :goto_6d
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_70} :catch_88

    goto :goto_8c

    :catchall_71
    move-exception v0

    goto :goto_7e

    :catch_73
    move-exception v0

    .line 15
    :try_start_74
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_71

    .line 16
    :try_start_77
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->w2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    goto :goto_6d

    :goto_7e
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$d;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/l0/l;->w2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 17
    throw v0
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_88} :catch_88

    :catch_88
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_8c
    return-void
.end method
