.class Lcom/google/android/material/appbar/AppBarLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/AppBarLayout;->t(Ld/c/a/a/a0/g;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/c/a/a/a0/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Ld/c/a/a/a0/g;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$a;->a:Ld/c/a/a/a0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$a;->a:Ld/c/a/a/a0/g;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Ld/c/a/a/a0/g;->V(F)V

    return-void
.end method
