.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/timepicker/TimePickerView$e;,
    Lcom/google/android/material/timepicker/TimePickerView$g;,
    Lcom/google/android/material/timepicker/TimePickerView$f;
  }
.end annotation

.field private A:Lcom/google/android/material/timepicker/TimePickerView$e;

.field private final u:Lcom/google/android/material/chip/Chip;

.field private final v:Lcom/google/android/material/chip/Chip;

.field private final w:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field private final x:Landroid/view/View$OnClickListener;

.field private y:Lcom/google/android/material/timepicker/TimePickerView$f;

.field private z:Lcom/google/android/material/timepicker/TimePickerView$g;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 3
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$a;
    invoke-direct { p2, p0 }, Lcom/google/android/material/timepicker/TimePickerView$a;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->x:Landroid/view/View$OnClickListener;
  .line 4
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p1
    sget p2, Ld/c/a/a/h;->material_timepicker:I
    invoke-virtual { p1, p2, p0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
  .line 5
    sget p1, Ld/c/a/a/f;->material_clock_face:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;
  .line 6
    sget p1, Ld/c/a/a/f;->material_clock_period_toggle:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->w:Lcom/google/android/material/button/MaterialButtonToggleGroup;
  .line 7
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$b;
    invoke-direct { p2, p0 }, Lcom/google/android/material/timepicker/TimePickerView$b;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    invoke-virtual { p1, p2 }, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g(Lcom/google/android/material/button/MaterialButtonToggleGroup$e;)V
  .line 8
    sget p1, Ld/c/a/a/f;->material_minute_tv:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/chip/Chip;
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->u:Lcom/google/android/material/chip/Chip;
  .line 9
    sget p1, Ld/c/a/a/f;->material_hour_tv:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/chip/Chip;
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->v:Lcom/google/android/material/chip/Chip;
  .line 10
    sget p1, Ld/c/a/a/f;->material_clock_hand:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/timepicker/ClockHandView;
  .line 11
    invoke-direct { p0 }, Lcom/google/android/material/timepicker/TimePickerView;->y()V
  .line 12
    invoke-direct { p0 }, Lcom/google/android/material/timepicker/TimePickerView;->x()V
    return-void
.end method

.method static synthetic u(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$g;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->z:Lcom/google/android/material/timepicker/TimePickerView$g;
    return-object p0
.end method

.method static synthetic v(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$f;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/timepicker/TimePickerView$f;
    return-object p0
.end method

.method static synthetic w(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$e;
  .registers 1
  .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->A:Lcom/google/android/material/timepicker/TimePickerView$e;
    return-object p0
.end method

.method private x()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->u:Lcom/google/android/material/chip/Chip;
    sget v1, Ld/c/a/a/f;->selection_type:I
    const/16 v2, 12
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->v:Lcom/google/android/material/chip/Chip;
    sget v1, Ld/c/a/a/f;->selection_type:I
    const/16 v2, 10
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->u:Lcom/google/android/material/chip/Chip;
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->x:Landroid/view/View$OnClickListener;
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->v:Lcom/google/android/material/chip/Chip;
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->x:Landroid/view/View$OnClickListener;
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method private y()V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "ClickableViewAccessibility"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Landroid/view/GestureDetector;
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    new-instance v2, Lcom/google/android/material/timepicker/TimePickerView$c;
    invoke-direct { v2, p0 }, Lcom/google/android/material/timepicker/TimePickerView$c;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    invoke-direct { v0, v1, v2 }, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
  .line 3
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerView$d;
    invoke-direct { v1, p0, v0 }, Lcom/google/android/material/timepicker/TimePickerView$d;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Landroid/view/GestureDetector;)V
  .line 4
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->u:Lcom/google/android/material/chip/Chip;
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  .line 5
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->v:Lcom/google/android/material/chip/Chip;
    invoke-virtual { v0, v1 }, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    return-void
.end method

.method private z()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->w:Lcom/google/android/material/button/MaterialButtonToggleGroup;
    invoke-virtual { v0 }, Landroid/widget/LinearLayout;->getVisibility()I
    move-result v0
    if-nez v0, :L3
  .line 2
    new-instance v0, Landroidx/constraintlayout/widget/d;
    invoke-direct { v0 }, Landroidx/constraintlayout/widget/d;-><init>()V
  .line 3
    invoke-virtual { v0, p0 }, Landroidx/constraintlayout/widget/d;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  .line 4
    invoke-static { p0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v1
    const/4 v2, 1
    if-nez v1, :L0
    const/4 v1, 1
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    if-eqz v1, :L2
    const/4 v2, 2
  :L2
  .line 5
    sget v1, Ld/c/a/a/f;->material_clock_display:I
    invoke-virtual { v0, v1, v2 }, Landroidx/constraintlayout/widget/d;->e(II)V
  .line 6
    invoke-virtual { v0, p0 }, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  :L3
    return-void
.end method

.method protected onAttachedToWindow()V
  .registers 1
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->onAttachedToWindow()V
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/timepicker/TimePickerView;->z()V
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V
    if-ne p1, p0, :L0
    if-nez p2, :L0
  .line 2
    invoke-direct { p0 }, Lcom/google/android/material/timepicker/TimePickerView;->z()V
  :L0
    return-void
.end method
