.class Landroidx/appcompat/app/AlertController$f$b;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/app/AlertController$f;->b(Landroidx/appcompat/app/AlertController;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field private final b:I

.field private final c:I

.field final synthetic d:Landroidx/appcompat/app/AlertController$RecycleListView;

.field final synthetic e:Landroidx/appcompat/app/AlertController;

.field final synthetic f:Landroidx/appcompat/app/AlertController$f;

.method constructor <init>(Landroidx/appcompat/app/AlertController$f;Landroid/content/Context;Landroid/database/Cursor;ZLandroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V
  .registers 7
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$f$b;->f:Landroidx/appcompat/app/AlertController$f;
    iput-object p5, p0, Landroidx/appcompat/app/AlertController$f$b;->d:Landroidx/appcompat/app/AlertController$RecycleListView;
    iput-object p6, p0, Landroidx/appcompat/app/AlertController$f$b;->e:Landroidx/appcompat/app/AlertController;
    invoke-direct { p0, p2, p3, p4 }, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
  .line 2
    invoke-virtual { p0 }, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
    move-result-object p1
  .line 3
    iget-object p2, p0, Landroidx/appcompat/app/AlertController$f$b;->f:Landroidx/appcompat/app/AlertController$f;
    iget-object p2, p2, Landroidx/appcompat/app/AlertController$f;->L:Ljava/lang/String;
    invoke-interface { p1, p2 }, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    move-result p2
    iput p2, p0, Landroidx/appcompat/app/AlertController$f$b;->b:I
  .line 4
    iget-object p2, p0, Landroidx/appcompat/app/AlertController$f$b;->f:Landroidx/appcompat/app/AlertController$f;
    iget-object p2, p2, Landroidx/appcompat/app/AlertController$f;->M:Ljava/lang/String;
    invoke-interface { p1, p2 }, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/app/AlertController$f$b;->c:I
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
  .registers 5
    const p2, 16908308
  .line 1
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/CheckedTextView;
  .line 2
    iget p2, p0, Landroidx/appcompat/app/AlertController$f$b;->b:I
    invoke-interface { p3, p2 }, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V
  .line 3
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$f$b;->d:Landroidx/appcompat/app/AlertController$RecycleListView;
    invoke-interface { p3 }, Landroid/database/Cursor;->getPosition()I
    move-result p2
    iget v0, p0, Landroidx/appcompat/app/AlertController$f$b;->c:I
  .line 4
    invoke-interface { p3, v0 }, Landroid/database/Cursor;->getInt(I)I
    move-result p3
    const/4 v0, 1
    if-ne p3, v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 5
    invoke-virtual { p1, p2, v0 }, Landroid/widget/ListView;->setItemChecked(IZ)V
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 5
  .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$f$b;->f:Landroidx/appcompat/app/AlertController$f;
    iget-object p1, p1, Landroidx/appcompat/app/AlertController$f;->b:Landroid/view/LayoutInflater;
    iget-object p2, p0, Landroidx/appcompat/app/AlertController$f$b;->e:Landroidx/appcompat/app/AlertController;
    iget p2, p2, Landroidx/appcompat/app/AlertController;->M:I
    const/4 v0, 0
    invoke-virtual { p1, p2, p3, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
.end method
