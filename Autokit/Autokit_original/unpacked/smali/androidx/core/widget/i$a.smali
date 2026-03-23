.class Landroidx/core/widget/i$a;
.super Ljava/lang/Object;
.implements Landroid/view/ActionMode$Callback;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/widget/i;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field private final a:Landroid/view/ActionMode$Callback;

.field private final b:Landroid/widget/TextView;

.field private c:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field private d:Ljava/lang/reflect/Method;

.field private e:Z

.field private f:Z

.method constructor <init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/widget/i$a;->a:Landroid/view/ActionMode$Callback;
  .line 3
    iput-object p2, p0, Landroidx/core/widget/i$a;->b:Landroid/widget/TextView;
    const/4 p1, 0
  .line 4
    iput-boolean p1, p0, Landroidx/core/widget/i$a;->f:Z
    return-void
.end method

.method private a()Landroid/content/Intent;
  .registers 3
  .line 1
    new-instance v0, Landroid/content/Intent;
    invoke-direct { v0 }, Landroid/content/Intent;-><init>()V
    const-string v1, "android.intent.action.PROCESS_TEXT"
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
    const-string v1, "text/plain"
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
    return-object v0
.end method

.method private b(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
  .registers 5
  .line 1
    invoke-direct { p0 }, Landroidx/core/widget/i$a;->a()Landroid/content/Intent;
    move-result-object v0
  .line 2
    invoke-direct { p0, p2 }, Landroidx/core/widget/i$a;->d(Landroid/widget/TextView;)Z
    move-result p2
    xor-int/lit8 p2, p2, 1
    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"
    invoke-virtual { v0, v1, p2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    move-result-object p2
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
  .line 3
    invoke-virtual { p2, v0, p1 }, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    move-result-object p1
    return-object p1
.end method

.method private c(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Landroid/content/pm/PackageManager;",
      ")",
      "Ljava/util/List<",
      "Landroid/content/pm/ResolveInfo;",
      ">;"
    }
  .end annotation
  .registers 6
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    instance-of v1, p1, Landroid/app/Activity;
    if-nez v1, :L0
    return-object v0
  :L0
  .line 3
    invoke-direct { p0 }, Landroidx/core/widget/i$a;->a()Landroid/content/Intent;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { p2, v1, v2 }, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    move-result-object p2
  .line 4
    invoke-interface { p2 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p2
  :L1
    invoke-interface { p2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L2
    invoke-interface { p2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/pm/ResolveInfo;
  .line 5
    invoke-direct { p0, v1, p1 }, Landroidx/core/widget/i$a;->e(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    move-result v2
    if-eqz v2, :L1
  .line 6
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L1
  :L2
    return-object v0
.end method

.method private d(Landroid/widget/TextView;)Z
  .registers 3
  .line 1
    instance-of v0, p1, Landroid/text/Editable;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroid/widget/TextView;->onCheckIsTextEditor()Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p1 }, Landroid/widget/TextView;->isEnabled()Z
    move-result p1
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method

.method private e(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
  .registers 6
  .line 1
    invoke-virtual { p2 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->exported:Z
    const/4 v2, 0
    if-nez v0, :L1
    return v2
  :L1
  .line 3
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    if-eqz p1, :L3
  .line 4
    invoke-virtual { p2, p1 }, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    move-result p1
    if-nez p1, :L2
    goto :L3
  :L2
    const/4 v1, 0
  :L3
    return v1
.end method

.method private f(Landroid/view/Menu;)V
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/NoSuchMethodException; { :L3 .. :L7 } :L10
  .catch Ljava/lang/IllegalAccessException; { :L3 .. :L7 } :L10
  .catch Ljava/lang/reflect/InvocationTargetException; { :L3 .. :L7 } :L10
  .registers 10
  .line 1
    iget-object v0, p0, Landroidx/core/widget/i$a;->b:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
  .line 3
    iget-boolean v2, p0, Landroidx/core/widget/i$a;->f:Z
    const-string v3, "removeItemAt"
    const/4 v4, 0
    const/4 v5, 1
    if-nez v2, :L3
  .line 4
    iput-boolean v5, p0, Landroidx/core/widget/i$a;->f:Z
  :L0
    const-string v2, "com.android.internal.view.menu.MenuBuilder"
  .line 5
    invoke-static { v2 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v2
    iput-object v2, p0, Landroidx/core/widget/i$a;->c:Ljava/lang/Class;
    new-array v6, v5, [Ljava/lang/Class;
  .line 6
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v7, v6, v4
  .line 7
    invoke-virtual { v2, v3, v6 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v2
    iput-object v2, p0, Landroidx/core/widget/i$a;->d:Ljava/lang/reflect/Method;
  .line 8
    iput-boolean v5, p0, Landroidx/core/widget/i$a;->e:Z
  :L1
    goto :L3
  :L2
    const/4 v2, 0
  .line 9
    iput-object v2, p0, Landroidx/core/widget/i$a;->c:Ljava/lang/Class;
  .line 10
    iput-object v2, p0, Landroidx/core/widget/i$a;->d:Ljava/lang/reflect/Method;
  .line 11
    iput-boolean v4, p0, Landroidx/core/widget/i$a;->e:Z
  :L3
  .line 12
    iget-boolean v2, p0, Landroidx/core/widget/i$a;->e:Z
    if-eqz v2, :L4
    iget-object v2, p0, Landroidx/core/widget/i$a;->c:Ljava/lang/Class;
    invoke-virtual { v2, p1 }, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L4
  .line 13
    iget-object v2, p0, Landroidx/core/widget/i$a;->d:Ljava/lang/reflect/Method;
    goto :L5
  :L4
  .line 14
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v2
    new-array v6, v5, [Ljava/lang/Class;
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v7, v6, v4
  .line 15
    invoke-virtual { v2, v3, v6 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v2
  :L5
  .line 16
    invoke-interface { p1 }, Landroid/view/Menu;->size()I
    move-result v3
    sub-int/2addr v3, v5
  :L6
    if-ltz v3, :L8
  .line 17
    invoke-interface { p1, v3 }, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;
    move-result-object v6
  .line 18
    invoke-interface { v6 }, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;
    move-result-object v7
    if-eqz v7, :L7
    const-string v7, "android.intent.action.PROCESS_TEXT"
  .line 19
    invoke-interface { v6 }, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;
    move-result-object v6
    invoke-virtual { v6 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v7, v6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L7
    new-array v6, v5, [Ljava/lang/Object;
  .line 20
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    aput-object v7, v6, v4
    invoke-virtual { v2, p1, v6 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L7
    add-int/lit8 v3, v3, -1
    goto :L6
  :L8
  .line 21
    invoke-direct { p0, v0, v1 }, Landroidx/core/widget/i$a;->c(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    move-result-object v0
    const/4 v2, 0
  :L9
  .line 22
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v3
    if-ge v2, v3, :L10
  .line 23
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroid/content/pm/ResolveInfo;
    add-int/lit8 v6, v2, 100
  .line 24
    invoke-virtual { v3, v1 }, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    move-result-object v7
  .line 25
    invoke-interface { p1, v4, v4, v6, v7 }, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    move-result-object v6
    iget-object v7, p0, Landroidx/core/widget/i$a;->b:Landroid/widget/TextView;
  .line 26
    invoke-direct { p0, v3, v7 }, Landroidx/core/widget/i$a;->b(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    move-result-object v3
    invoke-interface { v6, v3 }, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    move-result-object v3
  .line 27
    invoke-interface { v3, v5 }, Landroid/view/MenuItem;->setShowAsAction(I)V
    add-int/lit8 v2, v2, 1
    goto :L9
  :L10
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/widget/i$a;->a:Landroid/view/ActionMode$Callback;
    invoke-interface { v0, p1, p2 }, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    move-result p1
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/core/widget/i$a;->a:Landroid/view/ActionMode$Callback;
    invoke-interface { v0, p1, p2 }, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    move-result p1
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/widget/i$a;->a:Landroid/view/ActionMode$Callback;
    invoke-interface { v0, p1 }, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
  .registers 4
  .line 1
    invoke-direct { p0, p2 }, Landroidx/core/widget/i$a;->f(Landroid/view/Menu;)V
  .line 2
    iget-object v0, p0, Landroidx/core/widget/i$a;->a:Landroid/view/ActionMode$Callback;
    invoke-interface { v0, p1, p2 }, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    move-result p1
    return p1
.end method
