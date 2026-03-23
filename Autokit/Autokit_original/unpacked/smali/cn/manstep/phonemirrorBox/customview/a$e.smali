.class Lcn/manstep/phonemirrorBox/customview/a$e;
.super Ljava/lang/Object;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcn/manstep/phonemirrorBox/customview/a;->E()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lcn/manstep/phonemirrorBox/customview/a;

.method constructor <init>(Lcn/manstep/phonemirrorBox/customview/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$e;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
  .registers 7
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$e;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/customview/a;->C(Lcn/manstep/phonemirrorBox/customview/a;)Landroid/widget/TextView;
    move-result-object p1
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object p3
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Object;
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const/4 v2, 0
    aput-object v1, v0, v2
    const-string v1, "%d"
    invoke-static { p3, v1, v0 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$e;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/customview/a;->A(Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a$g;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$e;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/customview/a;->B(Lcn/manstep/phonemirrorBox/customview/a;)Ljava/util/Map;
    move-result-object p1
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/customview/a$e;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/customview/a;->u(Lcn/manstep/phonemirrorBox/customview/a;)I
    move-result p3
    invoke-static { p3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p3
    invoke-interface { p1, p3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/customview/a$f;
    iput p2, p1, Lcn/manstep/phonemirrorBox/customview/a$f;->a:I
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$e;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/customview/a;->A(Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a$g;
    move-result-object p1
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/customview/a$e;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/customview/a;->B(Lcn/manstep/phonemirrorBox/customview/a;)Ljava/util/Map;
    move-result-object p3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/customview/a$e;->b:Lcn/manstep/phonemirrorBox/customview/a;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/customview/a;->u(Lcn/manstep/phonemirrorBox/customview/a;)I
    move-result v0
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-interface { p3, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Lcn/manstep/phonemirrorBox/customview/a$f;
    iget-object p3, p3, Lcn/manstep/phonemirrorBox/customview/a$f;->b:Ljava/lang/String;
    invoke-interface { p1, p3, p2 }, Lcn/manstep/phonemirrorBox/customview/a$g;->b(Ljava/lang/String;I)V
  :L0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
  .registers 2
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
  .registers 2
    return-void
.end method
