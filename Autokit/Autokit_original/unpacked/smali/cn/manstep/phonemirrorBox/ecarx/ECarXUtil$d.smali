.class Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$d;
.super Ljava/util/TimerTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "d"
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;

.method private constructor <init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$d;->b:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    invoke-direct { p0 }, Ljava/util/TimerTask;-><init>()V
    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$a;)V
  .registers 3
  .line 2
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$d;-><init>(Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;)V
    return-void
.end method

.method public run()V
  .registers 2
    const-string v0, "ECarXUtil,TimerTask:--------"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->y()Z
    move-result v0
    if-nez v0, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/e;->C()Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil$d;->b:Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/ecarx/ECarXUtil;->registerMusic()V
  :L1
    return-void
.end method
