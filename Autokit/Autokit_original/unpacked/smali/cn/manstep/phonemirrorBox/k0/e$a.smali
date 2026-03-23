.class public Lcn/manstep/phonemirrorBox/k0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/k0/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "a"
.end annotation

.field private final a:Landroid/view/View;

.field private final b:Lcn/manstep/phonemirrorBox/k0/e;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/e;
    const v1, 2131755275
    invoke-direct { v0, p1, v1 }, Lcn/manstep/phonemirrorBox/k0/e;-><init>(Landroid/content/Context;I)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    const-string v0, "layout_inflater"
  .line 3
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/LayoutInflater;
    const v0, 2131492907
    const/4 v1, 0
    const/4 v2, 0
  .line 4
    invoke-virtual { p1, v0, v1, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->a:Landroid/view/View;
  .line 5
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -1
    const/4 v1, -2
    invoke-direct { p1, v0, v1 }, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->a:Landroid/view/View;
    invoke-virtual { v0, v1, p1 }, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->a:Landroid/view/View;
    const v1, 2131296911
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/e;->b(Lcn/manstep/phonemirrorBox/k0/e;Landroid/widget/TextView;)Landroid/widget/TextView;
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->a:Landroid/view/View;
    const v1, 2131296477
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/EditText;
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/e;->c(Lcn/manstep/phonemirrorBox/k0/e;Landroid/widget/EditText;)Landroid/widget/EditText;
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->a:Landroid/view/View;
    const v1, 2131296543
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/e;->e(Lcn/manstep/phonemirrorBox/k0/e;Landroid/view/View;)Landroid/view/View;
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->a:Landroid/view/View;
    const v1, 2131296544
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/e;->g(Lcn/manstep/phonemirrorBox/k0/e;Landroid/view/View;)Landroid/view/View;
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/k0/e;->d(Lcn/manstep/phonemirrorBox/k0/e;)Landroid/view/View;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    invoke-virtual { p1, v0 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/k0/e;->f(Lcn/manstep/phonemirrorBox/k0/e;)Landroid/view/View;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    invoke-virtual { p1, v0 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public a()Lcn/manstep/phonemirrorBox/k0/e;
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->a:Landroid/view/View;
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCancelable(Z)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    return-object v0
.end method

.method public b(I)Lcn/manstep/phonemirrorBox/k0/e$a;
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e$a;->b:Lcn/manstep/phonemirrorBox/k0/e;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/k0/e;->a(Lcn/manstep/phonemirrorBox/k0/e;)Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/widget/TextView;->setText(I)V
    return-object p0
.end method
