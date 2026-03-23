.class public Lcn/manstep/phonemirrorBox/j;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;IIII)Landroid/view/ViewGroup$LayoutParams;
  .registers 8
  .line 1
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "AutoBoxMirrorViewUtil,onRotationChanged: screen:"
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, "x"
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", video:"
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, p4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, p5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoBoxMirrorViewUtil,onRotationChanged: "
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 p0, -1
  .line 3
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
  .line 4
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    add-int/lit8 p0, p3, 50
    const v1, 65534
    if-le p2, p0, :L1
    if-ge p4, p5, :L0
    mul-int p4, p4, p3
  .line 5
    div-int/2addr p4, p5
    and-int p0, p4, v1
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    goto :L3
  :L0
  .line 6
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    mul-int p3, p3, p4
  .line 7
    div-int/2addr p3, p5
    and-int p0, p3, v1
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    if-le p0, p2, :L3
  .line 8
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    int-to-float p0, p2
    int-to-float p2, p4
    div-float/2addr p0, p2
    int-to-float p2, p5
    mul-float p0, p0, p2
    float-to-int p0, p0
    and-int/2addr p0, v1
  .line 9
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    goto :L3
  :L1
    if-le p4, p5, :L2
    int-to-float p0, p2
    int-to-float p2, p4
    div-float/2addr p0, p2
    int-to-float p2, p5
    mul-float p0, p0, p2
    float-to-int p0, p0
    and-int/2addr p0, v1
  .line 10
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    goto :L3
  :L2
  .line 11
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    mul-int p3, p3, p4
  .line 12
    div-int/2addr p3, p5
    and-int p0, p3, v1
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    if-le p0, p2, :L3
  .line 13
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    int-to-float p0, p2
    int-to-float p2, p4
    div-float/2addr p0, p2
    int-to-float p2, p5
    mul-float p0, p0, p2
    float-to-int p0, p0
    and-int/2addr p0, v1
  .line 14
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
  :L3
  .line 15
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AutoBoxMirrorViewUtil,onRotationChanged: Display "
    invoke-virtual { p0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    invoke-virtual { p0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    invoke-virtual { p0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-object p1
.end method

.method public static b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;IIII)Landroid/view/ViewGroup$LayoutParams;
  .registers 10
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p0
    const-string v0, "ImageScale"
    const/4 v1, 0
    invoke-virtual { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result p0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoBoxMirrorViewUtil,ReSizeView: screen:"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "x"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ", video:"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, " "
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, -1
  .line 3
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
  .line 4
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    add-int/lit8 v0, p3, 52
    const/4 v3, 1
    if-le p2, v0, :L0
    const/4 v1, 1
  :L0
    const v0, 65534
    if-eqz v1, :L2
    if-ge p4, p5, :L1
    mul-int p4, p4, p3
  .line 5
    div-int/2addr p4, p5
    and-int p0, p4, v0
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    goto :L4
  :L1
    if-ne p0, v3, :L4
  .line 6
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    mul-int p3, p3, p4
  .line 7
    div-int/2addr p3, p5
    and-int p0, p3, v0
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    if-le p0, p2, :L4
  .line 8
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    int-to-float p0, p2
    int-to-float p2, p4
    div-float/2addr p0, p2
    int-to-float p2, p5
    mul-float p0, p0, p2
    float-to-int p0, p0
    and-int/2addr p0, v0
  .line 9
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    goto :L4
  :L2
    if-le p4, p5, :L3
    if-ne p0, v3, :L4
    int-to-float p0, p2
    int-to-float p2, p4
    div-float/2addr p0, p2
    int-to-float p2, p5
    mul-float p0, p0, p2
    float-to-int p0, p0
    and-int/2addr p0, v0
  .line 10
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    goto :L4
  :L3
    if-ne p0, v3, :L4
  .line 11
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    mul-int p3, p3, p4
  .line 12
    div-int/2addr p3, p5
    and-int p0, p3, v0
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    if-le p0, p2, :L4
  .line 13
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    int-to-float p0, p2
    int-to-float p2, p4
    div-float/2addr p0, p2
    int-to-float p2, p5
    mul-float p0, p0, p2
    float-to-int p0, p0
    and-int/2addr p0, v0
  .line 14
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
  :L4
  .line 15
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "AutoBoxMirrorViewUtil,ReSizeView: Display "
    invoke-virtual { p0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    invoke-virtual { p0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    invoke-virtual { p0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-object p1
.end method

.method public static c(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->c()I
    move-result v0
    if-lez v0, :L0
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    if-lt v1, v2, :L0
  .line 3
    new-instance v1, Lcn/manstep/phonemirrorBox/j$a;
    invoke-direct { v1, p0, v0 }, Lcn/manstep/phonemirrorBox/j$a;-><init>(Landroid/view/View;I)V
    invoke-virtual { p0, v1 }, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
  :L0
    return-void
.end method
