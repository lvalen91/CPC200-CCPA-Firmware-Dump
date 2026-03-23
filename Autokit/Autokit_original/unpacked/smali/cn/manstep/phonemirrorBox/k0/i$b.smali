.class Lcn/manstep/phonemirrorBox/k0/i$b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/k0/i;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/i;

.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/i;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/k0/i;->v2(Lcn/manstep/phonemirrorBox/k0/i;)Lcn/manstep/phonemirrorBox/k0/i$e;
    move-result-object p1
    if-eqz p1, :L2
  .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;
    const-string v1, "HH:mm"
    invoke-direct { p1, v1, v0 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
  .line 3
    new-instance v0, Ljava/util/Date;
    invoke-direct { v0 }, Ljava/util/Date;-><init>()V
    invoke-virtual { p1, v0 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object p1
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/k0/i;->w2(Lcn/manstep/phonemirrorBox/k0/i;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/k0/i;->x2(Lcn/manstep/phonemirrorBox/k0/i;Ljava/lang/String;)Ljava/lang/String;
  :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/k0/i;->y2(Lcn/manstep/phonemirrorBox/k0/i;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L1
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/k0/i;->z2(Lcn/manstep/phonemirrorBox/k0/i;Ljava/lang/String;)Ljava/lang/String;
  :L1
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/k0/i;->v2(Lcn/manstep/phonemirrorBox/k0/i;)Lcn/manstep/phonemirrorBox/k0/i$e;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/k0/i;->w2(Lcn/manstep/phonemirrorBox/k0/i;)Ljava/lang/String;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/k0/i;->y2(Lcn/manstep/phonemirrorBox/k0/i;)Ljava/lang/String;
    move-result-object v1
    invoke-interface { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/k0/i$e;->a(Ljava/lang/String;Ljava/lang/String;)V
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;
    invoke-virtual { p1 }, Landroidx/fragment/app/d;->k2()V
  :L2
    return-void
.end method
