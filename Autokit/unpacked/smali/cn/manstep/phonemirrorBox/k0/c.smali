.class public Lcn/manstep/phonemirrorBox/k0/c;
.super Landroidx/fragment/app/d;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/k0/c$b;
  }
.end annotation

.field private A0:I

.field private B0:I

.field private C0:Lcn/manstep/phonemirrorBox/k0/c$b;

.field private q0:I

.field private r0:I

.field private s0:Ljava/lang/String;

.field private t0:Landroid/widget/TableLayout;

.field private u0:I

.field private v0:I

.field private w0:I

.field private x0:I

.field private y0:I

.field private z0:I

.method private constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/d;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/c;->q0:I
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/c;->r0:I
    const-string v1, ""
  .line 4
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/k0/c;->s0:Ljava/lang/String;
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/c;->u0:I
    const/4 v1, 6
  .line 6
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/c;->v0:I
    const/16 v1, 100
  .line 7
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/c;->w0:I
  .line 8
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/c;->x0:I
    const/16 v1, 10
  .line 9
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/c;->y0:I
  .line 10
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/c;->z0:I
    return-void
.end method

.method private A2(I)V
  .registers 4
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/k0/c;->v0:I
    const/4 v1, 1
    if-lt p1, v0, :L0
  .line 2
    div-int/2addr p1, v0
    add-int/2addr p1, v1
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/c;->u0:I
    goto :L1
  :L0
  .line 3
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/c;->u0:I
    add-int/2addr p1, v1
  .line 4
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/c;->v0:I
  :L1
    return-void
.end method

.method public static B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V
  .registers 6
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/c;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/k0/c;-><init>()V
  .line 2
    iput p2, v0, Lcn/manstep/phonemirrorBox/k0/c;->q0:I
  .line 3
    iput-object p1, v0, Lcn/manstep/phonemirrorBox/k0/c;->s0:Ljava/lang/String;
  .line 4
    iput p3, v0, Lcn/manstep/phonemirrorBox/k0/c;->z0:I
    const-string p1, "ChoiceDialog"
  .line 5
    invoke-virtual { v0, p0, p1 }, Landroidx/fragment/app/d;->u2(Landroidx/fragment/app/n;Ljava/lang/String;)V
  .line 6
    invoke-virtual { v0, p4 }, Lcn/manstep/phonemirrorBox/k0/c;->z2(Lcn/manstep/phonemirrorBox/k0/c$b;)V
    return-void
.end method

.method static synthetic v2(Lcn/manstep/phonemirrorBox/k0/c;)Lcn/manstep/phonemirrorBox/k0/c$b;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/c;->C0:Lcn/manstep/phonemirrorBox/k0/c$b;
    return-object p0
.end method

