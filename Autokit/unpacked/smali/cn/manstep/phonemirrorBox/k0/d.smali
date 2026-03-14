.class public Lcn/manstep/phonemirrorBox/k0/d;
.super Landroid/app/Dialog;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/k0/d$a;
  }
.end annotation

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.method public constructor <init>(Landroid/content/Context;I)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/k0/d;Landroid/widget/TextView;)Landroid/widget/TextView;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d;->b:Landroid/widget/TextView;
    return-object p1
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/k0/d;)Landroid/widget/TextView;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/d;->c:Landroid/widget/TextView;
    return-object p0
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/k0/d;Landroid/widget/TextView;)Landroid/widget/TextView;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d;->c:Landroid/widget/TextView;
    return-object p1
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/k0/d;Landroid/view/View;)Landroid/view/View;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d;->e:Landroid/view/View;
    return-object p1
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/k0/d;Landroid/view/View;)Landroid/view/View;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/d;->d:Landroid/view/View;
    return-object p1
.end method

.method public f()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d;->e:Landroid/view/View;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/view/View;->setEnabled(Z)V
    return-void
.end method

.method public g()Landroid/view/View;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d;->e:Landroid/view/View;
    return-object v0
.end method

.method public h()Landroid/view/View;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/d;->d:Landroid/view/View;
    return-object v0
.end method
