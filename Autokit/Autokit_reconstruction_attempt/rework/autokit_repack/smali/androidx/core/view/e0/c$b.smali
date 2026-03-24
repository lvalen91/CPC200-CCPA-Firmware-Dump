.class public Landroidx/core/view/e0/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/e0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/e0/c$b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIZI)Landroidx/core/view/e0/c$b;
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_10

    .line 2
    new-instance v0, Landroidx/core/view/e0/c$b;

    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/view/e0/c$b;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_10
    const/16 p3, 0x13

    if-lt v0, p3, :cond_1e

    .line 3
    new-instance p3, Landroidx/core/view/e0/c$b;

    invoke-static {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {p3, p0}, Landroidx/core/view/e0/c$b;-><init>(Ljava/lang/Object;)V

    return-object p3

    .line 4
    :cond_1e
    new-instance p0, Landroidx/core/view/e0/c$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/core/view/e0/c$b;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
