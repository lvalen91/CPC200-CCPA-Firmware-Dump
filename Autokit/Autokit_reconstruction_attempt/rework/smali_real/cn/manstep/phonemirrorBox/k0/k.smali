.class public Lcn/manstep/phonemirrorBox/k0/k;
.super Landroidx/fragment/app/d;
.source "SourceFile"


# static fields
.field private static s0:I


# instance fields
.field private q0:Landroid/view/View$OnClickListener;

.field private r0:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    return-void
.end method

.method public static A2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcn/manstep/phonemirrorBox/k0/k;
    .registers 4

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/k;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/k0/k;-><init>()V

    .line 2
    invoke-static {p0, v0, p1, p2}, Lcn/manstep/phonemirrorBox/k0/k;->x2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/k;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method static synthetic v2(Lcn/manstep/phonemirrorBox/k0/k;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/k;->q0:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic w2(Lcn/manstep/phonemirrorBox/k0/k;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/k;->r0:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private static x2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/k;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 1
    invoke-direct {p1, p2}, Lcn/manstep/phonemirrorBox/k0/k;->z2(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-direct {p1, p3}, Lcn/manstep/phonemirrorBox/k0/k;->y2(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object p0

    const-string p2, "TermsPrivacyDialog"

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/w;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {p0}, Landroidx/fragment/app/w;->i()I

    return-void
.end method

.method private y2(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/k;->r0:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private z2(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/k;->q0:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_e

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :cond_e
    const p3, 0x7f0c009e

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e1()V
    .registers 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->e1()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_51

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    .line 7
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 8
    sget v3, Lcn/manstep/phonemirrorBox/k0/k;->s0:I

    if-nez v3, :cond_2d

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x433c0000    # 188.0f

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    sput v3, Lcn/manstep/phonemirrorBox/k0/k;->s0:I

    .line 10
    :cond_2d
    sget v3, Lcn/manstep/phonemirrorBox/k0/k;->s0:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 11
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v3, 0x3f333333    # 0.7f

    .line 12
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_51
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090089

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcn/manstep/phonemirrorBox/k0/k$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/k0/k$a;-><init>(Lcn/manstep/phonemirrorBox/k0/k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090086

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcn/manstep/phonemirrorBox/k0/k$b;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/k0/k$b;-><init>(Lcn/manstep/phonemirrorBox/k0/k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090290

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p2

    const-string v0, "privacy_tips"

    const v1, 0x7f120007

    invoke-static {p2, v0, v1}, Lcn/manstep/phonemirrorBox/util/n;->t(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v1, Lcn/manstep/phonemirrorBox/k0/k$c;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/k0/k$c;-><init>(Lcn/manstep/phonemirrorBox/k0/k;)V

    const-string v2, "\u300a"

    .line 8
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\u300b"

    .line 9
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const/16 v3, 0x21

    .line 10
    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const p2, -0xffff01

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 12
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o2(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->o2(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k0/k;->e1()V

    return-object p1
.end method
