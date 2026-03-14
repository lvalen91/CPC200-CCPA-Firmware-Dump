.class Landroidx/activity/ComponentActivity$b$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/activity/ComponentActivity$b;->f(ILandroidx/activity/result/f/a;Ljava/lang/Object;Landroidx/core/app/b;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:I

.field final synthetic c:Landroidx/activity/result/f/a$a;

.field final synthetic d:Landroidx/activity/ComponentActivity$b;

.method constructor <init>(Landroidx/activity/ComponentActivity$b;ILandroidx/activity/result/f/a$a;)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$b$a;->d:Landroidx/activity/ComponentActivity$b;
    iput p2, p0, Landroidx/activity/ComponentActivity$b$a;->b:I
    iput-object p3, p0, Landroidx/activity/ComponentActivity$b$a;->c:Landroidx/activity/result/f/a$a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$b$a;->d:Landroidx/activity/ComponentActivity$b;
    iget v1, p0, Landroidx/activity/ComponentActivity$b$a;->b:I
    iget-object v2, p0, Landroidx/activity/ComponentActivity$b$a;->c:Landroidx/activity/result/f/a$a;
    invoke-virtual { v2 }, Landroidx/activity/result/f/a$a;->a()Ljava/lang/Object;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Landroidx/activity/result/ActivityResultRegistry;->c(ILjava/lang/Object;)Z
    return-void
.end method
