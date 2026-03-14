.class public Lcn/manstep/phonemirrorBox/k0/i;
.super Landroidx/fragment/app/d;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/k0/i$e;
  }
.end annotation

.field private q0:Ljava/lang/String;

.field private r0:Ljava/lang/String;

.field private s0:Landroid/widget/TimePicker;

.field private t0:Landroid/widget/TimePicker;

.field private final u0:Ljava/lang/String;

.field private final v0:Lcn/manstep/phonemirrorBox/k0/i$e;

.method public constructor <init>(Ljava/lang/String;Lcn/manstep/phonemirrorBox/k0/i$e;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/d;-><init>()V
  .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i;->u0:Ljava/lang/String;
  .line 3
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/k0/i;->v0:Lcn/manstep/phonemirrorBox/k0/i$e;
    return-void
.end method

.method public static A2(FLandroid/content/Context;)I
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p1
  .line 2
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    mul-float p0, p0, p1
    float-to-double p0, p0
    invoke-static { p0, p1 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide p0
    double-to-int p0, p0
    return p0
.end method

.method private B2()V
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->s0:Landroid/widget/TimePicker;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->t0:Landroid/widget/TimePicker;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->s0:Landroid/widget/TimePicker;
    const/high16 v1, 6
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setDescendantFocusability(I)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->t0:Landroid/widget/TimePicker;
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setDescendantFocusability(I)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->s0:Landroid/widget/TimePicker;
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/k0/i;->G2(Landroid/widget/TimePicker;)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->t0:Landroid/widget/TimePicker;
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/k0/i;->G2(Landroid/widget/TimePicker;)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->u0:Ljava/lang/String;
    const-string v1, "\\d+:\\d+"
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
  .line 8
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/k0/i;->D2(Ljava/util/List;)Z
    move-result v2
    const/4 v3, 1
    const/4 v4, 0
    if-nez v2, :L0
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v2, 2
    if-lt v0, v2, :L0
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->u0:Ljava/lang/String;
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
    invoke-interface { v0, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->q0:Ljava/lang/String;
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->u0:Ljava/lang/String;
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
    invoke-interface { v0, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->r0:Ljava/lang/String;
  :L0
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->q0:Ljava/lang/String;
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/k0/i;->C2(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->r0:Ljava/lang/String;
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/k0/i;->C2(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L2
  .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    const-string v2, ":"
    if-lt v0, v1, :L1
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->s0:Landroid/widget/TimePicker;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/i;->q0:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v5
    invoke-virtual { v1, v4, v5 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setHour(I)V
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->s0:Landroid/widget/TimePicker;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/i;->q0:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v5
    add-int/2addr v5, v3
    invoke-virtual { v1, v5 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setMinute(I)V
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->t0:Landroid/widget/TimePicker;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/i;->r0:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v5
    invoke-virtual { v1, v4, v5 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setHour(I)V
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->t0:Landroid/widget/TimePicker;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/i;->r0:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v2
    add-int/2addr v2, v3
    invoke-virtual { v1, v2 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setMinute(I)V
    goto :L2
  :L1
  .line 17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->s0:Landroid/widget/TimePicker;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/i;->q0:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v5
    invoke-virtual { v1, v4, v5 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->s0:Landroid/widget/TimePicker;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/i;->q0:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v5
    add-int/2addr v5, v3
    invoke-virtual { v1, v5 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V
  .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->t0:Landroid/widget/TimePicker;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/i;->r0:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v5
    invoke-virtual { v1, v4, v5 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V
  .line 20
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->t0:Landroid/widget/TimePicker;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/i;->r0:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v2
    add-int/2addr v2, v3
    invoke-virtual { v1, v2 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V
  :L2
  .line 21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->s0:Landroid/widget/TimePicker;
    new-instance v1, Lcn/manstep/phonemirrorBox/k0/i$c;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/k0/i$c;-><init>(Lcn/manstep/phonemirrorBox/k0/i;)V
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
  .line 22
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i;->t0:Landroid/widget/TimePicker;
    new-instance v1, Lcn/manstep/phonemirrorBox/k0/i$d;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/k0/i$d;-><init>(Lcn/manstep/phonemirrorBox/k0/i;)V
    invoke-virtual { v0, v1 }, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    return-void
.end method

.method public static E2(Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(TT;)TT;"
    }
  .end annotation
  .registers 1
    if-eqz p0, :L0
    return-object p0
  :L0
    const/4 p0, 0
  .line 1
    throw p0
.end method

.method private F2(Landroid/widget/NumberPicker;)V
  .registers 6
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p1 }, Landroid/widget/NumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :L0
    const/4 v0, 5
    const/high16 v1, 16968
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/k0/i;->E2(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast v2, Landroid/content/Context;
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/k0/i;->A2(FLandroid/content/Context;)I
    move-result v1
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I
    int-to-float v0, v0
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/k0/i;->E2(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast v1, Landroid/content/Context;
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/i;->A2(FLandroid/content/Context;)I
    move-result v1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v2
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/k0/i;->A2(FLandroid/content/Context;)I
    move-result v2
    const/4 v3, 0
    invoke-virtual { p1, v1, v3, v2, v3 }, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
  .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 17
    if-le v1, v2, :L0
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/i;->A2(FLandroid/content/Context;)I
    move-result v1
    invoke-virtual { p1, v1 }, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V
  .line 6
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/i;->A2(FLandroid/content/Context;)I
    move-result v0
    invoke-virtual { p1, v0 }, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V
  :L0
    return-void
.end method

.method private G2(Landroid/widget/TimePicker;)V
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .registers 11
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, v0 }, Landroid/widget/TimePicker;->getChildAt(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout;
    const/4 v1, 1
  .line 2
    invoke-virtual { p1, v1 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout;
    const/4 v2, 0
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/widget/LinearLayout;->getChildCount()I
    move-result v3
    if-ge v2, v3, :L7
  .line 4
    invoke-virtual { p1, v2 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    instance-of v3, v3, Landroid/widget/NumberPicker;
    if-eqz v3, :L6
  .line 5
    const-class v3, Landroid/widget/NumberPicker;
    invoke-virtual { v3 }, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    move-result-object v3
  .line 6
    invoke-virtual { p1, v2 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v4
    check-cast v4, Landroid/widget/NumberPicker;
    invoke-direct { p0, v4 }, Lcn/manstep/phonemirrorBox/k0/i;->F2(Landroid/widget/NumberPicker;)V
  .line 7
    array-length v4, v3
    const/4 v5, 0
  :L1
    if-ge v5, v4, :L6
    aget-object v6, v3, v5
  .line 8
    invoke-virtual { v6 }, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    move-result-object v7
    const-string v8, "mSelectionDivider"
    invoke-virtual { v7, v8 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :L5
  .line 9
    invoke-virtual { v6, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L2
  .line 10
    invoke-virtual { p1, v2 }, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;
    const/4 v5, -1
    invoke-direct { v4, v5 }, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    invoke-virtual { v6, v3, v4 }, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
  :L3
    goto :L6
  :L4
    move-exception v3
  .line 11
    invoke-virtual { v3 }, Ljava/lang/Exception;->printStackTrace()V
    goto :L6
  :L5
    add-int/lit8 v5, v5, 1
    goto :L1
  :L6
    add-int/lit8 v2, v2, 1
    goto :L0
  :L7
    return-void
.end method

.method static synthetic v2(Lcn/manstep/phonemirrorBox/k0/i;)Lcn/manstep/phonemirrorBox/k0/i$e;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/i;->v0:Lcn/manstep/phonemirrorBox/k0/i$e;
    return-object p0
.end method

.method static synthetic w2(Lcn/manstep/phonemirrorBox/k0/i;)Ljava/lang/String;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/i;->q0:Ljava/lang/String;
    return-object p0
.end method

.method static synthetic x2(Lcn/manstep/phonemirrorBox/k0/i;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i;->q0:Ljava/lang/String;
    return-object p1
.end method

.method static synthetic y2(Lcn/manstep/phonemirrorBox/k0/i;)Ljava/lang/String;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/i;->r0:Ljava/lang/String;
    return-object p0
.end method

.method static synthetic z2(Lcn/manstep/phonemirrorBox/k0/i;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i;->r0:Ljava/lang/String;
    return-object p1
.end method

.method public C2(Ljava/lang/String;)Z
  .registers 3
    const/4 v0, 1
    if-nez p1, :L0
    goto :L2
  :L0
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result p1
    if-nez p1, :L1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method public D2(Ljava/util/List;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "*>;)Z"
    }
  .end annotation
  .registers 3
    const/4 v0, 1
    if-nez p1, :L0
    goto :L2
  :L0
  .line 1
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result p1
    if-nez p1, :L1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
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
    const p3, 2131492998
    const/4 v0, 0
  .line 3
    invoke-virtual { p1, p3, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public e1()V
  .registers 4
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
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v1
    const/high16 v2, 17352
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v1
    const/4 v2, -2
  .line 11
    invoke-virtual { v0, v1, v2 }, Landroid/view/Window;->setLayout(II)V
  :L0
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 5
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V
    const p2, 2131296868
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TimePicker;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/k0/i;->s0:Landroid/widget/TimePicker;
    const p2, 2131296867
  .line 3
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TimePicker;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/k0/i;->t0:Landroid/widget/TimePicker;
  .line 4
    new-instance p2, Lcn/manstep/phonemirrorBox/widget/b;
    invoke-direct { p2 }, Lcn/manstep/phonemirrorBox/widget/b;-><init>()V
    const v0, 2131296372
  .line 5
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual { p2, v0 }, Lcn/manstep/phonemirrorBox/widget/b;->a(Landroid/view/View;)Landroid/view/View;
    new-instance v1, Lcn/manstep/phonemirrorBox/k0/i$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/k0/i$a;-><init>(Lcn/manstep/phonemirrorBox/k0/i;)V
    invoke-virtual { v0, v1 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v0, 2131296380
  .line 6
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/widget/b;->a(Landroid/view/View;)Landroid/view/View;
    new-instance p2, Lcn/manstep/phonemirrorBox/k0/i$b;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/k0/i$b;-><init>(Lcn/manstep/phonemirrorBox/k0/i;)V
    invoke-virtual { p1, p2 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 7
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k0/i;->B2()V
    return-void
.end method
