.class public final Landroidx/core/content/c/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/content/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Lc/g/h/d;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/g/h/d;IILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/content/c/c$d;->a:Lc/g/h/d;

    .line 3
    iput p2, p0, Landroidx/core/content/c/c$d;->c:I

    .line 4
    iput p3, p0, Landroidx/core/content/c/c$d;->b:I

    .line 5
    iput-object p4, p0, Landroidx/core/content/c/c$d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/c/c$d;->c:I

    return v0
.end method

.method public b()Lc/g/h/d;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/c/c$d;->a:Lc/g/h/d;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/c/c$d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/c/c$d;->b:I

    return v0
.end method
