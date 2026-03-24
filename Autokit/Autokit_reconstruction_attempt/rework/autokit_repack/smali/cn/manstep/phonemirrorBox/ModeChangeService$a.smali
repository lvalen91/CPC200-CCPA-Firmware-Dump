.class Lcn/manstep/phonemirrorBox/ModeChangeService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/ModeChangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/ModeChangeService;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/ModeChangeService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$a;->a:Lcn/manstep/phonemirrorBox/ModeChangeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.szchoiceway.eventcenter.EventUtils.ACTION_MCU_CMD_EVENT"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    const-string p1, "EventUtils.MCU_CMD_DATA"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_42

    .line 4
    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_42

    const/4 v1, 0x0

    .line 5
    aget-byte v1, p2, v1

    const/16 v3, 0x19

    if-ne v1, v3, :cond_42

    const/4 v1, 0x1

    aget-byte p2, p2, v1

    if-nez p2, :cond_42

    .line 6
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$a;->a:Lcn/manstep/phonemirrorBox/ModeChangeService;

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/ModeChangeService;->l(Lcn/manstep/phonemirrorBox/ModeChangeService;)Z

    move-result p2

    if-eqz p2, :cond_42

    sget-boolean p2, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z

    if-eqz p2, :cond_42

    .line 7
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v0, v2, [B

    .line 8
    fill-array-data v0, :array_44

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/ModeChangeService$a;->a:Lcn/manstep/phonemirrorBox/ModeChangeService;

    invoke-virtual {p1, p2}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    :cond_42
    return-void

    nop

    :array_44
    .array-data 1
        0x19t
        0x1t
    .end array-data
.end method
