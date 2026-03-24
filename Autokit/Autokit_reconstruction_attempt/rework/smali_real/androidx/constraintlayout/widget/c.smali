.class public Landroidx/constraintlayout/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/c$b;,
        Landroidx/constraintlayout/widget/c$a;
    }
.end annotation


# instance fields
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


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/c;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/c;->b:Landroid/util/SparseArray;

    .line 4
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    :try_start_9
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_d
    const/4 v2, 0x1

    if-eq v1, v2, :cond_a0

    if-eqz v1, :cond_8e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_17

    goto/16 :goto_91

    .line 4
    :cond_17
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    sparse-switch v5, :sswitch_data_a2

    goto :goto_57

    :sswitch_26
    const-string v5, "Variant"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v4, 0x3

    goto :goto_57

    :sswitch_30
    const-string v5, "layoutDescription"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v4, 0x0

    goto :goto_57

    :sswitch_3a
    const-string v5, "StateSet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v4, 0x1

    goto :goto_57

    :sswitch_44
    const-string v5, "State"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v4, 0x2

    goto :goto_57

    :sswitch_4e
    const-string v5, "ConstraintSet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v4, 0x4

    :cond_57
    :goto_57
    if-eqz v4, :cond_91

    if-eq v4, v2, :cond_91

    if-eq v4, v3, :cond_81

    if-eq v4, v7, :cond_76

    if-eq v4, v6, :cond_72

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_91

    .line 7
    :cond_72
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/c;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_91

    .line 8
    :cond_76
    new-instance v1, Landroidx/constraintlayout/widget/c$b;

    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/c$b;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v0, :cond_91

    .line 9
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/c$b;)V

    goto :goto_91

    .line 10
    :cond_81
    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/c$a;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/widget/c;->a:Landroid/util/SparseArray;

    iget v2, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_91

    .line 12
    :cond_8e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 13
    :cond_91
    :goto_91
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_95
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_95} :catch_9c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_95} :catch_97

    goto/16 :goto_d

    :catch_97
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    :catch_9c
    move-exception p1

    .line 15
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_a0
    :goto_a0
    return-void

    nop

    :sswitch_data_a2
    .sparse-switch
        -0x50764adb -> :sswitch_4e
        0x4c7d471 -> :sswitch_44
        0x526c4e31 -> :sswitch_3a
        0x62ce7272 -> :sswitch_30
        0x7155a865 -> :sswitch_26
    .end sparse-switch
.end method

.method private b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/d;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d;-><init>()V

    .line 2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_5d

    .line 3
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 4
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_3e

    const/16 v2, 0x2f

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v4, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_3f

    :cond_3e
    const/4 v2, -0x1

    :goto_3f
    if-ne v2, v3, :cond_51

    if-eqz v1, :cond_51

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_51

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 10
    :cond_51
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/d;->n(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/widget/c;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5d

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_5d
    :goto_5d
    return-void
.end method


# virtual methods
.method public c(Landroidx/constraintlayout/widget/f;)V
    .registers 2

    return-void
.end method
