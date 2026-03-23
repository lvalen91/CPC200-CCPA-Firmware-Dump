.class public Lcn/manstep/phonemirrorBox/k0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/k0/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "b"
.end annotation

.field private a:Landroid/view/View;

.field private b:Lcn/manstep/phonemirrorBox/k0/f;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/f;
    const v1, 2131755303
    const/4 v2, 0
    invoke-direct { v0, p1, v1, v2 }, Lcn/manstep/phonemirrorBox/k0/f;-><init>(Landroid/content/Context;ILcn/manstep/phonemirrorBox/k0/f$a;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    const-string v0, "layout_inflater"
  .line 3
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/LayoutInflater;
    const v0, 2131492923
    const/4 v1, 0
  .line 4
    invoke-virtual { p1, v0, v2, v1 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->a:Landroid/view/View;
  .line 5
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -1
    const/4 v1, -2
    invoke-direct { p1, v0, v1 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->a:Landroid/view/View;
    invoke-virtual { v0, v1, p1 }, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->a:Landroid/view/View;
    const v1, 2131296917
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/f;->b(Lcn/manstep/phonemirrorBox/k0/f;Landroid/widget/TextView;)Landroid/widget/TextView;
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->a:Landroid/view/View;
    const v1, 2131296913
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/f;->d(Lcn/manstep/phonemirrorBox/k0/f;Landroid/widget/TextView;)Landroid/widget/TextView;
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->a:Landroid/view/View;
    const v1, 2131296914
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/f;->e(Lcn/manstep/phonemirrorBox/k0/f;Landroid/widget/TextView;)Landroid/widget/TextView;
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->a:Landroid/view/View;
    const v1, 2131296918
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/f;->f(Lcn/manstep/phonemirrorBox/k0/f;Landroid/widget/TextView;)Landroid/widget/TextView;
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->a:Landroid/view/View;
    const v1, 2131296724
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/f;->g(Lcn/manstep/phonemirrorBox/k0/f;Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;)Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->a:Landroid/view/View;
    const v1, 2131296391
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/f;->i(Lcn/manstep/phonemirrorBox/k0/f;Landroid/view/View;)Landroid/view/View;
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/k0/f;->h(Lcn/manstep/phonemirrorBox/k0/f;)Landroid/view/View;
    move-result-object p1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/f$b$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/k0/f$b$a;-><init>(Lcn/manstep/phonemirrorBox/k0/f$b;)V
    invoke-virtual { p1, v0 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/k0/f$b;)Lcn/manstep/phonemirrorBox/k0/f;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    return-object p0
.end method

.method public b()Lcn/manstep/phonemirrorBox/k0/f;
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->a:Landroid/view/View;
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCancelable(Z)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    return-object v0
.end method

.method public c(I)Lcn/manstep/phonemirrorBox/k0/f$b;
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/k0/f;->c(Lcn/manstep/phonemirrorBox/k0/f;)Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(I)V
    return-object p0
.end method

.method public d(I)Lcn/manstep/phonemirrorBox/k0/f$b;
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f$b;->b:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/k0/f;->a(Lcn/manstep/phonemirrorBox/k0/f;)Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(I)V
    return-object p0
.end method
