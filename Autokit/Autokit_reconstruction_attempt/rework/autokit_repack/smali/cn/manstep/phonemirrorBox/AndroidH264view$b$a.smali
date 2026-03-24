.class Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AndroidH264view$b;->t(Landroid/view/Surface;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :goto_0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    iget-boolean v1, v0, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z

    if-eqz v1, :cond_8f

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_b
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_43

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer frame cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 6
    :cond_43
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->c(Lcn/manstep/phonemirrorBox/AndroidH264view$b;[B)V

    .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 8
    :cond_5e
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    iget-boolean v1, v1, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a:Z
    :try_end_62
    .catchall {:try_start_b .. :try_end_62} :catchall_8c

    if-eqz v1, :cond_89

    .line 9
    :try_start_64
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->b(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sget v2, Lcn/manstep/phonemirrorBox/p;->F:I

    if-gt v1, v2, :cond_89

    .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AndroidH264view$b$a;->b:Lcn/manstep/phonemirrorBox/AndroidH264view$b;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AndroidH264view$b;->a(Lcn/manstep/phonemirrorBox/AndroidH264view$b;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x21

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_7d
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_7d} :catch_7e
    .catchall {:try_start_64 .. :try_end_7d} :catchall_8c

    goto :goto_89

    :catch_7e
    move-exception v1

    .line 11
    :try_start_7f
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 12
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 13
    :cond_89
    :goto_89
    monitor-exit v0

    goto/16 :goto_0

    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_8c

    throw v1

    :cond_8f
    return-void
.end method
