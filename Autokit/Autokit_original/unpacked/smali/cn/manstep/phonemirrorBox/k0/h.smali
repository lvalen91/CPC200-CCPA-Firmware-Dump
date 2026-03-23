.class public Lcn/manstep/phonemirrorBox/k0/h;
.super Landroidx/fragment/app/d;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/k0/h$c;
  }
.end annotation

.field private q0:Landroid/widget/EditText;

.field private r0:Lcn/manstep/phonemirrorBox/k0/h$c;

.field private s0:I

.field private t0:Ljava/lang/String;

.field private u0:I

.field private v0:I

.field private w0:I

.method private constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/d;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I
    const-string v1, ""
  .line 3
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;
    const/4 v1, 1
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I
    const/16 v1, 80
  .line 5
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I
  .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
  .registers 6
  .line 17
    invoke-direct { p0 }, Landroidx/fragment/app/d;-><init>()V
    const/4 v0, 0
  .line 18
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I
    const-string v1, ""
  .line 19
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;
    const/4 v1, 1
  .line 20
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I
    const/16 v1, 80
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
    invoke-direct { p0 }, Landroidx/fragment/app/d;-><init>()V
    const/4 v0, 0
  .line 8
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I
    const-string v1, ""
  .line 9
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;
    const/4 v1, 1
  .line 10
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I
    const/16 v1, 80
  .line 11
    iput v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I
  .line 12
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I
  .line 13
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I
  .line 14
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;
    const/16 p1, 17
  .line 15
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I
    const/16 p1, 200
  .line 16
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I
    return-void
.end method

