.class Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AdjustSizeActivity;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AdjustSizeActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;

    const-class v3, Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x14018000

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;

    invoke-virtual {v2, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const-wide/16 v2, 0x3e8

    .line 6
    :try_start_21
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 8
    :goto_29
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AdjustSizeActivity$c;->b:Lcn/manstep/phonemirrorBox/AdjustSizeActivity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 10
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
