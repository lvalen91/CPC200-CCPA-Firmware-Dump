.class public Lcn/manstep/phonemirrorBox/util/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/n;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/d0;->c:Landroidx/fragment/app/n;

    .line 5
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/util/d0;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/util/d0;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/util/d0;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/util/d0;->h()V

    return-void
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/util/d0;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/util/d0;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/util/d0;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/d0;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/util/d0;)Landroidx/fragment/app/n;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/d0;->c:Landroidx/fragment/app/n;

    return-object p0
.end method

.method private f(Ljava/lang/String;)V
    .registers 12

    const-string v0, "cku"

    const-string v1, "forced"

    const-string v2, ""

    .line 1
    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "token"

    .line 2
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/manstep/phonemirrorBox/util/p;->f:Ljava/lang/String;

    const-string p1, "ver"

    .line 3
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "2025.03.19.1126"

    .line 4
    invoke-virtual {v6, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_df

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v4, "AppLatestVer"

    invoke-virtual {p1, v4, v2}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v6, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_32

    return-void

    .line 7
    :cond_32
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_3f

    .line 8
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    move v5, p1

    goto :goto_40

    :cond_3f
    const/4 v5, 0x0

    .line 9
    :goto_40
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 10
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4e

    .line 11
    sput-boolean v4, Lcn/manstep/phonemirrorBox/p;->B:Z

    :cond_4e
    const-string p1, "notes"

    .line 12
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "id"

    .line 13
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string p1, "size"

    .line 14
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_c1

    .line 15
    new-instance p1, Ljava/io/File;

    const-string v0, "/sdcard"

    const-string v1, "bluetooth"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 17
    :cond_78
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7c} :catch_c6

    :cond_7c
    if-eqz v0, :cond_c1

    .line 18
    :try_start_7e
    new-instance v0, Ljava/io/File;

    const-string v1, ".car"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 20
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "av"

    .line 21
    invoke-virtual {v0, v1, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "afs"

    .line 22
    invoke-virtual {v0, v1, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "arn"

    .line 23
    invoke-virtual {v0, v1, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "am5"

    .line 24
    invoke-virtual {v0, v1, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "aui"

    const/16 v3, 0x25

    .line 25
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v0, p1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 28
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_b7} :catch_bd
    .catch Ljava/lang/Error; {:try_start_7e .. :try_end_b7} :catch_b8

    goto :goto_c1

    :catch_b8
    move-exception p1

    .line 29
    :try_start_b9
    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_c1

    :catch_bd
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c1
    :goto_c1
    move-object v4, p0

    .line 31
    invoke-direct/range {v4 .. v9}, Lcn/manstep/phonemirrorBox/util/d0;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c5} :catch_c6

    goto :goto_df

    :catch_c6
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utilUpdateVersion,getUpdateInfo: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_df
    :goto_df
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "token"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/manstep/phonemirrorBox/util/p;->f:Ljava/lang/String;

    const-string p1, "ver"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "utilUpdateVersion,checkBoxVer: new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", old:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",ver.compareTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_85

    const-string v1, "id"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "utilUpdateVersion,mBoxNewVer: "

    .line 8
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0;->b:Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_85

    :catch_6c
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utilUpdateVersion,checkBoxVerError: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 11
    :cond_85
    :goto_85
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "BoxLatestVer"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/d0;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b0

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_b0

    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/d0;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/d0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b0
    return-void
.end method

.method private h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/d0;->a:Landroid/content/Context;

    const v1, 0x7f0f0194

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/b;->h:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/d$a;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/d0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/manstep/phonemirrorBox/k0/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Lcn/manstep/phonemirrorBox/k0/d$a;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcn/manstep/phonemirrorBox/k0/d$a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/k0/d$a;->a()Lcn/manstep/phonemirrorBox/k0/d;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    .line 4
    invoke-virtual {p3}, Lcn/manstep/phonemirrorBox/k0/d;->h()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/manstep/phonemirrorBox/util/d0$c;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    move-object v7, p5

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcn/manstep/phonemirrorBox/util/d0$c;-><init>(Lcn/manstep/phonemirrorBox/util/d0;Lcn/manstep/phonemirrorBox/k0/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p3}, Lcn/manstep/phonemirrorBox/k0/d;->g()Landroid/view/View;

    move-result-object p4

    new-instance p5, Lcn/manstep/phonemirrorBox/util/d0$d;

    invoke-direct {p5, p0, p2, p3}, Lcn/manstep/phonemirrorBox/util/d0$d;-><init>(Lcn/manstep/phonemirrorBox/util/d0;Ljava/lang/String;Lcn/manstep/phonemirrorBox/k0/d;)V

    invoke-virtual {p4, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_3a

    .line 6
    invoke-virtual {p3}, Lcn/manstep/phonemirrorBox/k0/d;->f()V

    :cond_3a
    return-void
.end method


# virtual methods
.method public i()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/x;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "lang"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v3, "37"

    .line 3
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ver"

    const-string v3, "2025.03.19.1126"

    .line 4
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uuid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/manstep/phonemirrorBox/p;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "m"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/d0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lcn/manstep/phonemirrorBox/util/p;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/util/p;-><init>()V

    .line 10
    new-instance v2, Lcn/manstep/phonemirrorBox/util/d0$a;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/util/d0$a;-><init>(Lcn/manstep/phonemirrorBox/util/d0;)V

    const-string v3, "/a/upgrade/checkApp"

    invoke-virtual {v1, v3, v0, v2}, Lcn/manstep/phonemirrorBox/util/p;->j(Ljava/lang/String;Ljava/util/Map;Lcn/manstep/phonemirrorBox/util/p$e;)V

    return-void
.end method

.method public j()V
    .registers 5

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/x;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v2, "37"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appVer"

    const-string v2, "2025.03.19.1126"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mfd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fwn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lcn/manstep/phonemirrorBox/util/p;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/util/p;-><init>()V

    .line 13
    new-instance v2, Lcn/manstep/phonemirrorBox/util/d0$b;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/util/d0$b;-><init>(Lcn/manstep/phonemirrorBox/util/d0;)V

    const-string v3, "/a/upgrade/checkBox"

    invoke-virtual {v1, v3, v0, v2}, Lcn/manstep/phonemirrorBox/util/p;->j(Ljava/lang/String;Ljava/util/Map;Lcn/manstep/phonemirrorBox/util/p$e;)V

    :cond_8b
    return-void
.end method
