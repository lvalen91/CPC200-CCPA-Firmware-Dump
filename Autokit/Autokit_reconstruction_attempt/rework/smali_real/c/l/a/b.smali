.class Lc/l/a/b;
.super Lc/l/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/l/a/b$c;,
        Lc/l/a/b$b;,
        Lc/l/a/b$a;
    }
.end annotation


# static fields
.field static c:Z


# instance fields
.field private final a:Landroidx/lifecycle/j;

.field private final b:Lc/l/a/b$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/j;Landroidx/lifecycle/x;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lc/l/a/a;-><init>()V

    .line 2
    iput-object p1, p0, Lc/l/a/b;->a:Landroidx/lifecycle/j;

    .line 3
    invoke-static {p2}, Lc/l/a/b$c;->j(Landroidx/lifecycle/x;)Lc/l/a/b$c;

    move-result-object p1

    iput-object p1, p0, Lc/l/a/b;->b:Lc/l/a/b$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lc/l/a/b;->b:Lc/l/a/b$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/l/a/b$c;->i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/l/a/b;->b:Lc/l/a/b$c;

    invoke-virtual {v0}, Lc/l/a/b$c;->k()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lc/l/a/b;->a:Landroidx/lifecycle/j;

    invoke-static {v1, v0}, Lc/g/j/b;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
