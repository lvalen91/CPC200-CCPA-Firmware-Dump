.class Ld/c/a/a/a0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/c/a/a/a0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Ld/c/a/a/a0/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ld/c/a/a/a0/l;

    invoke-direct {v0}, Ld/c/a/a/a0/l;-><init>()V

    sput-object v0, Ld/c/a/a/a0/l$a;->a:Ld/c/a/a/a0/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
