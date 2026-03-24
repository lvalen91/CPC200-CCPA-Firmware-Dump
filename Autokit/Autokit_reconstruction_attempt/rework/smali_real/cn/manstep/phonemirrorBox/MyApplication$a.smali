.class Lcn/manstep/phonemirrorBox/MyApplication$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MyApplication;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/MyApplication;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MyApplication;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;

    const-class v3, Lcn/manstep/phonemirrorBox/service/BackgroundService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    .line 2
    :catch_e
    :try_start_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_23

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;

    const-class v3, Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_31

    .line 4
    :cond_23
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;

    const-class v3, Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_31
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_31} :catch_31

    .line 5
    :catch_31
    :goto_31
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MyApplication$a;->b:Lcn/manstep/phonemirrorBox/MyApplication;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.manstep.phonemirrorBox.STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
