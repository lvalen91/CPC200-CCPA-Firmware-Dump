.class Lc/a/l/a/a$d;
.super Lc/a/l/a/a$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lc/q/a/a/b;


# direct methods
.method constructor <init>(Lc/q/a/a/b;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/a/l/a/a$g;-><init>(Lc/a/l/a/a$a;)V

    .line 2
    iput-object p1, p0, Lc/a/l/a/a$d;->a:Lc/q/a/a/b;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/a/l/a/a$d;->a:Lc/q/a/a/b;

    invoke-virtual {v0}, Lc/q/a/a/b;->start()V

    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/a/l/a/a$d;->a:Lc/q/a/a/b;

    invoke-virtual {v0}, Lc/q/a/a/b;->stop()V

    return-void
.end method
