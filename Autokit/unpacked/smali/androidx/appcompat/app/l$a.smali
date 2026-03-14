.class Landroidx/appcompat/app/l$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/app/l;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/app/l;

.method constructor <init>(Landroidx/appcompat/app/l;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/app/l$a;->b:Landroidx/appcompat/app/l;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->b:Landroidx/appcompat/app/l;
    invoke-virtual { v0 }, Landroidx/appcompat/app/l;->z()V
    return-void
.end method
