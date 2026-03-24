.class Landroidx/appcompat/widget/u$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/u$e;->f(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/widget/u$e;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/u$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$e$b;->b:Landroidx/appcompat/widget/u$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$e$b;->b:Landroidx/appcompat/widget/u$e;

    iget-object v1, v0, Landroidx/appcompat/widget/u$e;->N:Landroidx/appcompat/widget/u;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/u$e;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/u$e$b;->b:Landroidx/appcompat/widget/u$e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/h0;->dismiss()V

    goto :goto_1a

    .line 3
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/u$e$b;->b:Landroidx/appcompat/widget/u$e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/u$e;->S()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/u$e$b;->b:Landroidx/appcompat/widget/u$e;

    invoke-static {v0}, Landroidx/appcompat/widget/u$e;->R(Landroidx/appcompat/widget/u$e;)V

    :goto_1a
    return-void
.end method