.method private w2()V
  .registers 14
  .line 1
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;
    const/4 v1, -1
    const/4 v2, -2
    invoke-direct { v0, v1, v2 }, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V
  .line 2
    new-instance v3, Landroid/widget/TableRow$LayoutParams;
    iget v4, p0, Lcn/manstep/phonemirrorBox/k0/c;->w0:I
    iget v5, p0, Lcn/manstep/phonemirrorBox/k0/c;->x0:I
    invoke-direct { v3, v4, v5 }, Landroid/widget/TableRow$LayoutParams;-><init>(II)V
  .line 3
    iget v4, p0, Lcn/manstep/phonemirrorBox/k0/c;->y0:I
    invoke-virtual { v3, v4, v4, v4, v4 }, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V
    const/4 v4, 0
    const/4 v5, 0
  :L0
  .line 4
    iget v6, p0, Lcn/manstep/phonemirrorBox/k0/c;->u0:I
    if-ge v5, v6, :L6
  .line 5
    new-instance v6, Landroid/widget/TableRow;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v7
    invoke-direct { v6, v7 }, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V
  .line 6
    invoke-virtual { v6, v0 }, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    const/16 v7, 17
  .line 7
    invoke-virtual { v6, v7 }, Landroid/widget/TableRow;->setGravity(I)V
    const/4 v7, 0
  :L1
  .line 8
    iget v8, p0, Lcn/manstep/phonemirrorBox/k0/c;->v0:I
    if-ge v7, v8, :L5
  .line 9
    new-instance v8, Landroid/widget/Button;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v9
    invoke-direct { v8, v9 }, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
  .line 10
    iget v9, p0, Lcn/manstep/phonemirrorBox/k0/c;->r0:I
    invoke-static { v9 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v9
    iget v10, p0, Lcn/manstep/phonemirrorBox/k0/c;->r0:I
    iget v11, p0, Lcn/manstep/phonemirrorBox/k0/c;->z0:I
    const/4 v12, 1
    if-ne v10, v11, :L2
    const/4 v10, 1
    goto :L3
  :L2
    const/4 v10, 0
  :L3
    invoke-direct { p0, v8, v3, v9, v10 }, Lcn/manstep/phonemirrorBox/k0/c;->y2(Landroid/widget/Button;Landroid/widget/TableRow$LayoutParams;Ljava/lang/String;Z)V
  .line 11
    iget v9, p0, Lcn/manstep/phonemirrorBox/k0/c;->r0:I
    iget v10, p0, Lcn/manstep/phonemirrorBox/k0/c;->q0:I
    if-le v9, v10, :L4
    const/4 v9, 4
  .line 12
    invoke-virtual { v8, v9 }, Landroid/widget/Button;->setVisibility(I)V
  :L4
  .line 13
    invoke-virtual { v6, v8 }, Landroid/widget/TableRow;->addView(Landroid/view/View;)V
  .line 14
    iget v8, p0, Lcn/manstep/phonemirrorBox/k0/c;->r0:I
    add-int/2addr v8, v12
    iput v8, p0, Lcn/manstep/phonemirrorBox/k0/c;->r0:I
    add-int/lit8 v7, v7, 1
    goto :L1
  :L5
  .line 15
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/k0/c;->t0:Landroid/widget/TableLayout;
    new-instance v8, Landroid/widget/TableLayout$LayoutParams;
    invoke-direct { v8, v1, v2 }, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V
    invoke-virtual { v7, v6, v8 }, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    add-int/lit8 v5, v5, 1
    goto :L0
  :L6
    return-void
.end method

.method private x2()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    const-string v1, "window"
    invoke-virtual { v0, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowManager;
  .line 2
    invoke-interface { v0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v0
  .line 3
    invoke-virtual { v0 }, Landroid/view/Display;->getWidth()I
    move-result v1
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/c;->A0:I
  .line 4
    invoke-virtual { v0 }, Landroid/view/Display;->getHeight()I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/c;->B0:I
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "w:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/k0/c;->A0:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ",h:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/k0/c;->B0:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "ChoiceDialog"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    iget v0, p0, Lcn/manstep/phonemirrorBox/k0/c;->A0:I
    iget v2, p0, Lcn/manstep/phonemirrorBox/k0/c;->v0:I
    div-int/2addr v0, v2
    iget v3, p0, Lcn/manstep/phonemirrorBox/k0/c;->y0:I
    add-int/lit8 v2, v2, 1
    mul-int v3, v3, v2
    sub-int/2addr v0, v3
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/c;->w0:I
  .line 7
    div-int/lit8 v0, v0, 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/c;->x0:I
  .line 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "btnW"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/k0/c;->w0:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ",btnH:"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/k0/c;->x0:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method private y2(Landroid/widget/Button;Landroid/widget/TableRow$LayoutParams;Ljava/lang/String;Z)V
  .registers 5
  .line 1
    invoke-virtual { p1, p2 }, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 2
    invoke-virtual { p1, p3 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    const/high16 p2, -256
  .line 3
    invoke-virtual { p1, p2 }, Landroid/widget/Button;->setTextColor(I)V
    const/4 p2, 0
  .line 4
    invoke-virtual { p1, p2, p2, p2, p2 }, Landroid/widget/Button;->setPadding(IIII)V
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;
    move-result-object p2
    const p3, 2131230860
    invoke-virtual { p2, p3 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 6
    iget p2, p0, Lcn/manstep/phonemirrorBox/k0/c;->x0:I
    div-int/lit8 p2, p2, 4
    int-to-float p2, p2
    invoke-virtual { p1, p2 }, Landroid/widget/Button;->setTextSize(F)V
    const/16 p2, 17
  .line 7
    invoke-virtual { p1, p2 }, Landroid/widget/Button;->setGravity(I)V
  .line 8
    invoke-virtual { p1, p4 }, Landroid/widget/Button;->setSelected(Z)V
  .line 9
    new-instance p2, Lcn/manstep/phonemirrorBox/k0/c$a;
    invoke-direct { p2, p0, p1 }, Lcn/manstep/phonemirrorBox/k0/c$a;-><init>(Lcn/manstep/phonemirrorBox/k0/c;Landroid/widget/Button;)V
    invoke-virtual { p1, p2 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object p3
    if-eqz p3, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object p3
    const/4 v0, 1
    invoke-virtual { p3, v0 }, Landroid/app/Dialog;->requestWindowFeature(I)Z
  :L0
    const p3, 2131492902
    const/4 v0, 0
  .line 3
    invoke-virtual { p1, p3, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public e1()V
  .registers 5
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/d;->e1()V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object v0
    if-eqz v0, :L0
    const/4 v1, 1
  .line 3
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCancelable(Z)V
  .line 4
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
  .line 5
    invoke-virtual { v0 }, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object v0
    if-eqz v0, :L0
  .line 6
    invoke-virtual { v0 }, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v1
    const/16 v2, 80
  .line 7
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I
    const/4 v2, -1
  .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I
    const v2, 1060320051
  .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F
  .line 10
    invoke-virtual { v0, v1 }, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
  .line 11
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;
    const/4 v3, 0
    invoke-direct { v2, v3 }, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    invoke-virtual { v1, v2 }, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 12
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;
    invoke-direct { v1, v3 }, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    invoke-virtual { v0, v1 }, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L0
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V
    const p2, 2131296909
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/c;->s0:Ljava/lang/String;
    invoke-virtual { p2, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v0, 2131296828
  .line 4
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/TableLayout;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/c;->t0:Landroid/widget/TableLayout;
  .line 5
    iget p1, p0, Lcn/manstep/phonemirrorBox/k0/c;->q0:I
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/k0/c;->A2(I)V
  .line 6
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k0/c;->x2()V
  .line 7
    iget p1, p0, Lcn/manstep/phonemirrorBox/k0/c;->x0:I
    div-int/lit8 p1, p1, 4
    add-int/lit8 p1, p1, 1
    int-to-float p1, p1
    invoke-virtual { p2, p1 }, Landroid/widget/TextView;->setTextSize(F)V
  .line 8
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k0/c;->w2()V
    return-void
.end method

.method public z2(Lcn/manstep/phonemirrorBox/k0/c$b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/c;->C0:Lcn/manstep/phonemirrorBox/k0/c$b;
    return-void
.end method
