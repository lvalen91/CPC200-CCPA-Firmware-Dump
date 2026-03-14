.class Landroidx/core/app/c$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/core/app/c;->i(Landroid/app/Activity;)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/core/app/c$d;

.field final synthetic c:Ljava/lang/Object;

.method constructor <init>(Landroidx/core/app/c$d;Ljava/lang/Object;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/core/app/c$a;->b:Landroidx/core/app/c$d;
    iput-object p2, p0, Landroidx/core/app/c$a;->c:Ljava/lang/Object;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/app/c$a;->b:Landroidx/core/app/c$d;
    iget-object v1, p0, Landroidx/core/app/c$a;->c:Ljava/lang/Object;
    iput-object v1, v0, Landroidx/core/app/c$d;->a:Ljava/lang/Object;
    return-void
.end method
