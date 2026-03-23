.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.implements Landroidx/lifecycle/h;
.source "SourceFile"

.field private static b:I

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Ljava/lang/reflect/Field;

.field private a:Landroid/app/Activity;

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->a:Landroid/app/Activity;
    return-void
.end method

.method private static h()V
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L1
  .registers 3
    const/4 v0, 2
  :L0
  .line 1
    sput v0, Landroidx/activity/ImmLeaksCleaner;->b:I
  .line 2
    const-class v0, Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "mServedView"
    invoke-virtual { v0, v1 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->d:Ljava/lang/reflect/Field;
    const/4 v1, 1
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 4
    const-class v0, Landroid/view/inputmethod/InputMethodManager;
    const-string v2, "mNextServedView"
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->e:Ljava/lang/reflect/Field;
  .line 5
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 6
    const-class v0, Landroid/view/inputmethod/InputMethodManager;
    const-string v2, "mH"
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->c:Ljava/lang/reflect/Field;
  .line 7
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 8
    sput v1, Landroidx/activity/ImmLeaksCleaner;->b:I
  :L1
    return-void
.end method

.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
  .catch Ljava/lang/IllegalAccessException; { :L2 .. :L3 } :L19
  .catch Ljava/lang/IllegalAccessException; { :L5 .. :L6 } :L16
  .catch Ljava/lang/ClassCastException; { :L5 .. :L6 } :L15
  .catchall { :L5 .. :L6 } :L14
  .catchall { :L7 .. :L9 } :L14
  .catch Ljava/lang/IllegalAccessException; { :L10 .. :L11 } :L13
  .catchall { :L10 .. :L11 } :L14
  .catchall { :L11 .. :L12 } :L14
  .catchall { :L13 .. :L18 } :L14
  .registers 5
  .line 1
    sget-object p1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    if-eq p2, p1, :L0
    return-void
  :L0
  .line 2
    sget p1, Landroidx/activity/ImmLeaksCleaner;->b:I
    if-nez p1, :L1
  .line 3
    invoke-static { }, Landroidx/activity/ImmLeaksCleaner;->h()V
  :L1
  .line 4
    sget p1, Landroidx/activity/ImmLeaksCleaner;->b:I
    const/4 p2, 1
    if-ne p1, p2, :L19
  .line 5
    iget-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->a:Landroid/app/Activity;
    const-string p2, "input_method"
  .line 6
    invoke-virtual { p1, p2 }, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;
  :L2
  .line 7
    sget-object p2, Landroidx/activity/ImmLeaksCleaner;->c:Ljava/lang/reflect/Field;
    invoke-virtual { p2, p1 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p2
  :L3
    if-nez p2, :L4
    return-void
  :L4
  .line 8
    monitor-enter p2
  :L5
  .line 9
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->d:Ljava/lang/reflect/Field;
    invoke-virtual { v0, p1 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
  :L6
    if-nez v0, :L8
  :L7
  .line 10
    monitor-exit p2
    return-void
  :L8
  .line 11
    invoke-virtual { v0 }, Landroid/view/View;->isAttachedToWindow()Z
    move-result v0
    if-eqz v0, :L10
  .line 12
    monitor-exit p2
  :L9
    return-void
  :L10
  .line 13
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->e:Ljava/lang/reflect/Field;
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
  :L11
  .line 14
    monitor-exit p2
  :L12
  .line 15
    invoke-virtual { p1 }, Landroid/view/inputmethod/InputMethodManager;->isActive()Z
    goto :L19
  :L13
  .line 16
    monitor-exit p2
    return-void
  :L14
    move-exception p1
    goto :L17
  :L15
  .line 17
    monitor-exit p2
    return-void
  :L16
  .line 18
    monitor-exit p2
    return-void
  :L17
  .line 19
    monitor-exit p2
  :L18
    throw p1
  :L19
    return-void
.end method
