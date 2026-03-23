.class public Landroidx/appcompat/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/app/i$a;
  }
.end annotation

.field private final static b:[Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "[",
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field private final static c:[I

.field private final static d:[Ljava/lang/String;

.field private final static e:Lc/d/g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/g<",
      "Ljava/lang/String;",
      "Ljava/lang/reflect/Constructor<",
      "+",
      "Landroid/view/View;",
      ">;>;"
    }
  .end annotation
.end field

.field private final a:[Ljava/lang/Object;

.method static constructor <clinit>()V
  .registers 5
    const/4 v0, 2
    new-array v1, v0, [Ljava/lang/Class;
  .line 1
    const-class v2, Landroid/content/Context;
    const/4 v3, 0
    aput-object v2, v1, v3
    const-class v2, Landroid/util/AttributeSet;
    const/4 v4, 1
    aput-object v2, v1, v4
    sput-object v1, Landroidx/appcompat/app/i;->b:[Ljava/lang/Class;
    new-array v1, v4, [I
    const v2, 16843375
    aput v2, v1, v3
  .line 2
    sput-object v1, Landroidx/appcompat/app/i;->c:[I
    const/4 v1, 3
    new-array v1, v1, [Ljava/lang/String;
    const-string v2, "android.widget."
    aput-object v2, v1, v3
    const-string v2, "android.view."
    aput-object v2, v1, v4
    const-string v2, "android.webkit."
    aput-object v2, v1, v0
  .line 3
    sput-object v1, Landroidx/appcompat/app/i;->d:[Ljava/lang/String;
  .line 4
    new-instance v0, Lc/d/g;
    invoke-direct { v0 }, Lc/d/g;-><init>()V
    sput-object v0, Landroidx/appcompat/app/i;->e:Lc/d/g;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 2
    new-array v0, v0, [Ljava/lang/Object;
  .line 2
    iput-object v0, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;
    return-void
.end method

.method private a(Landroid/view/View;Landroid/util/AttributeSet;)V
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 2
    instance-of v1, v0, Landroid/content/ContextWrapper;
    if-eqz v1, :L2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 15
    if-lt v1, v2, :L0
  .line 3
    invoke-static { p1 }, Landroidx/core/view/v;->O(Landroid/view/View;)Z
    move-result v1
    if-nez v1, :L0
    goto :L2
  :L0
  .line 4
    sget-object v1, Landroidx/appcompat/app/i;->c:[I
    invoke-virtual { v0, p2, v1 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    move-result-object p2
    const/4 v0, 0
  .line 5
    invoke-virtual { p2, v0 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L1
  .line 6
    new-instance v1, Landroidx/appcompat/app/i$a;
    invoke-direct { v1, p1, v0 }, Landroidx/appcompat/app/i$a;-><init>(Landroid/view/View;Ljava/lang/String;)V
    invoke-virtual { p1, v1 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L1
  .line 7
    invoke-virtual { p2 }, Landroid/content/res/TypedArray;->recycle()V
  :L2
    return-void
.end method

.method private r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
  .catch Ljava/lang/Exception; { :L0 .. :L4 } :L5
  .registers 5
  .line 1
    sget-object v0, Landroidx/appcompat/app/i;->e:Lc/d/g;
    invoke-virtual { v0, p2 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/reflect/Constructor;
    if-nez v0, :L3
    if-eqz p3, :L1
  :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    goto :L2
  :L1
    move-object p3, p2
  :L2
    const/4 v0, 0
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object p1
  .line 4
    invoke-static { p3, v0, p1 }, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    move-result-object p1
    const-class p3, Landroid/view/View;
  .line 5
    invoke-virtual { p1, p3 }, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    move-result-object p1
  .line 6
    sget-object p3, Landroidx/appcompat/app/i;->b:[Ljava/lang/Class;
    invoke-virtual { p1, p3 }, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v0
  .line 7
    sget-object p1, Landroidx/appcompat/app/i;->e:Lc/d/g;
    invoke-virtual { p1, p2, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L3
    const/4 p1, 1
  .line 8
    invoke-virtual { v0, p1 }, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
  .line 9
    iget-object p1, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;
    invoke-virtual { v0, p1 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/View;
  :L4
    return-object p1
  :L5
    const/4 p1, 0
    return-object p1
.end method

.method private s(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
  .catch Ljava/lang/Exception; { :L1 .. :L3 } :L9
  .catchall { :L1 .. :L3 } :L8
  .catch Ljava/lang/Exception; { :L6 .. :L7 } :L9
  .catchall { :L6 .. :L7 } :L8
  .registers 8
    const-string v0, "view"
  .line 1
    invoke-virtual { p2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    const-string p2, "class"
  .line 2
    invoke-interface { p3, v1, p2 }, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
  :L0
    const/4 v0, 1
    const/4 v2, 0
  :L1
  .line 3
    iget-object v3, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;
    aput-object p1, v3, v2
  .line 4
    iget-object v3, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;
    aput-object p3, v3, v0
    const/4 p3, -1
    const/16 v3, 46
  .line 5
    invoke-virtual { p2, v3 }, Ljava/lang/String;->indexOf(I)I
    move-result v3
    if-ne p3, v3, :L6
    const/4 p3, 0
  :L2
  .line 6
    sget-object v3, Landroidx/appcompat/app/i;->d:[Ljava/lang/String;
    array-length v3, v3
    if-ge p3, v3, :L5
  .line 7
    sget-object v3, Landroidx/appcompat/app/i;->d:[Ljava/lang/String;
    aget-object v3, v3, p3
    invoke-direct { p0, p1, p2, v3 }, Landroidx/appcompat/app/i;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    move-result-object v3
  :L3
    if-eqz v3, :L4
  .line 8
    iget-object p1, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;
    aput-object v1, p1, v2
  .line 9
    aput-object v1, p1, v0
    return-object v3
  :L4
    add-int/lit8 p3, p3, 1
    goto :L2
  :L5
  .line 10
    iget-object p1, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;
    aput-object v1, p1, v2
  .line 11
    aput-object v1, p1, v0
    return-object v1
  :L6
  .line 12
    invoke-direct { p0, p1, p2, v1 }, Landroidx/appcompat/app/i;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    move-result-object p1
  :L7
  .line 13
    iget-object p2, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;
    aput-object v1, p2, v2
  .line 14
    aput-object v1, p2, v0
    return-object p1
  :L8
    move-exception p1
  .line 15
    iget-object p2, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;
    aput-object v1, p2, v2
  .line 16
    aput-object v1, p2, v0
  .line 17
    throw p1
  :L9
  .line 18
    iget-object p1, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;
    aput-object v1, p1, v2
  .line 19
    aput-object v1, p1, v0
    return-object v1
.end method

.method private static t(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
  .registers 6
  .line 1
    sget-object v0, Lc/a/j;->View:[I
    const/4 v1, 0
    invoke-virtual { p0, p1, v0, v1, v1 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p1
    if-eqz p2, :L0
  .line 2
    sget p2, Lc/a/j;->View_android_theme:I
    invoke-virtual { p1, p2, v1 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p2
    goto :L1
  :L0
    const/4 p2, 0
  :L1
    if-eqz p3, :L2
    if-nez p2, :L2
  .line 3
    sget p2, Lc/a/j;->View_theme:I
    invoke-virtual { p1, p2, v1 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result p2
  :L2
  .line 4
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    if-eqz p2, :L4
  .line 5
    instance-of p1, p0, Lc/a/o/d;
    if-eqz p1, :L3
    move-object p1, p0
    check-cast p1, Lc/a/o/d;
  .line 6
    invoke-virtual { p1 }, Lc/a/o/d;->c()I
    move-result p1
    if-eq p1, p2, :L4
  :L3
  .line 7
    new-instance p1, Lc/a/o/d;
    invoke-direct { p1, p0, p2 }, Lc/a/o/d;-><init>(Landroid/content/Context;I)V
    move-object p0, p1
  :L4
    return-object p0
.end method

.method private u(Landroid/view/View;Ljava/lang/String;)V
  .registers 5
    if-eqz p1, :L0
    return-void
  :L0
  .line 1
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " asked to inflate view for <"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, ">, but returned null"
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/d;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/d;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/f;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/f;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/g;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/g;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected f(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/j;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/j;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected g(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/l;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/l;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected h(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected i(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/n;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/n;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected j(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/q;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/q;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/r;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/r;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected l(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatSeekBar;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/u;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/u;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected n(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/x;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/x;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected o(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/z;
  .registers 4
  .line 1
    new-instance v0, Landroidx/appcompat/widget/z;
    invoke-direct { v0, p1, p2 }, Landroidx/appcompat/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method protected p(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
  .registers 4
    const/4 p1, 0
    return-object p1
.end method

.method final q(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
  .registers 9
    if-eqz p5, :L0
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object p1
    goto :L1
  :L0
    move-object p1, p3
  :L1
    if-nez p6, :L2
    if-eqz p7, :L3
  :L2
  .line 2
    invoke-static { p1, p4, p6, p7 }, Landroidx/appcompat/app/i;->t(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    move-result-object p1
  :L3
    if-eqz p8, :L4
  .line 3
    invoke-static { p1 }, Landroidx/appcompat/widget/r0;->b(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p1
  :L4
    const/4 p5, -1
  .line 4
    invoke-virtual { p2 }, Ljava/lang/String;->hashCode()I
    move-result p6
    sparse-switch p6, :L37
    goto/16 :L19
  :L5
    const-string p6, "Button"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/4 p5, 2
    goto/16 :L19
  :L6
    const-string p6, "EditText"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/4 p5, 3
    goto/16 :L19
  :L7
    const-string p6, "CheckBox"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/4 p5, 6
    goto/16 :L19
  :L8
    const-string p6, "AutoCompleteTextView"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/16 p5, 9
    goto/16 :L19
  :L9
    const-string p6, "ImageView"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/4 p5, 1
    goto :L19
  :L10
    const-string p6, "ToggleButton"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/16 p5, 13
    goto :L19
  :L11
    const-string p6, "RadioButton"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/4 p5, 7
    goto :L19
  :L12
    const-string p6, "Spinner"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/4 p5, 4
    goto :L19
  :L13
    const-string p6, "SeekBar"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/16 p5, 12
    goto :L19
  :L14
    const-string p6, "ImageButton"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/4 p5, 5
    goto :L19
  :L15
    const-string p6, "TextView"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/4 p5, 0
    goto :L19
  :L16
    const-string p6, "MultiAutoCompleteTextView"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/16 p5, 10
    goto :L19
  :L17
    const-string p6, "CheckedTextView"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/16 p5, 8
    goto :L19
  :L18
    const-string p6, "RatingBar"
    invoke-virtual { p2, p6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p6
    if-eqz p6, :L19
    const/16 p5, 11
  :L19
    packed-switch p5, :L38
  .line 5
    invoke-virtual { p0, p1, p2, p4 }, Landroidx/appcompat/app/i;->p(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    move-result-object p5
    goto/16 :L34
  :L20
  .line 6
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->o(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/z;
    move-result-object p5
  .line 7
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto/16 :L34
  :L21
  .line 8
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->l(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;
    move-result-object p5
  .line 9
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L22
  .line 10
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/r;
    move-result-object p5
  .line 11
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L23
  .line 12
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->i(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/n;
    move-result-object p5
  .line 13
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L24
  .line 14
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/d;
    move-result-object p5
  .line 15
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L25
  .line 16
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/g;
    move-result-object p5
  .line 17
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L26
  .line 18
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->j(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/q;
    move-result-object p5
  .line 19
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L27
  .line 20
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/f;
    move-result-object p5
  .line 21
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L28
  .line 22
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->g(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/l;
    move-result-object p5
  .line 23
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L29
  .line 24
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/u;
    move-result-object p5
  .line 25
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L30
  .line 26
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->f(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/j;
    move-result-object p5
  .line 27
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L31
  .line 28
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    move-result-object p5
  .line 29
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L32
  .line 30
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->h(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;
    move-result-object p5
  .line 31
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
    goto :L34
  :L33
  .line 32
    invoke-virtual { p0, p1, p4 }, Landroidx/appcompat/app/i;->n(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/x;
    move-result-object p5
  .line 33
    invoke-direct { p0, p5, p2 }, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V
  :L34
    if-nez p5, :L35
    if-eq p3, p1, :L35
  .line 34
    invoke-direct { p0, p1, p2, p4 }, Landroidx/appcompat/app/i;->s(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    move-result-object p5
  :L35
    if-eqz p5, :L36
  .line 35
    invoke-direct { p0, p5, p4 }, Landroidx/appcompat/app/i;->a(Landroid/view/View;Landroid/util/AttributeSet;)V
  :L36
    return-object p5
  :L37
  .sparse-switch
    -1946472170 -> :L18
    -1455429095 -> :L17
    -1346021293 -> :L16
    -938935918 -> :L15
    -937446323 -> :L14
    -658531749 -> :L13
    -339785223 -> :L12
    776382189 -> :L11
    799298502 -> :L10
    1125864064 -> :L9
    1413872058 -> :L8
    1601505219 -> :L7
    1666676343 -> :L6
    2001146706 -> :L5
  .end sparse-switch
  :L38
  .packed-switch 0
    :L33
    :L32
    :L31
    :L30
    :L29
    :L28
    :L27
    :L26
    :L25
    :L24
    :L23
    :L22
    :L21
    :L20
  .end packed-switch
.end method
