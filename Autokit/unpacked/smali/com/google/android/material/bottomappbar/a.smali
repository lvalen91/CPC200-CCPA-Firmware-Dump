.class public Lcom/google/android/material/bottomappbar/a;
.super Ld/c/a/a/a0/f;
.implements Ljava/lang/Cloneable;
.source "SourceFile"

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.method public b(FFFLd/c/a/a/a0/m;)V
  .registers 28
    move-object/from16 v0, p0
    move/from16 v1, p1
    move-object/from16 v9, p4
  .line 1
    iget v2, v0, Lcom/google/android/material/bottomappbar/a;->d:F
    const/4 v10, 0
    cmpl-float v3, v2, v10
    if-nez v3, :L0
  .line 2
    invoke-virtual { v9, v1, v10 }, Ld/c/a/a/a0/m;->m(FF)V
    return-void
  :L0
  .line 3
    iget v3, v0, Lcom/google/android/material/bottomappbar/a;->c:F
    const/high16 v11, 16384
    mul-float v3, v3, v11
    add-float/2addr v3, v2
    div-float v12, v3, v11
  .line 4
    iget v3, v0, Lcom/google/android/material/bottomappbar/a;->b:F
    mul-float v13, p3, v3
  .line 5
    iget v3, v0, Lcom/google/android/material/bottomappbar/a;->f:F
    add-float v14, p2, v3
  .line 6
    iget v3, v0, Lcom/google/android/material/bottomappbar/a;->e:F
    mul-float v3, v3, p3
    const/high16 v4, 16256
    sub-float v5, v4, p3
    mul-float v5, v5, v12
    add-float/2addr v3, v5
    div-float v5, v3, v12
    cmpl-float v4, v5, v4
    if-ltz v4, :L1
  .line 7
    invoke-virtual { v9, v1, v10 }, Ld/c/a/a/a0/m;->m(FF)V
    return-void
  :L1
  .line 8
    iget v4, v0, Lcom/google/android/material/bottomappbar/a;->g:F
    mul-float v15, v4, p3
    const/high16 v5, -16512
    cmpl-float v5, v4, v5
    if-eqz v5, :L3
    mul-float v4, v4, v11
    sub-float/2addr v4, v2
  .line 9
    invoke-static { v4 }, Ljava/lang/Math;->abs(F)F
    move-result v2
    const v4, 1036831949
    cmpg-float v2, v2, v4
    if-gez v2, :L2
    goto :L3
  :L2
    const/4 v2, 0
    const/16 v16, 0
    goto :L4
  :L3
    const/4 v2, 1
    const/16 v16, 1
  :L4
    if-nez v16, :L5
    const/high16 v2, 16352
    const/16 v17, 0
    goto :L6
  :L5
    move/from16 v17, v3
    const/4 v2, 0
  :L6
    add-float v3, v12, v13
    mul-float v3, v3, v3
    add-float v4, v17, v13
    mul-float v5, v4, v4
    sub-float/2addr v3, v5
    float-to-double v5, v3
  .line 10
    invoke-static { v5, v6 }, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v5
    double-to-float v3, v5
    sub-float v5, v14, v3
    add-float v18, v14, v3
    div-float/2addr v3, v4
    float-to-double v3, v3
  .line 11
    invoke-static { v3, v4 }, Ljava/lang/Math;->atan(D)D
    move-result-wide v3
    invoke-static { v3, v4 }, Ljava/lang/Math;->toDegrees(D)D
    move-result-wide v3
    double-to-float v8, v3
    const/high16 v3, 17076
    sub-float/2addr v3, v8
    add-float v19, v3, v2
  .line 12
    invoke-virtual { v9, v5, v10 }, Ld/c/a/a/a0/m;->m(FF)V
    sub-float v3, v5, v13
    const/4 v4, 0
    add-float/2addr v5, v13
    mul-float v20, v13, v11
    const/high16 v7, 17287
    move-object/from16 v2, p4
    move/from16 v6, v20
    move/from16 v21, v8
  .line 13
    invoke-virtual/range { v2 .. v8 }, Ld/c/a/a/a0/m;->a(FFFFFF)V
    const/high16 v2, 17204
    if-eqz v16, :L7
    sub-float v3, v14, v12
    neg-float v4, v12
    sub-float v4, v4, v17
    add-float v5, v14, v12
    sub-float v6, v12, v17
    sub-float v7, v2, v19
    mul-float v19, v19, v11
    sub-float v8, v19, v2
    move-object/from16 v2, p4
  .line 14
    invoke-virtual/range { v2 .. v8 }, Ld/c/a/a/a0/m;->a(FFFFFF)V
    goto :L8
  :L7
  .line 15
    iget v3, v0, Lcom/google/android/material/bottomappbar/a;->c:F
    mul-float v16, v15, v11
    add-float v4, v3, v16
    sub-float v5, v14, v12
    add-float v6, v15, v3
    neg-float v6, v6
    add-float v7, v5, v4
    add-float v8, v3, v15
    sub-float v17, v2, v19
    mul-float v3, v19, v11
    sub-float/2addr v3, v2
    div-float v22, v3, v11
    move-object/from16 v2, p4
    move v3, v5
    move v4, v6
    move v5, v7
    move v6, v8
    move/from16 v7, v17
    move/from16 v8, v22
  .line 16
    invoke-virtual/range { v2 .. v8 }, Ld/c/a/a/a0/m;->a(FFFFFF)V
    add-float v5, v14, v12
  .line 17
    iget v2, v0, Lcom/google/android/material/bottomappbar/a;->c:F
    div-float v3, v2, v11
    add-float/2addr v3, v15
    sub-float v3, v5, v3
    add-float/2addr v2, v15
    invoke-virtual { v9, v3, v2 }, Ld/c/a/a/a0/m;->m(FF)V
  .line 18
    iget v2, v0, Lcom/google/android/material/bottomappbar/a;->c:F
    add-float v16, v16, v2
    sub-float v3, v5, v16
    add-float v4, v15, v2
    neg-float v4, v4
    add-float v6, v2, v15
    const/high16 v7, 17076
    const/high16 v2, -15692
    add-float v8, v19, v2
    move-object/from16 v2, p4
    invoke-virtual/range { v2 .. v8 }, Ld/c/a/a/a0/m;->a(FFFFFF)V
  :L8
    sub-float v3, v18, v13
    const/4 v4, 0
    add-float v5, v18, v13
    const/high16 v2, 17287
    sub-float v7, v2, v21
    move-object/from16 v2, p4
    move/from16 v6, v20
    move/from16 v8, v21
  .line 19
    invoke-virtual/range { v2 .. v8 }, Ld/c/a/a/a0/m;->a(FFFFFF)V
  .line 20
    invoke-virtual { v9, v1, v10 }, Ld/c/a/a/a0/m;->m(FF)V
    return-void
.end method

.method c()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->e:F
    return v0
.end method

.method public d()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->g:F
    return v0
.end method

.method e()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->c:F
    return v0
.end method

.method f()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->b:F
    return v0
.end method

.method public g()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->d:F
    return v0
.end method

.method h(F)V
  .registers 3
    const/4 v0, 0
    cmpg-float v0, p1, v0
    if-ltz v0, :L0
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->e:F
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "cradleVerticalOffset must be positive."
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public i(F)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->g:F
    return-void
.end method

.method j(F)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->c:F
    return-void
.end method

.method k(F)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->b:F
    return-void
.end method

.method public l(F)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->d:F
    return-void
.end method

.method m(F)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->f:F
    return-void
.end method
