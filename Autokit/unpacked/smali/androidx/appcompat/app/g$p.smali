.class Landroidx/appcompat/app/g$p;
.super Landroidx/appcompat/app/g$q;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "p"
.end annotation

.field private final c:Landroid/os/PowerManager;

.field final synthetic d:Landroidx/appcompat/app/g;

.method constructor <init>(Landroidx/appcompat/app/g;Landroid/content/Context;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$p;->d:Landroidx/appcompat/app/g;
    invoke-direct { p0, p1 }, Landroidx/appcompat/app/g$q;-><init>(Landroidx/appcompat/app/g;)V
  .line 2
    invoke-virtual { p2 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object p1
    const-string p2, "power"
  .line 3
    invoke-virtual { p1, p2 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/os/PowerManager;
    iput-object p1, p0, Landroidx/appcompat/app/g$p;->c:Landroid/os/PowerManager;
    return-void
.end method

.method b()Landroid/content/IntentFilter;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    new-instance v0, Landroid/content/IntentFilter;
    invoke-direct { v0 }, Landroid/content/IntentFilter;-><init>()V
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"
  .line 3
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method public c()I
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 1
    const/16 v2, 21
    if-lt v0, v2, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g$p;->c:Landroid/os/PowerManager;
    invoke-static { v0 }, Landroidx/appcompat/app/g$l;->a(Landroid/os/PowerManager;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v1, 2
  :L0
    return v1
.end method

.method public d()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$p;->d:Landroidx/appcompat/app/g;
    invoke-virtual { v0 }, Landroidx/appcompat/app/g;->e()Z
    return-void
.end method
