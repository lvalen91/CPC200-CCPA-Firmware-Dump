.class public Lcn/manstep/phonemirrorBox/k0/a;
.super Landroidx/fragment/app/d;
.source "SourceFile"


# instance fields
.field private q0:Landroid/view/View$OnClickListener;

.field private r0:Landroid/view/View$OnClickListener;

.field private s0:Landroid/widget/Button;

.field private t0:Landroid/widget/Button;

.field private u0:I

.field private v0:I

.field private w0:I

.field private x0:Z

.field private final y0:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    const/16 v0, 0x1388

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->w0:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->x0:Z

    .line 4
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/a$a;

    iget v1, p0, Lcn/manstep/phonemirrorBox/k0/a;->w0:I

    int-to-long v3, v1

    const-wide/16 v5, 0x1f4

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcn/manstep/phonemirrorBox/k0/a$a;-><init>(Lcn/manstep/phonemirrorBox/k0/a;JJ)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->y0:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static A2(Landroidx/fragment/app/n;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 8

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/a;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/k0/a;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "titleResId"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "tipsResId"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V

    .line 6
    invoke-static {p0, v0, p3, p4}, Lcn/manstep/phonemirrorBox/k0/a;->C2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/a;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static B2(Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 8

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/a;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/k0/a;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "tips"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V

    .line 6
    invoke-static {p0, v0, p3, p4}, Lcn/manstep/phonemirrorBox/k0/a;->C2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/a;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static C2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/a;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 1
    invoke-direct {p1, p2}, Lcn/manstep/phonemirrorBox/k0/a;->H2(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-direct {p1, p3}, Lcn/manstep/phonemirrorBox/k0/a;->G2(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object p0

    const-string p2, "AlertDialogX"

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/w;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {p0}, Landroidx/fragment/app/w;->i()I

    return-void
.end method

.method public static D2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Z)V
    .registers 8

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/a;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/k0/a;-><init>()V

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0f013b

    const-string v4, "titleResId"

    .line 4
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v3, 0x7f0f0122

    const-string v4, "tipsResId"

    .line 5
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "cancelCountDown"

    .line 6
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V

    .line 8
    iget-object p2, v0, Lcn/manstep/phonemirrorBox/k0/a;->y0:Landroid/os/CountDownTimer;

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 9
    invoke-static {p0, v0, p1, v1}, Lcn/manstep/phonemirrorBox/k0/a;->C2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/a;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_35

    .line 10
    :cond_32
    invoke-interface {p1, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_35
    return-void
.end method

.method public static E2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;)V
    .registers 7

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/a;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/k0/a;-><init>()V

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0f013b

    const-string v4, "titleResId"

    .line 4
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v3, 0x7f0f01d3

    const-string v4, "tipsResId"

    .line 5
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V

    .line 7
    invoke-static {p0, v0, p1, v1}, Lcn/manstep/phonemirrorBox/k0/a;->C2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/a;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_2b

    .line 8
    :cond_28
    invoke-interface {p1, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_2b
    return-void
.end method

.method private F2(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->x0:Z

    const-string v1, ")"

    const-string v2, " ("

    if-nez v0, :cond_34

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->s0:Landroid/widget/Button;

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->q0()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f01a3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->j0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->s0:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    .line 5
    :cond_34
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->t0:Landroid/widget/Button;

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->q0()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f00a6

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->j0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->t0:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private G2(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/a;->r0:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private H2(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/a;->q0:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static I2(Landroidx/fragment/app/n;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 8

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/a;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/k0/a;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "titleResId"

    const v3, 0x7f0f00e4

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "tipsResId"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V

    .line 6
    invoke-static {p0, v0, p2, p3}, Lcn/manstep/phonemirrorBox/k0/a;->C2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/a;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static J2(Landroidx/fragment/app/n;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 8

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/a;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/k0/a;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "titleResId"

    const v3, 0x7f0f00e4

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "tips"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V

    .line 6
    invoke-static {p0, v0, p2, p3}, Lcn/manstep/phonemirrorBox/k0/a;->C2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/a;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static K2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcn/manstep/phonemirrorBox/k0/a;
    .registers 7

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/a;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/k0/a;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "titleResId"

    const v3, 0x7f0f00e4

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "tipsResId"

    const v3, 0x7f0f0197

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V

    .line 6
    invoke-static {p0, v0, p1, p2}, Lcn/manstep/phonemirrorBox/k0/a;->C2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/a;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static L2(Landroidx/fragment/app/n;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 8

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/a;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/k0/a;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "titleResId"

    const v3, 0x7f0f013b

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "tipsResId"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V

    .line 6
    invoke-static {p0, v0, p2, p3}, Lcn/manstep/phonemirrorBox/k0/a;->C2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/a;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic v2(Lcn/manstep/phonemirrorBox/k0/a;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/k0/a;->F2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w2(Lcn/manstep/phonemirrorBox/k0/a;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/k0/a;->z2()V

    return-void
.end method

.method static synthetic x2(Lcn/manstep/phonemirrorBox/k0/a;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/a;->q0:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic y2(Lcn/manstep/phonemirrorBox/k0/a;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/a;->r0:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private z2()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->x0:Z

    if-eqz v0, :cond_a

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->t0:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_f

    .line 3
    :cond_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->s0:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :goto_f
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
    const p3, 0x7f0c0022

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

    if-eqz v0, :cond_54

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcn/manstep/phonemirrorBox/k0/a;->u0:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcn/manstep/phonemirrorBox/k0/a;->v0:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 9
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v3, 0x3f333333    # 0.7f

    .line 10
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_54
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_62

    const v1, 0x7f090295

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "titleResId"

    .line 4
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "title"

    .line 5
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28

    .line 6
    :cond_25
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_28
    const v1, 0x7f090294

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "tipsResId"

    .line 8
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "tips"

    .line 9
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46

    .line 10
    :cond_43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_46
    const/16 v1, 0x118

    const-string v2, "width"

    .line 11
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/a;->u0:I

    const/16 v1, 0xa0

    const-string v2, "height"

    .line 12
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/a;->v0:I

    const-string v1, "cancelCountDown"

    .line 13
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/k0/a;->x0:Z

    :cond_62
    const p2, 0x7f090089

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/k0/a;->s0:Landroid/widget/Button;

    const v1, 0x7f090086

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/k0/a;->t0:Landroid/widget/Button;

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcn/manstep/phonemirrorBox/k0/a$b;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/k0/a$b;-><init>(Lcn/manstep/phonemirrorBox/k0/a;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcn/manstep/phonemirrorBox/k0/a$c;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/k0/a$c;-><init>(Lcn/manstep/phonemirrorBox/k0/a;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/k0/a;->r0:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_9c

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a5

    .line 20
    :cond_9c
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_a5
    return-void
.end method

.method public j2()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->j2()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/a;->y0:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
