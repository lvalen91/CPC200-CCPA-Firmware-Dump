.class Landroidx/fragment/app/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/fragment/app/c0$d;

.field final synthetic c:Landroidx/fragment/app/c0;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/c0$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c0$a;->c:Landroidx/fragment/app/c0;

    iput-object p2, p0, Landroidx/fragment/app/c0$a;->b:Landroidx/fragment/app/c0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0$a;->c:Landroidx/fragment/app/c0;

    iget-object v0, v0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/c0$a;->b:Landroidx/fragment/app/c0$d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0$a;->b:Landroidx/fragment/app/c0$d;

    invoke-virtual {v0}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/c0$a;->b:Landroidx/fragment/app/c0$d;

    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c0$e$c;->a(Landroid/view/View;)V

    :cond_1d
    return-void
.end method
