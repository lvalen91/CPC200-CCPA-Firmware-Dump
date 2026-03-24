.class Landroidx/fragment/app/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g/g/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iput-object p2, p0, Landroidx/fragment/app/c$d;->a:Landroid/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c$d;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    return-void
.end method
