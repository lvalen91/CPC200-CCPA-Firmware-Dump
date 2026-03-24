.class public Lc/a/o/d;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/content/res/Resources$Theme;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/res/Configuration;

.field private e:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 3
    iput p2, p0, Lc/a/o/d;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object p2, p0, Lc/a/o/d;->b:Landroid/content/res/Resources$Theme;

    return-void
.end method

.method private b()Landroid/content/res/Resources;
    .registers 5

    .line 1
    iget-object v0, p0, Lc/a/o/d;->e:Landroid/content/res/Resources;

    if-nez v0, :cond_41

    .line 2
    iget-object v0, p0, Lc/a/o/d;->d:Landroid/content/res/Configuration;

    if-nez v0, :cond_f

    .line 3
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/d;->e:Landroid/content/res/Resources;

    goto :goto_41

    .line 4
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_20

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/d;->e:Landroid/content/res/Resources;

    goto :goto_41

    .line 7
    :cond_20
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 9
    iget-object v2, p0, Lc/a/o/d;->d:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 10
    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lc/a/o/d;->e:Landroid/content/res/Resources;

    .line 11
    :cond_41
    :goto_41
    iget-object v0, p0, Lc/a/o/d;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method private d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/a/o/d;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_22

    .line 2
    invoke-virtual {p0}, Lc/a/o/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iput-object v1, p0, Lc/a/o/d;->b:Landroid/content/res/Resources$Theme;

    .line 3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 4
    iget-object v2, p0, Lc/a/o/d;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 5
    :cond_22
    iget-object v1, p0, Lc/a/o/d;->b:Landroid/content/res/Resources$Theme;

    iget v2, p0, Lc/a/o/d;->a:I

    invoke-virtual {p0, v1, v2, v0}, Lc/a/o/d;->e(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/a/o/d;->e:Landroid/content/res/Resources;

    if-nez v0, :cond_18

    .line 2
    iget-object v0, p0, Lc/a/o/d;->d:Landroid/content/res/Configuration;

    if-nez v0, :cond_10

    .line 3
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lc/a/o/d;->d:Landroid/content/res/Configuration;

    return-void

    .line 4
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Override configuration has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getResources() or getAssets() has already been called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lc/a/o/d;->a:I

    return v0
.end method

.method protected e(Landroid/content/res/Resources$Theme;IZ)V
    .registers 4

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lc/a/o/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .line 1
    invoke-direct {p0}, Lc/a/o/d;->b()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "layout_inflater"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object p1, p0, Lc/a/o/d;->c:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1a

    .line 3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lc/a/o/d;->c:Landroid/view/LayoutInflater;

    .line 4
    :cond_1a
    iget-object p1, p0, Lc/a/o/d;->c:Landroid/view/LayoutInflater;

    return-object p1

    .line 5
    :cond_1d
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/a/o/d;->b:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget v0, p0, Lc/a/o/d;->a:I

    if-nez v0, :cond_d

    .line 3
    sget v0, Lc/a/i;->Theme_AppCompat_Light:I

    iput v0, p0, Lc/a/o/d;->a:I

    .line 4
    :cond_d
    invoke-direct {p0}, Lc/a/o/d;->d()V

    .line 5
    iget-object v0, p0, Lc/a/o/d;->b:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public setTheme(I)V
    .registers 3

    .line 1
    iget v0, p0, Lc/a/o/d;->a:I

    if-eq v0, p1, :cond_9

    .line 2
    iput p1, p0, Lc/a/o/d;->a:I

    .line 3
    invoke-direct {p0}, Lc/a/o/d;->d()V

    :cond_9
    return-void
.end method
