.class public Landroidx/constraintlayout/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/constraintlayout/widget/c$b;,
    Landroidx/constraintlayout/widget/c$a;
  }
.end annotation

.field private a:Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/SparseArray<",
      "Landroidx/constraintlayout/widget/c$a;",
      ">;"
    }
  .end annotation
.end field

.field private b:Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/SparseArray<",
      "Landroidx/constraintlayout/widget/d;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p2, Landroid/util/SparseArray;
    invoke-direct { p2 }, Landroid/util/SparseArray;-><init>()V
    iput-object p2, p0, Landroidx/constraintlayout/widget/c;->a:Landroid/util/SparseArray;
  .line 3
    new-instance p2, Landroid/util/SparseArray;
    invoke-direct { p2 }, Landroid/util/SparseArray;-><init>()V
    iput-object p2, p0, Landroidx/constraintlayout/widget/c;->b:Landroid/util/SparseArray;
  .line 4
    invoke-direct { p0, p1, p3 }, Landroidx/constraintlayout/widget/c;->a(Landroid/content/Context;I)V
    return-void
.end method

.method private a(Landroid/content/Context;I)V
  .catch Lorg/xmlpull/v1/XmlPullParserException; { :L0 .. :L14 } :L16
  .catch Ljava/io/IOException; { :L0 .. :L14 } :L15
  .registers 11
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
  .line 2
    invoke-virtual { v0, p2 }, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    move-result-object p2
    const/4 v0, 0
  :L0
  .line 3
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    move-result v1
  :L1
    const/4 v2, 1
    if-eq v1, v2, :L17
    if-eqz v1, :L12
    const/4 v3, 2
    if-eq v1, v3, :L2
    goto/16 :L13
  :L2
  .line 4
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    move-result-object v1
    const/4 v4, -1
  .line 5
    invoke-virtual { v1 }, Ljava/lang/String;->hashCode()I
    move-result v5
    const/4 v6, 4
    const/4 v7, 3
    sparse-switch v5, :L18
    goto :L8
  :L3
    const-string v5, "Variant"
    invoke-virtual { v1, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L8
    const/4 v4, 3
    goto :L8
  :L4
    const-string v5, "layoutDescription"
    invoke-virtual { v1, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L8
    const/4 v4, 0
    goto :L8
  :L5
    const-string v5, "StateSet"
    invoke-virtual { v1, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L8
    const/4 v4, 1
    goto :L8
  :L6
    const-string v5, "State"
    invoke-virtual { v1, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L8
    const/4 v4, 2
    goto :L8
  :L7
    const-string v5, "ConstraintSet"
    invoke-virtual { v1, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L8
    const/4 v4, 4
  :L8
    if-eqz v4, :L13
    if-eq v4, v2, :L13
    if-eq v4, v3, :L11
    if-eq v4, v7, :L10
    if-eq v4, v6, :L9
  .line 6
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "unknown tag "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L13
  :L9
  .line 7
    invoke-direct { p0, p1, p2 }, Landroidx/constraintlayout/widget/c;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    goto :L13
  :L10
  .line 8
    new-instance v1, Landroidx/constraintlayout/widget/c$b;
    invoke-direct { v1, p1, p2 }, Landroidx/constraintlayout/widget/c$b;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    if-eqz v0, :L13
  .line 9
    invoke-virtual { v0, v1 }, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/c$b;)V
    goto :L13
  :L11
  .line 10
    new-instance v0, Landroidx/constraintlayout/widget/c$a;
    invoke-direct { v0, p1, p2 }, Landroidx/constraintlayout/widget/c$a;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
  .line 11
    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->a:Landroid/util/SparseArray;
    iget v2, v0, Landroidx/constraintlayout/widget/c$a;->a:I
    invoke-virtual { v1, v2, v0 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    goto :L13
  :L12
  .line 12
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
  :L13
  .line 13
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->next()I
    move-result v1
  :L14
    goto/16 :L1
  :L15
    move-exception p1
  .line 14
    invoke-virtual { p1 }, Ljava/io/IOException;->printStackTrace()V
    goto :L17
  :L16
    move-exception p1
  .line 15
    invoke-virtual { p1 }, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
  :L17
    return-void
  :L18
  .sparse-switch
    -1349929691 -> :L7
    80204913 -> :L6
    1382829617 -> :L5
    1657696882 -> :L4
    1901439077 -> :L3
  .end sparse-switch
.end method

.method private b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
  .registers 11
  .line 1
    new-instance v0, Landroidx/constraintlayout/widget/d;
    invoke-direct { v0 }, Landroidx/constraintlayout/widget/d;-><init>()V
  .line 2
    invoke-interface { p2 }, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I
    move-result v1
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L5
  .line 3
    invoke-interface { p2, v2 }, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;
    move-result-object v3
    const-string v4, "id"
    invoke-virtual { v4, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L4
  .line 4
    invoke-interface { p2, v2 }, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;
    move-result-object v1
    const-string v2, "/"
  .line 5
    invoke-virtual { v1, v2 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v2
    const/4 v3, -1
    const/4 v5, 1
    if-eqz v2, :L1
    const/16 v2, 47
  .line 6
    invoke-virtual { v1, v2 }, Ljava/lang/String;->indexOf(I)I
    move-result v2
    add-int/2addr v2, v5
    invoke-virtual { v1, v2 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v2
  .line 7
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v6
    invoke-virtual { p1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v6, v2, v4, v7 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v2
    goto :L2
  :L1
    const/4 v2, -1
  :L2
    if-ne v2, v3, :L3
    if-eqz v1, :L3
  .line 8
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v3
    if-le v3, v5, :L3
  .line 9
    invoke-virtual { v1, v5 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v2
  :L3
  .line 10
    invoke-virtual { v0, p1, p2 }, Landroidx/constraintlayout/widget/d;->n(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
  .line 11
    iget-object p1, p0, Landroidx/constraintlayout/widget/c;->b:Landroid/util/SparseArray;
    invoke-virtual { p1, v2, v0 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    goto :L5
  :L4
    add-int/lit8 v2, v2, 1
    goto :L0
  :L5
    return-void
.end method

.method public c(Landroidx/constraintlayout/widget/f;)V
  .registers 2
    return-void
.end method
