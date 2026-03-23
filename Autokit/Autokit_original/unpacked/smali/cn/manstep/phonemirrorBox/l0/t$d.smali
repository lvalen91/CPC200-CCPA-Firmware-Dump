.class Lcn/manstep/phonemirrorBox/l0/t$d;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/l0/t;->e1()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/t;

.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/t;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t$d;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/t$d;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/t;->i2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/i0/w;
    move-result-object v0
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;
    invoke-virtual { v0 }, Landroid/widget/EditText;->requestFocus()Z
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/t$d;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/l0/t;->i2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/i0/w;
    move-result-object v0
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/t$d;->b:Lcn/manstep/phonemirrorBox/l0/t;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/l0/t;->i2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/i0/w;
    move-result-object v1
    iget-object v1, v1, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;
    invoke-virtual { v1 }, Landroid/widget/EditText;->length()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/EditText;->setSelection(I)V
  :L1
    goto :L3
  :L2
    move-exception v0
  .line 3
    invoke-virtual { v0 }, Ljava/lang/Exception;->printStackTrace()V
  :L3
    return-void
.end method
