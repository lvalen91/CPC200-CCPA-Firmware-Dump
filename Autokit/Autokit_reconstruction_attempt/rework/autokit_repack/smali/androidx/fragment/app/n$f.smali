.class Landroidx/fragment/app/n$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroidx/fragment/app/c0;
    .registers 3

    .line 1
    new-instance v0, Landroidx/fragment/app/c;

    invoke-direct {v0, p1}, Landroidx/fragment/app/c;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method
