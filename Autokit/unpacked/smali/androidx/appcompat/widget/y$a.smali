.class Landroidx/appcompat/widget/y$a;
.super Landroidx/appcompat/widget/y$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/y;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/y$c;-><init>()V
    return-void
.end method

.method a(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
  .registers 5
  .line 1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;
    const-string v1, "getTextDirectionHeuristic"
  .line 2
    invoke-static { p2, v1, v0 }, Landroidx/appcompat/widget/y;->r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/text/TextDirectionHeuristic;
  .line 3
    invoke-virtual { p1, p2 }, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    return-void
.end method
