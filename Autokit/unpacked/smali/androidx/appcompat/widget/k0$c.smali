.class Landroidx/appcompat/widget/k0$c;
.super Lc/d/e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/k0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "c"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Lc/d/e<",
    "Ljava/lang/Integer;",
    "Landroid/graphics/PorterDuffColorFilter;",
    ">;"
  }
.end annotation

.method public constructor <init>(I)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/d/e;-><init>(I)V
    return-void
.end method

.method private static h(ILandroid/graphics/PorterDuff$Mode;)I
  .registers 3
    const/16 v0, 31
    add-int/2addr p0, v0
    mul-int/lit8 p0, p0, 31
  .line 1
    invoke-virtual { p1 }, Landroid/graphics/PorterDuff$Mode;->hashCode()I
    move-result p1
    add-int/2addr p0, p1
    return p0
.end method

.method i(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
  .registers 3
  .line 1
    invoke-static { p1, p2 }, Landroidx/appcompat/widget/k0$c;->h(ILandroid/graphics/PorterDuff$Mode;)I
    move-result p1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-virtual { p0, p1 }, Lc/d/e;->c(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/graphics/PorterDuffColorFilter;
    return-object p1
.end method

.method j(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
  .registers 4
  .line 1
    invoke-static { p1, p2 }, Landroidx/appcompat/widget/k0$c;->h(ILandroid/graphics/PorterDuff$Mode;)I
    move-result p1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-virtual { p0, p1, p3 }, Lc/d/e;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/graphics/PorterDuffColorFilter;
    return-object p1
.end method
