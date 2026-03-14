.class public Lcn/manstep/phonemirrorBox/util/e0;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/util/e0$g;
  }
.end annotation

.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcn/manstep/phonemirrorBox/util/e0$g;

.field private d:Landroid/os/CountDownTimer;

.field private final e:Lcn/manstep/phonemirrorBox/util/p;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/n;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-string p2, "\u5f55\u97f3\u6587\u4ef6"
  .line 2
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/e0;->b:Ljava/lang/String;
  .line 3
    new-instance p2, Lcn/manstep/phonemirrorBox/util/p;
    const/16 v0, 30
    invoke-direct { p2, v0 }, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/e0;->e:Lcn/manstep/phonemirrorBox/util/p;
    const/4 p2, 1
  .line 4
    iput-boolean p2, p0, Lcn/manstep/phonemirrorBox/util/e0;->h:Z
  .line 5
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/util/e0;)Landroid/content/Context;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/util/e0;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/e0;->p()V
    return-void
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/util/e0;Ljava/lang/String;Ljava/lang/String;Z)V
  .registers 4
  .line 1
    invoke-direct { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/util/e0;->n(Ljava/lang/String;Ljava/lang/String;Z)V
    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/util/e0;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/e0;->m()V
    return-void
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/util/e0;)Lcn/manstep/phonemirrorBox/util/e0$g;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/e0;->c:Lcn/manstep/phonemirrorBox/util/e0$g;
    return-object p0
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/util/e0;)Z
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/e0;->i()Z
    move-result p0
    return p0
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/util/e0;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/e0;->r()V
    return-void
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/util/e0;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/e0;->q()V
    return-void
.end method

