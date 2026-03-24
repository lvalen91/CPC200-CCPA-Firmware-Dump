.class Lcom/google/android/material/transformation/FabTransformationBehavior$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->Y(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;FFLjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/c/a/a/p/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Ld/c/a/a/p/d;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$d;->a:Ld/c/a/a/p/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$d;->a:Ld/c/a/a/p/d;

    invoke-interface {p1}, Ld/c/a/a/p/d;->getRevealInfo()Ld/c/a/a/p/d$e;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    iput v0, p1, Ld/c/a/a/p/d$e;->c:F

    .line 3
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$d;->a:Ld/c/a/a/p/d;

    invoke-interface {v0, p1}, Ld/c/a/a/p/d;->setRevealInfo(Ld/c/a/a/p/d$e;)V

    return-void
.end method
