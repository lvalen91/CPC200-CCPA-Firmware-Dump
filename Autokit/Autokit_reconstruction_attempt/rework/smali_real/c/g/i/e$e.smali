.class Lc/g/i/e$e;
.super Lc/g/i/e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method constructor <init>(Lc/g/i/e$c;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lc/g/i/e$d;-><init>(Lc/g/i/e$c;)V

    .line 2
    iput-boolean p2, p0, Lc/g/i/e$e;->b:Z

    return-void
.end method


# virtual methods
.method protected b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/g/i/e$e;->b:Z

    return v0
.end method
