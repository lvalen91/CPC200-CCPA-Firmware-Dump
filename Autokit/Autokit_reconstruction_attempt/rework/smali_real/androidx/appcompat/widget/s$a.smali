.class Landroidx/appcompat/widget/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/f0/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/s;->a(Landroid/view/View;)Landroidx/core/view/f0/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/s$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/view/f0/c;ILandroid/os/Bundle;)Z
    .registers 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x19

    if-lt v0, v3, :cond_29

    and-int/2addr p2, v2

    if-eqz p2, :cond_29

    .line 2
    :try_start_b
    invoke-virtual {p1}, Landroidx/core/view/f0/c;->d()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_28

    .line 3
    invoke-virtual {p1}, Landroidx/core/view/f0/c;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputContentInfo;

    if-nez p3, :cond_1c

    .line 4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_22

    :cond_1c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v0

    :goto_22
    const-string v0, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 5
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_29

    :catch_28
    return v1

    .line 6
    :cond_29
    :goto_29
    new-instance p2, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroidx/core/view/f0/c;->b()Landroid/content/ClipDescription;

    move-result-object v0

    new-instance v3, Landroid/content/ClipData$Item;

    .line 7
    invoke-virtual {p1}, Landroidx/core/view/f0/c;->a()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v0, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 8
    new-instance v0, Landroidx/core/view/c$a;

    const/4 v3, 0x2

    invoke-direct {v0, p2, v3}, Landroidx/core/view/c$a;-><init>(Landroid/content/ClipData;I)V

    .line 9
    invoke-virtual {p1}, Landroidx/core/view/f0/c;->c()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/c$a;->d(Landroid/net/Uri;)Landroidx/core/view/c$a;

    .line 10
    invoke-virtual {v0, p3}, Landroidx/core/view/c$a;->b(Landroid/os/Bundle;)Landroidx/core/view/c$a;

    .line 11
    invoke-virtual {v0}, Landroidx/core/view/c$a;->a()Landroidx/core/view/c;

    move-result-object p1

    .line 12
    iget-object p2, p0, Landroidx/appcompat/widget/s$a;->a:Landroid/view/View;

    invoke-static {p2, p1}, Landroidx/core/view/v;->e0(Landroid/view/View;Landroidx/core/view/c;)Landroidx/core/view/c;

    move-result-object p1

    if-nez p1, :cond_58

    const/4 v1, 0x1

    :cond_58
    return v1
.end method
