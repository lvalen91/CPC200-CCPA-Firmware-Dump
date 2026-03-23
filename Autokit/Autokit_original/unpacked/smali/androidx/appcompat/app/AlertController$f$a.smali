.class Landroidx/appcompat/app/AlertController$f$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/app/AlertController$f;->b(Landroidx/appcompat/app/AlertController;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroid/widget/ArrayAdapter<",
    "Ljava/lang/CharSequence;",
    ">;"
  }
.end annotation

.field final synthetic b:Landroidx/appcompat/app/AlertController$RecycleListView;

.field final synthetic c:Landroidx/appcompat/app/AlertController$f;

.method constructor <init>(Landroidx/appcompat/app/AlertController$f;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V
  .registers 7
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$f$a;->c:Landroidx/appcompat/app/AlertController$f;
    iput-object p6, p0, Landroidx/appcompat/app/AlertController$f$a;->b:Landroidx/appcompat/app/AlertController$RecycleListView;
    invoke-direct { p0, p2, p3, p4, p5 }, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 5
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p2
  .line 2
    iget-object p3, p0, Landroidx/appcompat/app/AlertController$f$a;->c:Landroidx/appcompat/app/AlertController$f;
    iget-object p3, p3, Landroidx/appcompat/app/AlertController$f;->F:[Z
    if-eqz p3, :L0
  .line 3
    aget-boolean p3, p3, p1
    if-eqz p3, :L0
  .line 4
    iget-object p3, p0, Landroidx/appcompat/app/AlertController$f$a;->b:Landroidx/appcompat/app/AlertController$RecycleListView;
    const/4 v0, 1
    invoke-virtual { p3, p1, v0 }, Landroid/widget/ListView;->setItemChecked(IZ)V
  :L0
    return-object p2
.end method
