.class Lcn/manstep/phonemirrorBox/MainActivity$s$a;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/util/p$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity$s;->onClick(Landroid/view/View;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/k0/f;

.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity$s;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity$s;Lcn/manstep/phonemirrorBox/k0/f;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->b:Lcn/manstep/phonemirrorBox/MainActivity$s;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()V
  .registers 1
    return-void
.end method

.method public b(Ljava/lang/String;)V
  .registers 3
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/k0/f;->m()V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    const v0, 2131689706
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/k0/f;->k(I)V
    return-void
.end method

.method public c(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L2 .. :L4 } :L5
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->b:Lcn/manstep/phonemirrorBox/MainActivity$s;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/MainActivity$s;->d:Ljava/lang/String;
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L6
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->b:Lcn/manstep/phonemirrorBox/MainActivity$s;
    iget-boolean p1, p1, Lcn/manstep/phonemirrorBox/MainActivity$s;->c:Z
    const/4 v0, 0
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-virtual { p1 }, Landroid/app/Dialog;->dismiss()V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->b:Lcn/manstep/phonemirrorBox/MainActivity$s;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/MainActivity$s;->e:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-virtual { p1 }, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object p1
    new-instance v1, Lcn/manstep/phonemirrorBox/MainActivity$s$a$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$s$a$a;-><init>(Lcn/manstep/phonemirrorBox/MainActivity$s$a;)V
    invoke-static { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/k0/a;->D2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Z)V
    goto/16 :L7
  :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-nez p1, :L1
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-virtual { p1 }, Landroid/app/Dialog;->dismiss()V
    return-void
  :L1
  .line 7
    new-instance p1, Ljava/io/File;
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/b0;->m()Lcn/manstep/phonemirrorBox/util/b0;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/util/b0;->l()Ljava/lang/String;
    move-result-object v1
    invoke-direct { p1, v1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 8
    invoke-virtual { p1 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L7
    invoke-virtual { p1 }, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :L7
  :L2
  .line 9
    new-instance v1, Ljava/io/FileInputStream;
    invoke-direct { v1, p1 }, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
  .line 10
    invoke-virtual { v1 }, Ljava/io/InputStream;->available()I
    move-result p1
  .line 11
    new-array v2, p1, [B
  .line 12
    invoke-virtual { v1, v2, v0, p1 }, Ljava/io/InputStream;->read([BII)I
    move-result v0
  .line 13
    invoke-virtual { v1 }, Ljava/io/InputStream;->close()V
    if-ne v0, p1, :L7
    const-string p1, "/tmp/Auto_Box_Update.img\u0000"
  .line 14
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L3
  .line 15
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0, p1, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z
    move-result p1
    if-eqz p1, :L7
  .line 16
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    new-instance v0, Lcn/manstep/phonemirrorBox/MainActivity$s$a$b;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$s$a$b;-><init>(Lcn/manstep/phonemirrorBox/MainActivity$s$a;)V
    const-wide/16 v1, 1000
    invoke-virtual { p1, v0, v1, v2 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    goto :L7
  :L3
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    invoke-virtual { p1 }, Landroid/app/Dialog;->dismiss()V
  :L4
    goto :L7
  :L5
    move-exception p1
  .line 18
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,upgradeBox: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    goto :L7
  :L6
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->b:Lcn/manstep/phonemirrorBox/MainActivity$s;
    iget-object p1, p1, Lcn/manstep/phonemirrorBox/MainActivity$s;->d:Ljava/lang/String;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->b(Ljava/lang/String;)V
  :L7
    return-void
.end method

.method public d(J)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    long-to-int p2, p1
    invoke-virtual { v0, p2 }, Lcn/manstep/phonemirrorBox/k0/f;->l(I)V
    return-void
.end method

.method public e(J)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->a:Lcn/manstep/phonemirrorBox/k0/f;
    long-to-int p2, p1
    invoke-virtual { v0, p2 }, Lcn/manstep/phonemirrorBox/k0/f;->j(I)V
    return-void
.end method