.method static synthetic v2(Lcn/manstep/phonemirrorBox/k0/h;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k0/h;->y2()V
    return-void
.end method

.method static synthetic w2(Lcn/manstep/phonemirrorBox/k0/h;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k0/h;->x2()V
    return-void
.end method

.method private x2()V
  .registers 1
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->j2()V
    return-void
.end method

.method private y2()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->r0:Lcn/manstep/phonemirrorBox/k0/h$c;
    if-eqz v0, :L2
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->length()I
    move-result v0
    if-lez v0, :L0
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->r0:Lcn/manstep/phonemirrorBox/k0/h$c;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;
    invoke-virtual { v1 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/h$c;->a(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->j2()V
    goto :L2
  :L0
  .line 4
    iget v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I
    const/16 v1, 129
    if-ne v0, v1, :L1
    goto :L2
  :L1
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    const v1, 2131689754
    const/4 v2, 0
    invoke-static { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  :L2
    return-void
.end method

.method public static z2(Landroidx/fragment/app/n;Lcn/manstep/phonemirrorBox/k0/h$c;)V
  .registers 6
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/h;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/k0/h;-><init>()V
  .line 2
    new-instance v1, Landroid/os/Bundle;
    invoke-direct { v1 }, Landroid/os/Bundle;-><init>()V
    const-string v2, "InputType"
    const/16 v3, 129
  .line 3
    invoke-virtual { v1, v2, v3 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v2, "TitleResId"
    const v3, 2131689759
  .line 4
    invoke-virtual { v1, v2, v3 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v2, "Gravity"
    const/16 v3, 17
  .line 5
    invoke-virtual { v1, v2, v3 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  .line 6
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V
  .line 7
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/k0/h;->A2(Lcn/manstep/phonemirrorBox/k0/h$c;)V
  .line 8
    invoke-virtual { p0 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object p0
    const-string p1, "InputDialog"
    invoke-virtual { p0, v0, p1 }, Landroidx/fragment/app/w;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/w;->g(Ljava/lang/String;)Landroidx/fragment/app/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/w;->i()I
    return-void
.end method

.method public A2(Lcn/manstep/phonemirrorBox/k0/h$c;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->r0:Lcn/manstep/phonemirrorBox/k0/h$c;
    return-void
.end method

.method public H0(Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/d;->H0(Landroid/os/Bundle;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->I()Landroid/os/Bundle;
    move-result-object p1
    if-eqz p1, :L0
    const/4 v0, 0
    const-string v1, "TitleResId"
  .line 3
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I
    const/4 v0, 1
    const-string v1, "InputType"
  .line 4
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I
    const/16 v0, 80
    const-string v1, "Gravity"
  .line 5
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I
  :L0
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object p3
    if-eqz p3, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object p3
    const/4 v0, 1
    invoke-virtual { p3, v0 }, Landroid/app/Dialog;->requestWindowFeature(I)Z
  :L0
    const p3, 2131492948
    const/4 v0, 0
  .line 3
    invoke-virtual { p1, p3, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method

.method public O0()V
  .registers 2
    const/4 v0, 0
  .line 1
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;
  .line 2
    invoke-super { p0 }, Landroidx/fragment/app/d;->O0()V
    return-void
.end method

.method public e1()V
  .registers 7
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/d;->e1()V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object v0
    if-eqz v0, :L5
    const/4 v1, 0
  .line 3
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCancelable(Z)V
  .line 4
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
  .line 5
    invoke-virtual { v0 }, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object v0
    if-eqz v0, :L5
  .line 6
    invoke-virtual { v0 }, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v2
  .line 7
    iget v3, p0, Lcn/manstep/phonemirrorBox/k0/h;->v0:I
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I
    const/16 v4, 17
    if-ne v3, v4, :L0
  .line 8
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v3
    const/high16 v5, 17307
    invoke-static { v3, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v3
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I
    goto :L1
  :L0
    const/4 v3, -1
  .line 9
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I
  :L1
    const v3, 1060320051
  .line 10
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F
  .line 11
    iget v3, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I
    if-eqz v3, :L2
  .line 12
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v3
    iget v5, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I
    int-to-float v5, v5
    invoke-static { v3, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v3
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I
    const v3, 1036831949
  .line 13
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F
  :L2
  .line 14
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v3
    invoke-virtual { v3 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    invoke-virtual { v3 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v3
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I
    const/4 v5, 1
    if-ne v3, v5, :L4
  .line 15
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I
    if-ne v3, v4, :L3
  .line 16
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v3
    const/high16 v4, 17352
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v3
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I
  :L3
  .line 17
    iget v3, p0, Lcn/manstep/phonemirrorBox/k0/h;->w0:I
    if-eqz v3, :L4
  .line 18
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v3
    const/high16 v4, 17287
    invoke-static { v3, v4 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v3
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I
  :L4
  .line 19
    invoke-virtual { v0, v2 }, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
  .line 20
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v2
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;
    invoke-direct { v3, v1 }, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    invoke-virtual { v2, v3 }, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
  .line 21
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;
    invoke-direct { v2, v1 }, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    invoke-virtual { v0, v2 }, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L5
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V
    const p2, 2131296380
  .line 2
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/Button;
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/h$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/k0/h$a;-><init>(Lcn/manstep/phonemirrorBox/k0/h;)V
    invoke-virtual { p2, v0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p2, 2131296372
  .line 4
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/Button;
  .line 5
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/h$b;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/k0/h$b;-><init>(Lcn/manstep/phonemirrorBox/k0/h;)V
    invoke-virtual { p2, v0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p2, 2131296871
  .line 6
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
  .line 7
    iget v0, p0, Lcn/manstep/phonemirrorBox/k0/h;->s0:I
    invoke-virtual { p2, v0 }, Landroid/widget/TextView;->setText(I)V
    const p2, 2131296567
  .line 8
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/EditText;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;
  .line 9
    iget p2, p0, Lcn/manstep/phonemirrorBox/k0/h;->u0:I
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->setInputType(I)V
  .line 10
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object p1
    if-eqz p1, :L0
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object p1
    if-eqz p1, :L0
  .line 11
    invoke-virtual { p0 }, Landroidx/fragment/app/d;->m2()Landroid/app/Dialog;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object p1
    const/4 p2, 4
    invoke-virtual { p1, p2 }, Landroid/view/Window;->setSoftInputMode(I)V
  :L0
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/k0/h;->t0:Ljava/lang/String;
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;
    invoke-virtual { p1 }, Landroid/widget/EditText;->length()I
    move-result p2
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->setSelection(I)V
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;
    invoke-virtual { p1 }, Landroid/widget/EditText;->requestFocus()Z
  .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 p2, 23
    if-ge p1, p2, :L1
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;
    const/4 p2, 0
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->setLongClickable(Z)V
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/h;->q0:Landroid/widget/EditText;
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->setTextIsSelectable(Z)V
  :L1
    return-void
.end method
