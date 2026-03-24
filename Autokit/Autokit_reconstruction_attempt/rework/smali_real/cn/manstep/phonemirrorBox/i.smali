.class public Lcn/manstep/phonemirrorBox/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field private g:Lcn/manstep/phonemirrorBox/h0/a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/i;->a:I

    .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/i;->b:I

    .line 4
    iput p1, p0, Lcn/manstep/phonemirrorBox/i;->c:I

    .line 5
    iput p1, p0, Lcn/manstep/phonemirrorBox/i;->d:I

    .line 6
    iput p1, p0, Lcn/manstep/phonemirrorBox/i;->e:I

    .line 7
    iput p1, p0, Lcn/manstep/phonemirrorBox/i;->f:I

    .line 8
    new-instance p1, Lcn/manstep/phonemirrorBox/h0/a;

    invoke-direct {p1}, Lcn/manstep/phonemirrorBox/h0/a;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i;->g:Lcn/manstep/phonemirrorBox/h0/a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i;->g:Lcn/manstep/phonemirrorBox/h0/a;

    const-string v1, "MoveEvent"

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/h0/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i;->g:Lcn/manstep/phonemirrorBox/h0/a;

    new-instance v2, Lcn/manstep/phonemirrorBox/i$a;

    invoke-direct {v2, p0, p1, p2}, Lcn/manstep/phonemirrorBox/i$a;-><init>(Lcn/manstep/phonemirrorBox/i;II)V

    const-string v1, "MoveEvent"

    const-wide/16 v3, 0x11

    const-wide/16 v5, 0x11

    invoke-virtual/range {v0 .. v6}, Lcn/manstep/phonemirrorBox/h0/a;->f(Ljava/lang/String;Ljava/lang/Runnable;JJ)V

    return-void
.end method

.method public c(Landroid/view/View;II)V
    .registers 15

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->m()Lcn/manstep/phonemirrorBox/util/x;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->a()Lcn/manstep/phonemirrorBox/util/x;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoBoxMirrorViewCommon,resizeAndroidAutoView: VideoSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/manstep/phonemirrorBox/i;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/manstep/phonemirrorBox/i;->f:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", MaxVideoSize:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", AndroidAutoSize:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoBoxMirrorViewCommon,resizeAndroidAutoView: screenWxH="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 5
    iget p3, p0, Lcn/manstep/phonemirrorBox/i;->e:I

    if-lez p3, :cond_1ef

    iget p3, p0, Lcn/manstep/phonemirrorBox/i;->f:I

    if-gtz p3, :cond_5c

    goto/16 :goto_1ef

    .line 6
    :cond_5c
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p3

    invoke-virtual {p3}, Lcn/manstep/phonemirrorBox/u;->T()Z

    move-result p3

    const-string v2, "AutoBoxMirrorViewCommon"

    if-eqz p3, :cond_93

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcn/manstep/phonemirrorBox/i;->d:I

    .line 8
    iput p1, p0, Lcn/manstep/phonemirrorBox/i;->c:I

    .line 9
    iget p1, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iput p1, p0, Lcn/manstep/phonemirrorBox/i;->a:I

    .line 10
    iget p2, p0, Lcn/manstep/phonemirrorBox/i;->f:I

    mul-int p1, p1, p2

    iget p2, p0, Lcn/manstep/phonemirrorBox/i;->e:I

    div-int/2addr p1, p2

    iput p1, p0, Lcn/manstep/phonemirrorBox/i;->b:I

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "resizeAndroidAutoView: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/i;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_93
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 13
    iget v4, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    iget v4, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resizeAndroidAutoView: start x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", left="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", top="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget v4, p0, Lcn/manstep/phonemirrorBox/i;->e:I

    iget v8, v1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    sub-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x2

    .line 17
    iget v8, p0, Lcn/manstep/phonemirrorBox/i;->f:I

    iget v9, v1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    if-eqz v4, :cond_10a

    if-eqz v8, :cond_10a

    .line 18
    invoke-static {}, Lcn/manstep/phonemirrorBox/c0;->i()Lcn/manstep/phonemirrorBox/c0;

    move-result-object v4

    iget v8, p0, Lcn/manstep/phonemirrorBox/i;->e:I

    iget v9, p0, Lcn/manstep/phonemirrorBox/i;->f:I

    invoke-virtual {v4, v8, v9}, Lcn/manstep/phonemirrorBox/c0;->g(II)Lcn/manstep/phonemirrorBox/util/x;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/manstep/phonemirrorBox/util/x;->n(Lcn/manstep/phonemirrorBox/util/x;)V

    .line 19
    iget v4, p0, Lcn/manstep/phonemirrorBox/i;->e:I

    iget v8, v1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    sub-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x2

    .line 20
    iget v8, p0, Lcn/manstep/phonemirrorBox/i;->f:I

    iget v9, v1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 21
    :cond_10a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resizeAndroidAutoView: androidAutoSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget v9, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    mul-int v4, v4, v9

    iget v9, v1, Lcn/manstep/phonemirrorBox/util/x;->b:I

    div-int/2addr v4, v9

    .line 23
    iget v9, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    mul-int v8, v8, v9

    iget v1, v1, Lcn/manstep/phonemirrorBox/util/x;->c:I

    div-int/2addr v8, v1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resizeAndroidAutoView: x="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    neg-int v1, v8

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setTop(I)V

    neg-int v1, v4

    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setLeft(I)V

    .line 27
    iput v8, p0, Lcn/manstep/phonemirrorBox/i;->d:I

    .line 28
    iput v4, p0, Lcn/manstep/phonemirrorBox/i;->c:I

    .line 29
    iget v9, v0, Lcn/manstep/phonemirrorBox/util/x;->b:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v9, v4

    iput v9, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    iget v0, v0, Lcn/manstep/phonemirrorBox/util/x;->c:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    iput v9, p0, Lcn/manstep/phonemirrorBox/i;->a:I

    .line 32
    iput v0, p0, Lcn/manstep/phonemirrorBox/i;->b:I

    if-ne v9, p2, :cond_16a

    int-to-float p2, v1

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 34
    :cond_16a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resizeAndroidAutoView: left="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/i;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/i;->d:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", surface="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/i;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/i;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", display="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/i;->a:I

    iget v1, p0, Lcn/manstep/phonemirrorBox/i;->c:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/manstep/phonemirrorBox/i;->b:I

    iget v1, p0, Lcn/manstep/phonemirrorBox/i;->d:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "resizeAndroidAutoView: end x="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ef
    :goto_1ef
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoBoxMirrorViewCommon{scaled_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scaled_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scaled_left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scaled_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/i;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
