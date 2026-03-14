.class Landroidx/core/app/a$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/core/app/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:I

.method constructor <init>([Ljava/lang/String;Landroid/app/Activity;I)V
  .registers 4
  .line 1
    iput-object p1, p0, Landroidx/core/app/a$a;->b:[Ljava/lang/String;
    iput-object p2, p0, Landroidx/core/app/a$a;->c:Landroid/app/Activity;
    iput p3, p0, Landroidx/core/app/a$a;->d:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/core/app/a$a;->b:[Ljava/lang/String;
    array-length v0, v0
    new-array v0, v0, [I
  .line 2
    iget-object v1, p0, Landroidx/core/app/a$a;->c:Landroid/app/Activity;
    invoke-virtual { v1 }, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
  .line 3
    iget-object v2, p0, Landroidx/core/app/a$a;->c:Landroid/app/Activity;
    invoke-virtual { v2 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v2
  .line 4
    iget-object v3, p0, Landroidx/core/app/a$a;->b:[Ljava/lang/String;
    array-length v3, v3
    const/4 v4, 0
  :L0
    if-ge v4, v3, :L1
  .line 5
    iget-object v5, p0, Landroidx/core/app/a$a;->b:[Ljava/lang/String;
    aget-object v5, v5, v4
    invoke-virtual { v1, v5, v2 }, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    move-result v5
    aput v5, v0, v4
    add-int/lit8 v4, v4, 1
    goto :L0
  :L1
  .line 6
    iget-object v1, p0, Landroidx/core/app/a$a;->c:Landroid/app/Activity;
    check-cast v1, Landroidx/core/app/a$c;
    iget v2, p0, Landroidx/core/app/a$a;->d:I
    iget-object v3, p0, Landroidx/core/app/a$a;->b:[Ljava/lang/String;
    invoke-interface { v1, v2, v3, v0 }, Landroidx/core/app/a$c;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    return-void
.end method
