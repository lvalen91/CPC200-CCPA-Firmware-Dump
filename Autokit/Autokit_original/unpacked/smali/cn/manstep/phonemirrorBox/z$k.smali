.class Lcn/manstep/phonemirrorBox/z$k;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/p$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/z;->Z2(Ljava/lang/String;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/util/p;

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lcn/manstep/phonemirrorBox/z;

.method constructor <init>(Lcn/manstep/phonemirrorBox/z;ZLjava/lang/String;Lcn/manstep/phonemirrorBox/util/p;Ljava/io/File;)V
  .registers 6
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/z$k;->a:Z
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/z$k;->b:Ljava/lang/String;
    iput-object p4, p0, Lcn/manstep/phonemirrorBox/z$k;->c:Lcn/manstep/phonemirrorBox/util/p;
    iput-object p5, p0, Lcn/manstep/phonemirrorBox/z$k;->d:Ljava/io/File;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 4
    const-string p1, "SettingsFragment,uploadLog:failure: app.log !!!"
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/z;->p2(Lcn/manstep/phonemirrorBox/z;)V
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/z;->t2(Lcn/manstep/phonemirrorBox/z;)Landroid/widget/Button;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    const v1, 2131689632
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/z;->t2(Lcn/manstep/phonemirrorBox/z;)Landroid/widget/Button;
    move-result-object p1
    const/4 v0, 1
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setEnabled(Z)V
    return-void
.end method

.method public c(Ljava/lang/String;)V
  .registers 10
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SettingsFragment,uploadLog:success: app.log "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/z$k;->a:Z
    if-eqz v0, :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    const/16 v3, 12
    invoke-virtual { v1, v2, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "_box.log"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z$k;->b:Ljava/lang/String;
    const-string v2, "box.log"
    invoke-static { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/z;->r2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    move-result-object v4
  .line 5
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z$k;->c:Lcn/manstep/phonemirrorBox/util/p;
    sget-object v6, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    new-instance v7, Lcn/manstep/phonemirrorBox/z$k$a;
    invoke-direct { v7, p0 }, Lcn/manstep/phonemirrorBox/z$k$a;-><init>(Lcn/manstep/phonemirrorBox/z$k;)V
    const-string v3, "/a/upload/log"
    invoke-virtual/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/util/p;->o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V
  :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z$k;->d:Ljava/io/File;
    invoke-virtual { v1 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, p1, v1 }, Lcn/manstep/phonemirrorBox/z;->s2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;Ljava/lang/String;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$k;->e:Lcn/manstep/phonemirrorBox/z;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/n;->b(Landroid/content/Context;)V
    return-void
.end method
