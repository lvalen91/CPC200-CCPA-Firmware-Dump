.class Lcn/manstep/phonemirrorBox/MainActivity$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$y;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    check-cast p2, Lcn/manstep/phonemirrorBox/ModeChangeService$c;

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$y;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/ModeChangeService$c;->a()Lcn/manstep/phonemirrorBox/ModeChangeService;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/MainActivity;->r0(Lcn/manstep/phonemirrorBox/MainActivity;Lcn/manstep/phonemirrorBox/ModeChangeService;)Lcn/manstep/phonemirrorBox/ModeChangeService;

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$y;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/MainActivity;->o0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/ModeChangeService;

    move-result-object p1

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity$y;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/ModeChangeService;->o(Lcn/manstep/phonemirrorBox/MainActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$y;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->r0(Lcn/manstep/phonemirrorBox/MainActivity;Lcn/manstep/phonemirrorBox/ModeChangeService;)Lcn/manstep/phonemirrorBox/ModeChangeService;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
