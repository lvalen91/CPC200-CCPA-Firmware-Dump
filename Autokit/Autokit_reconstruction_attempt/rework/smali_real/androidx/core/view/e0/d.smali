.class public Landroidx/core/view/e0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/e0/d$c;,
        Landroidx/core/view/e0/d$b;,
        Landroidx/core/view/e0/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Landroidx/core/view/e0/d$c;

    invoke-direct {v0, p0}, Landroidx/core/view/e0/d$c;-><init>(Landroidx/core/view/e0/d;)V

    iput-object v0, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;

    goto :goto_2c

    :cond_11
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1d

    .line 4
    new-instance v0, Landroidx/core/view/e0/d$b;

    invoke-direct {v0, p0}, Landroidx/core/view/e0/d$b;-><init>(Landroidx/core/view/e0/d;)V

    iput-object v0, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;

    goto :goto_2c

    :cond_1d
    const/16 v1, 0x10

    if-lt v0, v1, :cond_29

    .line 5
    new-instance v0, Landroidx/core/view/e0/d$a;

    invoke-direct {v0, p0}, Landroidx/core/view/e0/d$a;-><init>(Landroidx/core/view/e0/d;)V

    iput-object v0, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;

    goto :goto_2c

    :cond_29
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;

    :goto_2c
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(ILandroidx/core/view/e0/c;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    return-void
.end method

.method public b(I)Landroidx/core/view/e0/c;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/view/e0/c;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)Landroidx/core/view/e0/c;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public f(IILandroid/os/Bundle;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method
