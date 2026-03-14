.class Lcn/manstep/phonemirrorBox/MainActivity$e$a;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity$e;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity$e;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    const-string v1, "ATP"
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/MyApplication;->e()V
    return-void
.end method
