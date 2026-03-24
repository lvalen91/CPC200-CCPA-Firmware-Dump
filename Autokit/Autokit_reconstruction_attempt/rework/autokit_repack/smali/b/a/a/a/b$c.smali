.class Lb/a/a/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final b:I

.field final c:Landroid/os/Bundle;

.field final synthetic d:Lb/a/a/a/b;


# direct methods
.method constructor <init>(Lb/a/a/a/b;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lb/a/a/a/b$c;->d:Lb/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lb/a/a/a/b$c;->b:I

    .line 3
    iput-object p3, p0, Lb/a/a/a/b$c;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lb/a/a/a/b$c;->d:Lb/a/a/a/b;

    iget v1, p0, Lb/a/a/a/b$c;->b:I

    iget-object v2, p0, Lb/a/a/a/b$c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/b;->j(ILandroid/os/Bundle;)V

    return-void
.end method
