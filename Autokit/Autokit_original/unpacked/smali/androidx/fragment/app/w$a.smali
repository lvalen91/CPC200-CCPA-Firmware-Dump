.class final Landroidx/fragment/app/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/w;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "a"
.end annotation

.field a:I

.field b:Landroidx/fragment/app/Fragment;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroidx/lifecycle/f$c;

.field h:Landroidx/lifecycle/f$c;

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;)V
  .registers 3
  .line 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 3
    iput p1, p0, Landroidx/fragment/app/w$a;->a:I
  .line 4
    iput-object p2, p0, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;
  .line 5
    sget-object p1, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;
    iput-object p1, p0, Landroidx/fragment/app/w$a;->g:Landroidx/lifecycle/f$c;
  .line 6
    iput-object p1, p0, Landroidx/fragment/app/w$a;->h:Landroidx/lifecycle/f$c;
    return-void
.end method
