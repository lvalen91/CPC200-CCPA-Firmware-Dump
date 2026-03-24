.class Lcn/manstep/phonemirrorBox/util/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/util/e0;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/util/e0;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/e0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0$a;->b:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/s;->b()V

    const-wide/16 v0, 0x3e8

    .line 2
    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 4
    :goto_d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0$a;->b:Lcn/manstep/phonemirrorBox/util/e0;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/e0;->a(Lcn/manstep/phonemirrorBox/util/e0;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->k(Landroid/content/Context;)Z

    return-void
.end method
