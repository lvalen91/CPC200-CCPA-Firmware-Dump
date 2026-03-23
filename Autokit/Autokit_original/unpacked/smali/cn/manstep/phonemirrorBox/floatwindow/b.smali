.class public Lcn/manstep/phonemirrorBox/floatwindow/b;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnTouchListener;
.source "SourceFile"

.field private final b:Landroid/view/WindowManager$LayoutParams;

.field private final c:Landroid/view/WindowManager;

.field private d:F

.field private e:F

.field private final f:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Landroid/view/View;",
      ">;"
    }
  .end annotation
.end field

.field private final g:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Landroid/view/View;",
      "Landroid/view/ViewGroup;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-string v0, "window"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/WindowManager;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->c:Landroid/view/WindowManager;
  .line 3
    new-instance p1, Landroid/view/WindowManager$LayoutParams;
    invoke-direct { p1 }, Landroid/view/WindowManager$LayoutParams;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->b:Landroid/view/WindowManager$LayoutParams;
  .line 4
    new-instance p1, Ljava/util/LinkedList;
    invoke-direct { p1 }, Ljava/util/LinkedList;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->f:Ljava/util/List;
  .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { p1 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->g:Ljava/util/Map;
    return-void
.end method

.method public a(Landroid/view/View;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->f:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 0
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->g:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    if-eqz v0, :L0
  .line 4
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    invoke-virtual { p1, v1 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->g:Ljava/util/Map;
    invoke-interface { v1, p1 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->c:Landroid/view/WindowManager;
    invoke-interface { v1, p1 }, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->f:Ljava/util/List;
    invoke-interface { v1, p1 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    if-eqz v0, :L1
  .line 8
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
  :L1
    return-void
.end method

.method public b(Landroid/view/View;FF)V
  .registers 7
  .line 1
    new-instance v0, Landroid/util/DisplayMetrics;
    invoke-direct { v0 }, Landroid/util/DisplayMetrics;-><init>()V
  .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 17
    if-lt v1, v2, :L0
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->c:Landroid/view/WindowManager;
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    goto :L1
  :L0
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->c:Landroid/view/WindowManager;
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
  :L1
  .line 5
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    mul-float p2, p2, v0
    const/high16 v1, 16128
    add-float/2addr p2, v1
    float-to-int p2, p2
    mul-float p3, p3, v0
    add-float/2addr p3, v1
    float-to-int p3, p3
  .line 6
    invoke-virtual { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/floatwindow/b;->c(Landroid/view/View;II)V
    return-void
.end method

.method public c(Landroid/view/View;II)V
  .catch Ljava/lang/Exception; { :L6 .. :L7 } :L8
  .registers 8
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->f:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->f:Ljava/util/List;
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    if-eqz v0, :L1
  .line 4
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->g:Ljava/util/Map;
    invoke-interface { v1, p1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 6
    invoke-virtual { p1, p0 }, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  .line 7
    new-instance v0, Landroid/util/DisplayMetrics;
    invoke-direct { v0 }, Landroid/util/DisplayMetrics;-><init>()V
  .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 17
    if-lt v1, v2, :L2
  .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->c:Landroid/view/WindowManager;
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    goto :L3
  :L2
  .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->c:Landroid/view/WindowManager;
    invoke-interface { v1 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
  :L3
  .line 11
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
  .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
  .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 26
    if-lt v2, v3, :L4
  .line 14
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->b:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 2038
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I
    goto :L5
  :L4
  .line 15
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->b:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 2002
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I
  :L5
  .line 16
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->b:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 1
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I
    const v3, 65832
  .line 17
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I
    const v3, 8388659
  .line 18
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I
  .line 19
    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->width:I
  .line 20
    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->height:I
  .line 21
    div-int/lit8 v1, v1, 2
    div-int/lit8 p2, p2, 2
    sub-int/2addr v1, p2
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I
  .line 22
    div-int/lit8 v0, v0, 2
    div-int/lit8 p3, p3, 2
    sub-int/2addr v0, p3
    add-int/lit8 v0, v0, -50
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I
  :L6
  .line 23
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->c:Landroid/view/WindowManager;
    invoke-interface { p2, p1, v2 }, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
  :L7
    goto :L9
  :L8
    move-exception p1
  .line 24
    invoke-virtual { p1 }, Ljava/lang/Exception;->printStackTrace()V
  :L9
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 6
  .line 1
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result v0
    if-eqz v0, :L1
    const/4 v1, 2
    if-eq v0, v1, :L0
    goto :L2
  :L0
  .line 2
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getRawX()F
    move-result v0
  .line 3
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getRawY()F
    move-result p2
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->b:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->d:F
    sub-float/2addr v0, v2
    float-to-int v0, v0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I
  .line 5
    iget v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->e:F
    sub-float/2addr p2, v0
    float-to-int p2, p2
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result p2
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->width:I
  .line 7
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->b:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual { p1 }, Landroid/view/View;->getHeight()I
    move-result v0
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I
  .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->c:Landroid/view/WindowManager;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->b:Landroid/view/WindowManager$LayoutParams;
    invoke-interface { p2, p1, v0 }, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    goto :L2
  :L1
  .line 9
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getX()F
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->d:F
  .line 10
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getY()F
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/b;->e:F
  :L2
    const/4 p1, 1
    return p1
.end method
