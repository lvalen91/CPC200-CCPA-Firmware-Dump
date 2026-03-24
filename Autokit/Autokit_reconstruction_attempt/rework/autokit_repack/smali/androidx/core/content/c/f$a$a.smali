.class Landroidx/core/content/c/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/content/c/f$a;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/graphics/Typeface;

.field final synthetic c:Landroidx/core/content/c/f$a;


# direct methods
.method constructor <init>(Landroidx/core/content/c/f$a;Landroid/graphics/Typeface;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/core/content/c/f$a$a;->c:Landroidx/core/content/c/f$a;

    iput-object p2, p0, Landroidx/core/content/c/f$a$a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/c/f$a$a;->c:Landroidx/core/content/c/f$a;

    iget-object v1, p0, Landroidx/core/content/c/f$a$a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroidx/core/content/c/f$a;->e(Landroid/graphics/Typeface;)V

    return-void
.end method
