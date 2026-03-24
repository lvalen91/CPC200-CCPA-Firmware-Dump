.class final Landroidx/databinding/ViewDataBinding$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/ViewDataBinding$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/ViewDataBinding;I)Landroidx/databinding/ViewDataBinding$j;
    .registers 4

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$h;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/ViewDataBinding$h;-><init>(Landroidx/databinding/ViewDataBinding;I)V

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$h;->f()Landroidx/databinding/ViewDataBinding$j;

    move-result-object p1

    return-object p1
.end method
