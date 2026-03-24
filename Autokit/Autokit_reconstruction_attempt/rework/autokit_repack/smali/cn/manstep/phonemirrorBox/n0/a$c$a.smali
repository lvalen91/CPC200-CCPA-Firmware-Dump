.class Lcn/manstep/phonemirrorBox/n0/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/n0/a$c;->k(Landroid/view/Surface;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/n0/a$c;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/n0/a$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :goto_0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;

    iget-boolean v1, v0, Lcn/manstep/phonemirrorBox/n0/a$c;->a:Z

    if-eqz v1, :cond_60

    .line 2
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/n0/a$c;->a(Lcn/manstep/phonemirrorBox/n0/a$c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_b
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/n0/a$c;->b(Lcn/manstep/phonemirrorBox/n0/a$c;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->e()Z

    move-result v1

    if-nez v1, :cond_30

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/n0/a$c;->b(Lcn/manstep/phonemirrorBox/n0/a$c;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/util/i;->c()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/n0/a$c;->c(Lcn/manstep/phonemirrorBox/n0/a$c;[B)V

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/n0/a$c;->b(Lcn/manstep/phonemirrorBox/n0/a$c;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/manstep/phonemirrorBox/util/i;->f(I)V

    .line 6
    :cond_30
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;

    iget-boolean v1, v1, Lcn/manstep/phonemirrorBox/n0/a$c;->a:Z
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_5d

    if-eqz v1, :cond_5b

    .line 7
    :try_start_36
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/n0/a$c;->b(Lcn/manstep/phonemirrorBox/n0/a$c;)Lcn/manstep/phonemirrorBox/util/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/util/i;->g()I

    move-result v1

    const/16 v2, 0x3c

    if-gt v1, v2, :cond_5b

    .line 8
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/n0/a$c$a;->b:Lcn/manstep/phonemirrorBox/n0/a$c;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/n0/a$c;->a(Lcn/manstep/phonemirrorBox/n0/a$c;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x21

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_4f} :catch_50
    .catchall {:try_start_36 .. :try_end_4f} :catchall_5d

    goto :goto_5b

    :catch_50
    move-exception v1

    .line 9
    :try_start_51
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 10
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 11
    :cond_5b
    :goto_5b
    monitor-exit v0

    goto :goto_0

    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_51 .. :try_end_5f} :catchall_5d

    throw v1

    :cond_60
    return-void
.end method
