.class public Lcn/manstep/phonemirrorBox/k0/h;
.super Landroidx/fragment/app/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/k0/h$c;
    }
.end annotation


# instance fields
.field private q0:Landroid/widget/EditText;

.field private r0:Lcn/manstep/phonemirrorBox/k0/h$c;

.field private s0:I

.field private t0:Ljava/lang/String;

.field private u0:I

.field private v0:I

.field private w0:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I

    const/16 v1, 0x50

    .line 5
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I

    .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 6

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I

    const-string v1, ""

    .line 19
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;

    const/4 v1, 0x1

    .line 20
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I

    const/16 v1, 0x50

    .line 21
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I

    .line 22
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I

    .line 23
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I

    .line 24
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;

    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I

    const/16 v1, 0x50

    .line 11
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I

    .line 12
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I

    .line 13
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I

    .line 14
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;

    const/16 p1, 0x11

    .line 15
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I

    const/16 p1, 0xc8

    .line 16
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I

    return-void
.end method

.method static synthetic v2(Lcn/manstep/phonemirrorBox/k0/h;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/k0/h;->y2()V

    return-void
.end method

.method static synthetic w2(Lcn/manstep/phonemirrorBox/k0/h;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/k0/h;->x2()V

    return-void
.end method

.method private x2()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/d;->j2()V

    return-void
.end method

.method private y2()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->r0:Lcn/manstep/phonemirrorBox/k0/h$c;

    if-eqz v0, :cond_38

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->r0:Lcn/manstep/phonemirrorBox/k0/h$c;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/manstep/phonemirrorBox/k0/h$c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/d;->j2()V

    goto :goto_38

    .line 4
    :cond_22
    iget v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_29

    goto :goto_38

    .line 5
    :cond_29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f011a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_38
    :goto_38
    return-void
.end method

.method public static z2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/h$c;)V
    .registers 6

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/h;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/k0/h;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "InputType"

    const/16 v3, 0x81

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "TitleResId"

    const v3, 0x7f0f011f

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "Gravity"

    const/16 v3, 0x11

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/k0/h;->A2(Lcn/manstep/phonemirrorBox/k0/h$c;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object p0

    const-string p1, "InputDialog"

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/w;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->g(Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {p0}, Landroidx/fragment/app/w;->i()I

    return-void
.end method


# virtual methods
.method public A2(Lcn/manstep/phonemirrorBox/k0/h$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->r0:Lcn/manstep/phonemirrorBox/k0/h$c;

    return-void
.end method

.method public H0(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->H0(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_25

    const/4 v0, 0x0

    const-string v1, "TitleResId"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I

    const/4 v0, 0x1

    const-string v1, "InputType"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I

    const/16 v0, 0x50

    const-string v1, "Gravity"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I

    :cond_25
    return-void
.end method

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
    const p3, 0x7f0c0054

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public O0()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/d;->O0()V

    return-void
.end method

.method public e1()V
    .registers 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->e1()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_95

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 7
    iget v3, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_2f

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x439b0000    # 310.0f

    invoke-static {v3, v5}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_32

    :cond_2f
    const/4 v3, -0x1

    .line 9
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_32
    const v3, 0x3f333333    # 0.7f

    .line 10
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 11
    iget v3, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I

    if-eqz v3, :cond_4d

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const v3, 0x3dcccccd    # 0.1f

    .line 13
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 14
    :cond_4d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7e

    .line 15
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v3, v4, :cond_6e

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43c80000    # 400.0f

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 17
    :cond_6e
    iget v3, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I

    if-eqz v3, :cond_7e

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 19
    :cond_7e
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_95
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09007c

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/h$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/k0/h$a;-><init>(Lcn/manstep/phonemirrorBox/k0/h;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090074

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/h$b;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/k0/h$b;-><init>(Lcn/manstep/phonemirrorBox/k0/h;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090267

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 7
    iget v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090137

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;

    .line 9
    iget p2, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_5f

    invoke-virtual {p0}, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 12
    :cond_5f
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_85

    .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    :cond_85
    return-void
.end method
