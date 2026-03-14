.class public Lcn/manstep/phonemirrorBox/x;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static a:[Ljava/lang/String;

.field private final static b:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "Ljava/lang/Integer;",
      "Ljava/util/Locale;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 4
    const/16 v0, 20
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0
    const-string v2, "Auto"
    aput-object v2, v0, v1
    const/4 v1, 1
    const-string v2, "\u7b80\u4f53\u4e2d\u6587"
    aput-object v2, v0, v1
    const/4 v1, 2
    const-string v2, "\u7e41\u9ad4\u4e2d\u6587"
    aput-object v2, v0, v1
    const/4 v1, 3
    const-string v2, "English"
    aput-object v2, v0, v1
    const/4 v1, 4
    const-string v2, "\u65e5\u672c\u8a9e"
    aput-object v2, v0, v1
    const/4 v1, 5
    const-string v2, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"
    aput-object v2, v0, v1
    const/4 v1, 6
    const-string v2, "Deutsch"
    aput-object v2, v0, v1
    const/4 v1, 7
    const-string v2, "Espa\u00f1ol"
    aput-object v2, v0, v1
    const/16 v1, 8
    const-string v2, "Fran\u00e7ais"
    aput-object v2, v0, v1
    const/16 v1, 9
    const-string v2, "Nederlands"
    aput-object v2, v0, v1
    const/16 v1, 10
    const-string v2, "Portugu\u00eas"
    aput-object v2, v0, v1
    const/16 v1, 11
    const-string v2, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"
    aput-object v2, v0, v1
    const/16 v1, 12
    const-string v2, "T\u00fcrk\u00e7e"
    aput-object v2, v0, v1
    const/16 v1, 13
    const-string v2, "\ud55c\uad6d\uc758"
    aput-object v2, v0, v1
    const/16 v1, 14
    const-string v2, "\u05e2\u05b4\u05d1\u05b0\u05e8\u05b4\u05d9\u05ea"
    aput-object v2, v0, v1
    const/16 v1, 15
    const-string v2, "Italiano"
    aput-object v2, v0, v1
    const-string v1, "\u0e20\u0e32\u0e29\u0e32\u0e44\u0e17\u0e22"
    const/16 v2, 16
    aput-object v1, v0, v2
    const/16 v1, 17
    const-string v3, "Indonesia"
    aput-object v3, v0, v1
    const/16 v1, 18
    const-string v3, "Melayu"
    aput-object v3, v0, v1
    const/16 v1, 19
    const-string v3, "Norsk"
    aput-object v3, v0, v1
  .line 1
    sput-object v0, Lcn/manstep/phonemirrorBox/x;->a:[Ljava/lang/String;
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/x$a;
    invoke-direct { v0, v2 }, Lcn/manstep/phonemirrorBox/x$a;-><init>(I)V
    sput-object v0, Lcn/manstep/phonemirrorBox/x;->b:Ljava/util/HashMap;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
  .line 2
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
  .line 3
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v1
  .line 4
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/x;->e(I)Ljava/util/Locale;
    move-result-object p1
  .line 5
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "changeLanguage: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const-string v3, "LanguageConfig"
    invoke-static { v3, v2 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 17
    if-lt v2, v3, :L0
  .line 7
    invoke-virtual { v1, p1 }, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V
    goto :L1
  :L0
  .line 8
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
  :L1
  .line 9
    invoke-virtual { p0, v1, v0 }, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/Context;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v0
  .line 3
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/x;->e(I)Ljava/util/Locale;
    move-result-object p1
  .line 4
    invoke-virtual { v0, p1 }, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V
  .line 5
    invoke-virtual { p0, v0 }, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    move-result-object p0
    return-object p0
.end method

.method public static c()I
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "LanguageID"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
  .line 2
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/x;->g(ILjava/util/Locale;)Z
    move-result v1
    if-eqz v1, :L0
    const/4 v0, 1
    return v0
  :L0
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x;->f(I)Z
    move-result v0
    if-eqz v0, :L1
    return v2
  :L1
    const/4 v0, 2
    return v0
.end method

.method private static d(I)Ljava/util/Locale;
  .registers 5
  .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
  .line 2
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/x;->k(I)Z
    move-result v1
    if-eqz v1, :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/x;->b:Ljava/util/HashMap;
    invoke-static { p0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/util/Locale;
    goto :L4
  :L0
  .line 4
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object p0
  .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 24
    if-lt v1, v2, :L1
  .line 6
    invoke-static { }, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;
    move-result-object v0
  :L1
  .line 7
    sget-object v1, Lcn/manstep/phonemirrorBox/x;->b:Ljava/util/HashMap;
    invoke-virtual { v1 }, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L3
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
  .line 8
    sget-object v3, Lcn/manstep/phonemirrorBox/x;->b:Ljava/util/HashMap;
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v3, v2 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Locale;
    invoke-virtual { v2 }, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0 }, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L2
    goto :L4
  :L3
    move-object p0, v0
  :L4
    return-object p0
.end method

.method public static e(I)Ljava/util/Locale;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "getLocaleByLanguage: index="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "LanguageConfig"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/x;->k(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/x;->b:Ljava/util/HashMap;
    invoke-static { p0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/util/Locale;
    return-object p0
  :L0
  .line 4
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object p0
  .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 24
    if-lt v0, v2, :L1
  .line 6
    invoke-static { }, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;
    move-result-object p0
    const/4 v0, 0
    invoke-virtual { p0, v0 }, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;
    move-result-object p0
  :L1
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "getLocaleByLanguage: system default:"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/x;->b:Ljava/util/HashMap;
    invoke-virtual { v0 }, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Integer;
    invoke-virtual { v1 }, Ljava/lang/Integer;->intValue()I
    move-result v1
  .line 9
    sget-object v2, Lcn/manstep/phonemirrorBox/x;->b:Ljava/util/HashMap;
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual { v2, v1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/util/Locale;
    invoke-virtual { v1 }, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0 }, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
    return-object p0
  :L3
  .line 10
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    return-object p0
.end method

.method public static f(I)Z
  .registers 2
  .line 1
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/x;->g(ILjava/util/Locale;)Z
    move-result v0
    if-nez v0, :L1
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;
  .line 2
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/x;->g(ILjava/util/Locale;)Z
    move-result v0
    if-nez v0, :L1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;
  .line 3
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/x;->g(ILjava/util/Locale;)Z
    move-result p0
    if-eqz p0, :L0
    goto :L1
  :L0
    const/4 p0, 0
    goto :L2
  :L1
    const/4 p0, 1
  :L2
    return p0
.end method

.method private static g(ILjava/util/Locale;)Z
  .registers 2
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/x;->d(I)Ljava/util/Locale;
    move-result-object p0
  .line 2
    invoke-virtual { p0, p1 }, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    move-result p0
    return p0
.end method

.method public static h(Ljava/util/Locale;)Z
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 0
    const/4 v2, 1
    const/16 v3, 17
    if-lt v0, v3, :L1
  .line 2
    invoke-static { p0 }, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    move-result p0
    if-ne p0, v2, :L0
    const/4 v1, 1
  :L0
    return v1
  :L1
  .line 3
    invoke-virtual { p0 }, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object p0
    const-string v0, "ar"
  .line 4
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
    const-string v0, "he"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
    const-string v0, "fa"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
    const-string v0, "ur"
  .line 5
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
    const-string v0, "sy"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
    const-string v0, "yi"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
    const-string v0, "iw"
  .line 6
    invoke-virtual { p0, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-eqz p0, :L3
  :L2
    const/4 v1, 1
  :L3
    return v1
.end method

.method public static i()Z
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "LanguageID"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v0
  .line 2
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/x;->j(I)Z
    move-result v0
    return v0
.end method

.method public static j(I)Z
  .registers 2
  .line 1
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/x;->g(ILjava/util/Locale;)Z
    move-result p0
    return p0
.end method

.method private static k(I)Z
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/x;->b:Ljava/util/HashMap;
    invoke-static { p0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result p0
    return p0
.end method
