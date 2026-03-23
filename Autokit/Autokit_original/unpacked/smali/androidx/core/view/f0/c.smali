.class public final Landroidx/core/view/f0/c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/view/f0/c$a;,
    Landroidx/core/view/f0/c$b;,
    Landroidx/core/view/f0/c$c;
  }
.end annotation

.field private final a:Landroidx/core/view/f0/c$c;

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 25
    if-lt v0, v1, :L0
  .line 3
    new-instance v0, Landroidx/core/view/f0/c$a;
    invoke-direct { v0, p1, p2, p3 }, Landroidx/core/view/f0/c$a;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    iput-object v0, p0, Landroidx/core/view/f0/c;->a:Landroidx/core/view/f0/c$c;
    goto :L1
  :L0
  .line 4
    new-instance v0, Landroidx/core/view/f0/c$b;
    invoke-direct { v0, p1, p2, p3 }, Landroidx/core/view/f0/c$b;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    iput-object v0, p0, Landroidx/core/view/f0/c;->a:Landroidx/core/view/f0/c$c;
  :L1
    return-void
.end method

.method private constructor <init>(Landroidx/core/view/f0/c$c;)V
  .registers 2
  .line 5
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 6
    iput-object p1, p0, Landroidx/core/view/f0/c;->a:Landroidx/core/view/f0/c$c;
    return-void
.end method

.method public static f(Ljava/lang/Object;)Landroidx/core/view/f0/c;
  .registers 4
    const/4 v0, 0
    if-nez p0, :L0
    return-object v0
  :L0
  .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 25
    if-ge v1, v2, :L1
    return-object v0
  :L1
  .line 2
    new-instance v0, Landroidx/core/view/f0/c;
    new-instance v1, Landroidx/core/view/f0/c$a;
    invoke-direct { v1, p0 }, Landroidx/core/view/f0/c$a;-><init>(Ljava/lang/Object;)V
    invoke-direct { v0, v1 }, Landroidx/core/view/f0/c;-><init>(Landroidx/core/view/f0/c$c;)V
    return-object v0
.end method

.method public a()Landroid/net/Uri;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/f0/c;->a:Landroidx/core/view/f0/c$c;
    invoke-interface { v0 }, Landroidx/core/view/f0/c$c;->e()Landroid/net/Uri;
    move-result-object v0
    return-object v0
.end method

.method public b()Landroid/content/ClipDescription;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/f0/c;->a:Landroidx/core/view/f0/c$c;
    invoke-interface { v0 }, Landroidx/core/view/f0/c$c;->c()Landroid/content/ClipDescription;
    move-result-object v0
    return-object v0
.end method

.method public c()Landroid/net/Uri;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/f0/c;->a:Landroidx/core/view/f0/c$c;
    invoke-interface { v0 }, Landroidx/core/view/f0/c$c;->b()Landroid/net/Uri;
    move-result-object v0
    return-object v0
.end method

.method public d()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/f0/c;->a:Landroidx/core/view/f0/c$c;
    invoke-interface { v0 }, Landroidx/core/view/f0/c$c;->a()V
    return-void
.end method

.method public e()Ljava/lang/Object;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/f0/c;->a:Landroidx/core/view/f0/c$c;
    invoke-interface { v0 }, Landroidx/core/view/f0/c$c;->d()Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method
