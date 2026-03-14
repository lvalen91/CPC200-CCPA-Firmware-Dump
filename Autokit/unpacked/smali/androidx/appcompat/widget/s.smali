.class final Landroidx/appcompat/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/s$b;
  }
.end annotation

.method static a(Landroid/view/View;)Landroidx/core/view/f0/b$c;
  .registers 2
  .line 1
    new-instance v0, Landroidx/appcompat/widget/s$a;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/s$a;-><init>(Landroid/view/View;)V
    return-object v0
.end method

.method static b(Landroid/view/View;Landroid/view/DragEvent;)Z
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 0
    const/16 v2, 24
    if-lt v0, v2, :L5
  .line 2
    invoke-virtual { p1 }, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L5
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->F(Landroid/view/View;)[Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L0
    goto :L5
  :L0
  .line 4
    invoke-static { p0 }, Landroidx/appcompat/widget/s;->d(Landroid/view/View;)Landroid/app/Activity;
    move-result-object v0
    if-nez v0, :L1
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Can't handle drop: no activity: view="
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return v1
  :L1
  .line 6
    invoke-virtual { p1 }, Landroid/view/DragEvent;->getAction()I
    move-result v2
    const/4 v3, 1
    if-ne v2, v3, :L2
  .line 7
    instance-of p0, p0, Landroid/widget/TextView;
    xor-int/2addr p0, v3
    return p0
  :L2
  .line 8
    invoke-virtual { p1 }, Landroid/view/DragEvent;->getAction()I
    move-result v2
    const/4 v3, 3
    if-ne v2, v3, :L5
  .line 9
    instance-of v1, p0, Landroid/widget/TextView;
    if-eqz v1, :L3
  .line 10
    check-cast p0, Landroid/widget/TextView;
    invoke-static { p1, p0, v0 }, Landroidx/appcompat/widget/s$b;->a(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z
    move-result p0
    goto :L4
  :L3
  .line 11
    invoke-static { p1, p0, v0 }, Landroidx/appcompat/widget/s$b;->b(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z
    move-result p0
  :L4
    return p0
  :L5
    return v1
.end method

.method static c(Landroid/widget/TextView;I)Z
  .registers 7
    const/4 v0, 0
    const v1, 16908322
    if-eq p1, v1, :L0
    const v2, 16908337
    if-ne p1, v2, :L1
  :L0
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->F(Landroid/view/View;)[Ljava/lang/String;
    move-result-object v2
    if-nez v2, :L2
  :L1
    return v0
  :L2
  .line 2
    invoke-virtual { p0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v2
    const-string v3, "clipboard"
    invoke-virtual { v2, v3 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/content/ClipboardManager;
    if-nez v2, :L3
    const/4 v2, 0
    goto :L4
  :L3
  .line 3
    invoke-virtual { v2 }, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;
    move-result-object v2
  :L4
    const/4 v3, 1
    if-eqz v2, :L7
  .line 4
    invoke-virtual { v2 }, Landroid/content/ClipData;->getItemCount()I
    move-result v4
    if-lez v4, :L7
  .line 5
    new-instance v4, Landroidx/core/view/c$a;
    invoke-direct { v4, v2, v3 }, Landroidx/core/view/c$a;-><init>(Landroid/content/ClipData;I)V
    if-ne p1, v1, :L5
    goto :L6
  :L5
    const/4 v0, 1
  :L6
  .line 6
    invoke-virtual { v4, v0 }, Landroidx/core/view/c$a;->c(I)Landroidx/core/view/c$a;
  .line 7
    invoke-virtual { v4 }, Landroidx/core/view/c$a;->a()Landroidx/core/view/c;
    move-result-object p1
  .line 8
    invoke-static { p0, p1 }, Landroidx/core/view/v;->e0(Landroid/view/View;Landroidx/core/view/c;)Landroidx/core/view/c;
  :L7
    return v3
.end method

.method static d(Landroid/view/View;)Landroid/app/Activity;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object p0
  :L0
  .line 2
    instance-of v0, p0, Landroid/content/ContextWrapper;
    if-eqz v0, :L2
  .line 3
    instance-of v0, p0, Landroid/app/Activity;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroid/app/Activity;
    return-object p0
  :L1
  .line 5
    check-cast p0, Landroid/content/ContextWrapper;
    invoke-virtual { p0 }, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;
    move-result-object p0
    goto :L0
  :L2
    const/4 p0, 0
    return-object p0
.end method
