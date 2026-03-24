.class Landroidx/appcompat/app/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/app/g;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$b;->b:Landroidx/appcompat/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g$b;->b:Landroidx/appcompat/app/g;

    iget v1, v0, Landroidx/appcompat/app/g;->V:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 2
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/g;->a0(I)V

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/g$b;->b:Landroidx/appcompat/app/g;

    iget v1, v0, Landroidx/appcompat/app/g;->V:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_19

    const/16 v1, 0x6c

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/g;->a0(I)V

    .line 5
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/app/g$b;->b:Landroidx/appcompat/app/g;

    iput-boolean v2, v0, Landroidx/appcompat/app/g;->U:Z

    .line 6
    iput v2, v0, Landroidx/appcompat/app/g;->V:I

    return-void
.end method
