.class final Landroidx/appcompat/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/textclassifier/TextClassifier;

.method constructor <init>(Landroid/widget/TextView;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-static { p1 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast p1, Landroid/widget/TextView;
    iput-object p1, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;
    return-void
.end method

.method public a()Landroid/view/textclassifier/TextClassifier;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->b:Landroid/view/textclassifier/TextClassifier;
    if-nez v0, :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;
  .line 3
    invoke-virtual { v0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v0
    const-class v1, Landroid/view/textclassifier/TextClassificationManager;
    invoke-virtual { v0, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0 }, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    move-result-object v0
    return-object v0
  :L0
  .line 5
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;
  :L1
    return-object v0
.end method

.method public b(Landroid/view/textclassifier/TextClassifier;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/v;->b:Landroid/view/textclassifier/TextClassifier;
    return-void
.end method
