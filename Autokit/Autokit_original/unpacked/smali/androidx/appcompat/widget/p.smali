.class Landroidx/appcompat/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static c:[I

.field private final a:Landroid/widget/ProgressBar;

.field private b:Landroid/graphics/Bitmap;

.method static constructor <clinit>()V
  .registers 1
    const/4 v0, 2
    new-array v0, v0, [I
  .line 1
    fill-array-data v0, :L0
    sput-object v0, Landroidx/appcompat/widget/p;->c:[I
    return-void
  :L0
  .array-data 4
    59t 1t 1t 1t
    60t 1t 1t 1t
  .end array-data
.end method

.method constructor <init>(Landroid/widget/ProgressBar;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/p;->a:Landroid/widget/ProgressBar;
    return-void
.end method

.method private a()Landroid/graphics/drawable/shapes/Shape;
  .registers 4
    const/16 v0, 8
    new-array v0, v0, [F
  .line 1
    fill-array-data v0, :L0
  .line 2
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;
    const/4 v2, 0
    invoke-direct { v1, v0, v2, v2 }, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V
    return-object v1
  :L0
  .array-data 4
    0t 0t -96t 64t
    0t 0t -96t 64t
    0t 0t -96t 64t
    0t 0t -96t 64t
    0t 0t -96t 64t
    0t 0t -96t 64t
    0t 0t -96t 64t
    0t 0t -96t 64t
  .end array-data
.end method

.method private d(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
  .registers 10
  .line 1
    instance-of v0, p1, Landroidx/core/graphics/drawable/c;
    if-eqz v0, :L0
  .line 2
    move-object v0, p1
    check-cast v0, Landroidx/core/graphics/drawable/c;
    invoke-interface { v0 }, Landroidx/core/graphics/drawable/c;->a()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    if-eqz v1, :L11
  .line 3
    invoke-direct { p0, v1, p2 }, Landroidx/appcompat/widget/p;->d(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    move-result-object p2
  .line 4
    invoke-interface { v0, p2 }, Landroidx/core/graphics/drawable/c;->b(Landroid/graphics/drawable/Drawable;)V
    goto/16 :L11
  :L0
  .line 5
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 1
    if-eqz v0, :L8
  .line 6
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;
  .line 7
    invoke-virtual { p1 }, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I
    move-result p2
  .line 8
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;
    const/4 v2, 0
    const/4 v3, 0
  :L1
    if-ge v3, p2, :L5
  .line 9
    invoke-virtual { p1, v3 }, Landroid/graphics/drawable/LayerDrawable;->getId(I)I
    move-result v4
  .line 10
    invoke-virtual { p1, v3 }, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v5
    const v6, 16908301
    if-eq v4, v6, :L3
    const v6, 16908303
    if-ne v4, v6, :L2
    goto :L3
  :L2
    const/4 v4, 0
    goto :L4
  :L3
    const/4 v4, 1
  :L4
    invoke-direct { p0, v5, v4 }, Landroidx/appcompat/widget/p;->d(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    move-result-object v4
    aput-object v4, v0, v3
    add-int/lit8 v3, v3, 1
    goto :L1
  :L5
  .line 11
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;
    invoke-direct { v1, v0 }, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
  :L6
    if-ge v2, p2, :L7
  .line 12
    invoke-virtual { p1, v2 }, Landroid/graphics/drawable/LayerDrawable;->getId(I)I
    move-result v0
    invoke-virtual { v1, v2, v0 }, Landroid/graphics/drawable/LayerDrawable;->setId(II)V
    add-int/lit8 v2, v2, 1
    goto :L6
  :L7
    return-object v1
  :L8
  .line 13
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :L11
  .line 14
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;
  .line 15
    invoke-virtual { p1 }, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    move-result-object v0
  .line 16
    iget-object v2, p0, Landroidx/appcompat/widget/p;->b:Landroid/graphics/Bitmap;
    if-nez v2, :L9
  .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/p;->b:Landroid/graphics/Bitmap;
  :L9
  .line 18
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;
    invoke-direct { p0 }, Landroidx/appcompat/widget/p;->a()Landroid/graphics/drawable/shapes/Shape;
    move-result-object v3
    invoke-direct { v2, v3 }, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V
  .line 19
    new-instance v3, Landroid/graphics/BitmapShader;
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
    invoke-direct { v3, v0, v4, v5 }, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
  .line 20
    invoke-virtual { v2 }, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
    move-result-object v0
    invoke-virtual { v0, v3 }, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
  .line 21
    invoke-virtual { v2 }, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
    move-result-object v0
    invoke-virtual { p1 }, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    if-eqz p2, :L10
  .line 22
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;
    const/4 p2, 3
    invoke-direct { p1, v2, p2, v1 }, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V
    move-object v2, p1
  :L10
    return-object v2
  :L11
    return-object p1
.end method

.method private e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
  .registers 8
  .line 1
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :L2
  .line 2
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;
  .line 3
    invoke-virtual { p1 }, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I
    move-result v0
  .line 4
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;
    invoke-direct { v1 }, Landroid/graphics/drawable/AnimationDrawable;-><init>()V
  .line 5
    invoke-virtual { p1 }, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z
    move-result v2
    invoke-virtual { v1, v2 }, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V
    const/4 v2, 0
  :L0
    const/16 v3, 10000
    if-ge v2, v0, :L1
  .line 6
    invoke-virtual { p1, v2 }, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;
    move-result-object v4
    const/4 v5, 1
    invoke-direct { p0, v4, v5 }, Landroidx/appcompat/widget/p;->d(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    move-result-object v4
  .line 7
    invoke-virtual { v4, v3 }, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
  .line 8
    invoke-virtual { p1, v2 }, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I
    move-result v3
    invoke-virtual { v1, v4, v3 }, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 9
    invoke-virtual { v1, v3 }, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z
    move-object p1, v1
  :L2
    return-object p1
.end method

.method b()Landroid/graphics/Bitmap;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/p;->b:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method c(Landroid/util/AttributeSet;I)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/p;->a:Landroid/widget/ProgressBar;
    invoke-virtual { v0 }, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;
    move-result-object v0
    sget-object v1, Landroidx/appcompat/widget/p;->c:[I
    const/4 v2, 0
    invoke-static { v0, p1, v1, p2, v2 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object p1
  .line 2
    invoke-virtual { p1, v2 }, Landroidx/appcompat/widget/u0;->h(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    if-eqz p2, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/p;->a:Landroid/widget/ProgressBar;
    invoke-direct { p0, p2 }, Landroidx/appcompat/widget/p;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { v0, p2 }, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
  :L0
    const/4 p2, 1
  .line 4
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/u0;->h(I)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    if-eqz p2, :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/p;->a:Landroid/widget/ProgressBar;
    invoke-direct { p0, p2, v2 }, Landroidx/appcompat/widget/p;->d(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    move-result-object p2
    invoke-virtual { v0, p2 }, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
  .line 6
    invoke-virtual { p1 }, Landroidx/appcompat/widget/u0;->w()V
    return-void
.end method
