.class Landroidx/fragment/app/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/fragment/app/z;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroidx/fragment/app/z;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5

    .line 1
    iput-object p2, p0, Landroidx/fragment/app/c$h;->b:Landroidx/fragment/app/z;

    iput-object p3, p0, Landroidx/fragment/app/c$h;->c:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/c$h;->d:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$h;->b:Landroidx/fragment/app/z;

    iget-object v1, p0, Landroidx/fragment/app/c$h;->c:Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/c$h;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/z;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
