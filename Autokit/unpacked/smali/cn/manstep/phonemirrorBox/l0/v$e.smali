.class Lcn/manstep/phonemirrorBox/l0/v$e;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/v;->u2(Landroidx/appcompat/widget/SwitchCompat;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcn/manstep/phonemirrorBox/l0/v;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/v;[Ljava/lang/String;)V
  .registers 3
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$e;->c:Lcn/manstep/phonemirrorBox/l0/v;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/v$e;->b:[Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v0, "showRequestPermission"
    const/4 v1, 1
    invoke-virtual { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$e;->c:Lcn/manstep/phonemirrorBox/l0/v;
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v$e;->b:[Ljava/lang/String;
    const/16 v1, 1000
    invoke-static { p1, v0, v1 }, Landroidx/core/app/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V
    goto :L1
  :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$e;->c:Lcn/manstep/phonemirrorBox/l0/v;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/l0/v;->r2(Lcn/manstep/phonemirrorBox/l0/v;)V
  :L1
    return-void
.end method
