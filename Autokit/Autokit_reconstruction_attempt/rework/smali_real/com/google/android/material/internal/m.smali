.class public Lcom/google/android/material/internal/m;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private b:I


# virtual methods
.method public final b(IZ)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p2, :cond_7

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/m;->b:I

    :cond_7
    return-void
.end method

.method public final getUserSetVisibility()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/m;->b:I

    return v0
.end method

.method public setVisibility(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/internal/m;->b(IZ)V

    return-void
.end method
