.class public abstract Lcn/manstep/phonemirrorBox/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()[I
.end method

.method public b(Landroid/content/Context;Z)I
    .registers 4

    const/high16 v0, 0x42400000    # 48.0f

    .line 1
    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v0

    if-eqz p2, :cond_e

    const/high16 p2, 0x42800000    # 64.0f

    .line 2
    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v0

    :cond_e
    return v0
.end method

.method public abstract c(Landroid/content/Context;I)I
.end method

.method public abstract d()[Ljava/lang/String;
.end method

.method public abstract e()I
.end method

.method public abstract f(Landroid/content/Context;Landroid/widget/Button;ZZZ)V
.end method