.method private i()Z
  .registers 3
  .line 1
    new-instance v0, Ljava/io/File;
    sget-object v1, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    invoke-direct { v0, v1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :L0
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private l(Ljava/lang/String;)Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 10
  .line 1
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/e0;->f:Ljava/lang/String;
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    const-string v2, "notes"
    if-eqz v1, :L0
    const-string v1, "Debug\u65e5\u5fd7"
  .line 3
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L1
  :L0
  .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/e0;->f:Ljava/lang/String;
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/e0;->g:Ljava/lang/String;
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L2
  .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/e0;->g:Ljava/lang/String;
    const-string v2, "issueTypes"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    const-string v1, "ro.product.manufacturer"
    const-string v2, ""
  .line 7
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v3, "ro.board.platform"
  .line 8
    invoke-static { v3, v2 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 9
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    sget v5, Lcn/manstep/phonemirrorBox/p;->k:I
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, "x"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v5, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const-string v5, "resolution"
  .line 10
    invoke-interface { v0, v5, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string v4, "manufacturer"
  .line 11
    invoke-interface { v0, v4, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string v1, "platform"
  .line 12
    invoke-interface { v0, v1, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->w()Ljava/lang/String;
    move-result-object v1
    const-string v3, "huid"
    invoke-interface { v0, v3, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string v1, "box.log"
  .line 14
    invoke-virtual { v1, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    const-string v1, "model"
    const-string v3, "uuid"
    const-string v4, "version"
    const-string v5, "mfd"
    const-string v6, "android"
    if-eqz p1, :L3
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v6, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v5, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 17
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c()Ljava/lang/String;
    move-result-object p1
    const-string v2, "ufn"
    invoke-interface { v0, v2, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 18
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v4, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 19
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v3, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 20
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v1, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L4
  :L3
  .line 21
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "("
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ")"
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 22
    invoke-interface { v0, v6, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 23
    new-instance p1, Ljava/text/SimpleDateFormat;
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v2
    const-string v6, "yyyyMMddHHmmss"
    invoke-direct { p1, v6, v2 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
  .line 24
    new-instance v2, Ljava/util/Date;
    sget-wide v6, Landroid/os/Build;->TIME:J
    invoke-direct { v2, v6, v7 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { p1, v2 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object p1
  .line 25
    invoke-interface { v0, v5, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string p1, "2025.03.19.1126"
  .line 26
    invoke-interface { v0, v4, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 27
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v3, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 28
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    invoke-interface { v0, v1, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L4
    return-object v0
.end method

.method private m()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    const v1, 2131689876
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V
    return-void
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;Z)V
  .catch Lorg/json/JSONException; { :L0 .. :L1 } :L4
  .catch Lorg/json/JSONException; { :L1 .. :L2 } :L3
  .registers 11
    const/4 v0, 0
    const/4 v1, 1
  :L0
  .line 1
    new-instance v2, Lorg/json/JSONObject;
    invoke-direct { v2, p1 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string p1, "err"
  .line 2
    invoke-virtual { v2, p1 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result p1
  :L1
    const-string v3, "code"
  .line 3
    invoke-virtual { v2, v3 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v4, "time"
  .line 4
    invoke-virtual { v2, v4 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 5
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v4
    const-string v5, "http://paplink.cn/feedback.html?code=%s&t=%s&types=%s"
    const/4 v6, 3
    new-array v6, v6, [Ljava/lang/Object;
    aput-object v3, v6, v0
    aput-object v2, v6, v1
    const/4 v0, 2
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/e0;->g:Ljava/lang/String;
    aput-object v2, v6, v0
    invoke-static { v4, v5, v6 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    const-string v2, " "
    const-string v3, "%20"
  .line 6
    invoke-virtual { v0, v2, v3 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v0
  :L2
    goto :L6
  :L3
    move-exception v0
    goto :L5
  :L4
    move-exception p1
    move-object v0, p1
    const/4 p1, 0
  :L5
  .line 7
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "utilUploadLog,onUploadFileSuccess: \n"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const-string v0, ""
  :L6
    if-eqz p3, :L7
    const-string v2, "App"
    goto :L8
  :L7
    const-string v2, "Box"
  :L8
    if-nez p1, :L12
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-nez p1, :L9
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0;->c:Lcn/manstep/phonemirrorBox/util/e0$g;
    if-eqz p1, :L10
  .line 10
    invoke-interface { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/util/e0$g;->a(ZLjava/lang/String;)V
    goto :L10
  :L9
    if-nez p3, :L10
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0;->c:Lcn/manstep/phonemirrorBox/util/e0$g;
    if-eqz p1, :L10
  .line 12
    invoke-interface { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/util/e0$g;->a(ZLjava/lang/String;)V
  :L10
  .line 13
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/util/e0;->h:Z
    if-eqz p1, :L11
  .line 14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131689798
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-static { p1, p3 }, Lcn/manstep/phonemirrorBox/widget/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V
  :L11
  .line 15
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z
    goto :L13
  :L12
  .line 16
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-virtual { p3 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p3
    const v0, 2131689799
    invoke-virtual { p3, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  .line 17
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, "("
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ")"
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { p3, p2 }, Lcn/manstep/phonemirrorBox/widget/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V
  .line 18
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "utilUploadLog,onUploadFileFail: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L13
    return-void
.end method

.method private p()V
  .registers 8
  .line 1
    new-instance v6, Lcn/manstep/phonemirrorBox/util/e0$f;
    const-wide/16 v2, 5000
    const-wide/16 v4, 1000
    move-object v0, v6
    move-object v1, p0
    invoke-direct/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/util/e0$f;-><init>(Lcn/manstep/phonemirrorBox/util/e0;JJ)V
    iput-object v6, p0, Lcn/manstep/phonemirrorBox/util/e0;->d:Landroid/os/CountDownTimer;
  .line 2
    invoke-virtual { v6 }, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    return-void
.end method

.method private q()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0;->d:Landroid/os/CountDownTimer;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/os/CountDownTimer;->cancel()V
  :L0
    return-void
.end method

.method private r()V
  .registers 9
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    xor-int/lit8 v0, v0, 1
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    const/16 v3, 12
    invoke-virtual { v1, v2, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "_box.log"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    const-string v0, "box.log"
  .line 3
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/util/e0;->l(Ljava/lang/String;)Ljava/util/Map;
    move-result-object v4
  .line 4
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/util/e0;->e:Lcn/manstep/phonemirrorBox/util/p;
    sget-object v6, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    new-instance v7, Lcn/manstep/phonemirrorBox/util/e0$c;
    invoke-direct { v7, p0 }, Lcn/manstep/phonemirrorBox/util/e0$c;-><init>(Lcn/manstep/phonemirrorBox/util/e0;)V
    const-string v3, "/a/upload/log"
    invoke-virtual/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/util/p;->o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V
  :L0
    return-void
.end method

.method private u()V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0;->f:Ljava/lang/String;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "D"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
    const/16 v3, 36
    invoke-static { v1, v2, v3 }, Ljava/lang/Long;->toString(JI)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "G"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0;->f:Ljava/lang/String;
  :L0
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L1
    const/4 v1, 2
  .line 5
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->U0(I)Z
  :L1
  .line 6
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/s;->b()V
    if-eqz v0, :L2
  .line 8
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcn/manstep/phonemirrorBox/util/e0$a;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/util/e0$a;-><init>(Lcn/manstep/phonemirrorBox/util/e0;)V
    invoke-direct { v0, v1 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
  .line 9
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  :L2
    return-void
.end method

.method private v(Ljava/lang/String;Ljava/lang/String;)V
  .registers 11
  .line 1
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p2 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "uploadRecordFile: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ",fileSize: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/io/File;->length()J
    move-result-wide v2
    invoke-virtual { v1, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "utilUploadLog"
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    invoke-virtual { v0 }, Ljava/io/File;->length()J
    move-result-wide v0
    const-wide/16 v2, 0
    cmp-long v4, v0, v2
    if-lez v4, :L0
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "37_("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ")("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0;->b:Ljava/lang/String;
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    const/16 v3, 12
    invoke-virtual { v1, v2, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "_"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0;->b:Ljava/lang/String;
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/util/e0;->l(Ljava/lang/String;)Ljava/util/Map;
    move-result-object v4
  .line 7
    new-instance v2, Lcn/manstep/phonemirrorBox/util/p;
    const/16 p1, 10
    invoke-direct { v2, p1 }, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V
  .line 8
    new-instance v7, Lcn/manstep/phonemirrorBox/util/e0$e;
    invoke-direct { v7, p0, p2 }, Lcn/manstep/phonemirrorBox/util/e0$e;-><init>(Lcn/manstep/phonemirrorBox/util/e0;Ljava/lang/String;)V
    const-string v3, "/a/upload/log"
    move-object v6, p2
    invoke-virtual/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/util/p;->o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V
    goto :L1
  :L0
  .line 9
    invoke-virtual { p0, p2 }, Lcn/manstep/phonemirrorBox/util/e0;->j(Ljava/lang/String;)V
  :L1
    return-void
.end method

.method public j(Ljava/lang/String;)V
  .registers 3
  .line 1
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result p1
    if-eqz p1, :L0
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    invoke-virtual { v0 }, Ljava/io/File;->delete()Z
  :L0
    return-void
.end method

.method public k()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->a(Landroid/content/Context;)V
    return-void
.end method

.method public o(Lcn/manstep/phonemirrorBox/util/e0$g;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0;->c:Lcn/manstep/phonemirrorBox/util/e0$g;
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)V
  .registers 14
  .line 1
    new-instance v0, Ljava/io/File;
    invoke-direct { v0, p2 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result v1
    const-string v2, "file does not exits"
    if-eqz v1, :L4
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v1
    if-nez v1, :L0
    goto/16 :L4
  :L0
  .line 3
    invoke-virtual { v0 }, Ljava/io/File;->length()J
    move-result-wide v3
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "uploadRecordFile: "
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, ",fileSize: "
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v3, v4 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v5, ",filePath: "
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    const-string v1, "utilUploadLog"
    invoke-static { v1, p2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const-wide/16 v5, 0
    cmp-long p2, v3, v5
    if-gtz p2, :L1
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-static { p1, v2 }, Lcn/manstep/phonemirrorBox/widget/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V
    return-void
  :L1
  .line 6
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "37_("
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ")("
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/e0;->b:Ljava/lang/String;
    const-string p2, ".data"
  .line 7
    invoke-virtual { p1, p2 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    const-string v2, "_"
    const/16 v5, 12
    const/4 v6, 0
    if-eqz v1, :L2
  .line 8
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v7
    invoke-virtual { v7 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v7, v6, v5 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "box_"
    const-string v5, ""
    invoke-virtual { p1, v2, v5 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p1
    const-string v2, ".xlog"
    invoke-virtual { p1, p2, v2 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    goto :L3
  :L2
  .line 9
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v1, v6, v5 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L3
    move-object v8, p1
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0;->b:Ljava/lang/String;
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/util/e0;->l(Ljava/lang/String;)Ljava/util/Map;
    move-result-object v7
  .line 11
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/util/e0;->e:Lcn/manstep/phonemirrorBox/util/p;
    invoke-virtual { v0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v9
    new-instance v10, Lcn/manstep/phonemirrorBox/util/e0$d;
    invoke-direct { v10, p0, v0, v3, v4 }, Lcn/manstep/phonemirrorBox/util/e0$d;-><init>(Lcn/manstep/phonemirrorBox/util/e0;Ljava/io/File;J)V
    const-string v6, "/a/upload/log"
    invoke-virtual/range { v5 .. v10 }, Lcn/manstep/phonemirrorBox/util/p;->o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V
    return-void
  :L4
  .line 12
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-static { p1, v2 }, Lcn/manstep/phonemirrorBox/widget/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V
    return-void
.end method

.method public t()V
  .registers 12
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/util/e0;->u()V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "uploadAppLog: ########"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/util/s;->a:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "utilUploadLog"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->p(Landroid/content/Context;)Ljava/io/File;
    move-result-object v0
    const/4 v1, 0
    if-nez v0, :L0
    const/4 v2, 0
    goto :L1
  :L0
    const/4 v2, 1
  :L1
    const v3, 2131689884
    if-nez v2, :L2
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-static { v0, v3 }, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V
    return-void
  :L2
  .line 5
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->h(Ljava/io/File;)Ljava/io/File;
    move-result-object v0
    if-nez v0, :L3
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-static { v0, v3 }, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V
    return-void
  :L3
  .line 7
    invoke-virtual { v0 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v2
    const-string v3, ".xlog"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    const-string v3, "app.log"
    const-string v4, "app.xlog"
    if-eqz v2, :L4
    goto :L6
  :L4
    invoke-virtual { v0 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v2
    const-string v5, ".bs64"
    invoke-virtual { v2, v5 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L5
    goto :L6
  :L5
    move-object v4, v3
  :L6
  .line 8
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v5
    invoke-virtual { v5 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v5
    const/16 v6, 12
    invoke-virtual { v5, v1, v6 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "_"
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
  .line 9
    invoke-direct { p0, v3 }, Lcn/manstep/phonemirrorBox/util/e0;->l(Ljava/lang/String;)Ljava/util/Map;
    move-result-object v7
  .line 10
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/util/e0;->e:Lcn/manstep/phonemirrorBox/util/p;
    invoke-virtual { v0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v9
    new-instance v10, Lcn/manstep/phonemirrorBox/util/e0$b;
    invoke-direct { v10, p0, v0 }, Lcn/manstep/phonemirrorBox/util/e0$b;-><init>(Lcn/manstep/phonemirrorBox/util/e0;Ljava/io/File;)V
    const-string v6, "/a/upload/log"
    invoke-virtual/range { v5 .. v10 }, Lcn/manstep/phonemirrorBox/util/p;->o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V
    return-void
.end method

.method public w()V
  .registers 13
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "\u5f55\u97f3"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-virtual { v1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131689734
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/n;->k(Landroid/content/Context;)Ljava/io/File;
    move-result-object v1
    const/4 v2, 0
    if-eqz v1, :L2
  .line 3
    invoke-virtual { v1 }, Ljava/io/File;->isDirectory()Z
    move-result v3
    if-eqz v3, :L2
  .line 4
    invoke-virtual { v1 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v1
    if-eqz v1, :L2
  .line 5
    array-length v3, v1
    const/4 v4, 0
    const/4 v5, 0
  :L0
    if-ge v4, v3, :L3
    aget-object v6, v1, v4
  .line 6
    invoke-virtual { v6 }, Ljava/io/File;->isFile()Z
    move-result v7
    if-eqz v7, :L1
  .line 7
    invoke-virtual { v6 }, Ljava/io/File;->length()J
    move-result-wide v7
    const-wide/32 v9, 52428800
    cmp-long v11, v7, v9
    if-gez v11, :L1
  .line 8
    invoke-virtual { v6 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v5
  .line 9
    invoke-virtual { v6 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6
    invoke-direct { p0, v5, v6 }, Lcn/manstep/phonemirrorBox/util/e0;->v(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v5, 1
  :L1
    add-int/lit8 v4, v4, 1
    goto :L0
  :L2
    const/4 v5, 0
  :L3
    if-nez v5, :L4
  .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/util/e0;->a:Landroid/content/Context;
    invoke-static { v1, v0, v2 }, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  :L4
    return-void
.end method
