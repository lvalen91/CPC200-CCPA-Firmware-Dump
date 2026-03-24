.class public final Landroidx/core/view/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/ClipData;

.field b:I

.field c:I

.field d:Landroid/net/Uri;

.field e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/c$a;->a:Landroid/content/ClipData;

    .line 3
    iput p2, p0, Landroidx/core/view/c$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/c;
    .registers 2

    .line 1
    new-instance v0, Landroidx/core/view/c;

    invoke-direct {v0, p0}, Landroidx/core/view/c;-><init>(Landroidx/core/view/c$a;)V

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Landroidx/core/view/c$a;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/c$a;->e:Landroid/os/Bundle;

    return-object p0
.end method

.method public c(I)Landroidx/core/view/c$a;
    .registers 2

    .line 1
    iput p1, p0, Landroidx/core/view/c$a;->c:I

    return-object p0
.end method

.method public d(Landroid/net/Uri;)Landroidx/core/view/c$a;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/c$a;->d:Landroid/net/Uri;

    return-object p0
.end method
