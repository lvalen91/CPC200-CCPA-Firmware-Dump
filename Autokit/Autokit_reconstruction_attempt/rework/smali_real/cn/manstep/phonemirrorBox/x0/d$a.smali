.class Lcn/manstep/phonemirrorBox/x0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/x0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/d;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d$a;->a:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d$a;->a:Lcn/manstep/phonemirrorBox/x0/d;

    check-cast p2, Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/x0/d;->k(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/service/BackgroundService$c;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d$a;->a:Lcn/manstep/phonemirrorBox/x0/d;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/x0/d;->j(Lcn/manstep/phonemirrorBox/x0/d;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    move-result-object p1

    new-instance p2, Lcn/manstep/phonemirrorBox/x0/d$a$a;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/x0/d$a$a;-><init>(Lcn/manstep/phonemirrorBox/x0/d$a;)V

    invoke-interface {p1, p2}, Lcn/manstep/phonemirrorBox/service/BackgroundService$c;->c0(Lcn/manstep/phonemirrorBox/service/BackgroundService$b;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: mApiServiceConnection->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BoxViewModel"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/d$a;->a:Lcn/manstep/phonemirrorBox/x0/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/x0/d;->k(Lcn/manstep/phonemirrorBox/x0/d;Lcn/manstep/phonemirrorBox/service/BackgroundService$c;)Lcn/manstep/phonemirrorBox/service/BackgroundService$c;

    return-void
.end method
