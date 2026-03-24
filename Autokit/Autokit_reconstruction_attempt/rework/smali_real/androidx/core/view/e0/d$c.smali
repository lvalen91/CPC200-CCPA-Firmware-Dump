.class Landroidx/core/view/e0/d$c;
.super Landroidx/core/view/e0/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/e0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/e0/d;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/e0/d$b;-><init>(Landroidx/core/view/e0/d;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0/d$a;->a:Landroidx/core/view/e0/d;

    .line 2
    invoke-static {p2}, Landroidx/core/view/e0/c;->v0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/e0/c;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/e0/d;->a(ILandroidx/core/view/e0/c;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
