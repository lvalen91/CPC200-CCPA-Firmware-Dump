.class final Ld/c/a/a/p/a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/c/a/a/p/a;->b(Ld/c/a/a/p/d;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/c/a/a/p/d;


# direct methods
.method constructor <init>(Ld/c/a/a/p/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ld/c/a/a/p/a$a;->a:Ld/c/a/a/p/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Ld/c/a/a/p/a$a;->a:Ld/c/a/a/p/d;

    invoke-interface {p1}, Ld/c/a/a/p/d;->b()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Ld/c/a/a/p/a$a;->a:Ld/c/a/a/p/d;

    invoke-interface {p1}, Ld/c/a/a/p/d;->a()V

    return-void
.end method
