.class Lcn/manstep/phonemirrorBox/MainActivity$l;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity;->g1()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$l;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .catch Landroid/content/ActivityNotFoundException; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$l;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    const-string v0, "com.huawei.security.privilegemanager"
    const-string v1, "com.huawei.security.enhanced.permission.ui.activity.MainActivity"
    invoke-static { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/util/f;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
  :L1
    goto :L3
  :L2
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$l;->b:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/MainActivity;->w0(Lcn/manstep/phonemirrorBox/MainActivity;)V
  :L3
    return-void
.end method
