.class final Landroidx/appcompat/widget/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/o0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "a"
.end annotation

.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/widget/ImageView;

.method public constructor <init>(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const v0, 16908308
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Landroidx/appcompat/widget/o0$a;->a:Landroid/widget/TextView;
    const v0, 16908309
  .line 3
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Landroidx/appcompat/widget/o0$a;->b:Landroid/widget/TextView;
    const v0, 16908295
  .line 4
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p0, Landroidx/appcompat/widget/o0$a;->c:Landroid/widget/ImageView;
    const v0, 16908296
  .line 5
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p0, Landroidx/appcompat/widget/o0$a;->d:Landroid/widget/ImageView;
  .line 6
    sget v0, Lc/a/f;->edit_query:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageView;
    iput-object p1, p0, Landroidx/appcompat/widget/o0$a;->e:Landroid/widget/ImageView;
    return-void
.end method
