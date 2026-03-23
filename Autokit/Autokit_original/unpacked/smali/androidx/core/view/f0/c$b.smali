.class final Landroidx/core/view/f0/c$b;
.super Ljava/lang/Object;
.implements Landroidx/core/view/f0/c$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/f0/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "b"
.end annotation

.field private final a:Landroid/net/Uri;

.field private final b:Landroid/content/ClipDescription;

.field private final c:Landroid/net/Uri;

.method constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/view/f0/c$b;->a:Landroid/net/Uri;
  .line 3
    iput-object p2, p0, Landroidx/core/view/f0/c$b;->b:Landroid/content/ClipDescription;
  .line 4
    iput-object p3, p0, Landroidx/core/view/f0/c$b;->c:Landroid/net/Uri;
    return-void
.end method

.method public a()V
  .registers 1
    return-void
.end method

.method public b()Landroid/net/Uri;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/f0/c$b;->c:Landroid/net/Uri;
    return-object v0
.end method

.method public c()Landroid/content/ClipDescription;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/f0/c$b;->b:Landroid/content/ClipDescription;
    return-object v0
.end method

.method public d()Ljava/lang/Object;
  .registers 2
    const/4 v0, 0
    return-object v0
.end method

.method public e()Landroid/net/Uri;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/f0/c$b;->a:Landroid/net/Uri;
    return-object v0
.end method
