.class Lcn/manstep/phonemirrorBox/MainActivity$t;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity;->l1(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/manstep/phonemirrorBox/MainActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;ZLjava/lang/String;)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->d:Lcn/manstep/phonemirrorBox/MainActivity;
    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->b:Z
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->c:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->b:Z
    if-eqz p1, :L0
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->d:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->y0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->b:Z
    if-eqz v0, :L1
    const-string v0, "AppLatestVer"
    goto :L2
  :L1
    const-string v0, "BoxLatestVer"
  :L2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$t;->c:Ljava/lang/String;
    invoke-virtual { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
    return-void
.end method
