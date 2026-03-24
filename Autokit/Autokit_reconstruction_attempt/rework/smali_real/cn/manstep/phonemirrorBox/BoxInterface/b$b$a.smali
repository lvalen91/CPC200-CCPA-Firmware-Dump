.class Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->B(Landroid/view/Surface;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :cond_2
    :goto_2
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    iget-boolean v3, v2, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->b:Z

    if-eqz v3, :cond_b9

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 2
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->i(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3
    :try_start_10
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;

    move-result-object v6

    invoke-virtual {v6}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->e()Z

    move-result v6

    if-nez v6, :cond_98

    .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->c()[B

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->d()J

    move-result-wide v4

    if-eqz v1, :cond_54

    const/4 v6, 0x4

    .line 6
    aget-byte v7, v3, v6

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-eq v7, v8, :cond_4c

    aget-byte v7, v3, v6

    and-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4c

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x1f

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4a

    goto :goto_4c

    .line 7
    :cond_4a
    monitor-exit v2

    goto :goto_2

    :cond_4c
    :goto_4c
    const-string v1, "AvcDecoder"

    const-string v6, "SoftDecoder I Frame Coming!!!"

    .line 8
    invoke-static {v1, v6}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 9
    :cond_54
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;

    move-result-object v6

    invoke-virtual {v6}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I

    move-result v6

    iget-object v7, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    iget v7, v7, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->a:I

    mul-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_ac

    const-string v1, "AvcDecoder"

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoftDecoder buffer frame cnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    .line 11
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    .line 12
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->j(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Lcn/manstep/phonemirrorBox/BoxInterface/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/h;->b()V

    const/4 v1, 0x1

    .line 13
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_10 .. :try_end_96} :catchall_b6

    goto/16 :goto_2

    .line 14
    :cond_98
    :try_start_98
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->i(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;)Ljava/lang/Object;

    move-result-object v6

    const-wide/16 v7, 0xa

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_98 .. :try_end_a3} :catch_a4
    .catchall {:try_start_98 .. :try_end_a3} :catchall_b6

    goto :goto_ac

    :catch_a4
    move-exception v6

    .line 15
    :try_start_a5
    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 16
    :cond_ac
    :goto_ac
    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_a5 .. :try_end_ad} :catchall_b6

    if-eqz v3, :cond_2

    .line 17
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/b$b$a;->b:Lcn/manstep/phonemirrorBox/BoxInterface/b$b;

    invoke-static {v2, v3, v4, v5}, Lcn/manstep/phonemirrorBox/BoxInterface/b$b;->r(Lcn/manstep/phonemirrorBox/BoxInterface/b$b;[BJ)V

    goto/16 :goto_2

    :catchall_b6
    move-exception v0

    .line 18
    :try_start_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v0

    :cond_b9
    return-void
.end method
