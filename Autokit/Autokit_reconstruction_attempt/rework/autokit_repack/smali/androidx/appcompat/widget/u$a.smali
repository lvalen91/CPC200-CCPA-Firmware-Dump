.class Landroidx/appcompat/widget/u$a;
.super Landroidx/appcompat/widget/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Landroidx/appcompat/widget/u$e;

.field final synthetic l:Landroidx/appcompat/widget/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/u;Landroid/view/View;Landroidx/appcompat/widget/u$e;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$a;->l:Landroidx/appcompat/widget/u;

    iput-object p3, p0, Landroidx/appcompat/widget/u$a;->k:Landroidx/appcompat/widget/u$e;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/f0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/p;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$a;->k:Landroidx/appcompat/widget/u$e;

    return-object v0
.end method

.method public c()Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$a;->l:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/u;->getInternalPopup()Landroidx/appcompat/widget/u$g;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/u$g;->b()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u$a;->l:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/u;->b()V

    :cond_11
    const/4 v0, 0x1

    return v0
.end method
