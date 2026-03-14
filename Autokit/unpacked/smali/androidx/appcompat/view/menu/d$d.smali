.class Landroidx/appcompat/view/menu/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/view/menu/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "d"
.end annotation

.field public final a:Landroidx/appcompat/widget/j0;

.field public final b:Landroidx/appcompat/view/menu/g;

.field public final c:I

.method public constructor <init>(Landroidx/appcompat/widget/j0;Landroidx/appcompat/view/menu/g;I)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
  .line 3
    iput-object p2, p0, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/g;
  .line 4
    iput p3, p0, Landroidx/appcompat/view/menu/d$d;->c:I
    return-void
.end method

.method public a()Landroid/widget/ListView;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$d;->a:Landroidx/appcompat/widget/j0;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/h0;->l()Landroid/widget/ListView;
    move-result-object v0
    return-object v0
.end method
