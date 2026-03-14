.class Landroidx/appcompat/app/AlertController$f$c;
.super Ljava/lang/Object;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/app/AlertController$f;->b(Landroidx/appcompat/app/AlertController;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/app/AlertController;

.field final synthetic c:Landroidx/appcompat/app/AlertController$f;

.method constructor <init>(Landroidx/appcompat/app/AlertController$f;Landroidx/appcompat/app/AlertController;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$f$c;->c:Landroidx/appcompat/app/AlertController$f;
    iput-object p2, p0, Landroidx/appcompat/app/AlertController$f$c;->b:Landroidx/appcompat/app/AlertController;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/widget/AdapterView<",
      "*>;",
      "Landroid/view/View;",
      "IJ)V"
    }
  .end annotation
  .registers 6
  .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$f$c;->c:Landroidx/appcompat/app/AlertController$f;
    iget-object p1, p1, Landroidx/appcompat/app/AlertController$f;->x:Landroid/content/DialogInterface$OnClickListener;
    iget-object p2, p0, Landroidx/appcompat/app/AlertController$f$c;->b:Landroidx/appcompat/app/AlertController;
    iget-object p2, p2, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/h;
    invoke-interface { p1, p2, p3 }, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
  .line 2
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$f$c;->c:Landroidx/appcompat/app/AlertController$f;
    iget-boolean p1, p1, Landroidx/appcompat/app/AlertController$f;->H:Z
    if-nez p1, :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$f$c;->b:Landroidx/appcompat/app/AlertController;
    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/h;
    invoke-virtual { p1 }, Landroidx/appcompat/app/h;->dismiss()V
  :L0
    return-void
.end method
