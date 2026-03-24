.class Lcn/manstep/phonemirrorBox/AutoStartService$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AutoStartService;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/AutoStartService;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoStartService;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/AutoStartService;->l(Lcn/manstep/phonemirrorBox/AutoStartService;Ljava/lang/String;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoStartService,startNightModeDetectTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/AutoStartService;->m(Lcn/manstep/phonemirrorBox/AutoStartService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_36

    .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AutoStartService;->m(Lcn/manstep/phonemirrorBox/AutoStartService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    return-void

    :cond_36
    if-nez v0, :cond_41

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/AutoStartService;->m(Lcn/manstep/phonemirrorBox/AutoStartService;)I

    move-result v1

    if-nez v1, :cond_41

    return-void

    :cond_41
    if-eqz v0, :cond_46

    const/16 v1, 0x10

    goto :goto_48

    :cond_46
    const/16 v1, 0x11

    .line 5
    :goto_48
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->L(I)V

    .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoStartService$c;->c:Lcn/manstep/phonemirrorBox/AutoStartService;

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/AutoStartService;->p(Lcn/manstep/phonemirrorBox/AutoStartService;I)I

    return-void
.end method
