.class public Lcn/manstep/phonemirrorBox/k0/g;
.super Landroidx/fragment/app/d;
.source "SourceFile"

.field private q0:Lcn/manstep/phonemirrorBox/k;

.field private r0:Landroid/util/DisplayMetrics;

.field private s0:Landroid/widget/TextView;

.field private t0:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private u0:F

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/d;-><init>()V
    return-void
.end method

.method static synthetic v2(Lcn/manstep/phonemirrorBox/k0/g;)F
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/k0/g;->u0:F
    return p0
.end method

.method static synthetic w2(Lcn/manstep/phonemirrorBox/k0/g;F)F
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/g;->u0:F
    return p1
.end method

.method static synthetic x2(Lcn/manstep/phonemirrorBox/k0/g;)Lcn/manstep/phonemirrorBox/k;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/g;->q0:Lcn/manstep/phonemirrorBox/k;
    return-object p0
.end method

.method static synthetic y2(Lcn/manstep/phonemirrorBox/k0/g;)Landroid/util/DisplayMetrics;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/g;->r0:Landroid/util/DisplayMetrics;
    return-object p0
.end method

.method static synthetic z2(Lcn/manstep/phonemirrorBox/k0/g;)Landroid/widget/TextView;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/g;->s0:Landroid/widget/TextView;
    return-object p0
.end method

.method public A2()V
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    iget v1, p0, Lcn/manstep/phonemirrorBox/k0/g;->u0:F
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    const-string v2, "FontScaled"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 2
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/k0/g$d;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/k0/g$d;-><init>(Lcn/manstep/phonemirrorBox/k0/g;)V
    const-wide/16 v2, 1000
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method public B0(Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->B0(Landroid/os/Bundle;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/k;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/g;->q0:Lcn/manstep/phonemirrorBox/k;
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/g;->r0:Landroid/util/DisplayMetrics;
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/g;->q0:Lcn/manstep/phonemirrorBox/k;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/k;->a0()F
    move-result v0
    iget v1, p0, Lcn/manstep/phonemirrorBox/k0/g;->u0:F
    mul-float v0, v0, v1
    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/g;->s0:Landroid/widget/TextView;
    const/4 v0, 2
    const/high16 v1, 16784
    invoke-virtual { p1, v0, v1 }, Landroid/widget/TextView;->setTextSize(IF)V
  :L0
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
    const p3, 2131492928
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, p3, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public e1()V
  .registers 6
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/d;->e1()V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object v0
    if-eqz v0, :L0
    const/high16 v1, 16128
  .line 4
    invoke-virtual { v0, v1 }, Landroid/view/Window;->setDimAmount(F)V
    const v1, 17170445
  .line 5
    invoke-virtual { v0, v1 }, Landroid/view/Window;->setBackgroundDrawableResource(I)V
  .line 6
    invoke-virtual { v0 }, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v1
  .line 7
    invoke-virtual { v0, v1 }, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
  .line 8
    new-instance v1, Landroid/util/DisplayMetrics;
    invoke-direct { v1 }, Landroid/util/DisplayMetrics;-><init>()V
  .line 9
    invoke-virtual { v0 }, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;
    move-result-object v2
    invoke-interface { v2 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v2
    invoke-virtual { v2, v1 }, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
  .line 10
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    int-to-double v1, v1
    const-wide v3, 4605380978949069210L
    invoke-static { v1, v2 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v1, v1, v3
    double-to-int v1, v1
    const/4 v2, -2
    invoke-virtual { v0, v1, v2 }, Landroid/view/Window;->setLayout(II)V
  :L0
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V
    const p2, 2131296846
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/k0/g;->s0:Landroid/widget/TextView;
    const v0, 2131689573
  .line 3
    invoke-virtual { p2, v0 }, Landroid/widget/TextView;->setText(I)V
    const p2, 2131296771
  .line 4
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroidx/appcompat/widget/AppCompatSeekBar;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/k0/g;->t0:Landroidx/appcompat/widget/AppCompatSeekBar;
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p2
    const-string v0, "FontScaled"
    const/high16 v1, 16256
    invoke-virtual { p2, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->l(Ljava/lang/String;F)F
    move-result p2
    iput p2, p0, Lcn/manstep/phonemirrorBox/k0/g;->u0:F
  .line 6
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/k0/g;->t0:Landroidx/appcompat/widget/AppCompatSeekBar;
    const/16 v0, 150
    invoke-virtual { p2, v0 }, Landroid/widget/SeekBar;->setMax(I)V
  .line 7
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/k0/g;->t0:Landroidx/appcompat/widget/AppCompatSeekBar;
    iget v0, p0, Lcn/manstep/phonemirrorBox/k0/g;->u0:F
    const/high16 v1, 16968
    mul-float v0, v0, v1
    float-to-int v0, v0
    add-int/lit8 v0, v0, -8
    invoke-virtual { p2, v0 }, Landroid/widget/SeekBar;->setProgress(I)V
  .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/k0/g;->t0:Landroidx/appcompat/widget/AppCompatSeekBar;
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/g$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/k0/g$a;-><init>(Lcn/manstep/phonemirrorBox/k0/g;)V
    invoke-virtual { p2, v0 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    const p2, 2131296392
  .line 9
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/g$b;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/k0/g$b;-><init>(Lcn/manstep/phonemirrorBox/k0/g;)V
    invoke-virtual { p2, v0 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p2, 2131296394
  .line 10
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    new-instance p2, Lcn/manstep/phonemirrorBox/k0/g$c;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/k0/g$c;-><init>(Lcn/manstep/phonemirrorBox/k0/g;)V
    invoke-virtual { p1, p2 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method
