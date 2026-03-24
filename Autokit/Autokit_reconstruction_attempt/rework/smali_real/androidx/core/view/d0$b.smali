.class public final Landroidx/core/view/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/d0$f;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Landroidx/core/view/d0$e;

    invoke-direct {v0}, Landroidx/core/view/d0$e;-><init>()V

    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    goto :goto_30

    :cond_11
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1d

    .line 4
    new-instance v0, Landroidx/core/view/d0$d;

    invoke-direct {v0}, Landroidx/core/view/d0$d;-><init>()V

    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    goto :goto_30

    :cond_1d
    const/16 v1, 0x14

    if-lt v0, v1, :cond_29

    .line 5
    new-instance v0, Landroidx/core/view/d0$c;

    invoke-direct {v0}, Landroidx/core/view/d0$c;-><init>()V

    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    goto :goto_30

    .line 6
    :cond_29
    new-instance v0, Landroidx/core/view/d0$f;

    invoke-direct {v0}, Landroidx/core/view/d0$f;-><init>()V

    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    :goto_30
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/d0;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 9
    new-instance v0, Landroidx/core/view/d0$e;

    invoke-direct {v0, p1}, Landroidx/core/view/d0$e;-><init>(Landroidx/core/view/d0;)V

    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    goto :goto_30

    :cond_11
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1d

    .line 10
    new-instance v0, Landroidx/core/view/d0$d;

    invoke-direct {v0, p1}, Landroidx/core/view/d0$d;-><init>(Landroidx/core/view/d0;)V

    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    goto :goto_30

    :cond_1d
    const/16 v1, 0x14

    if-lt v0, v1, :cond_29

    .line 11
    new-instance v0, Landroidx/core/view/d0$c;

    invoke-direct {v0, p1}, Landroidx/core/view/d0$c;-><init>(Landroidx/core/view/d0;)V

    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    goto :goto_30

    .line 12
    :cond_29
    new-instance v0, Landroidx/core/view/d0$f;

    invoke-direct {v0, p1}, Landroidx/core/view/d0$f;-><init>(Landroidx/core/view/d0;)V

    iput-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    :goto_30
    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    invoke-virtual {v0}, Landroidx/core/view/d0$f;->b()Landroidx/core/view/d0;

    move-result-object v0

    return-object v0
.end method

.method public b(Lc/g/d/b;)Landroidx/core/view/d0$b;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    invoke-virtual {v0, p1}, Landroidx/core/view/d0$f;->d(Lc/g/d/b;)V

    return-object p0
.end method

.method public c(Lc/g/d/b;)Landroidx/core/view/d0$b;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$b;->a:Landroidx/core/view/d0$f;

    invoke-virtual {v0, p1}, Landroidx/core/view/d0$f;->f(Lc/g/d/b;)V

    return-object p0
.end method
