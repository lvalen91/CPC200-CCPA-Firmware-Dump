.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h;


# static fields
.field private static b:I

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Ljava/lang/reflect/Field;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->a:Landroid/app/Activity;

    return-void
.end method

.method private static h()V
    .registers 3

    const/4 v0, 0x2

    .line 1
    :try_start_1
    sput v0, Landroidx/activity/ImmLeaksCleaner;->b:I

    .line 2
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "mServedView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->d:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "mNextServedView"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->e:Ljava/lang/reflect/Field;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "mH"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->c:Ljava/lang/reflect/Field;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    sput v1, Landroidx/activity/ImmLeaksCleaner;->b:I
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_2d} :catch_2d

    :catch_2d
    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
    .registers 5

    .line 1
    sget-object p1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    if-eq p2, p1, :cond_5

    return-void

    .line 2
    :cond_5
    sget p1, Landroidx/activity/ImmLeaksCleaner;->b:I

    if-nez p1, :cond_c

    .line 3
    invoke-static {}, Landroidx/activity/ImmLeaksCleaner;->h()V

    .line 4
    :cond_c
    sget p1, Landroidx/activity/ImmLeaksCleaner;->b:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4e

    .line 5
    iget-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->a:Landroid/app/Activity;

    const-string p2, "input_method"

    .line 6
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 7
    :try_start_1b
    sget-object p2, Landroidx/activity/ImmLeaksCleaner;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_21} :catch_4e

    if-nez p2, :cond_24

    return-void

    .line 8
    :cond_24
    monitor-enter p2

    .line 9
    :try_start_25
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2d} :catch_4a
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_2d} :catch_48
    .catchall {:try_start_25 .. :try_end_2d} :catchall_46

    if-nez v0, :cond_31

    .line 10
    :try_start_2f
    monitor-exit p2

    return-void

    .line 11
    :cond_31
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 12
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_46

    return-void

    .line 13
    :cond_39
    :try_start_39
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->e:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3f} :catch_44
    .catchall {:try_start_39 .. :try_end_3f} :catchall_46

    .line 14
    :try_start_3f
    monitor-exit p2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_46

    .line 15
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    goto :goto_4e

    .line 16
    :catch_44
    :try_start_44
    monitor-exit p2

    return-void

    :catchall_46
    move-exception p1

    goto :goto_4c

    .line 17
    :catch_48
    monitor-exit p2

    return-void

    .line 18
    :catch_4a
    monitor-exit p2

    return-void

    .line 19
    :goto_4c
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_46

    throw p1

    :catch_4e
    :cond_4e
    :goto_4e
    return-void
.end method
