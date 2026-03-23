.class Landroidx/appcompat/widget/Toolbar$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/Toolbar;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/widget/Toolbar;

.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$b;->b:Landroidx/appcompat/widget/Toolbar;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$b;->b:Landroidx/appcompat/widget/Toolbar;
    invoke-virtual { v0 }, Landroidx/appcompat/widget/Toolbar;->O()Z
    return-void
.end method
