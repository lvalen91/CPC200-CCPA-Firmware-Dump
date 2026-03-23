.class Landroidx/appcompat/widget/s$a;
.super Ljava/lang/Object;
.implements Landroidx/core/view/f0/b$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/appcompat/widget/s;->a(Landroid/view/View;)Landroidx/core/view/f0/b$c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroid/view/View;

.method constructor <init>(Landroid/view/View;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/s$a;->a:Landroid/view/View;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/core/view/f0/c;ILandroid/os/Bundle;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L4
  .registers 9
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 0
    const/4 v2, 1
    const/16 v3, 25
    if-lt v0, v3, :L5
    and-int/2addr p2, v2
    if-eqz p2, :L5
  :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/core/view/f0/c;->d()V
  :L1
  .line 3
    invoke-virtual { p1 }, Landroidx/core/view/f0/c;->e()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/view/inputmethod/InputContentInfo;
    if-nez p3, :L2
  .line 4
    new-instance p3, Landroid/os/Bundle;
    invoke-direct { p3 }, Landroid/os/Bundle;-><init>()V
    goto :L3
  :L2
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0, p3 }, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    move-object p3, v0
  :L3
    const-string v0, "androidx.core.view.extra.INPUT_CONTENT_INFO"
  .line 5
    invoke-virtual { p3, v0, p2 }, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    goto :L5
  :L4
    return v1
  :L5
  .line 6
    new-instance p2, Landroid/content/ClipData;
    invoke-virtual { p1 }, Landroidx/core/view/f0/c;->b()Landroid/content/ClipDescription;
    move-result-object v0
    new-instance v3, Landroid/content/ClipData$Item;
  .line 7
    invoke-virtual { p1 }, Landroidx/core/view/f0/c;->a()Landroid/net/Uri;
    move-result-object v4
    invoke-direct { v3, v4 }, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V
    invoke-direct { p2, v0, v3 }, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V
  .line 8
    new-instance v0, Landroidx/core/view/c$a;
    const/4 v3, 2
    invoke-direct { v0, p2, v3 }, Landroidx/core/view/c$a;-><init>(Landroid/content/ClipData;I)V
  .line 9
    invoke-virtual { p1 }, Landroidx/core/view/f0/c;->c()Landroid/net/Uri;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroidx/core/view/c$a;->d(Landroid/net/Uri;)Landroidx/core/view/c$a;
  .line 10
    invoke-virtual { v0, p3 }, Landroidx/core/view/c$a;->b(Landroid/os/Bundle;)Landroidx/core/view/c$a;
  .line 11
    invoke-virtual { v0 }, Landroidx/core/view/c$a;->a()Landroidx/core/view/c;
    move-result-object p1
  .line 12
    iget-object p2, p0, Landroidx/appcompat/widget/s$a;->a:Landroid/view/View;
    invoke-static { p2, p1 }, Landroidx/core/view/v;->e0(Landroid/view/View;Landroidx/core/view/c;)Landroidx/core/view/c;
    move-result-object p1
    if-nez p1, :L6
    const/4 v1, 1
  :L6
    return v1
.end method
