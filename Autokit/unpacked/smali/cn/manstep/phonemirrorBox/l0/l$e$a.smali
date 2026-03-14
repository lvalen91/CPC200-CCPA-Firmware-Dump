.class Lcn/manstep/phonemirrorBox/l0/l$e$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/l$e;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcn/manstep/phonemirrorBox/l0/l$e;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l$e;Ljava/io/File;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$e$a;->c:Lcn/manstep/phonemirrorBox/l0/l$e;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/l$e$a;->b:Ljava/io/File;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$e$a;->b:Ljava/io/File;
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$e$a;->c:Lcn/manstep/phonemirrorBox/l0/l$e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v0
    const-string v2, "\u64ad\u653e\u5931\u8d25\uff1a\u5f55\u97f3\u6587\u4ef6\u4e0d\u5b58\u5728\uff01"
    invoke-static { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$e$a;->c:Lcn/manstep/phonemirrorBox/l0/l$e;
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/l0/l$e;->f:Lcn/manstep/phonemirrorBox/l0/l;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/l;->C2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/l0/l$p;
    move-result-object v0
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->sendEmptyMessage(I)Z
    return-void
.end method
