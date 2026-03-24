.class Lc/i/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/i/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lc/i/b/c;


# direct methods
.method constructor <init>(Lc/i/b/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/i/b/c$b;->b:Lc/i/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/i/b/c$b;->b:Lc/i/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/i/b/c;->E(I)V

    return-void
.end method
