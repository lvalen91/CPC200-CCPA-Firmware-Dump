.class Ld/c/a/a/a0/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/c/a/a/a0/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/c/a/a/a0/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F


# direct methods
.method constructor <init>(Ld/c/a/a/a0/g;F)V
    .registers 3

    .line 1
    iput p2, p0, Ld/c/a/a/a0/g$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/c;
    .registers 4

    .line 1
    instance-of v0, p1, Ld/c/a/a/a0/i;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    new-instance v0, Ld/c/a/a/a0/b;

    iget v1, p0, Ld/c/a/a/a0/g$b;->a:F

    invoke-direct {v0, v1, p1}, Ld/c/a/a/a0/b;-><init>(FLd/c/a/a/a0/c;)V

    move-object p1, v0

    :goto_d
    return-object p1
.end method
