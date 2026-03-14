.class Landroidx/fragment/app/c$i;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/fragment/app/c;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;)Ljava/util/Map;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Ljava/util/ArrayList;

.method constructor <init>(Landroidx/fragment/app/c;Ljava/util/ArrayList;)V
  .registers 3
  .line 1
    iput-object p2, p0, Landroidx/fragment/app/c$i;->b:Ljava/util/ArrayList;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$i;->b:Ljava/util/ArrayList;
    const/4 v1, 4
    invoke-static { v0, v1 }, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;I)V
    return-void
.end method
