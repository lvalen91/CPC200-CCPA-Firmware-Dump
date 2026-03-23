.class Landroidx/appcompat/app/g$r;
.super Landroidx/appcompat/app/g$q;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/g;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "r"
.end annotation

.field private final c:Landroidx/appcompat/app/n;

.field final synthetic d:Landroidx/appcompat/app/g;

.method constructor <init>(Landroidx/appcompat/app/g;Landroidx/appcompat/app/n;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$r;->d:Landroidx/appcompat/app/g;
    invoke-direct { p0, p1 }, Landroidx/appcompat/app/g$q;-><init>(Landroidx/appcompat/app/g;)V
  .line 2
    iput-object p2, p0, Landroidx/appcompat/app/g$r;->c:Landroidx/appcompat/app/n;
    return-void
.end method

.method b()Landroid/content/IntentFilter;
  .registers 3
  .line 1
    new-instance v0, Landroid/content/IntentFilter;
    invoke-direct { v0 }, Landroid/content/IntentFilter;-><init>()V
    const-string v1, "android.intent.action.TIME_SET"
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"
  .line 3
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    const-string v1, "android.intent.action.TIME_TICK"
  .line 4
    invoke-virtual { v0, v1 }, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    return-object v0
.end method

.method public c()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$r;->c:Landroidx/appcompat/app/n;
    invoke-virtual { v0 }, Landroidx/appcompat/app/n;->d()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 2
    goto :L1
  :L0
    const/4 v0, 1
  :L1
    return v0
.end method

.method public d()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$r;->d:Landroidx/appcompat/app/g;
    invoke-virtual { v0 }, Landroidx/appcompat/app/g;->e()Z
    return-void
.end method
