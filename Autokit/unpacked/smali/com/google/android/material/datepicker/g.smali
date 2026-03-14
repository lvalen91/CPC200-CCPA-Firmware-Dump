.class Lcom/google/android/material/datepicker/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

.field private final static e:I

.field private final b:Ljava/util/Calendar;

.field private final c:I

.field private final d:I

.method static constructor <clinit>()V
  .registers 2
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
    const/4 v0, 4
    goto :L1
  :L0
    const/4 v0, 1
  :L1
    sput v0, Lcom/google/android/material/datepicker/g;->e:I
    return-void
.end method

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroid/widget/BaseAdapter;-><init>()V
  .line 2
    invoke-static { }, Lcom/google/android/material/datepicker/s;->k()Ljava/util/Calendar;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Ljava/util/Calendar;
    const/4 v1, 7
  .line 3
    invoke-virtual { v0, v1 }, Ljava/util/Calendar;->getMaximum(I)I
    move-result v0
    iput v0, p0, Lcom/google/android/material/datepicker/g;->c:I
  .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->b:Ljava/util/Calendar;
    invoke-virtual { v0 }, Ljava/util/Calendar;->getFirstDayOfWeek()I
    move-result v0
    iput v0, p0, Lcom/google/android/material/datepicker/g;->d:I
    return-void
.end method

.method private b(I)I
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/g;->d:I
    add-int/2addr p1, v0
  .line 2
    iget v0, p0, Lcom/google/android/material/datepicker/g;->c:I
    if-le p1, v0, :L0
    sub-int/2addr p1, v0
  :L0
    return p1
.end method

.method public a(I)Ljava/lang/Integer;
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/g;->c:I
    if-lt p1, v0, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/datepicker/g;->b(I)I
    move-result p1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    return-object p1
.end method

.method public getCount()I
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/g;->c:I
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Lcom/google/android/material/datepicker/g;->a(I)Ljava/lang/Integer;
    move-result-object p1
    return-object p1
.end method

.method public getItemId(I)J
  .registers 4
    const-wide/16 v0, 0
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "WrongConstant"
    }
  .end annotation
  .registers 9
  .line 1
    move-object v0, p2
    check-cast v0, Landroid/widget/TextView;
    const/4 v1, 0
    if-nez p2, :L0
  .line 2
    invoke-virtual { p3 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p2
    invoke-static { p2 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p2
  .line 3
    sget v0, Ld/c/a/a/h;->mtrl_calendar_day_of_week:I
  .line 4
    invoke-virtual { p2, v0, p3, v1 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p2
    move-object v0, p2
    check-cast v0, Landroid/widget/TextView;
  :L0
  .line 5
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->b:Ljava/util/Calendar;
    invoke-direct { p0, p1 }, Lcom/google/android/material/datepicker/g;->b(I)I
    move-result p1
    const/4 v2, 7
    invoke-virtual { p2, v2, p1 }, Ljava/util/Calendar;->set(II)V
  .line 6
    invoke-virtual { v0 }, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p1
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
  .line 7
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->b:Ljava/util/Calendar;
    sget v3, Lcom/google/android/material/datepicker/g;->e:I
  .line 8
    invoke-virtual { p2, v2, v3, p1 }, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    move-result-object p1
  .line 9
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 10
    invoke-virtual { p3 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    sget p2, Ld/c/a/a/i;->mtrl_picker_day_of_week_column_header:I
    invoke-virtual { p1, p2 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p1
    const/4 p2, 1
    new-array p2, p2, [Ljava/lang/Object;
    iget-object p3, p0, Lcom/google/android/material/datepicker/g;->b:Ljava/util/Calendar;
    const/4 v3, 2
  .line 11
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v4
    invoke-virtual { p3, v2, v3, v4 }, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    move-result-object p3
    aput-object p3, p2, v1
  .line 12
    invoke-static { p1, p2 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p1
  .line 13
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V
    return-object v0
.end method
