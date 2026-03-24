.class Landroidx/appcompat/app/o$b;
.super Landroidx/core/view/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/o;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/o;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/o$b;->a:Landroidx/appcompat/app/o;

    invoke-direct {p0}, Landroidx/core/view/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/o$b;->a:Landroidx/appcompat/app/o;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/o;->v:Lc/a/o/h;

    .line 2
    iget-object p1, p1, Landroidx/appcompat/app/o;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
