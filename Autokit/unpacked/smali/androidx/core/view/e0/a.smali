.class public final Landroidx/core/view/e0/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"

.field private final b:I

.field private final c:Landroidx/core/view/e0/c;

.field private final d:I

.method public constructor <init>(ILandroidx/core/view/e0/c;I)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroid/text/style/ClickableSpan;-><init>()V
  .line 2
    iput p1, p0, Landroidx/core/view/e0/a;->b:I
  .line 3
    iput-object p2, p0, Landroidx/core/view/e0/a;->c:Landroidx/core/view/e0/c;
  .line 4
    iput p3, p0, Landroidx/core/view/e0/a;->d:I
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    new-instance p1, Landroid/os/Bundle;
    invoke-direct { p1 }, Landroid/os/Bundle;-><init>()V
  .line 2
    iget v0, p0, Landroidx/core/view/e0/a;->b:I
    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  .line 3
    iget-object v0, p0, Landroidx/core/view/e0/a;->c:Landroidx/core/view/e0/c;
    iget v1, p0, Landroidx/core/view/e0/a;->d:I
    invoke-virtual { v0, v1, p1 }, Landroidx/core/view/e0/c;->N(ILandroid/os/Bundle;)Z
    return-void
.end method
