.class public Landroidx/core/view/e0/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/e0/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "c"
.end annotation

.field final a:Ljava/lang/Object;

.method constructor <init>(Ljava/lang/Object;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/core/view/e0/c$c;->a:Ljava/lang/Object;
    return-void
.end method

.method public static a(IIIIZZ)Landroidx/core/view/e0/c$c;
  .registers 8
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    new-instance v0, Landroidx/core/view/e0/c$c;
    invoke-static/range { p0 .. p5 }, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    move-result-object p0
    invoke-direct { v0, p0 }, Landroidx/core/view/e0/c$c;-><init>(Ljava/lang/Object;)V
    return-object v0
  :L0
    const/16 p5, 19
    if-lt v0, p5, :L1
  .line 3
    new-instance p5, Landroidx/core/view/e0/c$c;
    invoke-static { p0, p1, p2, p3, p4 }, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    move-result-object p0
    invoke-direct { p5, p0 }, Landroidx/core/view/e0/c$c;-><init>(Ljava/lang/Object;)V
    return-object p5
  :L1
  .line 4
    new-instance p0, Landroidx/core/view/e0/c$c;
    const/4 p1, 0
    invoke-direct { p0, p1 }, Landroidx/core/view/e0/c$c;-><init>(Ljava/lang/Object;)V
    return-object p0
.end method
