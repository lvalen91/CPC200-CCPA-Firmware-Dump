.class public Lcom/google/android/material/theme/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static a:[I

.field private final static b:[I

.method static constructor <clinit>()V
  .registers 4
    const/4 v0, 2
    new-array v0, v0, [I
    const/high16 v1, 257
    const/4 v2, 0
    aput v1, v0, v2
  .line 1
    sget v1, Ld/c/a/a/b;->theme:I
    const/4 v3, 1
    aput v1, v0, v3
    sput-object v0, Lcom/google/android/material/theme/a/a;->a:[I
    new-array v0, v3, [I
  .line 2
    sget v1, Ld/c/a/a/b;->materialThemeOverlay:I
    aput v1, v0, v2
    sput-object v0, Lcom/google/android/material/theme/a/a;->b:[I
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;)I
  .registers 4
  .line 1
    sget-object v0, Lcom/google/android/material/theme/a/a;->a:[I
    invoke-virtual { p0, p1, v0 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p0
    const/4 p1, 0
  .line 2
    invoke-virtual { p0, p1, p1 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v0
    const/4 v1, 1
  .line 3
    invoke-virtual { p0, v1, p1 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p1
  .line 4
    invoke-virtual { p0 }, Landroid/content/res/TypedArray;->recycle()V
    if-eqz v0, :L0
    goto :L1
  :L0
    move v0, p1
  :L1
    return v0
.end method

.method private static b(Landroid/content/Context;Landroid/util/AttributeSet;II)I
  .registers 5
  .line 1
    sget-object v0, Lcom/google/android/material/theme/a/a;->b:[I
  .line 2
    invoke-virtual { p0, p1, v0, p2, p3 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p0
    const/4 p1, 0
  .line 3
    invoke-virtual { p0, p1, p1 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p1
  .line 4
    invoke-virtual { p0 }, Landroid/content/res/TypedArray;->recycle()V
    return p1
.end method

.method public static c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
  .registers 5
  .line 1
    invoke-static { p0, p1, p2, p3 }, Lcom/google/android/material/theme/a/a;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    move-result p2
  .line 2
    instance-of p3, p0, Lc/a/o/d;
    const/4 v0, 1
    if-eqz p3, :L0
    move-object p3, p0
    check-cast p3, Lc/a/o/d;
  .line 3
    invoke-virtual { p3 }, Lc/a/o/d;->c()I
    move-result p3
    if-ne p3, p2, :L0
    const/4 p3, 1
    goto :L1
  :L0
    const/4 p3, 0
  :L1
    if-eqz p2, :L4
    if-eqz p3, :L2
    goto :L4
  :L2
  .line 4
    new-instance p3, Lc/a/o/d;
    invoke-direct { p3, p0, p2 }, Lc/a/o/d;-><init>(Landroid/content/Context;I)V
  .line 5
    invoke-static { p0, p1 }, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)I
    move-result p0
    if-eqz p0, :L3
  .line 6
    invoke-virtual { p3 }, Lc/a/o/d;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object p1
    invoke-virtual { p1, p0, v0 }, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
  :L3
    return-object p3
  :L4
    return-object p0
.end method
