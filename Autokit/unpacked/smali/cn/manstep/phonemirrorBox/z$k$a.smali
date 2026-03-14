.class Lcn/manstep/phonemirrorBox/z$k$a;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/p$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/z$k;->c(Ljava/lang/String;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/z$k;

.method constructor <init>(Lcn/manstep/phonemirrorBox/z$k;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z$k$a;->a:Lcn/manstep/phonemirrorBox/z$k;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 4
    const-string p1, "SettingsFragment,uploadLog:failure: box.log !!!"
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    sget-object p1, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$k$a;->a:Lcn/manstep/phonemirrorBox/z$k;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/z;->p2(Lcn/manstep/phonemirrorBox/z;)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$k$a;->a:Lcn/manstep/phonemirrorBox/z$k;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/z;->t2(Lcn/manstep/phonemirrorBox/z;)Landroid/widget/Button;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$k$a;->a:Lcn/manstep/phonemirrorBox/z$k;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    const v1, 2131689632
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$k$a;->a:Lcn/manstep/phonemirrorBox/z$k;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/z;->t2(Lcn/manstep/phonemirrorBox/z;)Landroid/widget/Button;
    move-result-object p1
    const/4 v0, 1
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setEnabled(Z)V
    return-void
.end method

.method public c(Ljava/lang/String;)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SettingsFragment,uploadLog:success: box.log "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$k$a;->a:Lcn/manstep/phonemirrorBox/z$k;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    sget-object v1, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    invoke-static { v0, p1, v1 }, Lcn/manstep/phonemirrorBox/z;->s2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method
