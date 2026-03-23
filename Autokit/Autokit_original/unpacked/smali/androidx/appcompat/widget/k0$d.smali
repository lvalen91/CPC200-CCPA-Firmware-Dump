.class Landroidx/appcompat/widget/k0$d;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/widget/k0$e;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/k0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "d"
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L3
  .registers 9
  .line 1
    invoke-interface { p3 }, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0
    if-eqz v0, :L3
  :L0
  .line 2
    const-class v2, Landroidx/appcompat/widget/k0$d;
  .line 3
    invoke-virtual { v2 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    const-class v2, Landroid/graphics/drawable/Drawable;
  .line 4
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    move-result-object v0
    const/4 v2, 0
    new-array v3, v2, [Ljava/lang/Class;
  .line 5
    invoke-virtual { v0, v3 }, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v0
    new-array v2, v2, [Ljava/lang/Object;
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/graphics/drawable/Drawable;
  .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 21
    if-lt v2, v3, :L1
  .line 7
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    goto :L2
  :L1
  .line 8
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { v0, p1, p2, p3 }, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
  :L2
    return-object v0
  :L3
    return-object v1
.end method
