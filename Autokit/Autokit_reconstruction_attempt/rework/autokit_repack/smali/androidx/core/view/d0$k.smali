.class Landroidx/core/view/d0$k;
.super Landroidx/core/view/d0$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# static fields
.field static final o:Landroidx/core/view/d0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;

    move-result-object v0

    sput-object v0, Landroidx/core/view/d0$k;->o:Landroidx/core/view/d0;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/d0$j;-><init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;Landroidx/core/view/d0$k;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/core/view/d0$j;-><init>(Landroidx/core/view/d0;Landroidx/core/view/d0$j;)V

    return-void
.end method


# virtual methods
.method final d(Landroid/view/View;)V
    .registers 2

    return-void
.end method
