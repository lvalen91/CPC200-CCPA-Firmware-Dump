.class public Lc/a/o/g;
.super Landroid/view/MenuInflater;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/a/o/g$b;,
    Lc/a/o/g$a;
  }
.end annotation

.field final static e:[Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "[",
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field final static f:[Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "[",
      "Ljava/lang/Class<",
      "*>;"
    }
  .end annotation
.end field

.field final a:[Ljava/lang/Object;

.field final b:[Ljava/lang/Object;

.field c:Landroid/content/Context;

.field private d:Ljava/lang/Object;

.method static constructor <clinit>()V
  .registers 3
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Class;
    const/4 v1, 0
  .line 1
    const-class v2, Landroid/content/Context;
    aput-object v2, v0, v1
    sput-object v0, Lc/a/o/g;->e:[Ljava/lang/Class;
  .line 2
    sput-object v0, Lc/a/o/g;->f:[Ljava/lang/Class;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
  .registers 4
  .line 1
    invoke-direct { p0, p1 }, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V
  .line 2
    iput-object p1, p0, Lc/a/o/g;->c:Landroid/content/Context;
    const/4 v0, 1
    new-array v0, v0, [Ljava/lang/Object;
    const/4 v1, 0
    aput-object p1, v0, v1
  .line 3
    iput-object v0, p0, Lc/a/o/g;->a:[Ljava/lang/Object;
  .line 4
    iput-object v0, p0, Lc/a/o/g;->b:[Ljava/lang/Object;
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 3
  .line 1
    instance-of v0, p1, Landroid/app/Activity;
    if-eqz v0, :L0
    return-object p1
  :L0
  .line 2
    instance-of v0, p1, Landroid/content/ContextWrapper;
    if-eqz v0, :L1
  .line 3
    check-cast p1, Landroid/content/ContextWrapper;
    invoke-virtual { p1 }, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;
    move-result-object p1
    invoke-direct { p0, p1 }, Lc/a/o/g;->a(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
  :L1
    return-object p1
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
  .registers 16
  .line 1
    new-instance v0, Lc/a/o/g$b;
    invoke-direct { v0, p0, p3 }, Lc/a/o/g$b;-><init>(Lc/a/o/g;Landroid/view/Menu;)V
  .line 2
    invoke-interface { p1 }, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    move-result p3
  :L0
    const/4 v1, 2
    const-string v2, "menu"
    const/4 v3, 1
    if-ne p3, v1, :L2
  .line 3
    invoke-interface { p1 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object p3
  .line 4
    invoke-virtual { p3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L1
  .line 5
    invoke-interface { p1 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result p3
    goto :L3
  :L1
  .line 6
    new-instance p1, Ljava/lang/RuntimeException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Expecting menu, got "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 7
    invoke-interface { p1 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result p3
    if-ne p3, v3, :L0
  :L3
    const/4 v4, 0
    const/4 v5, 0
    move-object v8, v4
    const/4 v6, 0
    const/4 v7, 0
  :L4
    if-nez v6, :L17
    if-eq p3, v3, :L16
    const-string v9, "item"
    const-string v10, "group"
    if-eq p3, v1, :L10
    const/4 v11, 3
    if-eq p3, v11, :L5
    goto/16 :L15
  :L5
  .line 8
    invoke-interface { p1 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object p3
    if-eqz v7, :L6
  .line 9
    invoke-virtual { p3, v8 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v11
    if-eqz v11, :L6
    move-object v8, v4
    const/4 v7, 0
    goto :L15
  :L6
  .line 10
    invoke-virtual { p3, v10 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L7
  .line 11
    invoke-virtual { v0 }, Lc/a/o/g$b;->h()V
    goto :L15
  :L7
  .line 12
    invoke-virtual { p3, v9 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :L9
  .line 13
    invoke-virtual { v0 }, Lc/a/o/g$b;->d()Z
    move-result p3
    if-nez p3, :L15
  .line 14
    iget-object p3, v0, Lc/a/o/g$b;->A:Landroidx/core/view/b;
    if-eqz p3, :L8
  .line 15
    invoke-virtual { p3 }, Landroidx/core/view/b;->a()Z
    move-result p3
    if-eqz p3, :L8
  .line 16
    invoke-virtual { v0 }, Lc/a/o/g$b;->b()Landroid/view/SubMenu;
    goto :L15
  :L8
  .line 17
    invoke-virtual { v0 }, Lc/a/o/g$b;->a()V
    goto :L15
  :L9
  .line 18
    invoke-virtual { p3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L15
    const/4 v6, 1
    goto :L15
  :L10
    if-eqz v7, :L11
    goto :L15
  :L11
  .line 19
    invoke-interface { p1 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object p3
  .line 20
    invoke-virtual { p3, v10 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L12
  .line 21
    invoke-virtual { v0, p2 }, Lc/a/o/g$b;->f(Landroid/util/AttributeSet;)V
    goto :L15
  :L12
  .line 22
    invoke-virtual { p3, v9 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :L13
  .line 23
    invoke-virtual { v0, p2 }, Lc/a/o/g$b;->g(Landroid/util/AttributeSet;)V
    goto :L15
  :L13
  .line 24
    invoke-virtual { p3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :L14
  .line 25
    invoke-virtual { v0 }, Lc/a/o/g$b;->b()Landroid/view/SubMenu;
    move-result-object p3
  .line 26
    invoke-direct { p0, p1, p2, p3 }, Lc/a/o/g;->c(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    goto :L15
  :L14
    move-object v8, p3
    const/4 v7, 1
  :L15
  .line 27
    invoke-interface { p1 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result p3
    goto :L4
  :L16
  .line 28
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "Unexpected end of document"
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L17
    return-void
.end method

.method b()Ljava/lang/Object;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/a/o/g;->d:Ljava/lang/Object;
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lc/a/o/g;->c:Landroid/content/Context;
    invoke-direct { p0, v0 }, Lc/a/o/g;->a(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    iput-object v0, p0, Lc/a/o/g;->d:Ljava/lang/Object;
  :L0
  .line 3
    iget-object v0, p0, Lc/a/o/g;->d:Ljava/lang/Object;
    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
  .catch Lorg/xmlpull/v1/XmlPullParserException; { :L1 .. :L2 } :L7
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L5
  .catchall { :L1 .. :L2 } :L4
  .catchall { :L6 .. :L8 } :L4
  .registers 6
    const-string v0, "Error inflating menu XML"
  .line 1
    instance-of v1, p2, Lc/g/e/a/a;
    if-nez v1, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    return-void
  :L0
    const/4 v1, 0
  :L1
  .line 3
    iget-object v2, p0, Lc/a/o/g;->c:Landroid/content/Context;
    invoke-virtual { v2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    invoke-virtual { v2, p1 }, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
    move-result-object v1
  .line 4
    invoke-static { v1 }, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    move-result-object p1
  .line 5
    invoke-direct { p0, v1, p1, p2 }, Lc/a/o/g;->c(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
  :L2
    if-eqz v1, :L3
  .line 6
    invoke-interface { v1 }, Landroid/content/res/XmlResourceParser;->close()V
  :L3
    return-void
  :L4
    move-exception p1
    goto :L8
  :L5
    move-exception p1
  :L6
  .line 7
    new-instance p2, Landroid/view/InflateException;
    invoke-direct { p2, v0, p1 }, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
  :L7
    move-exception p1
  .line 8
    new-instance p2, Landroid/view/InflateException;
    invoke-direct { p2, v0, p1 }, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
  :L8
    if-eqz v1, :L9
  .line 9
    invoke-interface { v1 }, Landroid/content/res/XmlResourceParser;->close()V
  :L9
  .line 10
    throw p1
.end method
