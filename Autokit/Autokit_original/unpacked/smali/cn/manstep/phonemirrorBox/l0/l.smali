.class public Lcn/manstep/phonemirrorBox/l0/l;
.super Lcn/manstep/phonemirrorBox/l0/m;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/l0/l$p;
  }
.end annotation

.field private c0:Ld/b/a/b;

.field private d0:Ld/b/a/b;

.field private e0:Z

.field private f0:Lcn/manstep/phonemirrorBox/widget/WaveformView;

.field private g0:Landroid/widget/TextView;

.field private h0:Landroid/widget/TextView;

.field private i0:Landroid/widget/SeekBar;

.field private j0:Landroid/media/AudioManager;

.field private k0:I

.field private l0:Lcn/manstep/phonemirrorBox/i0/g;

.field private m0:Lcn/manstep/phonemirrorBox/x0/a;

.field private n0:Lcn/manstep/phonemirrorBox/x0/e;

.field private o0:Lcn/manstep/phonemirrorBox/util/u;

.field private p0:Ljava/util/concurrent/ThreadPoolExecutor;

.field private q0:Z

.field private r0:Ljava/lang/String;

.field private s0:Lcn/manstep/phonemirrorBox/j0/a$a;

.field private t0:Lcn/manstep/phonemirrorBox/l0/l$p;

.field private final u0:Ljava/util/concurrent/Semaphore;

.field private final v0:Landroid/os/CountDownTimer;

