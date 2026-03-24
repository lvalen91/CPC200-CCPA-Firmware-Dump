.class Lc/g/h/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g/j/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/g/h/e;->d(Landroid/content/Context;Lc/g/h/d;ILjava/util/concurrent/Executor;Lc/g/h/a;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/g/j/a<",
        "Lc/g/h/e$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/g/h/a;


# direct methods
.method constructor <init>(Lc/g/h/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/g/h/e$b;->a:Lc/g/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lc/g/h/e$e;

    invoke-virtual {p0, p1}, Lc/g/h/e$b;->b(Lc/g/h/e$e;)V

    return-void
.end method

.method public b(Lc/g/h/e$e;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/g/h/e$b;->a:Lc/g/h/a;

    invoke-virtual {v0, p1}, Lc/g/h/a;->b(Lc/g/h/e$e;)V

    return-void
.end method
