.class public final Landroidx/core/content/c/c$b;
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
    name = "b"
.end annotation


# instance fields
.field private final a:[Landroidx/core/content/c/c$c;


# direct methods
.method public constructor <init>([Landroidx/core/content/c/c$c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/content/c/c$b;->a:[Landroidx/core/content/c/c$c;

    return-void
.end method


# virtual methods
.method public a()[Landroidx/core/content/c/c$c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/c/c$b;->a:[Landroidx/core/content/c/c$c;

    return-object v0
.end method
