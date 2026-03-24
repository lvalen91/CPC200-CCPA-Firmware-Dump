.class public Lcn/manstep/phonemirrorBox/customview/a;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/customview/a$f;,
        Lcn/manstep/phonemirrorBox/customview/a$g;
    }
.end annotation


# instance fields
.field private u:I

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Lcn/manstep/phonemirrorBox/customview/a$g;

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/manstep/phonemirrorBox/customview/a$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/customview/a;->u:I

    .line 3
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/customview/a;->D(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a$g;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/customview/a;->x:Lcn/manstep/phonemirrorBox/customview/a$g;

    return-object p0
.end method

.method static synthetic B(Lcn/manstep/phonemirrorBox/customview/a;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/customview/a;->y:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic C(Lcn/manstep/phonemirrorBox/customview/a;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/customview/a;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method private D(Landroid/content/Context;)V
    .registers 12

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/widget/b;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/widget/b;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c005a

    invoke-virtual {p1, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const-string v1, "\u4eae\u5ea6"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "\u66dd\u5149\u5ea6"

    const/4 v3, 0x1

    aput-object v1, p1, v3

    const-string v1, "\u5bf9\u6bd4\u5ea6"

    const/4 v4, 0x2

    aput-object v1, p1, v4

    const-string v1, "\u9971\u548c\u5ea6"

    const/4 v5, 0x3

    aput-object v1, p1, v5

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/customview/a;->y:Ljava/util/Map;

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcn/manstep/phonemirrorBox/customview/a$f;

    const-string v8, "brightness"

    const/16 v9, 0x32

    invoke-direct {v7, v2, v8, v9}, Lcn/manstep/phonemirrorBox/customview/a$f;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/customview/a;->y:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lcn/manstep/phonemirrorBox/customview/a$f;

    const-string v7, "exposure"

    invoke-direct {v6, v3, v7, v9}, Lcn/manstep/phonemirrorBox/customview/a$f;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/customview/a;->y:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/manstep/phonemirrorBox/customview/a$f;

    const-string v6, "contrast"

    invoke-direct {v3, v4, v6, v9}, Lcn/manstep/phonemirrorBox/customview/a$f;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/customview/a;->y:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/manstep/phonemirrorBox/customview/a$f;

    const-string v4, "saturation"

    invoke-direct {v3, v5, v4, v9}, Lcn/manstep/phonemirrorBox/customview/a$f;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f09028a

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/customview/a;->v:Landroid/widget/TextView;

    .line 9
    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/a;->u:I

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090131

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/widget/b;->a(Landroid/view/View;)Landroid/view/View;

    new-instance v2, Lcn/manstep/phonemirrorBox/customview/a$a;

    invoke-direct {v2, p0, p1}, Lcn/manstep/phonemirrorBox/customview/a$a;-><init>(Lcn/manstep/phonemirrorBox/customview/a;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09012a

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/widget/b;->a(Landroid/view/View;)Landroid/view/View;

    new-instance v2, Lcn/manstep/phonemirrorBox/customview/a$b;

    invoke-direct {v2, p0, p1}, Lcn/manstep/phonemirrorBox/customview/a$b;-><init>(Lcn/manstep/phonemirrorBox/customview/a;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/customview/a;->E()V

    const p1, 0x7f0900a9

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/widget/b;->a(Landroid/view/View;)Landroid/view/View;

    new-instance v1, Lcn/manstep/phonemirrorBox/customview/a$c;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/customview/a$c;-><init>(Lcn/manstep/phonemirrorBox/customview/a;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901e2

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/widget/b;->a(Landroid/view/View;)Landroid/view/View;

    new-instance v0, Lcn/manstep/phonemirrorBox/customview/a$d;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/customview/a$d;-><init>(Lcn/manstep/phonemirrorBox/customview/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private E()V
    .registers 6

    const v0, 0x7f09028b

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/customview/a;->w:Landroid/widget/TextView;

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/customview/a;->y:Ljava/util/Map;

    iget v4, p0, Lcn/manstep/phonemirrorBox/customview/a;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/manstep/phonemirrorBox/customview/a$f;

    iget v3, v3, Lcn/manstep/phonemirrorBox/customview/a$f;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090204

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0x64

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/customview/a;->y:Ljava/util/Map;

    iget v2, p0, Lcn/manstep/phonemirrorBox/customview/a;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/customview/a$f;

    iget v1, v1, Lcn/manstep/phonemirrorBox/customview/a$f;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 6
    new-instance v1, Lcn/manstep/phonemirrorBox/customview/a$e;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/customview/a$e;-><init>(Lcn/manstep/phonemirrorBox/customview/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic u(Lcn/manstep/phonemirrorBox/customview/a;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/customview/a;->u:I

    return p0
.end method

.method static synthetic v(Lcn/manstep/phonemirrorBox/customview/a;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/customview/a;->u:I

    return p1
.end method

.method static synthetic w(Lcn/manstep/phonemirrorBox/customview/a;)I
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/a;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/manstep/phonemirrorBox/customview/a;->u:I

    return v0
.end method

.method static synthetic x(Lcn/manstep/phonemirrorBox/customview/a;)I
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/customview/a;->u:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/manstep/phonemirrorBox/customview/a;->u:I

    return v0
.end method

.method static synthetic y(Lcn/manstep/phonemirrorBox/customview/a;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/customview/a;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic z(Lcn/manstep/phonemirrorBox/customview/a;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/customview/a;->E()V

    return-void
.end method


# virtual methods
.method public setCallback(Lcn/manstep/phonemirrorBox/customview/a$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a;->x:Lcn/manstep/phonemirrorBox/customview/a$g;

    return-void
.end method
