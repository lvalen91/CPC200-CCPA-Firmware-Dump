.class Lc/p/q$a;
.super Lc/p/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/p/q;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/p/m;


# direct methods
.method constructor <init>(Lc/p/q;Lc/p/m;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lc/p/q$a;->a:Lc/p/m;

    invoke-direct {p0}, Lc/p/n;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lc/p/m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/p/q$a;->a:Lc/p/m;

    invoke-virtual {v0}, Lc/p/m;->S()V

    .line 2
    invoke-virtual {p1, p0}, Lc/p/m;->O(Lc/p/m$f;)Lc/p/m;

    return-void
.end method
