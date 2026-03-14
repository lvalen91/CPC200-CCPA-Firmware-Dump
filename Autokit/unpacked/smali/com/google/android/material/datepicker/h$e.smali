.class Lcom/google/android/material/datepicker/h$e;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/google/android/material/datepicker/h;->q2()Landroidx/recyclerview/widget/RecyclerView$m;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field private final a:Ljava/util/Calendar;

.field private final b:Ljava/util/Calendar;

.field final synthetic c:Lcom/google/android/material/datepicker/h;

.method constructor <init>(Lcom/google/android/material/datepicker/h;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$e;->c:Lcom/google/android/material/datepicker/h;
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V
  .line 2
    invoke-static { }, Lcom/google/android/material/datepicker/s;->k()Ljava/util/Calendar;
    move-result-object p1
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$e;->a:Ljava/util/Calendar;
  .line 3
    invoke-static { }, Lcom/google/android/material/datepicker/s;->k()Ljava/util/Calendar;
    move-result-object p1
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$e;->b:Ljava/util/Calendar;
    return-void
.end method

.method public g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 23
    move-object/from16 v0, p0
  .line 1
    invoke-virtual/range { p2 .. p2 }, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;
    move-result-object v1
    instance-of v1, v1, Lcom/google/android/material/datepicker/t;
    if-eqz v1, :L10
  .line 2
    invoke-virtual/range { p2 .. p2 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object v1
    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;
    if-nez v1, :L0
    goto/16 :L10
  :L0
  .line 3
    invoke-virtual/range { p2 .. p2 }, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$f;
    move-result-object v1
    check-cast v1, Lcom/google/android/material/datepicker/t;
  .line 4
    invoke-virtual/range { p2 .. p2 }, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;
  .line 5
    iget-object v3, v0, Lcom/google/android/material/datepicker/h$e;->c:Lcom/google/android/material/datepicker/h;
    invoke-static { v3 }, Lcom/google/android/material/datepicker/h;->k2(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/d;
    move-result-object v3
    invoke-interface { v3 }, Lcom/google/android/material/datepicker/d;->d()Ljava/util/Collection;
    move-result-object v3
    invoke-interface { v3 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L1
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L10
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lc/g/j/d;
  .line 6
    iget-object v5, v4, Lc/g/j/d;->a:Ljava/lang/Object;
    if-eqz v5, :L1
    iget-object v6, v4, Lc/g/j/d;->b:Ljava/lang/Object;
    if-nez v6, :L2
    goto :L1
  :L2
  .line 7
    iget-object v6, v0, Lcom/google/android/material/datepicker/h$e;->a:Ljava/util/Calendar;
    check-cast v5, Ljava/lang/Long;
    invoke-virtual { v5 }, Ljava/lang/Long;->longValue()J
    move-result-wide v7
    invoke-virtual { v6, v7, v8 }, Ljava/util/Calendar;->setTimeInMillis(J)V
  .line 8
    iget-object v5, v0, Lcom/google/android/material/datepicker/h$e;->b:Ljava/util/Calendar;
    iget-object v4, v4, Lc/g/j/d;->b:Ljava/lang/Object;
    check-cast v4, Ljava/lang/Long;
    invoke-virtual { v4 }, Ljava/lang/Long;->longValue()J
    move-result-wide v6
    invoke-virtual { v5, v6, v7 }, Ljava/util/Calendar;->setTimeInMillis(J)V
  .line 9
    iget-object v4, v0, Lcom/google/android/material/datepicker/h$e;->a:Ljava/util/Calendar;
    const/4 v5, 1
    invoke-virtual { v4, v5 }, Ljava/util/Calendar;->get(I)I
    move-result v4
    invoke-virtual { v1, v4 }, Lcom/google/android/material/datepicker/t;->w(I)I
    move-result v4
  .line 10
    iget-object v6, v0, Lcom/google/android/material/datepicker/h$e;->b:Ljava/util/Calendar;
    invoke-virtual { v6, v5 }, Ljava/util/Calendar;->get(I)I
    move-result v5
    invoke-virtual { v1, v5 }, Lcom/google/android/material/datepicker/t;->w(I)I
    move-result v5
  .line 11
    invoke-virtual { v2, v4 }, Landroidx/recyclerview/widget/LinearLayoutManager;->C(I)Landroid/view/View;
    move-result-object v6
  .line 12
    invoke-virtual { v2, v5 }, Landroidx/recyclerview/widget/LinearLayoutManager;->C(I)Landroid/view/View;
    move-result-object v7
  .line 13
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/GridLayoutManager;->X2()I
    move-result v8
    div-int/2addr v4, v8
  .line 14
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/GridLayoutManager;->X2()I
    move-result v8
    div-int/2addr v5, v8
    move v8, v4
  :L3
    if-gt v8, v5, :L1
  .line 15
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/GridLayoutManager;->X2()I
    move-result v9
    mul-int v9, v9, v8
  .line 16
    invoke-virtual { v2, v9 }, Landroidx/recyclerview/widget/LinearLayoutManager;->C(I)Landroid/view/View;
    move-result-object v9
    if-nez v9, :L4
    goto :L9
  :L4
  .line 17
    invoke-virtual { v9 }, Landroid/view/View;->getTop()I
    move-result v10
    iget-object v11, v0, Lcom/google/android/material/datepicker/h$e;->c:Lcom/google/android/material/datepicker/h;
    invoke-static { v11 }, Lcom/google/android/material/datepicker/h;->m2(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/c;
    move-result-object v11
    iget-object v11, v11, Lcom/google/android/material/datepicker/c;->d:Lcom/google/android/material/datepicker/b;
    invoke-virtual { v11 }, Lcom/google/android/material/datepicker/b;->c()I
    move-result v11
    add-int/2addr v10, v11
  .line 18
    invoke-virtual { v9 }, Landroid/view/View;->getBottom()I
    move-result v9
    iget-object v11, v0, Lcom/google/android/material/datepicker/h$e;->c:Lcom/google/android/material/datepicker/h;
    invoke-static { v11 }, Lcom/google/android/material/datepicker/h;->m2(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/c;
    move-result-object v11
    iget-object v11, v11, Lcom/google/android/material/datepicker/c;->d:Lcom/google/android/material/datepicker/b;
    invoke-virtual { v11 }, Lcom/google/android/material/datepicker/b;->b()I
    move-result v11
    sub-int/2addr v9, v11
    if-ne v8, v4, :L5
  .line 19
    invoke-virtual { v6 }, Landroid/view/View;->getLeft()I
    move-result v11
    invoke-virtual { v6 }, Landroid/view/View;->getWidth()I
    move-result v12
    div-int/lit8 v12, v12, 2
    add-int/2addr v11, v12
    goto :L6
  :L5
    const/4 v11, 0
  :L6
    if-ne v8, v5, :L7
  .line 20
    invoke-virtual { v7 }, Landroid/view/View;->getLeft()I
    move-result v12
    invoke-virtual { v7 }, Landroid/view/View;->getWidth()I
    move-result v13
    div-int/lit8 v13, v13, 2
    add-int/2addr v12, v13
    goto :L8
  :L7
  .line 21
    invoke-virtual/range { p2 .. p2 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v12
  :L8
    int-to-float v14, v11
    int-to-float v15, v10
    int-to-float v10, v12
    int-to-float v9, v9
  .line 22
    iget-object v11, v0, Lcom/google/android/material/datepicker/h$e;->c:Lcom/google/android/material/datepicker/h;
    invoke-static { v11 }, Lcom/google/android/material/datepicker/h;->m2(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/c;
    move-result-object v11
    iget-object v11, v11, Lcom/google/android/material/datepicker/c;->h:Landroid/graphics/Paint;
    move-object/from16 v13, p1
    move/from16 v16, v10
    move/from16 v17, v9
    move-object/from16 v18, v11
    invoke-virtual/range { v13 .. v18 }, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
  :L9
    add-int/lit8 v8, v8, 1
    goto :L3
  :L10
    return-void
.end method
