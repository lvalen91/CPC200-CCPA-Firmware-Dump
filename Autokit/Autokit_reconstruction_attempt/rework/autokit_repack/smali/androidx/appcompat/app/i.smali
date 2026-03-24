.class public Landroidx/appcompat/app/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/i$a;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final c:[I

.field private static final d:[Ljava/lang/String;

.field private static final e:Lc/d/g;
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


# instance fields
.field private final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Landroidx/appcompat/app/i;->b:[Ljava/lang/Class;

    new-array v1, v4, [I

    const v2, 0x101026f

    aput v2, v1, v3

    .line 2
    sput-object v1, Landroidx/appcompat/app/i;->c:[I

    const/4 v1, 0x3

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

    invoke-direct {v0}, Lc/d/g;-><init>()V

    sput-object v0, Landroidx/appcompat/app/i;->e:Lc/d/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_15

    .line 3
    invoke-static {p1}, Landroidx/core/view/v;->O(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2d

    .line 4
    :cond_15
    sget-object v1, Landroidx/appcompat/app/i;->c:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 6
    new-instance v1, Landroidx/appcompat/app/i$a;

    invoke-direct {v1, p1, v0}, Landroidx/appcompat/app/i$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_2a
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 1
    sget-object v0, Landroidx/appcompat/app/i;->e:Lc/d/g;

    invoke-virtual {v0, p2}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_37

    if-eqz p3, :cond_1c

    .line 2
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1d

    :cond_1c
    move-object p3, p2

    :goto_1d
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 4
    invoke-static {p3, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-class p3, Landroid/view/View;

    .line 5
    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 6
    sget-object p3, Landroidx/appcompat/app/i;->b:[Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 7
    sget-object p1, Landroidx/appcompat/app/i;->e:Lc/d/g;

    invoke-virtual {p1, p2, v0}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const/4 p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    const/4 p1, 0x0

    return-object p1
.end method

.method private s(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 8

    const-string v0, "view"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string p2, "class"

    .line 2
    invoke-interface {p3, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_f
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3
    :try_start_11
    iget-object v3, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 4
    iget-object v3, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;

    aput-object p3, v3, v0

    const/4 p3, -0x1

    const/16 v3, 0x2e

    .line 5
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne p3, v3, :cond_43

    const/4 p3, 0x0

    .line 6
    :goto_23
    sget-object v3, Landroidx/appcompat/app/i;->d:[Ljava/lang/String;

    array-length v3, v3

    if-ge p3, v3, :cond_3c

    .line 7
    sget-object v3, Landroidx/appcompat/app/i;->d:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-direct {p0, p1, p2, v3}, Landroidx/appcompat/app/i;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_30} :catch_56
    .catchall {:try_start_11 .. :try_end_30} :catchall_4e

    if-eqz v3, :cond_39

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 9
    aput-object v1, p1, v0

    return-object v3

    :cond_39
    add-int/lit8 p3, p3, 0x1

    goto :goto_23

    .line 10
    :cond_3c
    iget-object p1, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 11
    aput-object v1, p1, v0

    return-object v1

    .line 12
    :cond_43
    :try_start_43
    invoke-direct {p0, p1, p2, v1}, Landroidx/appcompat/app/i;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_47} :catch_56
    .catchall {:try_start_43 .. :try_end_47} :catchall_4e

    .line 13
    iget-object p2, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 14
    aput-object v1, p2, v0

    return-object p1

    :catchall_4e
    move-exception p1

    .line 15
    iget-object p2, p0, Landroidx/appcompat/app/i;->a:[Ljava/lang/Object;

    aput-object v1, p2, v2

    .line 16
    aput-object v1, p2, v0

    .line 17
    throw p1

    .line 18
    :catch_56
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

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p2, :cond_10

    .line 2
    sget p2, Lc/a/j;->View_android_theme:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    if-eqz p3, :cond_1b

    if-nez p2, :cond_1b

    .line 3
    sget p2, Lc/a/j;->View_theme:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4
    :cond_1b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_33

    .line 5
    instance-of p1, p0, Lc/a/o/d;

    if-eqz p1, :cond_2d

    move-object p1, p0

    check-cast p1, Lc/a/o/d;

    .line 6
    invoke-virtual {p1}, Lc/a/o/d;->c()I

    move-result p1

    if-eq p1, p2, :cond_33

    .line 7
    :cond_2d
    new-instance p1, Lc/a/o/d;

    invoke-direct {p1, p0, p2}, Lc/a/o/d;-><init>(Landroid/content/Context;I)V

    move-object p0, p1

    :cond_33
    return-object p0
.end method

.method private u(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " asked to inflate view for <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">, but returned null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/d;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/d;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/f;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/f;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/g;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/g;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected f(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/j;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/j;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected g(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/l;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/l;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected h(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected i(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/n;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/n;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected j(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/q;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/q;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/r;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/r;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected l(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/u;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/u;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected n(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/x;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/x;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected o(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/z;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/z;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected p(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method final q(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .registers 9

    if-eqz p5, :cond_9

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_a

    :cond_9
    move-object p1, p3

    :goto_a
    if-nez p6, :cond_e

    if-eqz p7, :cond_12

    .line 2
    :cond_e
    invoke-static {p1, p4, p6, p7}, Landroidx/appcompat/app/i;->t(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object p1

    :cond_12
    if-eqz p8, :cond_18

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/r0;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    :cond_18
    const/4 p5, -0x1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p6

    sparse-switch p6, :sswitch_data_13e

    goto/16 :goto_b7

    :sswitch_22
    const-string p6, "Button"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/4 p5, 0x2

    goto/16 :goto_b7

    :sswitch_2d
    const-string p6, "EditText"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/4 p5, 0x3

    goto/16 :goto_b7

    :sswitch_38
    const-string p6, "CheckBox"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/4 p5, 0x6

    goto/16 :goto_b7

    :sswitch_43
    const-string p6, "AutoCompleteTextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/16 p5, 0x9

    goto/16 :goto_b7

    :sswitch_4f
    const-string p6, "ImageView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/4 p5, 0x1

    goto :goto_b7

    :sswitch_59
    const-string p6, "ToggleButton"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/16 p5, 0xd

    goto :goto_b7

    :sswitch_64
    const-string p6, "RadioButton"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/4 p5, 0x7

    goto :goto_b7

    :sswitch_6e
    const-string p6, "Spinner"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/4 p5, 0x4

    goto :goto_b7

    :sswitch_78
    const-string p6, "SeekBar"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/16 p5, 0xc

    goto :goto_b7

    :sswitch_83
    const-string p6, "ImageButton"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/4 p5, 0x5

    goto :goto_b7

    :sswitch_8d
    const-string p6, "TextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/4 p5, 0x0

    goto :goto_b7

    :sswitch_97
    const-string p6, "MultiAutoCompleteTextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/16 p5, 0xa

    goto :goto_b7

    :sswitch_a2
    const-string p6, "CheckedTextView"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/16 p5, 0x8

    goto :goto_b7

    :sswitch_ad
    const-string p6, "RatingBar"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b7

    const/16 p5, 0xb

    :cond_b7
    :goto_b7
    packed-switch p5, :pswitch_data_178

    .line 5
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/app/i;->p(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p5

    goto/16 :goto_130

    .line 6
    :pswitch_c0
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->o(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/z;

    move-result-object p5

    .line 7
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_130

    .line 8
    :pswitch_c9
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->l(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object p5

    .line 9
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 10
    :pswitch_d1
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/r;

    move-result-object p5

    .line 11
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 12
    :pswitch_d9
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->i(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/n;

    move-result-object p5

    .line 13
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 14
    :pswitch_e1
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/d;

    move-result-object p5

    .line 15
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 16
    :pswitch_e9
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/g;

    move-result-object p5

    .line 17
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 18
    :pswitch_f1
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->j(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/q;

    move-result-object p5

    .line 19
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 20
    :pswitch_f9
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/f;

    move-result-object p5

    .line 21
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 22
    :pswitch_101
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->g(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/l;

    move-result-object p5

    .line 23
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 24
    :pswitch_109
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/u;

    move-result-object p5

    .line 25
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 26
    :pswitch_111
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->f(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/j;

    move-result-object p5

    .line 27
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 28
    :pswitch_119
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object p5

    .line 29
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 30
    :pswitch_121
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->h(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p5

    .line 31
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_130

    .line 32
    :pswitch_129
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/i;->n(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/x;

    move-result-object p5

    .line 33
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/i;->u(Landroid/view/View;Ljava/lang/String;)V

    :goto_130
    if-nez p5, :cond_138

    if-eq p3, p1, :cond_138

    .line 34
    invoke-direct {p0, p1, p2, p4}, Landroidx/appcompat/app/i;->s(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p5

    :cond_138
    if-eqz p5, :cond_13d

    .line 35
    invoke-direct {p0, p5, p4}, Landroidx/appcompat/app/i;->a(Landroid/view/View;Landroid/util/AttributeSet;)V

    :cond_13d
    return-object p5

    :sswitch_data_13e
    .sparse-switch
        -0x7404ceea -> :sswitch_ad
        -0x56c015e7 -> :sswitch_a2
        -0x503aa7ad -> :sswitch_97
        -0x37f7066e -> :sswitch_8d
        -0x37e04bb3 -> :sswitch_83
        -0x274065a5 -> :sswitch_78
        -0x1440b607 -> :sswitch_6e
        0x2e46a6ed -> :sswitch_64
        0x2fa453c6 -> :sswitch_59
        0x431b5280 -> :sswitch_4f
        0x5445f9ba -> :sswitch_43
        0x5f7507c3 -> :sswitch_38
        0x63577677 -> :sswitch_2d
        0x77471352 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_129
        :pswitch_121
        :pswitch_119
        :pswitch_111
        :pswitch_109
        :pswitch_101
        :pswitch_f9
        :pswitch_f1
        :pswitch_e9
        :pswitch_e1
        :pswitch_d9
        :pswitch_d1
        :pswitch_c9
        :pswitch_c0
    .end packed-switch
.end method
