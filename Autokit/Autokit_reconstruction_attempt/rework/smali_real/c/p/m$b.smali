.class Lc/p/m$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/p/m;->R(Landroid/animation/Animator;Lc/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a;

.field final synthetic b:Lc/p/m;


# direct methods
.method constructor <init>(Lc/p/m;Lc/d/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lc/p/m$b;->b:Lc/p/m;

    iput-object p2, p0, Lc/p/m$b;->a:Lc/d/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/p/m$b;->a:Lc/d/a;

    invoke-virtual {v0, p1}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lc/p/m$b;->b:Lc/p/m;

    iget-object v0, v0, Lc/p/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/p/m$b;->b:Lc/p/m;

    iget-object v0, v0, Lc/p/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
