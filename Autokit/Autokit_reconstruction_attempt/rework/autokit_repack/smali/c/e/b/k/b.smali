.class public Lc/e/b/k/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lc/e/b/k/f;Lc/e/b/d;IILc/e/b/k/c;)V
    .registers 41

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p4

    .line 1
    iget-object v10, v1, Lc/e/b/k/c;->a:Lc/e/b/k/e;

    .line 2
    iget-object v11, v1, Lc/e/b/k/c;->c:Lc/e/b/k/e;

    .line 3
    iget-object v12, v1, Lc/e/b/k/c;->b:Lc/e/b/k/e;

    .line 4
    iget-object v13, v1, Lc/e/b/k/c;->d:Lc/e/b/k/e;

    .line 5
    iget-object v2, v1, Lc/e/b/k/c;->e:Lc/e/b/k/e;

    .line 6
    iget v3, v1, Lc/e/b/k/c;->k:F

    .line 7
    iget-object v4, v1, Lc/e/b/k/c;->f:Lc/e/b/k/e;

    .line 8
    iget-object v4, v1, Lc/e/b/k/c;->g:Lc/e/b/k/e;

    .line 9
    iget-object v4, v0, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v4, v4, p2

    sget-object v5, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    const/4 v5, 0x2

    if-nez p2, :cond_38

    .line 10
    iget v8, v2, Lc/e/b/k/e;->h0:I

    if-nez v8, :cond_2b

    const/4 v8, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v8, 0x0

    .line 11
    :goto_2c
    iget v14, v2, Lc/e/b/k/e;->h0:I

    if-ne v14, v7, :cond_32

    const/4 v14, 0x1

    goto :goto_33

    :cond_32
    const/4 v14, 0x0

    .line 12
    :goto_33
    iget v15, v2, Lc/e/b/k/e;->h0:I

    if-ne v15, v5, :cond_4c

    goto :goto_4a

    .line 13
    :cond_38
    iget v8, v2, Lc/e/b/k/e;->i0:I

    if-nez v8, :cond_3e

    const/4 v8, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v8, 0x0

    .line 14
    :goto_3f
    iget v14, v2, Lc/e/b/k/e;->i0:I

    if-ne v14, v7, :cond_45

    const/4 v14, 0x1

    goto :goto_46

    :cond_45
    const/4 v14, 0x0

    .line 15
    :goto_46
    iget v15, v2, Lc/e/b/k/e;->i0:I

    if-ne v15, v5, :cond_4c

    :goto_4a
    const/4 v5, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v5, 0x0

    :goto_4d
    move-object v7, v10

    move v15, v14

    move v14, v8

    const/4 v8, 0x0

    :goto_51
    const/16 v21, 0x0

    if-nez v8, :cond_131

    .line 16
    iget-object v6, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v6, v6, p3

    if-eqz v5, :cond_5e

    const/16 v19, 0x1

    goto :goto_60

    :cond_5e
    const/16 v19, 0x4

    .line 17
    :goto_60
    invoke-virtual {v6}, Lc/e/b/k/d;->e()I

    move-result v22

    move/from16 v23, v3

    .line 18
    iget-object v3, v7, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v3, v3, p2

    move/from16 v24, v8

    sget-object v8, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v3, v8, :cond_78

    iget-object v3, v7, Lc/e/b/k/e;->p:[I

    aget v3, v3, p2

    if-nez v3, :cond_78

    const/4 v3, 0x1

    goto :goto_79

    :cond_78
    const/4 v3, 0x0

    .line 19
    :goto_79
    iget-object v8, v6, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v8, :cond_85

    if-eq v7, v10, :cond_85

    .line 20
    invoke-virtual {v8}, Lc/e/b/k/d;->e()I

    move-result v8

    add-int v22, v22, v8

    :cond_85
    move/from16 v8, v22

    if-eqz v5, :cond_92

    if-eq v7, v10, :cond_92

    if-eq v7, v12, :cond_92

    move/from16 v22, v15

    const/16 v19, 0x8

    goto :goto_94

    :cond_92
    move/from16 v22, v15

    .line 21
    :goto_94
    iget-object v15, v6, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v15, :cond_c6

    if-ne v7, v12, :cond_a7

    move/from16 v25, v14

    .line 22
    iget-object v14, v6, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v15, v15, Lc/e/b/k/d;->i:Lc/e/b/i;

    move-object/from16 v26, v2

    const/4 v2, 0x6

    invoke-virtual {v9, v14, v15, v8, v2}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    goto :goto_b4

    :cond_a7
    move-object/from16 v26, v2

    move/from16 v25, v14

    .line 23
    iget-object v2, v6, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v14, v15, Lc/e/b/k/d;->i:Lc/e/b/i;

    const/16 v15, 0x8

    invoke-virtual {v9, v2, v14, v8, v15}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    :goto_b4
    if-eqz v3, :cond_ba

    if-nez v5, :cond_ba

    const/4 v2, 0x5

    goto :goto_bc

    :cond_ba
    move/from16 v2, v19

    .line 24
    :goto_bc
    iget-object v3, v6, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v6, v6, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v6, v6, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {v9, v3, v6, v8, v2}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    goto :goto_ca

    :cond_c6
    move-object/from16 v26, v2

    move/from16 v25, v14

    :goto_ca
    if-eqz v4, :cond_100

    .line 25
    invoke-virtual {v7}, Lc/e/b/k/e;->Q()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_ee

    iget-object v2, v7, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v2, v2, p2

    sget-object v3, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v2, v3, :cond_ee

    .line 26
    iget-object v2, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;

    aget-object v2, v2, p3

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    const/4 v6, 0x5

    const/4 v8, 0x0

    invoke-virtual {v9, v3, v2, v8, v6}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    goto :goto_ef

    :cond_ee
    const/4 v8, 0x0

    .line 27
    :goto_ef
    iget-object v2, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v2, v2, p3

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v3, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v3, v3, p3

    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;

    const/16 v6, 0x8

    invoke-virtual {v9, v2, v3, v8, v6}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    .line 28
    :cond_100
    iget-object v2, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v2, :cond_11f

    .line 29
    iget-object v2, v2, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    .line 30
    iget-object v3, v2, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v6, v3, p3

    iget-object v6, v6, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v6, :cond_11f

    aget-object v3, v3, p3

    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v3, v3, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    if-eq v3, v7, :cond_11d

    goto :goto_11f

    :cond_11d
    move-object/from16 v21, v2

    :cond_11f
    :goto_11f
    if-eqz v21, :cond_126

    move-object/from16 v7, v21

    move/from16 v8, v24

    goto :goto_127

    :cond_126
    const/4 v8, 0x1

    :goto_127
    move/from16 v15, v22

    move/from16 v3, v23

    move/from16 v14, v25

    move-object/from16 v2, v26

    goto/16 :goto_51

    :cond_131
    move-object/from16 v26, v2

    move/from16 v23, v3

    move/from16 v25, v14

    move/from16 v22, v15

    if-eqz v13, :cond_19c

    .line 31
    iget-object v2, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v2, :cond_19c

    .line 32
    iget-object v2, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v2, v2, v3

    .line 33
    iget-object v6, v13, Lc/e/b/k/e;->Q:[Lc/e/b/k/e$b;

    aget-object v6, v6, p2

    sget-object v7, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    if-ne v6, v7, :cond_159

    iget-object v6, v13, Lc/e/b/k/e;->p:[I

    aget v6, v6, p2

    if-nez v6, :cond_159

    const/4 v6, 0x1

    goto :goto_15a

    :cond_159
    const/4 v6, 0x0

    :goto_15a
    if-eqz v6, :cond_172

    if-nez v5, :cond_172

    .line 34
    iget-object v6, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v7, v6, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    if-ne v7, v0, :cond_172

    .line 35
    iget-object v7, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v6, v6, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {v2}, Lc/e/b/k/d;->e()I

    move-result v8

    neg-int v8, v8

    const/4 v14, 0x5

    invoke-virtual {v9, v7, v6, v8, v14}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    goto :goto_188

    :cond_172
    const/4 v14, 0x5

    if-eqz v5, :cond_188

    .line 36
    iget-object v6, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v7, v6, Lc/e/b/k/d;->d:Lc/e/b/k/e;

    if-ne v7, v0, :cond_188

    .line 37
    iget-object v7, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v6, v6, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {v2}, Lc/e/b/k/d;->e()I

    move-result v8

    neg-int v8, v8

    const/4 v15, 0x4

    invoke-virtual {v9, v7, v6, v8, v15}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    .line 38
    :cond_188
    :goto_188
    iget-object v6, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v7, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v3, v7, v3

    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 39
    invoke-virtual {v2}, Lc/e/b/k/d;->e()I

    move-result v2

    neg-int v2, v2

    const/4 v7, 0x6

    .line 40
    invoke-virtual {v9, v6, v3, v2, v7}, Lc/e/b/d;->j(Lc/e/b/i;Lc/e/b/i;II)V

    goto :goto_19d

    :cond_19c
    const/4 v14, 0x5

    :goto_19d
    if-eqz v4, :cond_1b8

    .line 41
    iget-object v0, v0, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v3, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v4, v3, v2

    iget-object v4, v4, Lc/e/b/k/d;->i:Lc/e/b/i;

    aget-object v2, v3, v2

    .line 42
    invoke-virtual {v2}, Lc/e/b/k/d;->e()I

    move-result v2

    const/16 v3, 0x8

    .line 43
    invoke-virtual {v9, v0, v4, v2, v3}, Lc/e/b/d;->h(Lc/e/b/i;Lc/e/b/i;II)V

    .line 44
    :cond_1b8
    iget-object v0, v1, Lc/e/b/k/c;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_267

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_267

    .line 46
    iget-boolean v4, v1, Lc/e/b/k/c;->q:Z

    if-eqz v4, :cond_1cf

    iget-boolean v4, v1, Lc/e/b/k/c;->s:Z

    if-nez v4, :cond_1cf

    .line 47
    iget v4, v1, Lc/e/b/k/c;->j:I

    int-to-float v4, v4

    goto :goto_1d1

    :cond_1cf
    move/from16 v4, v23

    :goto_1d1
    const/4 v6, 0x0

    move-object/from16 v7, v21

    const/4 v8, 0x0

    const/16 v28, 0x0

    :goto_1d7
    if-ge v8, v2, :cond_267

    .line 48
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lc/e/b/k/e;

    .line 49
    iget-object v3, v15, Lc/e/b/k/e;->j0:[F

    aget v3, v3, p2

    cmpg-float v18, v3, v6

    if-gez v18, :cond_203

    .line 50
    iget-boolean v3, v1, Lc/e/b/k/c;->s:Z

    if-eqz v3, :cond_1fe

    .line 51
    iget-object v3, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v15, p3, 0x1

    aget-object v15, v3, v15

    iget-object v15, v15, Lc/e/b/k/d;->i:Lc/e/b/i;

    aget-object v3, v3, p3

    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;

    const/4 v6, 0x0

    const/4 v14, 0x4

    invoke-virtual {v9, v15, v3, v6, v14}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    const/4 v14, 0x0

    goto :goto_21a

    :cond_1fe
    const/4 v14, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    goto :goto_204

    :cond_203
    const/4 v14, 0x4

    :goto_204
    cmpl-float v18, v3, v6

    if-nez v18, :cond_21f

    .line 52
    iget-object v3, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v15, p3, 0x1

    aget-object v15, v3, v15

    iget-object v15, v15, Lc/e/b/k/d;->i:Lc/e/b/i;

    aget-object v3, v3, p3

    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;

    const/16 v6, 0x8

    const/4 v14, 0x0

    invoke-virtual {v9, v15, v3, v14, v6}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    :goto_21a
    move-object/from16 v23, v0

    move/from16 v17, v2

    goto :goto_25c

    :cond_21f
    const/4 v14, 0x0

    if-eqz v7, :cond_255

    .line 53
    iget-object v6, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v7, v6, p3

    iget-object v7, v7, Lc/e/b/k/d;->i:Lc/e/b/i;

    add-int/lit8 v17, p3, 0x1

    .line 54
    aget-object v6, v6, v17

    iget-object v6, v6, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 55
    iget-object v14, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    move-object/from16 v23, v0

    aget-object v0, v14, p3

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 56
    aget-object v14, v14, v17

    iget-object v14, v14, Lc/e/b/k/d;->i:Lc/e/b/i;

    move/from16 v17, v2

    .line 57
    invoke-virtual/range {p1 .. p1}, Lc/e/b/d;->r()Lc/e/b/b;

    move-result-object v2

    move-object/from16 v27, v2

    move/from16 v29, v4

    move/from16 v30, v3

    move-object/from16 v31, v7

    move-object/from16 v32, v6

    move-object/from16 v33, v0

    move-object/from16 v34, v14

    .line 58
    invoke-virtual/range {v27 .. v34}, Lc/e/b/b;->l(FFFLc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;)Lc/e/b/b;

    .line 59
    invoke-virtual {v9, v2}, Lc/e/b/d;->d(Lc/e/b/b;)V

    goto :goto_259

    :cond_255
    move-object/from16 v23, v0

    move/from16 v17, v2

    :goto_259
    move/from16 v28, v3

    move-object v7, v15

    :goto_25c
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v17

    move-object/from16 v0, v23

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v14, 0x5

    goto/16 :goto_1d7

    :cond_267
    if-eqz v12, :cond_2bc

    if-eq v12, v13, :cond_26d

    if-eqz v5, :cond_2bc

    .line 60
    :cond_26d
    iget-object v0, v10, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v0, v0, p3

    .line 61
    iget-object v1, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 62
    iget-object v0, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v0, :cond_27f

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    move-object v3, v0

    goto :goto_281

    :cond_27f
    move-object/from16 v3, v21

    .line 63
    :goto_281
    iget-object v0, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v0, :cond_289

    iget-object v0, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    move-object v5, v0

    goto :goto_28b

    :cond_289
    move-object/from16 v5, v21

    .line 64
    :goto_28b
    iget-object v0, v12, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v0, v0, p3

    .line 65
    iget-object v1, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v1, v1, v2

    if-eqz v3, :cond_4db

    if-eqz v5, :cond_4db

    if-nez p2, :cond_29e

    move-object/from16 v2, v26

    .line 66
    iget v2, v2, Lc/e/b/k/e;->b0:F

    goto :goto_2a2

    :cond_29e
    move-object/from16 v2, v26

    .line 67
    iget v2, v2, Lc/e/b/k/e;->c0:F

    :goto_2a2
    move v4, v2

    .line 68
    invoke-virtual {v0}, Lc/e/b/k/d;->e()I

    move-result v6

    .line 69
    invoke-virtual {v1}, Lc/e/b/k/d;->e()I

    move-result v7

    .line 70
    iget-object v2, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v8, v1, Lc/e/b/k/d;->i:Lc/e/b/i;

    const/4 v10, 0x7

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V

    goto/16 :goto_4db

    :cond_2bc
    if-eqz v25, :cond_3ac

    if-eqz v12, :cond_3ac

    .line 71
    iget v0, v1, Lc/e/b/k/c;->j:I

    if-lez v0, :cond_2cb

    iget v1, v1, Lc/e/b/k/c;->i:I

    if-ne v1, v0, :cond_2cb

    const/16 v16, 0x1

    goto :goto_2cd

    :cond_2cb
    const/16 v16, 0x0

    :goto_2cd
    move-object v14, v12

    move-object v15, v14

    :goto_2cf
    if-eqz v14, :cond_4db

    .line 72
    iget-object v0, v14, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;

    aget-object v0, v0, p2

    move-object v8, v0

    :goto_2d6
    if-eqz v8, :cond_2e5

    .line 73
    invoke-virtual {v8}, Lc/e/b/k/e;->Q()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2e7

    .line 74
    iget-object v0, v8, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;

    aget-object v8, v0, p2

    goto :goto_2d6

    :cond_2e5
    const/16 v6, 0x8

    :cond_2e7
    if-nez v8, :cond_2f0

    if-ne v14, v13, :cond_2ec

    goto :goto_2f0

    :cond_2ec
    move-object/from16 v17, v8

    goto/16 :goto_39f

    .line 75
    :cond_2f0
    :goto_2f0
    iget-object v0, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v0, v0, p3

    .line 76
    iget-object v1, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 77
    iget-object v2, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v2, :cond_2fd

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    goto :goto_2ff

    :cond_2fd
    move-object/from16 v2, v21

    :goto_2ff
    if-eq v15, v14, :cond_30a

    .line 78
    iget-object v2, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    goto :goto_31f

    :cond_30a
    if-ne v14, v12, :cond_31f

    if-ne v15, v14, :cond_31f

    .line 79
    iget-object v2, v10, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v3, v2, p3

    iget-object v3, v3, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v3, :cond_31d

    aget-object v2, v2, p3

    iget-object v2, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    goto :goto_31f

    :cond_31d
    move-object/from16 v2, v21

    .line 80
    :cond_31f
    :goto_31f
    invoke-virtual {v0}, Lc/e/b/k/d;->e()I

    move-result v0

    .line 81
    iget-object v3, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lc/e/b/k/d;->e()I

    move-result v3

    if-eqz v8, :cond_341

    .line 82
    iget-object v5, v8, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v5, v5, p3

    .line 83
    iget-object v7, v5, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 84
    iget-object v6, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v6, v6, v4

    iget-object v6, v6, Lc/e/b/k/d;->i:Lc/e/b/i;

    move-object/from16 v35, v7

    move-object v7, v6

    move-object/from16 v6, v35

    goto :goto_354

    .line 85
    :cond_341
    iget-object v5, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v5, v5, v4

    iget-object v5, v5, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v5, :cond_34c

    .line 86
    iget-object v6, v5, Lc/e/b/k/d;->i:Lc/e/b/i;

    goto :goto_34e

    :cond_34c
    move-object/from16 v6, v21

    .line 87
    :goto_34e
    iget-object v7, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v7, v7, v4

    iget-object v7, v7, Lc/e/b/k/d;->i:Lc/e/b/i;

    :goto_354
    if-eqz v5, :cond_35b

    .line 88
    invoke-virtual {v5}, Lc/e/b/k/d;->e()I

    move-result v5

    add-int/2addr v3, v5

    :cond_35b
    if-eqz v15, :cond_366

    .line 89
    iget-object v5, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lc/e/b/k/d;->e()I

    move-result v5

    add-int/2addr v0, v5

    :cond_366
    if-eqz v1, :cond_2ec

    if-eqz v2, :cond_2ec

    if-eqz v6, :cond_2ec

    if-eqz v7, :cond_2ec

    if-ne v14, v12, :cond_378

    .line 90
    iget-object v0, v12, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lc/e/b/k/d;->e()I

    move-result v0

    :cond_378
    move v5, v0

    if-ne v14, v13, :cond_386

    .line 91
    iget-object v0, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lc/e/b/k/d;->e()I

    move-result v0

    move/from16 v17, v0

    goto :goto_388

    :cond_386
    move/from16 v17, v3

    :goto_388
    if-eqz v16, :cond_38d

    const/16 v18, 0x8

    goto :goto_38f

    :cond_38d
    const/16 v18, 0x5

    :goto_38f
    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move v3, v5

    move-object v5, v6

    move-object v6, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    move/from16 v8, v18

    .line 92
    invoke-virtual/range {v0 .. v8}, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V

    .line 93
    :goto_39f
    invoke-virtual {v14}, Lc/e/b/k/e;->Q()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_3a8

    move-object v15, v14

    :cond_3a8
    move-object/from16 v14, v17

    goto/16 :goto_2cf

    :cond_3ac
    const/16 v8, 0x8

    if-eqz v22, :cond_4db

    if-eqz v12, :cond_4db

    .line 94
    iget v0, v1, Lc/e/b/k/c;->j:I

    if-lez v0, :cond_3bd

    iget v1, v1, Lc/e/b/k/c;->i:I

    if-ne v1, v0, :cond_3bd

    const/16 v16, 0x1

    goto :goto_3bf

    :cond_3bd
    const/16 v16, 0x0

    :goto_3bf
    move-object v14, v12

    move-object v15, v14

    :goto_3c1
    if-eqz v14, :cond_47d

    .line 95
    iget-object v0, v14, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;

    aget-object v0, v0, p2

    :goto_3c7
    if-eqz v0, :cond_3d4

    .line 96
    invoke-virtual {v0}, Lc/e/b/k/e;->Q()I

    move-result v1

    if-ne v1, v8, :cond_3d4

    .line 97
    iget-object v0, v0, Lc/e/b/k/e;->l0:[Lc/e/b/k/e;

    aget-object v0, v0, p2

    goto :goto_3c7

    :cond_3d4
    if-eq v14, v12, :cond_468

    if-eq v14, v13, :cond_468

    if-eqz v0, :cond_468

    if-ne v0, v13, :cond_3df

    move-object/from16 v7, v21

    goto :goto_3e0

    :cond_3df
    move-object v7, v0

    .line 98
    :goto_3e0
    iget-object v0, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v0, v0, p3

    .line 99
    iget-object v1, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 100
    iget-object v2, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v2, :cond_3ec

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 101
    :cond_3ec
    iget-object v2, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 102
    invoke-virtual {v0}, Lc/e/b/k/d;->e()I

    move-result v0

    .line 103
    iget-object v4, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lc/e/b/k/d;->e()I

    move-result v4

    if-eqz v7, :cond_412

    .line 104
    iget-object v5, v7, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v5, v5, p3

    .line 105
    iget-object v6, v5, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 106
    iget-object v8, v5, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v8, :cond_40f

    iget-object v8, v8, Lc/e/b/k/d;->i:Lc/e/b/i;

    goto :goto_423

    :cond_40f
    move-object/from16 v8, v21

    goto :goto_423

    .line 107
    :cond_412
    iget-object v5, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v5, v5, p3

    if-eqz v5, :cond_41b

    .line 108
    iget-object v6, v5, Lc/e/b/k/d;->i:Lc/e/b/i;

    goto :goto_41d

    :cond_41b
    move-object/from16 v6, v21

    .line 109
    :goto_41d
    iget-object v8, v14, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v8, v8, v3

    iget-object v8, v8, Lc/e/b/k/d;->i:Lc/e/b/i;

    :goto_423
    if-eqz v5, :cond_42a

    .line 110
    invoke-virtual {v5}, Lc/e/b/k/d;->e()I

    move-result v5

    add-int/2addr v4, v5

    :cond_42a
    move/from16 v17, v4

    if-eqz v15, :cond_437

    .line 111
    iget-object v4, v15, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lc/e/b/k/d;->e()I

    move-result v3

    add-int/2addr v0, v3

    :cond_437
    move v3, v0

    if-eqz v16, :cond_43d

    const/16 v18, 0x8

    goto :goto_43f

    :cond_43d
    const/16 v18, 0x4

    :goto_43f
    if-eqz v1, :cond_45d

    if-eqz v2, :cond_45d

    if-eqz v6, :cond_45d

    if-eqz v8, :cond_45d

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move-object v5, v6

    const/16 v19, 0x4

    move-object v6, v8

    move-object/from16 v20, v7

    move/from16 v7, v17

    move-object/from16 v17, v15

    const/16 v15, 0x8

    move/from16 v8, v18

    .line 112
    invoke-virtual/range {v0 .. v8}, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V

    goto :goto_465

    :cond_45d
    move-object/from16 v20, v7

    move-object/from16 v17, v15

    const/16 v15, 0x8

    const/16 v19, 0x4

    :goto_465
    move-object/from16 v0, v20

    goto :goto_46e

    :cond_468
    move-object/from16 v17, v15

    const/16 v15, 0x8

    const/16 v19, 0x4

    .line 113
    :goto_46e
    invoke-virtual {v14}, Lc/e/b/k/e;->Q()I

    move-result v1

    if-eq v1, v15, :cond_475

    goto :goto_477

    :cond_475
    move-object/from16 v14, v17

    :goto_477
    move-object v15, v14

    const/16 v8, 0x8

    move-object v14, v0

    goto/16 :goto_3c1

    .line 114
    :cond_47d
    iget-object v0, v12, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v0, v0, p3

    .line 115
    iget-object v1, v10, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v1, v1, p3

    iget-object v1, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    .line 116
    iget-object v2, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    .line 117
    iget-object v2, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v2, v2, v3

    iget-object v14, v2, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v1, :cond_4ca

    if-eq v12, v13, :cond_4a4

    .line 118
    iget-object v2, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v1, v1, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {v0}, Lc/e/b/k/d;->e()I

    move-result v0

    const/4 v15, 0x5

    invoke-virtual {v9, v2, v1, v0, v15}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    goto :goto_4cb

    :cond_4a4
    const/4 v15, 0x5

    if-eqz v14, :cond_4cb

    .line 119
    iget-object v2, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v3, v1, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {v0}, Lc/e/b/k/d;->e()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v10, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v7, v14, Lc/e/b/k/d;->i:Lc/e/b/i;

    .line 120
    invoke-virtual {v10}, Lc/e/b/k/d;->e()I

    move-result v8

    const/16 v16, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v16

    .line 121
    invoke-virtual/range {v0 .. v8}, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V

    goto :goto_4cb

    :cond_4ca
    const/4 v15, 0x5

    :cond_4cb
    :goto_4cb
    if-eqz v14, :cond_4db

    if-eq v12, v13, :cond_4db

    .line 122
    iget-object v0, v10, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v1, v14, Lc/e/b/k/d;->i:Lc/e/b/i;

    invoke-virtual {v10}, Lc/e/b/k/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v9, v0, v1, v2, v15}, Lc/e/b/d;->e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;

    :cond_4db
    :goto_4db
    if-nez v25, :cond_4df

    if-eqz v22, :cond_543

    :cond_4df
    if-eqz v12, :cond_543

    if-eq v12, v13, :cond_543

    .line 123
    iget-object v0, v12, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v0, v0, p3

    .line 124
    iget-object v1, v13, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 125
    iget-object v3, v0, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v3, :cond_4f4

    iget-object v3, v3, Lc/e/b/k/d;->i:Lc/e/b/i;

    goto :goto_4f6

    :cond_4f4
    move-object/from16 v3, v21

    .line 126
    :goto_4f6
    iget-object v4, v1, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v4, :cond_4fd

    iget-object v4, v4, Lc/e/b/k/d;->i:Lc/e/b/i;

    goto :goto_4ff

    :cond_4fd
    move-object/from16 v4, v21

    :goto_4ff
    if-eq v11, v13, :cond_510

    .line 127
    iget-object v4, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v4, v4, v2

    .line 128
    iget-object v4, v4, Lc/e/b/k/d;->f:Lc/e/b/k/d;

    if-eqz v4, :cond_50d

    iget-object v4, v4, Lc/e/b/k/d;->i:Lc/e/b/i;

    move-object/from16 v21, v4

    :cond_50d
    move-object/from16 v5, v21

    goto :goto_511

    :cond_510
    move-object v5, v4

    :goto_511
    if-ne v12, v13, :cond_51e

    .line 129
    iget-object v0, v12, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v1, v0, p3

    .line 130
    aget-object v0, v0, v2

    move-object/from16 v35, v1

    move-object v1, v0

    move-object/from16 v0, v35

    :cond_51e
    if-eqz v3, :cond_543

    if-eqz v5, :cond_543

    const/high16 v4, 0x3f000000    # 0.5f

    .line 131
    invoke-virtual {v0}, Lc/e/b/k/d;->e()I

    move-result v6

    if-nez v13, :cond_52b

    goto :goto_52c

    :cond_52b
    move-object v11, v13

    .line 132
    :goto_52c
    iget-object v7, v11, Lc/e/b/k/e;->N:[Lc/e/b/k/d;

    aget-object v2, v7, v2

    invoke-virtual {v2}, Lc/e/b/k/d;->e()I

    move-result v7

    .line 133
    iget-object v2, v0, Lc/e/b/k/d;->i:Lc/e/b/i;

    iget-object v8, v1, Lc/e/b/k/d;->i:Lc/e/b/i;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lc/e/b/d;->c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V

    :cond_543
    return-void
.end method

.method public static b(Lc/e/b/k/f;Lc/e/b/d;Ljava/util/ArrayList;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/b/k/f;",
            "Lc/e/b/d;",
            "Ljava/util/ArrayList<",
            "Lc/e/b/k/e;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_a

    .line 1
    iget v1, p0, Lc/e/b/k/f;->y0:I

    .line 2
    iget-object v2, p0, Lc/e/b/k/f;->B0:[Lc/e/b/k/c;

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_11

    :cond_a
    const/4 v1, 0x2

    .line 3
    iget v2, p0, Lc/e/b/k/f;->z0:I

    .line 4
    iget-object v3, p0, Lc/e/b/k/f;->A0:[Lc/e/b/k/c;

    move v1, v2

    const/4 v2, 0x2

    :goto_11
    if-ge v0, v1, :cond_2a

    .line 5
    aget-object v4, v3, v0

    .line 6
    invoke-virtual {v4}, Lc/e/b/k/c;->a()V

    if-eqz p2, :cond_24

    if-eqz p2, :cond_27

    .line 7
    iget-object v5, v4, Lc/e/b/k/c;->a:Lc/e/b/k/e;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 8
    :cond_24
    invoke-static {p0, p1, p3, v2, v4}, Lc/e/b/k/b;->a(Lc/e/b/k/f;Lc/e/b/d;IILc/e/b/k/c;)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2a
    return-void
.end method
