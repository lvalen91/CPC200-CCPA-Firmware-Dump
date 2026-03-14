.class Lcn/manstep/phonemirrorBox/MainActivity$z;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Lcn/manstep/phonemirrorBox/MainActivity;

.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$z;->a:Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "MainActivity,onCreate,onSystemUiVisibilityChange: visibility="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    and-int/lit8 v2, p1, 4
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    and-int/lit16 p1, p1, 1024
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-eqz v2, :L0
    if-nez p1, :L1
  :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/j;->c()Lcn/manstep/phonemirrorBox/util/j;
    move-result-object p1
    const-string v0, "hideNavigationBar"
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/j;->b(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/j;
    const-wide/16 v1, 3000
    new-instance v3, Lcn/manstep/phonemirrorBox/MainActivity$z$a;
    invoke-direct { v3, p0 }, Lcn/manstep/phonemirrorBox/MainActivity$z$a;-><init>(Lcn/manstep/phonemirrorBox/MainActivity$z;)V
    invoke-virtual { p1, v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/util/j;->e(Ljava/lang/String;JLjava/lang/Runnable;)Lcn/manstep/phonemirrorBox/util/j;
  :L1
    return-void
.end method
