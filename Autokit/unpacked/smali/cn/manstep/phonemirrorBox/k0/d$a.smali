.class public Lcn/manstep/phonemirrorBox/k0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/k0/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "a"
.end annotation

.field private a:Landroid/view/View;

.field private b:Lcn/manstep/phonemirrorBox/k0/d;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/d;
    const v1, 2131755275
    invoke-direct { v0, p1, v1 }, Lcn/manstep/phonemirrorBox/k0/d;-><init>(Landroid/content/Context;I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    const-string v0, "layout_inflater"
  .line 3
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/LayoutInflater;
    const v0, 2131492903
    const/4 v1, 0
    const/4 v2, 0
  .line 4
    invoke-virtual { p1, v0, v1, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->a:Landroid/view/View;
  .line 5
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -1
    const/4 v1, -2
    invoke-direct { p1, v0, v1 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->a:Landroid/view/View;
    invoke-virtual { v0, v1, p1 }, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->a:Landroid/view/View;
    const v1, 2131296911
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/d;->a(Lcn/manstep/phonemirrorBox/k0/d;Landroid/widget/TextView;)Landroid/widget/TextView;
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->a:Landroid/view/View;
    const v1, 2131296910
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/d;->c(Lcn/manstep/phonemirrorBox/k0/d;Landroid/widget/TextView;)Landroid/widget/TextView;
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/k0/d;->b(Lcn/manstep/phonemirrorBox/k0/d;)Landroid/widget/TextView;
    move-result-object p1
    invoke-static { }, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->a:Landroid/view/View;
    const v1, 2131296392
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/d;->d(Lcn/manstep/phonemirrorBox/k0/d;Landroid/view/View;)Landroid/view/View;
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->a:Landroid/view/View;
    const v1, 2131296394
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/d;->e(Lcn/manstep/phonemirrorBox/k0/d;Landroid/view/View;)Landroid/view/View;
    return-void
.end method

.method public a()Lcn/manstep/phonemirrorBox/k0/d;
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->a:Landroid/view/View;
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCancelable(Z)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcn/manstep/phonemirrorBox/k0/d$a;
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d$a;->b:Lcn/manstep/phonemirrorBox/k0/d;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/k0/d;->b(Lcn/manstep/phonemirrorBox/k0/d;)Landroid/widget/TextView;
    move-result-object p1
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    return-object p0
.end method