.method public constructor <init>()V
  .registers 9
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/m;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->e0:Z
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->k0:I
    const/4 v1, 0
  .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->p0:Ljava/util/concurrent/ThreadPoolExecutor;
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->q0:Z
    const-string v0, ""
  .line 6
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->r0:Ljava/lang/String;
  .line 7
    new-instance v0, Lcn/manstep/phonemirrorBox/j0/a$a;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/j0/a$a;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->s0:Lcn/manstep/phonemirrorBox/j0/a$a;
  .line 8
    new-instance v0, Ljava/util/concurrent/Semaphore;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Ljava/util/concurrent/Semaphore;-><init>(I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->u0:Ljava/util/concurrent/Semaphore;
  .line 9
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/l$a;
    const-wide/16 v4, 10000
    const-wide/16 v6, 500
    move-object v2, v0
    move-object v3, p0
    invoke-direct/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/l0/l$a;-><init>(Lcn/manstep/phonemirrorBox/l0/l;JJ)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->v0:Landroid/os/CountDownTimer;
    return-void
.end method

.method static synthetic A2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/j0/a$a;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->s0:Lcn/manstep/phonemirrorBox/j0/a$a;
    return-object p0
.end method

.method static synthetic B2(Lcn/manstep/phonemirrorBox/l0/l;Lcn/manstep/phonemirrorBox/j0/a$a;)Lcn/manstep/phonemirrorBox/j0/a$a;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->s0:Lcn/manstep/phonemirrorBox/j0/a$a;
    return-object p1
.end method

.method static synthetic C2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/l0/l$p;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->t0:Lcn/manstep/phonemirrorBox/l0/l$p;
    return-object p0
.end method

.method static synthetic D2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/widget/WaveformView;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->f0:Lcn/manstep/phonemirrorBox/widget/WaveformView;
    return-object p0
.end method

.method static synthetic E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/l;->P2(Ljava/lang/Boolean;)Z
    move-result p0
    return p0
.end method

.method static synthetic F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result p0
    return p0
.end method

.method static synthetic G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/l0/l;->N2(II)Landroid/media/AudioAttributes;
    move-result-object p0
    return-object p0
.end method

.method static synthetic H2(Lcn/manstep/phonemirrorBox/l0/l;I)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/l;->Y2(I)V
    return-void
.end method

.method static synthetic I2(Lcn/manstep/phonemirrorBox/l0/l;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->k0:I
    return p0
.end method

.method static synthetic J2(Lcn/manstep/phonemirrorBox/l0/l;I)I
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->k0:I
    return p1
.end method

.method static synthetic K2(Lcn/manstep/phonemirrorBox/l0/l;I)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/l;->R2(I)V
    return-void
.end method

.method static synthetic L2(Lcn/manstep/phonemirrorBox/l0/l;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/l;->T2()V
    return-void
.end method

.method private M2(Ljava/io/File;III)D
  .registers 7
  .line 1
    invoke-virtual { p1 }, Ljava/io/File;->length()J
    move-result-wide v0
  .line 2
    div-int/lit8 p4, p4, 8
    long-to-double v0, v0
    mul-int p2, p2, p3
    mul-int p2, p2, p4
    int-to-double p1, p2
  .line 3
    invoke-static { v0, v1 }, Ljava/lang/Double;->isNaN(D)Z
    invoke-static { p1, p2 }, Ljava/lang/Double;->isNaN(D)Z
    div-double/2addr v0, p1
    return-wide v0
.end method

.method private N2(II)Landroid/media/AudioAttributes;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 0
    const/16 v2, 26
    if-lt v0, v2, :L2
  :L0
  .line 2
    new-instance v0, Landroid/media/AudioAttributes$Builder;
    invoke-direct { v0 }, Landroid/media/AudioAttributes$Builder;-><init>()V
  .line 3
    invoke-virtual { v0, p1 }, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object p1
  .line 4
    invoke-virtual { p1, p2 }, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object p1
  .line 5
    invoke-virtual { p1 }, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object p1
  :L1
    return-object p1
  :L2
    return-object v1
.end method

.method private O2(Ljava/lang/Integer;)I
  .registers 2
    if-nez p1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    return p1
.end method

.method private P2(Ljava/lang/Boolean;)Z
  .registers 2
    if-nez p1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p1
    return p1
.end method

.method private Q2()V
  .registers 6
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/c;->n()Lcn/manstep/phonemirrorBox/f0/c;
    move-result-object v0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/f0/c;->p(Landroid/content/Context;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/f0/e;->l(Landroid/content/Context;)V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/f0/b;->l(Landroid/content/Context;)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/f0/g;->l(Landroid/content/Context;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static/range { v1 .. v1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/f0/f;->l(Landroid/content/Context;)V
  .line 6
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v1
    const/4 v2, 5
    const/4 v3, 1
    invoke-direct { v0, v2, v3, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 7
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i()Ld/b/a/b;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    const/high16 v1, 16256
  .line 8
    invoke-virtual { v0, v1 }, Ld/b/a/b;->n(F)V
  .line 9
    new-instance v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v4
    invoke-direct { v0, v2, v3, v4 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;-><init>(IILandroid/content/Context;)V
  .line 10
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->i()Ld/b/a/b;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->d0:Ld/b/a/b;
  .line 11
    invoke-virtual { v0, v1 }, Ld/b/a/b;->n(F)V
    return-void
.end method

.method private R2(I)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 7
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->j0:Landroid/media/AudioManager;
    invoke-virtual { v0, p1 }, Landroid/media/AudioManager;->getStreamVolume(I)I
    move-result v0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->j0:Landroid/media/AudioManager;
    invoke-virtual { v1, p1 }, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    move-result v1
  .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->k0:I
  .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l;->g0:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "\u97f3\u91cf(\u7c7b\u578b: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, ")"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l;->i0:Landroid/widget/SeekBar;
    invoke-virtual { v2, v1 }, Landroid/widget/SeekBar;->setMax(I)V
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->i0:Landroid/widget/SeekBar;
    invoke-virtual { v1, v0 }, Landroid/widget/SeekBar;->setProgress(I)V
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->h0:Landroid/widget/TextView;
    invoke-static { v0 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->i0:Landroid/widget/SeekBar;
    invoke-virtual { v0, p0 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
  :L1
    goto :L3
  :L2
    nop
    if-eqz p1, :L3
    const/4 p1, 0
  .line 9
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/l;->R2(I)V
  :L3
    return-void
.end method

.method private S2(I)V
  .registers 7
    const/4 v0, 1
    const/4 v1, 0
    const/4 v2, 4
    if-ne p1, v2, :L0
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v2, "RingAudioVol"
    invoke-virtual { p1, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
    goto :L4
  :L0
    const/4 v2, 3
    if-ne p1, v2, :L1
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v2, "VAAudioVol"
    invoke-virtual { p1, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
    goto :L4
  :L1
    const/4 v2, 2
    if-ne p1, v2, :L2
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v2, "CallAudioVol"
    invoke-virtual { p1, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
    goto :L4
  :L2
    if-ne p1, v0, :L3
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v2, "NVAudioVol"
    invoke-virtual { p1, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p1
    goto :L4
  :L3
    const/4 p1, 0
  :L4
    if-lez p1, :L5
  .line 5
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/c0;->v(I)[I
    move-result-object p1
  .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l;->j0:Landroid/media/AudioManager;
    aget v3, p1, v0
    aget v4, p1, v1
    invoke-virtual { v2, v3, v4, v1 }, Landroid/media/AudioManager;->setStreamVolume(III)V
  .line 7
    aget p1, p1, v0
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/l;->R2(I)V
    goto :L6
  :L5
  .line 8
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/l0/l;->R2(I)V
  :L6
    return-void
.end method

.method private T2()V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    if-eqz v0, :L4
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->D()Landroidx/lifecycle/o;
    move-result-object v0
    if-eqz v0, :L4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->D()Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L4
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->D()Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    invoke-virtual { v0 }, Ljava/lang/Integer;->intValue()I
    move-result v0
  .line 3
    iget v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->k0:I
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l;->j0:Landroid/media/AudioManager;
    invoke-virtual { v2, v1 }, Landroid/media/AudioManager;->getStreamVolume(I)I
    move-result v2
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->r(II)I
    move-result v1
  .line 4
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "okVolume: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const-string v3, "AudioDebug"
    invoke-static { v3, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v2, 4
    if-ne v0, v2, :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v2, "RingAudioVol"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
    goto :L3
  :L0
    const/4 v2, 3
    if-ne v0, v2, :L1
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v2, "VAAudioVol"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
    goto :L3
  :L1
    const/4 v2, 2
    if-ne v0, v2, :L2
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v2, "CallAudioVol"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
    goto :L3
  :L2
    const/4 v2, 1
    if-ne v0, v2, :L3
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v2, "NVAudioVol"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  :L3
  .line 9
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v0
    const/4 v1, 0
    const-string v2, "\u4fdd\u5b58\u6210\u529f"
    invoke-static { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  :L4
    return-void
.end method

.method private U2()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object v0
    const v1, 2131296719
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/CheckBox;
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->d0:Ld/b/a/b;
    invoke-virtual { v1 }, Ld/b/a/b;->z()Landroid/media/AudioTrack;
    move-result-object v1
    if-eqz v1, :L0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->d0:Ld/b/a/b;
    invoke-virtual { v1 }, Ld/b/a/b;->i()V
  :L0
  .line 4
    invoke-virtual { v0 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result v1
    if-eqz v1, :L1
    const v1, 2131230935
  .line 5
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setBackgroundResource(I)V
  :L1
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->p0:Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/l$d;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/l0/l$d;-><init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    return-void
.end method

.method private V2()V
  .registers 14
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    invoke-virtual { v0 }, Ld/b/a/b;->z()Landroid/media/AudioTrack;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    invoke-virtual { v0 }, Ld/b/a/b;->i()V
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object v0
    const v1, 2131296719
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    move-object v3, v0
    check-cast v3, Landroid/widget/CheckBox;
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object v0
    const v1, 2131296718
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    move-object v5, v0
    check-cast v5, Landroid/widget/CheckBox;
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object v0
    const v1, 2131296716
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    move-object v6, v0
    check-cast v6, Landroid/widget/CheckBox;
  .line 6
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object v0
    const v1, 2131296715
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    move-object v4, v0
    check-cast v4, Landroid/widget/CheckBox;
  .line 7
    invoke-virtual { v3 }, Landroid/widget/CheckBox;->isChecked()Z
    move-result v0
    if-eqz v0, :L1
    const v0, 2131230934
  .line 8
    invoke-virtual { v3, v0 }, Landroid/widget/CheckBox;->setBackgroundResource(I)V
  :L1
  .line 9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "playRecord: recordDebugParams="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->s0:Lcn/manstep/phonemirrorBox/j0/a$a;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "AudioDebug"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 10
    new-instance v0, Ld/b/a/a;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l;->s0:Lcn/manstep/phonemirrorBox/j0/a$a;
    iget v7, v2, Lcn/manstep/phonemirrorBox/j0/a$a;->a:I
    iget v2, v2, Lcn/manstep/phonemirrorBox/j0/a$a;->b:I
    const/4 v8, 4
    const/16 v9, 12
    const/4 v10, 1
    if-ne v2, v10, :L2
    const/4 v2, 4
    goto :L3
  :L2
    const/16 v2, 12
  :L3
    const/4 v11, 2
    invoke-direct { v0, v7, v2, v11 }, Ld/b/a/a;-><init>(III)V
  .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v7, 23
    const/4 v12, 3
    if-lt v2, v7, :L8
  .line 12
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l;->s0:Lcn/manstep/phonemirrorBox/j0/a$a;
    iget v2, v2, Lcn/manstep/phonemirrorBox/j0/a$a;->b:I
    if-eq v2, v12, :L6
  .line 13
    new-instance v2, Landroid/media/AudioFormat$Builder;
    invoke-direct { v2 }, Landroid/media/AudioFormat$Builder;-><init>()V
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/l0/l;->s0:Lcn/manstep/phonemirrorBox/j0/a$a;
    iget v7, v7, Lcn/manstep/phonemirrorBox/j0/a$a;->a:I
  .line 14
    invoke-virtual { v2, v7 }, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;
    move-result-object v2
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/l0/l;->s0:Lcn/manstep/phonemirrorBox/j0/a$a;
    iget v7, v7, Lcn/manstep/phonemirrorBox/j0/a$a;->b:I
    if-ne v7, v10, :L4
    goto :L5
  :L4
    const/16 v8, 12
  :L5
  .line 15
    invoke-virtual { v2, v8 }, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;
    move-result-object v2
  .line 16
    invoke-virtual { v2, v11 }, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;
    move-result-object v2
  .line 17
    invoke-virtual { v2 }, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;
    move-result-object v2
    goto :L7
  :L6
  .line 18
    new-instance v2, Landroid/media/AudioFormat$Builder;
    invoke-direct { v2 }, Landroid/media/AudioFormat$Builder;-><init>()V
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/l0/l;->s0:Lcn/manstep/phonemirrorBox/j0/a$a;
    iget v7, v7, Lcn/manstep/phonemirrorBox/j0/a$a;->a:I
  .line 19
    invoke-virtual { v2, v7 }, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;
    move-result-object v2
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/l0/l;->s0:Lcn/manstep/phonemirrorBox/j0/a$a;
    iget v7, v7, Lcn/manstep/phonemirrorBox/j0/a$a;->c:I
  .line 20
    invoke-virtual { v2, v7 }, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;
    move-result-object v2
  .line 21
    invoke-virtual { v2, v11 }, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;
    move-result-object v2
  .line 22
    invoke-virtual { v2 }, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;
    move-result-object v2
  :L7
  .line 23
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "playRecord: ChannelCount="
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Landroid/media/AudioFormat;->getChannelCount()I
    move-result v8
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static { v1, v7 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 24
    new-instance v7, Landroid/media/AudioAttributes$Builder;
    invoke-direct { v7 }, Landroid/media/AudioAttributes$Builder;-><init>()V
  .line 25
    invoke-virtual { v7, v10 }, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v7
  .line 26
    invoke-virtual { v7, v11 }, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;
    move-result-object v7
  .line 27
    invoke-virtual { v7 }, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    move-result-object v7
  .line 28
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/l0/l;->d0:Ld/b/a/b;
    invoke-virtual { v8, v7, v0, v2 }, Ld/b/a/b;->b(Landroid/media/AudioAttributes;Ld/b/a/a;Landroid/media/AudioFormat;)V
    goto :L9
  :L8
  .line 29
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l;->d0:Ld/b/a/b;
    invoke-virtual { v2, v0, v12 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
  :L9
  .line 30
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "playRecord: recordName="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l;->r0:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 31
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->p0:Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v7, Lcn/manstep/phonemirrorBox/l0/l$e;
    move-object v1, v7
    move-object v2, p0
    invoke-direct/range { v1 .. v6 }, Lcn/manstep/phonemirrorBox/l0/l$e;-><init>(Lcn/manstep/phonemirrorBox/l0/l;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    invoke-virtual { v0, v7 }, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    return-void
.end method

.method private W2()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->p0:Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/l$f;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/l0/l$f;-><init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    return-void
.end method

.method private Y2(I)V
  .registers 9
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/l0/l;->S2(I)V
    const/4 v0, 1
    const/4 v1, 4
    const/4 v2, 2
    const/16 v3, 26
    const/16 v4, 16000
    if-ne p1, v0, :L1
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/l0/l;->P2(Ljava/lang/Boolean;)Z
    move-result v0
    if-nez v0, :L0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v3, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/x0/a;->C()Landroidx/lifecycle/o;
    move-result-object v3
    invoke-virtual { v3 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-direct { p0, v3 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v3
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/x0/a;->B()Landroidx/lifecycle/o;
    move-result-object v5
    invoke-virtual { v5 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-direct { p0, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v5
    invoke-direct { p0, v3, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->N2(II)Landroid/media/AudioAttributes;
    move-result-object v3
    new-instance v5, Ld/b/a/a;
    invoke-direct { v5, v4, v1, v2 }, Ld/b/a/a;-><init>(III)V
    invoke-virtual { v0, v3, v5 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto/16 :L10
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    new-instance v3, Ld/b/a/a;
    invoke-direct { v3, v4, v1, v2 }, Ld/b/a/a;-><init>(III)V
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
  .line 5
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/x0/a;->C()Landroidx/lifecycle/o;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v1
  .line 6
    invoke-virtual { v0, v3, v1 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
    goto/16 :L10
  :L1
    if-ne p1, v2, :L3
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/l0/l;->P2(Ljava/lang/Boolean;)Z
    move-result v0
    if-nez v0, :L2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v3, :L2
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/x0/a;->x()Landroidx/lifecycle/o;
    move-result-object v3
    invoke-virtual { v3 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-direct { p0, v3 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v3
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/x0/a;->w()Landroidx/lifecycle/o;
    move-result-object v5
    invoke-virtual { v5 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-direct { p0, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v5
    invoke-direct { p0, v3, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->N2(II)Landroid/media/AudioAttributes;
    move-result-object v3
    new-instance v5, Ld/b/a/a;
    invoke-direct { v5, v4, v1, v2 }, Ld/b/a/a;-><init>(III)V
    invoke-virtual { v0, v3, v5 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto/16 :L10
  :L2
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    new-instance v3, Ld/b/a/a;
    invoke-direct { v3, v4, v1, v2 }, Ld/b/a/a;-><init>(III)V
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
  .line 10
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/x0/a;->x()Landroidx/lifecycle/o;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v1
  .line 11
    invoke-virtual { v0, v3, v1 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
    goto/16 :L10
  :L3
    const/4 v5, 3
    if-ne p1, v5, :L5
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/l0/l;->P2(Ljava/lang/Boolean;)Z
    move-result v0
    if-nez v0, :L4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v3, :L4
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/x0/a;->O()Landroidx/lifecycle/o;
    move-result-object v3
    invoke-virtual { v3 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-direct { p0, v3 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v3
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/x0/a;->N()Landroidx/lifecycle/o;
    move-result-object v5
    invoke-virtual { v5 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-direct { p0, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v5
    invoke-direct { p0, v3, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->N2(II)Landroid/media/AudioAttributes;
    move-result-object v3
    new-instance v5, Ld/b/a/a;
    invoke-direct { v5, v4, v1, v2 }, Ld/b/a/a;-><init>(III)V
    invoke-virtual { v0, v3, v5 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto/16 :L10
  :L4
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    new-instance v3, Ld/b/a/a;
    invoke-direct { v3, v4, v1, v2 }, Ld/b/a/a;-><init>(III)V
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
  .line 15
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/x0/a;->O()Landroidx/lifecycle/o;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v1
  .line 16
    invoke-virtual { v0, v3, v1 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
    goto/16 :L10
  :L5
    if-ne p1, v1, :L7
  .line 17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/l0/l;->P2(Ljava/lang/Boolean;)Z
    move-result v0
    if-nez v0, :L6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v3, :L6
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v3 }, Lcn/manstep/phonemirrorBox/x0/a;->J()Landroidx/lifecycle/o;
    move-result-object v3
    invoke-virtual { v3 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-direct { p0, v3 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v3
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/x0/a;->I()Landroidx/lifecycle/o;
    move-result-object v5
    invoke-virtual { v5 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-direct { p0, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v5
    invoke-direct { p0, v3, v5 }, Lcn/manstep/phonemirrorBox/l0/l;->N2(II)Landroid/media/AudioAttributes;
    move-result-object v3
    new-instance v5, Ld/b/a/a;
    invoke-direct { v5, v4, v1, v2 }, Ld/b/a/a;-><init>(III)V
    invoke-virtual { v0, v3, v5 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto :L10
  :L6
  .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    new-instance v3, Ld/b/a/a;
    invoke-direct { v3, v4, v1, v2 }, Ld/b/a/a;-><init>(III)V
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
  .line 20
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/x0/a;->J()Landroidx/lifecycle/o;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-direct { p0, v1 }, Lcn/manstep/phonemirrorBox/l0/l;->O2(Ljava/lang/Integer;)I
    move-result v1
  .line 21
    invoke-virtual { v0, v3, v1 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
    goto :L10
  :L7
    const/4 v6, 5
    if-ne p1, v6, :L8
    goto :L10
  :L8
  .line 22
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v6, v3, :L9
  .line 23
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    invoke-direct { p0, v0, v2 }, Lcn/manstep/phonemirrorBox/l0/l;->N2(II)Landroid/media/AudioAttributes;
    move-result-object v0
    new-instance v5, Ld/b/a/a;
    invoke-direct { v5, v4, v1, v2 }, Ld/b/a/a;-><init>(III)V
    invoke-virtual { v3, v0, v5 }, Ld/b/a/b;->a(Landroid/media/AudioAttributes;Ld/b/a/a;)V
    goto :L10
  :L9
  .line 24
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    new-instance v3, Ld/b/a/a;
    invoke-direct { v3, v4, v1, v2 }, Ld/b/a/a;-><init>(III)V
    invoke-virtual { v0, v3, v5 }, Ld/b/a/b;->d(Ld/b/a/a;I)V
  :L10
  .line 25
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    invoke-virtual { v0 }, Ld/b/a/b;->C()I
    move-result v0
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/l0/l;->R2(I)V
  .line 26
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->o0:Lcn/manstep/phonemirrorBox/util/u;
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/l$c;
    invoke-direct { v1, p0, p1 }, Lcn/manstep/phonemirrorBox/l0/l$c;-><init>(Lcn/manstep/phonemirrorBox/l0/l;I)V
    const-wide/16 v2, 300
    invoke-virtual { v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/util/u;->b(Ljava/lang/Runnable;J)V
    return-void
.end method

.method static synthetic h2(Lcn/manstep/phonemirrorBox/l0/l;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->e0:Z
    return p0
.end method

.method static synthetic i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->e0:Z
    return p1
.end method

.method static synthetic j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    return-object p0
.end method

.method static synthetic k2(Lcn/manstep/phonemirrorBox/l0/l;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->q0:Z
    return p0
.end method

.method static synthetic l2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->q0:Z
    return p1
.end method

.method static synthetic m2(Lcn/manstep/phonemirrorBox/l0/l;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/l;->W2()V
    return-void
.end method

.method static synthetic n2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/util/u;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->o0:Lcn/manstep/phonemirrorBox/util/u;
    return-object p0
.end method

.method public static newInstance()Lcn/manstep/phonemirrorBox/l0/l;
  .registers 3
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/l;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/l0/l;-><init>()V
    return-object v0
.end method

.method static synthetic o2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/e;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->n0:Lcn/manstep/phonemirrorBox/x0/e;
    return-object p0
.end method

.method static synthetic p2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->d0:Ld/b/a/b;
    return-object p0
.end method

.method static synthetic q2(Lcn/manstep/phonemirrorBox/l0/l;)Ld/b/a/b;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    return-object p0
.end method

.method static synthetic r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->l0:Lcn/manstep/phonemirrorBox/i0/g;
    return-object p0
.end method

.method static synthetic s2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/media/AudioManager;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->j0:Landroid/media/AudioManager;
    return-object p0
.end method

.method static synthetic t2(Lcn/manstep/phonemirrorBox/l0/l;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/l;->V2()V
    return-void
.end method

.method static synthetic u2(Lcn/manstep/phonemirrorBox/l0/l;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/l;->U2()V
    return-void
.end method

.method static synthetic v2(Lcn/manstep/phonemirrorBox/l0/l;)Landroid/os/CountDownTimer;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->v0:Landroid/os/CountDownTimer;
    return-object p0
.end method

.method static synthetic w2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/util/concurrent/Semaphore;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->u0:Ljava/util/concurrent/Semaphore;
    return-object p0
.end method

.method static synthetic x2(Lcn/manstep/phonemirrorBox/l0/l;)Ljava/lang/String;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/l0/l;->r0:Ljava/lang/String;
    return-object p0
.end method

.method static synthetic y2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->r0:Ljava/lang/String;
    return-object p1
.end method

.method static synthetic z2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/io/File;III)D
  .registers 5
  .line 1
    invoke-direct { p0, p1, p2, p3, p4 }, Lcn/manstep/phonemirrorBox/l0/l;->M2(Ljava/io/File;III)D
    move-result-wide p0
    return-wide p0
.end method

.method public H0(Landroid/os/Bundle;)V
  .registers 11
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->H0(Landroid/os/Bundle;)V
  .line 2
    new-instance p1, Lcn/manstep/phonemirrorBox/util/u;
    invoke-direct { p1 }, Lcn/manstep/phonemirrorBox/util/u;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->o0:Lcn/manstep/phonemirrorBox/util/u;
  .line 3
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-direct { v6 }, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
    new-instance v0, Lcn/manstep/phonemirrorBox/h0/b;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/h0/b;-><init>()V
    const-string v1, "AudioDebug-%d"
  .line 4
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/h0/b;->f(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/h0/b;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/h0/b;->b()Ljava/util/concurrent/ThreadFactory;
    move-result-object v7
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;
    invoke-direct { v8 }, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V
    const/4 v1, 4
    const/4 v2, 6
    const-wide/16 v3, 0
    move-object v0, p1
    invoke-direct/range { v0 .. v8 }, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->p0:Ljava/util/concurrent/ThreadPoolExecutor;
  .line 5
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/l0/l;->Q2()V
  .line 6
    new-instance p1, Lcn/manstep/phonemirrorBox/l0/l$p;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/l0/l$p;-><init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->t0:Lcn/manstep/phonemirrorBox/l0/l$p;
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
    const p3, 2131492932
    const/4 v0, 0
  .line 1
    invoke-static { p1, p3, p2, v0 }, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/i0/g;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->l0:Lcn/manstep/phonemirrorBox/i0/g;
  .line 2
    invoke-virtual { p1, p0 }, Landroidx/databinding/ViewDataBinding;->G(Landroidx/lifecycle/j;)V
  .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p2
    invoke-virtual { p2 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object p2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object p3
    invoke-direct { p1, p2, p3 }, Lcn/manstep/phonemirrorBox/x0/a;-><init>(Landroid/app/Application;Landroidx/fragment/app/n;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
  .line 4
    new-instance p1, Lcn/manstep/phonemirrorBox/x0/e;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p2
    invoke-virtual { p2 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object p2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object p3
    invoke-direct { p1, p2, p3 }, Lcn/manstep/phonemirrorBox/x0/e;-><init>(Landroid/app/Application;Landroidx/fragment/app/n;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->n0:Lcn/manstep/phonemirrorBox/x0/e;
  .line 5
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l;->l0:Lcn/manstep/phonemirrorBox/i0/g;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/i0/g;->L(Lcn/manstep/phonemirrorBox/x0/e;)V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->l0:Lcn/manstep/phonemirrorBox/i0/g;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/i0/g;->M(Lcn/manstep/phonemirrorBox/x0/a;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->m0:Lcn/manstep/phonemirrorBox/x0/a;
    new-instance p2, Lcn/manstep/phonemirrorBox/l0/j;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/l0/j;-><init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/x0/a;->V(Lcn/manstep/phonemirrorBox/x0/a$k;)V
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->l0:Lcn/manstep/phonemirrorBox/i0/g;
    invoke-virtual { p1 }, Landroidx/databinding/ViewDataBinding;->t()Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public M0()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->M0()V
    return-void
.end method

.method public O0()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->O0()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->l0:Lcn/manstep/phonemirrorBox/i0/g;
    const/4 v1, 0
  .line 3
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->q0:Z
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->f0:Lcn/manstep/phonemirrorBox/widget/WaveformView;
  .line 5
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->e0:Z
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->v0:Landroid/os/CountDownTimer;
    invoke-virtual { v1 }, Landroid/os/CountDownTimer;->cancel()V
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l;->p0:Ljava/util/concurrent/ThreadPoolExecutor;
    if-eqz v1, :L0
  .line 8
    invoke-virtual { v1 }, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
  .line 9
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->p0:Ljava/util/concurrent/ThreadPoolExecutor;
  :L0
    return-void
.end method

.method public X2()V
  .registers 5
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->e0:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->v0:Landroid/os/CountDownTimer;
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->cancel()V
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->e0:Z
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l;->c0:Ld/b/a/b;
    invoke-virtual { v0 }, Ld/b/a/b;->i()V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/b;->g()V
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/g;->g()V
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/e;->g()V
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/f0/f;->g()V
  .line 9
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/l$g;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/l0/l$g;-><init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    const-wide/16 v2, 2000
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L0
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/l0/m;->g1(Landroid/view/View;Landroid/os/Bundle;)V
    const p2, 2131296370
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/l$h;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/l0/l$h;-><init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    invoke-virtual { p2, v0 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p2, 2131296955
  .line 3
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Lcn/manstep/phonemirrorBox/widget/WaveformView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l;->f0:Lcn/manstep/phonemirrorBox/widget/WaveformView;
    const p2, 2131296951
  .line 4
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l;->h0:Landroid/widget/TextView;
    const p2, 2131296949
  .line 5
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/SeekBar;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l;->i0:Landroid/widget/SeekBar;
    const p2, 2131296950
  .line 6
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l;->g0:Landroid/widget/TextView;
  .line 7
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/l$i;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/l0/l$i;-><init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    invoke-virtual { p2, v0 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 8
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object p2
    const-string v0, "audio"
    invoke-virtual { p2, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/media/AudioManager;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l;->j0:Landroid/media/AudioManager;
    const p2, 2131296563
  .line 9
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/widget/b;->b(Landroid/view/View;)Landroid/view/View;
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/l$j;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/l0/l$j;-><init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    invoke-virtual { p2, v0 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p2, 2131296735
  .line 10
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/CheckBox;
  .line 11
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/l$k;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/l0/l$k;-><init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    invoke-virtual { p2, v0 }, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    const v0, 2131296717
  .line 12
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/CheckBox;
  .line 13
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/l$l;
    invoke-direct { v1, p0, v0 }, Lcn/manstep/phonemirrorBox/l0/l$l;-><init>(Lcn/manstep/phonemirrorBox/l0/l;Landroid/widget/CheckBox;)V
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    const v0, 2131296716
  .line 14
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/CheckBox;
  .line 15
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/l$m;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/l0/l$m;-><init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    const v0, 2131296715
  .line 16
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/CheckBox;
  .line 17
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/l$n;
    invoke-direct { v1, p0, p2 }, Lcn/manstep/phonemirrorBox/l0/l$n;-><init>(Lcn/manstep/phonemirrorBox/l0/l;Landroid/widget/CheckBox;)V
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    const v0, 2131296719
  .line 18
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/CheckBox;
  .line 19
    new-instance v1, Lcn/manstep/phonemirrorBox/l0/l$o;
    invoke-direct { v1, p0, p2 }, Lcn/manstep/phonemirrorBox/l0/l$o;-><init>(Lcn/manstep/phonemirrorBox/l0/l;Landroid/widget/CheckBox;)V
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    const v0, 2131296718
  .line 20
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/CheckBox;
  .line 21
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/l$b;
    invoke-direct { v0, p0, p2 }, Lcn/manstep/phonemirrorBox/l0/l$b;-><init>(Lcn/manstep/phonemirrorBox/l0/l;Landroid/widget/CheckBox;)V
    invoke-virtual { p1, v0 }, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
  .registers 5
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->h0:Landroid/widget/TextView;
    invoke-static { p2 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l;->j0:Landroid/media/AudioManager;
    iget p3, p0, Lcn/manstep/phonemirrorBox/l0/l;->k0:I
    const/4 v0, 5
    invoke-virtual { p1, p3, p2, v0 }, Landroid/media/AudioManager;->setStreamVolume(III)V
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
  .registers 2
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
  .registers 2
    return-void
.end method
