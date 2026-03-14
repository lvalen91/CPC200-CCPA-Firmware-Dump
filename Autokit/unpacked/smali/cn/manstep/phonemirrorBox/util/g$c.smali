.class public Lcn/manstep/phonemirrorBox/util/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/util/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "c"
.end annotation

.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/g$c;->c:Z
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/g$c;->d:Z
  .line 4
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/g$c;->a:Landroid/content/Context;
    return-void
.end method

.method public a(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/util/g$c;->d:Z
    return-object p0
.end method

.method public b(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/util/g$c;->c:Z
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/g$c;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/g$c;->b:Ljava/lang/String;
    return-object p0
.end method

.method public d()Lcn/manstep/phonemirrorBox/util/g;
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/g$c;->a:Landroid/content/Context;
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
    const v1, 2131492905
    const/4 v2, 0
  .line 2
    invoke-virtual { v0, v1, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    move-result-object v0
    const v1, 2131296724
  .line 3
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/ProgressBar;
    const/16 v2, 8
  .line 4
    invoke-virtual { v1, v2 }, Landroid/widget/ProgressBar;->setVisibility(I)V
    const v1, 2131296869
  .line 5
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/TextView;
  .line 6
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/g$c;->b:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 7
    new-instance v1, Lcn/manstep/phonemirrorBox/util/g;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/g$c;->a:Landroid/content/Context;
    const v3, 2131755275
    invoke-direct { v1, v2, v3 }, Lcn/manstep/phonemirrorBox/util/g;-><init>(Landroid/content/Context;I)V
  .line 8
    invoke-virtual { v1, v0 }, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
  .line 9
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/g$c;->c:Z
    invoke-virtual { v1, v0 }, Landroid/app/Dialog;->setCancelable(Z)V
  .line 10
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/util/g$c;->d:Z
    invoke-virtual { v1, v0 }, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
    return-object v1
.end method
