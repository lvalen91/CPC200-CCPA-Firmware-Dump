.class Landroidx/core/content/c/f$a$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/core/content/c/f$a;->a(ILandroid/os/Handler;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:I

.field final synthetic c:Landroidx/core/content/c/f$a;

.method constructor <init>(Landroidx/core/content/c/f$a;I)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/core/content/c/f$a$b;->c:Landroidx/core/content/c/f$a;
    iput p2, p0, Landroidx/core/content/c/f$a$b;->b:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/content/c/f$a$b;->c:Landroidx/core/content/c/f$a;
    iget v1, p0, Landroidx/core/content/c/f$a$b;->b:I
    invoke-virtual { v0, v1 }, Landroidx/core/content/c/f$a;->d(I)V
    return-void
.end method
