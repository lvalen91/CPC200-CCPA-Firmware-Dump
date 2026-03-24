.class public final Ld/c/b/e/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/c/b/e/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld/c/b/e/b/c$a;->a:I

    .line 3
    iput p2, p0, Ld/c/b/e/b/c$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Ld/c/b/e/b/c$a;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Ld/c/b/e/b/c$a;->b:I

    return v0
.end method
