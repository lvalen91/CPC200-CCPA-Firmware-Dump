.class Landroidx/lifecycle/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/lifecycle/f$c;

.field b:Landroidx/lifecycle/h;


# direct methods
.method constructor <init>(Landroidx/lifecycle/i;Landroidx/lifecycle/f$c;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/lifecycle/m;->f(Ljava/lang/Object;)Landroidx/lifecycle/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/k$a;->b:Landroidx/lifecycle/h;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroidx/lifecycle/f$b;->b()Landroidx/lifecycle/f$c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    invoke-static {v1, v0}, Landroidx/lifecycle/k;->k(Landroidx/lifecycle/f$c;Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$c;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    .line 3
    iget-object v1, p0, Landroidx/lifecycle/k$a;->b:Landroidx/lifecycle/h;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/h;->d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V

    .line 4
    iput-object v0, p0, Landroidx/lifecycle/k$a;->a:Landroidx/lifecycle/f$c;

    return-void
.end method
