.class Lcn/manstep/phonemirrorBox/AutoStartService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AutoStartService;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/AutoStartService;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoStartService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$f;->b:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$f;->b:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/AutoStartService;->r(Lcn/manstep/phonemirrorBox/AutoStartService;)Ld/b/a/b;

    move-result-object v0

    new-instance v1, Ld/b/a/a;

    const v2, 0xbb80

    const/16 v3, 0xc

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ld/b/a/a;-><init>(III)V

    invoke-virtual {v0, v1}, Ld/b/a/b;->c(Ld/b/a/a;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$f;->b:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/AutoStartService;->r(Lcn/manstep/phonemirrorBox/AutoStartService;)Ld/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/b;->A()I

    move-result v0

    .line 3
    new-array v1, v0, [B

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 5
    :goto_24
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService$f;->b:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/AutoStartService;->s(Lcn/manstep/phonemirrorBox/AutoStartService;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService$f;->b:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/AutoStartService;->r(Lcn/manstep/phonemirrorBox/AutoStartService;)Ld/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ld/b/a/b;->e([BI)V

    const-wide/16 v2, 0x64

    .line 7
    :try_start_37
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_24

    :catch_3b
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_24

    .line 9
    :cond_40
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$f;->b:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/AutoStartService;->r(Lcn/manstep/phonemirrorBox/AutoStartService;)Ld/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Ld/b/a/b;->i()V

    return-void
.end method
