.class Landroidx/fragment/app/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "d"
.end annotation

.field public final a:Landroid/view/animation/Animation;

.field public final b:Landroid/animation/Animator;

.method constructor <init>(Landroid/animation/Animator;)V
  .registers 3
  .line 5
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 6
    iput-object v0, p0, Landroidx/fragment/app/f$d;->a:Landroid/view/animation/Animation;
  .line 7
    iput-object p1, p0, Landroidx/fragment/app/f$d;->b:Landroid/animation/Animator;
    if-eqz p1, :L0
    return-void
  :L0
  .line 8
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Animator cannot be null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method constructor <init>(Landroid/view/animation/Animation;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Landroidx/fragment/app/f$d;->a:Landroid/view/animation/Animation;
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Landroidx/fragment/app/f$d;->b:Landroid/animation/Animator;
    if-eqz p1, :L0
    return-void
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Animation cannot be null"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
