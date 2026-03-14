.class public Lc/e/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 2
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/view/View;->getId()I
    move-result p0
    invoke-virtual { v0, p0 }, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    move-result-object p0
  :L1
    return-object p0
  :L2
    const-string p0, "UNKNOWN"
    return-object p0
.end method
