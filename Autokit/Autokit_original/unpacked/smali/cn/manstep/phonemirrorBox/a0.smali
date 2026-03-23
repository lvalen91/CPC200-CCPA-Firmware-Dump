.class public Lcn/manstep/phonemirrorBox/a0;
.super Lcn/manstep/phonemirrorBox/c;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.source "SourceFile"

.field private b:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroidx/fragment/app/Fragment;",
      ">;"
    }
  .end annotation
.end field

.field private c:Lcn/manstep/phonemirrorBox/k0/f;

.field private d:Lcn/manstep/phonemirrorBox/c$a;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.method public constructor <init>(Lcn/manstep/phonemirrorBox/z;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/c;-><init>()V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/a0;->b:Ljava/lang/ref/WeakReference;
  .line 3
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/a0;->d:Lcn/manstep/phonemirrorBox/c$a;
    return-void
.end method

.method static synthetic p(Lcn/manstep/phonemirrorBox/a0;)Lcn/manstep/phonemirrorBox/c$a;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/a0;->d:Lcn/manstep/phonemirrorBox/c$a;
    return-object p0
.end method

.method private q(Landroid/view/View;)V
  .registers 7
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "MicGain"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
    const v1, 2131296635
  .line 2
    invoke-virtual { p1, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/TextView;
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/a0;->e:Landroid/widget/TextView;
    if-nez v1, :L0
    return-void
  :L0
  .line 3
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, ""
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "db"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, v3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v1, 2131296633
  .line 4
    invoke-virtual { p1, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/LinearLayout;
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/a0;->f:Landroid/widget/LinearLayout;
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v3, "MicType"
    invoke-virtual { v1, v3, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
    const/4 v2, 1
    if-ne v1, v2, :L1
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/a0;->f:Landroid/widget/LinearLayout;
    const/16 v2, 8
    invoke-virtual { v1, v2 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  :L1
    const v1, 2131296636
  .line 7
    invoke-virtual { p1, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/SeekBar;
  .line 8
    invoke-virtual { p1, p0 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
  .line 9
    invoke-virtual { p1, v0 }, Landroid/widget/SeekBar;->setProgress(I)V
    const/16 v0, 50
  .line 10
    invoke-virtual { p1, v0 }, Landroid/widget/SeekBar;->setMax(I)V
    return-void
.end method

.method public a()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/a0;->c:Lcn/manstep/phonemirrorBox/k0/f;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/k0/f;->cancel()V
  :L0
    return-void
.end method

.method public b()V
  .registers 4
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/p;
    invoke-direct { v0 }, Lcn/manstep/phonemirrorBox/l0/p;-><init>()V
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/a0;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/Fragment;
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;
    move-result-object v1
    const v2, 2131296606
    invoke-virtual { v1, v2, v0 }, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    invoke-virtual { v1 }, Landroidx/fragment/app/w;->h()I
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
  .registers 6
  .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v1
    const-string v2, "yyyy-MM-dd HH:mm:ss"
    invoke-direct { v0, v2, v1 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
  .line 2
    new-instance v1, Ljava/util/Date;
    invoke-direct { v1 }, Ljava/util/Date;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0
  .line 3
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
    const-string v2, "uuid"
  .line 4
    invoke-interface { v1, v2, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string p1, "feedbackInfo"
  .line 5
    invoke-interface { v1, p1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string p1, "feedDate"
  .line 6
    invoke-interface { v1, p1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 7
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->B:Z
    if-eqz p1, :L0
  .line 8
    new-instance p1, Lcn/manstep/phonemirrorBox/o;
    invoke-direct { p1 }, Lcn/manstep/phonemirrorBox/o;-><init>()V
  .line 9
    invoke-virtual { p1, v1 }, Lcn/manstep/phonemirrorBox/o;->b(Ljava/util/Map;)V
  :L0
    return-void
.end method

.method public d(Landroid/view/View;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/a0;->q(Landroid/view/View;)V
    return-void
.end method

.method public h(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/a0;->c:Lcn/manstep/phonemirrorBox/k0/f;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/k0/f;->j(I)V
  :L0
    return-void
.end method

.method public i(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/a0;->c:Lcn/manstep/phonemirrorBox/k0/f;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/k0/f;->l(I)V
  :L0
    return-void
.end method

.method public j(Landroid/app/Activity;)V
  .registers 8
    if-nez p1, :L0
    return-void
  :L0
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/x;->a:[Ljava/lang/String;
  .line 2
    invoke-virtual { p1 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131689790
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    aput-object v1, v0, v2
  .line 3
    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct { v1, p1 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v3, 2131689791
  .line 4
    invoke-static { p1, v3 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, v3 }, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const/4 v3, 1
    new-array v3, v3, [I
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v4
    const-string v5, "LanguageID"
    invoke-virtual { v4, v5, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v4
    aput v4, v3, v2
  .line 6
    aget v4, v3, v2
    new-instance v5, Lcn/manstep/phonemirrorBox/a0$c;
    invoke-direct { v5, p0, v3 }, Lcn/manstep/phonemirrorBox/a0$c;-><init>(Lcn/manstep/phonemirrorBox/a0;[I)V
    invoke-virtual { v1, v0, v4, v5 }, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const v0, 2131689625
  .line 7
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v0
    const/4 v4, 0
    invoke-virtual { v1, v0, v4 }, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const v0, 2131689621
  .line 8
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0, v4 }, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
  .line 9
    invoke-virtual { v1, v2 }, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
  .line 10
    invoke-virtual { v1 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v0
  .line 11
    invoke-virtual { v0, v2 }, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
  .line 12
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->show()V
    const/4 v2, -1
  .line 13
    invoke-virtual { v0, v2 }, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
    move-result-object v2
    new-instance v4, Lcn/manstep/phonemirrorBox/a0$d;
    invoke-direct { v4, p0, v3, v0, p1 }, Lcn/manstep/phonemirrorBox/a0$d;-><init>(Lcn/manstep/phonemirrorBox/a0;[ILandroid/app/AlertDialog;Landroid/app/Activity;)V
    invoke-virtual { v2, v4 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/4 v2, -2
  .line 14
    invoke-virtual { v0, v2 }, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
    move-result-object v2
    new-instance v3, Lcn/manstep/phonemirrorBox/a0$e;
    invoke-direct { v3, p0, v0 }, Lcn/manstep/phonemirrorBox/a0$e;-><init>(Lcn/manstep/phonemirrorBox/a0;Landroid/app/AlertDialog;)V
    invoke-virtual { v2, v3 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v0, 2131689891
  .line 15
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object p1
    new-instance v0, Lcn/manstep/phonemirrorBox/a0$f;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/a0$f;-><init>(Lcn/manstep/phonemirrorBox/a0;)V
    invoke-virtual { v1, p1, v0 }, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    return-void
.end method

.method public k(Z)V
  .registers 2
    return-void
.end method

.method public l(Landroidx/fragment/app/n;III)V
  .registers 7
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/a0$a;
    invoke-direct { v0, p0, p4 }, Lcn/manstep/phonemirrorBox/a0$a;-><init>(Lcn/manstep/phonemirrorBox/a0;I)V
    new-instance v1, Lcn/manstep/phonemirrorBox/a0$b;
    invoke-direct { v1, p0, p4 }, Lcn/manstep/phonemirrorBox/a0$b;-><init>(Lcn/manstep/phonemirrorBox/a0;I)V
    invoke-static { p1, p2, p3, v0, v1 }, Lcn/manstep/phonemirrorBox/k0/a;->A2(Landroidx/fragment/app/n;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public o()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/a0;->c:Lcn/manstep/phonemirrorBox/k0/f;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/f$b;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/a0;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/Fragment;
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/f$b;-><init>(Landroid/content/Context;)V
    const v1, 2131689700
  .line 3
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/f$b;->d(I)Lcn/manstep/phonemirrorBox/k0/f$b;
    const v1, 2131689708
  .line 4
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/f$b;->c(I)Lcn/manstep/phonemirrorBox/k0/f$b;
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/k0/f$b;->b()Lcn/manstep/phonemirrorBox/k0/f;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/a0;->c:Lcn/manstep/phonemirrorBox/k0/f;
    const/4 v1, 0
  .line 6
    invoke-virtual { v0, v1 }, Landroid/app/Dialog;->setCancelable(Z)V
  :L0
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/a0;->c:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-virtual { v0 }, Landroid/app/Dialog;->show()V
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/widget/SeekBar;->getId()I
    move-result p3
    const v0, 2131296636
    if-ne p3, v0, :L1
  .line 2
    rem-int/lit8 p3, p2, 2
    if-eqz p3, :L0
    add-int/lit8 p2, p2, 1
  .line 3
    invoke-virtual { p1, p2 }, Landroid/widget/SeekBar;->setProgress(I)V
    return-void
  :L0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    const-string v0, "MicGain"
    invoke-virtual { p1, v0, p3 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0;->e:Landroid/widget/TextView;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, ""
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, "db"
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
  .registers 2
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
  .registers 2
    return-void
.end method
