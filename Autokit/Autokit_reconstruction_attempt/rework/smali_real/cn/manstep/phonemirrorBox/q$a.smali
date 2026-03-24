.class Lcn/manstep/phonemirrorBox/q$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/q;->i(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/q;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/q;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/q$a;->b:Lcn/manstep/phonemirrorBox/q;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/q$a;->b:Lcn/manstep/phonemirrorBox/q;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/q;->b(Lcn/manstep/phonemirrorBox/q;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 3
    :try_start_b
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/q$a;->b:Lcn/manstep/phonemirrorBox/q;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/q;->b(Lcn/manstep/phonemirrorBox/q;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f001a

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v0

    .line 4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 5
    :cond_20
    :goto_20
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
