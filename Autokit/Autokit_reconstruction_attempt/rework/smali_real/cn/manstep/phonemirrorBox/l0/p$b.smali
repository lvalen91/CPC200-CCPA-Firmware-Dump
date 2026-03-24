.class Lcn/manstep/phonemirrorBox/l0/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/p;->r2(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcn/manstep/phonemirrorBox/l0/p;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/p;Landroid/widget/Button;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/p$b;->c:Lcn/manstep/phonemirrorBox/l0/p;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/p$b;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p$b;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    if-nez v0, :cond_c

    return-void

    .line 3
    :cond_c
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p$b;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/p$b;->b:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/p$b;->b:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getCompoundDrawablePadding()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/p$b;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/p$b;->c:Lcn/manstep/phonemirrorBox/l0/p;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 8
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/p$b;->b:Landroid/widget/Button;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v1, v3}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v3}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v0, v4, v0, v1}, Landroid/widget/Button;->setPadding(IIII)V

    :cond_53
    return-void
.end method
