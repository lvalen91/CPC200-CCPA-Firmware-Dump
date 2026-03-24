.class Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/sdk/openapi/ECarXApiClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->initMediaCenter(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAPIReady(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;->a:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

    # setter for: Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->bMediaCenterAPIReady:Z
    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->access$502(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Z)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ECarXUtil,initMediaCenter: onAPIReady "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b$a;-><init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$b;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
