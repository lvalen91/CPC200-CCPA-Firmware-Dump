.class public Lcn/manstep/phonemirrorBox/u;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static p:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private final static q:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private static r:Lcn/manstep/phonemirrorBox/u;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private final n:I

.field private final o:I

.method static constructor <clinit>()V
  .registers 8
    const/4 v0, 4
    new-array v1, v0, [Ljava/lang/String;
    const-string v2, "rockchip/rkpx3/rkpx3:4.4.4/KTU84Q/eng.kityzhou.20170427.141957:eng/test-keys"
    const/4 v3, 0
    aput-object v2, v1, v3
    const-string v2, "Dolphin_D3/e03_high_arm64/e03_high_arm64:10/20.01.01.000000.211951/186:eng/test-keys"
    const/4 v4, 1
    aput-object v2, v1, v4
    const-string v2, "kia/wp_bdc_cn/wp_bdc_cn:4.4.2/KVT49L/eng.vmadmin.20190403.090300:user/dev-keys"
    const/4 v5, 2
    aput-object v2, v1, v5
    const-string v2, "alps/full_ac8257_demo/ac8257_demo:9/PPR1.180610.011/bean01112215:user/test-keys"
    const/4 v6, 3
    aput-object v2, v1, v6
  .line 1
    invoke-static { v1 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v1
    sput-object v1, Lcn/manstep/phonemirrorBox/u;->p:Ljava/util/List;
    new-array v0, v0, [Ljava/lang/String;
    const-string v1, "evb3561s_65_m0"
    aput-object v1, v0, v3
    const-string v1, "evb3561sv_t_63_m0"
    aput-object v1, v0, v4
    const-string v1, "FF-5000"
    aput-object v1, v0, v5
    const-string v1, "t8-p2"
    aput-object v1, v0, v6
  .line 2
    invoke-static { v0 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    sput-object v0, Lcn/manstep/phonemirrorBox/u;->q:Ljava/util/List;
    return-void
.end method

.method private constructor <init>()V
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->f:Ljava/lang/String;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->j:Z
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->k:Ljava/lang/String;
  .line 6
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->a:Ljava/lang/String;
  .line 7
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "["
  .line 8
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ","
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/util/TimeZone;->getID()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "]"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 10
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 12
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 13
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 14
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 15
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 16
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 17
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 18
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 19
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 20
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->g:Ljava/lang/String;
  .line 21
    sget-object v0, Lcn/manstep/phonemirrorBox/u;->q:Ljava/util/List;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/u;->a:Ljava/lang/String;
    invoke-interface { v0, v1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
  .line 22
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/u;->i:Z
  :L0
  .line 23
    sget-object v0, Lcn/manstep/phonemirrorBox/u;->p:Ljava/util/List;
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;
    invoke-interface { v0, v2 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  .line 24
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/u;->j:Z
  :L1
  .line 25
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 26
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "-"
  .line 27
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
  .line 28
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 29
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
  .line 30
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 31
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
  .line 32
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "("
  .line 33
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
  .line 34
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, ")"
  .line 35
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 36
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    iput-object v4, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
  .line 37
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
  .line 38
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 39
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;
  .line 40
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 41
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
  .line 42
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 43
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
  .line 44
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  .line 45
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 46
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;
  .line 47
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2, v0 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V
  .line 48
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 49
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
  .line 50
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "DeviceConfig: "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v2
    iget-object v2, v2, Lcn/manstep/phonemirrorBox/MyApplication;->c:Landroid/util/DisplayMetrics;
    invoke-virtual { v2 }, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v2, "DeviceConfig"
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 51
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v0
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/MyApplication;->c:Landroid/util/DisplayMetrics;
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    iput v0, p0, Lcn/manstep/phonemirrorBox/u;->n:I
  .line 52
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v0
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/MyApplication;->c:Landroid/util/DisplayMetrics;
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    iput v0, p0, Lcn/manstep/phonemirrorBox/u;->o:I
  .line 53
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "DeviceConfig: 1\u3001"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 54
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "DeviceConfig: 2\u3001"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 55
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "DeviceConfig: 3\u3001"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 56
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 57
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "DeviceConfig: HUID:"
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 58
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/c0;->w(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->e:Ljava/lang/String;
  .line 59
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/u;->e:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v2, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method private a()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/c0;->e(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/c0;->w(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method private n0(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
  .line 1
    new-instance v0, Landroid/content/ComponentName;
    const-class v1, Lcn/manstep/phonemirrorBox/Main1Activity;
    invoke-direct { v0, p1, v1 }, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 2
    invoke-virtual { p1 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
  .line 3
    invoke-virtual { v1, v0 }, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    move-result v0
    const/4 v1, 2
    if-eq v0, v1, :L3
  .line 4
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcn/manstep/phonemirrorBox/Main1Activity;
    invoke-direct { v0, p1, v1 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const/high16 v1, 4096
  .line 5
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  :L0
  .line 6
    invoke-virtual { p1, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 7
    invoke-virtual { p1 }, Ljava/lang/Exception;->printStackTrace()V
  :L3
    return-void
.end method

.method public static z()Lcn/manstep/phonemirrorBox/u;
  .catchall { :L0 .. :L3 } :L2
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/u;->r:Lcn/manstep/phonemirrorBox/u;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/u;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/u;->r:Lcn/manstep/phonemirrorBox/u;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/u;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/u;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/u;->r:Lcn/manstep/phonemirrorBox/u;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/u;->r:Lcn/manstep/phonemirrorBox/u;
    return-object v0
.end method

.method public A()Landroid/graphics/Rect;
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const v2, -1825773316
    const/4 v3, 2
    const/4 v4, 1
    const/4 v5, 0
    if-eq v1, v2, :L2
    const v2, 106973241
    if-eq v1, v2, :L1
    const v2, 1138880147
    if-eq v1, v2, :L0
    goto :L3
  :L0
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const/4 v0, 0
    goto :L4
  :L1
    const-string v1, "JIDU-ROBOCAR-msmnile_gvmq-12(32)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const/4 v0, 2
    goto :L4
  :L2
    const-string v1, "Great_Wall-F7-22-SERIALS-g6sa_a12-8.1.0(27)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const/4 v0, 1
    goto :L4
  :L3
    const/4 v0, -1
  :L4
    if-eqz v0, :L7
    if-eq v0, v4, :L6
    if-eq v0, v3, :L5
    const/4 v0, 0
    goto :L8
  :L5
  .line 2
    new-instance v0, Landroid/graphics/Rect;
    const/16 v1, 96
    const/16 v2, 128
    invoke-direct { v0, v5, v1, v5, v2 }, Landroid/graphics/Rect;-><init>(IIII)V
    goto :L8
  :L6
  .line 3
    new-instance v0, Landroid/graphics/Rect;
    const/16 v1, 130
    invoke-direct { v0, v1, v5, v5, v5 }, Landroid/graphics/Rect;-><init>(IIII)V
    goto :L8
  :L7
  .line 4
    new-instance v0, Landroid/graphics/Rect;
    const/16 v1, 72
    invoke-direct { v0, v5, v5, v5, v1 }, Landroid/graphics/Rect;-><init>(IIII)V
  :L8
    return-object v0
.end method

.method public B()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z
    if-eqz v0, :L0
    const/4 v0, 2
    return v0
  :L0
    const/4 v0, 3
    return v0
.end method

.method public C()Landroid/graphics/Rect;
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const v2, -1649237164
    const/4 v3, 1
    const/4 v4, 0
    if-eq v1, v2, :L1
    const v2, 1072463447
    if-eq v1, v2, :L0
    goto :L2
  :L0
    const-string v1, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 0
    goto :L3
  :L1
    const-string v1, "QTI-FAW-msmnile_faw_e001_fl-2010(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, -1
  :L3
    if-eqz v0, :L4
    if-eq v0, v3, :L4
    const/4 v0, 0
    return-object v0
  :L4
  .line 2
    new-instance v0, Landroid/graphics/Rect;
    const/16 v1, 96
    const/16 v2, 720
    invoke-direct { v0, v4, v1, v2, v4 }, Landroid/graphics/Rect;-><init>(IIII)V
    return-object v0
.end method

.method public D()I
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "Parrot-ivic229vmcid-ivic229vmcid-9(28)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/16 v0, 255
    return v0
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "intel-HONG QI-t1c_acrn-9(28)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/16 v1, 15
    if-eqz v0, :L1
    return v1
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v2, "alps-spm8666p1_64_car-changan_car-9(28)"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    return v1
  :L2
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "ecarx-IHU3Q122-IHU3Q122-9(28)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const/4 v0, 3
    return v0
  :L3
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    const-string v1, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.211001.001"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
    const/16 v0, 12
    return v0
  :L4
    const/4 v0, 0
    return v0
.end method

.method public E()I
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 0
    const v3, 1138880147
    if-eq v1, v3, :L0
    goto :L1
  :L0
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, -1
  :L2
    if-eqz v0, :L3
    const/4 v0, 2
    return v0
  :L3
    return v2
.end method

.method public F()I
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    const-string v1, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.211001.001"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    const-string v1, "QTI-Leapmotor C10-msmnile_gvmq-11(30)-RQ3A.211001.001"
  .line 2
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    const-string v1, "Qualcomm-msmnile_gvmq for arm64-msmnile_gvmq-12(32)-SQ3A.220705.003.A1"
  .line 3
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L4
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const/4 v1, -1
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v2
    const v3, -605983119
    if-eq v2, v3, :L1
    goto :L2
  :L1
    const-string v2, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v1, 0
  :L2
    if-eqz v1, :L3
    const/4 v0, 1
    return v0
  :L3
    const/16 v0, 10
    return v0
  :L4
    const/4 v0, 7
    return v0
.end method

.method public G(I)I
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/16 p1, 620
  :L0
    return p1
.end method

.method public H()Ljava/lang/String;
  .registers 8
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;
    const-string v2, ","
    const-string v3, "x"
    if-eqz v1, :L1
    if-eqz v0, :L1
  .line 3
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v1
  .line 4
    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I
  .line 5
    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I
  .line 6
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v4, "window"
  .line 7
    invoke-virtual { v0, v4 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroid/view/WindowManager;
    invoke-interface { v4 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v4
  .line 8
    new-instance v5, Landroid/graphics/Point;
    invoke-direct { v5 }, Landroid/graphics/Point;-><init>()V
  .line 9
    invoke-virtual { v4, v5 }, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
  .line 10
    iget v4, v5, Landroid/graphics/Point;->x:I
  .line 11
    iget v5, v5, Landroid/graphics/Point;->y:I
  .line 12
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v1, v6 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v6
    if-nez v6, :L0
  .line 13
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  :L0
  .line 14
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
  .line 15
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
  .line 16
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I
  .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
  .line 18
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v1, v5 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v5
    if-nez v5, :L2
  .line 19
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    goto :L2
  :L1
    const-string v1, ""
  :L2
  .line 20
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->l:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->m:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public I()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->k:Ljava/lang/String;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/u;->a()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->k:Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->k:Ljava/lang/String;
    return-object v0
.end method

.method public J()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z
    if-eqz v0, :L0
    const/4 v0, 2
    return v0
  :L0
    const/4 v0, 3
    return v0
.end method

.method public K()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z
    if-eqz v0, :L0
    const/4 v0, 0
    return v0
  :L0
    const/4 v0, 3
    return v0
.end method

.method public L()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public M()Z
  .registers 9
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 5
    const/4 v4, 4
    const/4 v5, 3
    const/4 v6, 2
    const/4 v7, 1
    sparse-switch v1, :L9
    goto :L6
  :L0
    const-string v1, "hozon-EP32E01-vnd_mars-11(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
    const/4 v0, 3
    goto :L7
  :L1
    const-string v1, "hozon-EP37-vnd_mars-11(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
    const/4 v0, 2
    goto :L7
  :L2
    const-string v1, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
    const/4 v0, 1
    goto :L7
  :L3
    const-string v1, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
    const/4 v0, 0
    goto :L7
  :L4
    const-string v1, "hozon-EP36-vnd_mars-11(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
    const/4 v0, 4
    goto :L7
  :L5
    const-string v1, "hozon-oversea-vnd_mars-11(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
    const/4 v0, 5
    goto :L7
  :L6
    const/4 v0, -1
  :L7
    if-eqz v0, :L8
    if-eq v0, v7, :L8
    if-eq v0, v6, :L8
    if-eq v0, v5, :L8
    if-eq v0, v4, :L8
    if-eq v0, v3, :L8
    return v2
  :L8
    return v7
  :L9
  .sparse-switch
    -1528909028 -> :L5
    -1468750011 -> :L4
    -605983119 -> :L3
    -374617043 -> :L2
    -115440314 -> :L1
    1541492381 -> :L0
  .end sparse-switch
.end method

.method public N()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "QTI-Leapmotor C10-msmnile_gvmq-11(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    return v0
  :L0
    const/4 v0, 1
    return v0
.end method

.method public O()I
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;
    const-string v1, "alps-E01-5.1(22)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;
    const-string v2, "Freescale-SABRESD-MX6DQ-4.4.2(19)"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v2, "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    goto :L6
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;
    const-string v2, "QUALCOMM-msm8953_32-8.1.0(27)"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v2, 2
    if-eqz v0, :L2
    return v2
  :L2
  .line 4
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    const-string v3, "HUAWEI"
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    return v2
  :L3
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v3, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
    return v1
  :L4
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    return v2
  :L5
    const/4 v0, 0
    return v0
  :L6
    return v1
.end method

.method public P()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c101-9(28)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public Q()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;
    const-string v1, "QUALCOMM-msm8953_32-8.1.0(27)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public R()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    return v0
  :L0
    const/4 v0, 1
    return v0
.end method

.method public S()Z
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 0
    const v3, 1138880147
    if-eq v1, v3, :L0
    goto :L1
  :L0
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, -1
  :L2
    if-eqz v0, :L3
    return v2
  :L3
    const/4 v0, 1
    return v0
.end method

.method public T()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    const-string v1, "ATC-Generic Android on ac8317-generic_ac8317-4.2.2(17)-JDQ39E"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    const-string v1, "ADAYO-AC822X-generic_ac8317-4.2.2(17)-JDQ39E"
  .line 2
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    return v0
  :L1
    const/4 v0, 1
    return v0
.end method

.method public U()Z
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 0
    const v3, 1138880147
    if-eq v1, v3, :L0
    goto :L1
  :L0
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, -1
  :L2
    if-eqz v0, :L3
    return v2
  :L3
    const/4 v0, 1
    return v0
.end method

.method public V()Z
  .registers 3
  .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    const-string v1, "HUAWEI"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public W()Z
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const v2, -1649237164
    const/4 v3, 0
    const/4 v4, 1
    if-eq v1, v2, :L1
    const v2, 1072463447
    if-eq v1, v2, :L0
    goto :L2
  :L0
    const-string v1, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 0
    goto :L3
  :L1
    const-string v1, "QTI-FAW-msmnile_faw_e001_fl-2010(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, -1
  :L3
    if-eqz v0, :L4
    if-eq v0, v4, :L4
    return v3
  :L4
    return v4
.end method

.method public X()Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/u;->v()I
    move-result v0
    const/4 v1, 2
    if-ne v0, v1, :L0
    const/4 v0, 1
    return v0
  :L0
  .line 2
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->j:Z
    return v0
.end method

.method public Y()Z
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 3
    const/4 v4, 2
    const/4 v5, 1
    sparse-switch v1, :L8
    goto :L4
  :L0
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c001-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
    const/4 v0, 3
    goto :L5
  :L1
    const-string v1, "hozon-EP36-vnd_mars-11(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
    const/4 v0, 0
    goto :L5
  :L2
    const-string v1, "NIO-ET5-luke-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
    const/4 v0, 2
    goto :L5
  :L3
    const-string v1, "NIO-ET7-vader-12(32)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
    const/4 v0, 1
    goto :L5
  :L4
    const/4 v0, -1
  :L5
    if-eqz v0, :L7
    if-eq v0, v5, :L7
    if-eq v0, v4, :L7
    if-eq v0, v3, :L7
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/u;->v()I
    move-result v0
    if-ne v0, v5, :L6
    const/4 v2, 1
  :L6
    return v2
  :L7
    return v5
  :L8
  .sparse-switch
    -1825736888 -> :L3
    -1603382454 -> :L2
    -1468750011 -> :L1
    1135108203 -> :L0
  .end sparse-switch
.end method

.method public Z()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    return v0
  :L0
    const/4 v0, 1
    return v0
.end method

.method public a0()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "hozon-EP37-vnd_mars-11(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "hozon-oversea-vnd_mars-11(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "hozon-EP36-vnd_mars-11(30)"
  .line 2
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"
  .line 3
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "hozon-EP32E01-vnd_mars-11(30)"
  .line 4
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 5
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->t:Z
    return v0
  :L1
    const/4 v0, 1
    return v0
.end method

.method public b()I
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;
    move-result-object v0
    const-string v1, "ecarx-IHU3Q122-IHU3Q122-9(28)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "hozon-oversea-vnd_mars-11(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)"
  .line 2
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, -1
    return v0
  :L1
    const/4 v0, 1
    return v0
.end method

.method public b0()Z
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const v2, 30583034
    const/4 v3, 0
    const/4 v4, 1
    if-eq v1, v2, :L1
    const v2, 1108798925
    if-eq v1, v2, :L0
    goto :L2
  :L0
    const-string v1, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 0
    goto :L3
  :L1
    const-string v1, "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)-ICHU3100F123-ADV"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, -1
  :L3
    if-eqz v0, :L5
    if-eq v0, v4, :L5
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L4
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L4
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const/high16 v1, 32517
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    return v0
  :L4
    return v3
  :L5
    return v4
.end method

.method public c()I
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const v2, -1649237164
    const/4 v3, 0
    const/4 v4, 1
    if-eq v1, v2, :L1
    const v2, 1072463447
    if-eq v1, v2, :L0
    goto :L2
  :L0
    const-string v1, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 0
    goto :L3
  :L1
    const-string v1, "QTI-FAW-msmnile_faw_e001_fl-2010(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, -1
  :L3
    if-eqz v0, :L5
    if-eq v0, v4, :L4
    return v3
  :L4
    const/16 v0, 32
    return v0
  :L5
    const/16 v0, 36
    return v0
.end method

.method public c0()Z
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 0
    const v3, -1559849941
    if-eq v1, v3, :L0
    goto :L1
  :L0
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, -1
  :L2
    if-eqz v0, :L3
    return v2
  :L3
    const/4 v0, 1
    return v0
.end method

.method public d()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;
    const-string v1, "QUALCOMM-msm8953_32-8.1.0(27)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 0
    return v0
  :L0
    const/4 v0, 1
    return v0
.end method

.method public d0()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public e()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public e0()Z
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-ge v0, v2, :L1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    return v1
.end method

.method public f(I)I
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const v2, -1825736888
    const/4 v3, 2
    const/4 v4, 1
    if-eq v1, v2, :L2
    const v2, -1603382454
    if-eq v1, v2, :L1
    const v2, -118508263
    if-eq v1, v2, :L0
    goto :L3
  :L0
    const-string v1, "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const/4 v0, 2
    goto :L4
  :L1
    const-string v1, "NIO-ET5-luke-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const/4 v0, 1
    goto :L4
  :L2
    const-string v1, "NIO-ET7-vader-12(32)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const/4 v0, 0
    goto :L4
  :L3
    const/4 v0, -1
  :L4
    if-eqz v0, :L5
    if-eq v0, v4, :L5
    if-eq v0, v3, :L5
    return p1
  :L5
    const/16 p1, 1080
    return p1
.end method

.method public f0()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    const-string v1, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public g()I
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const v2, -1559849941
    const/4 v3, 0
    const/4 v4, 1
    if-eq v1, v2, :L1
    const v2, -1180500822
    if-eq v1, v2, :L0
    goto :L2
  :L0
    const-string v1, "intel-HONG QI-t1c_acrn-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 1
    goto :L3
  :L1
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 0
    goto :L3
  :L2
    const/4 v0, -1
  :L3
    if-eqz v0, :L5
    if-eq v0, v4, :L4
    return v3
  :L4
    const/16 v0, 90
    return v0
  :L5
    const/16 v0, 10
    return v0
.end method

.method public g0(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/u;->j:Z
    return-void
.end method

.method public h()I
  .registers 8
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 3
    const/4 v3, 2
    const/4 v4, 4
    const/4 v5, 0
    const/4 v6, 1
    sparse-switch v1, :L15
    goto :L8
  :L0
    const-string v1, "hozon-EP32E01-vnd_mars-11(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
    const/4 v0, 6
    goto :L9
  :L1
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c001-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
    const/4 v0, 0
    goto :L9
  :L2
    const-string v1, "QUALCOMM-trinket for arm64-trinket-10(29)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
    const/4 v0, 7
    goto :L9
  :L3
    const-string v1, "hozon-EP37-vnd_mars-11(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
    const/4 v0, 4
    goto :L9
  :L4
    const-string v1, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
    const/4 v0, 3
    goto :L9
  :L5
    const-string v1, "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
    const/4 v0, 2
    goto :L9
  :L6
    const-string v1, "hozon-EP36-vnd_mars-11(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
    const/4 v0, 5
    goto :L9
  :L7
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
    const/4 v0, 1
    goto :L9
  :L8
    const/4 v0, -1
  :L9
    packed-switch v0, :L16
    const/4 v2, 0
    const/4 v3, 0
    goto :L14
  :L10
    const/16 v3, 14
    goto :L14
  :L11
    const/4 v2, 1
    const/4 v3, 4
    goto :L14
  :L12
    const/16 v3, 25
  :L13
    const/4 v2, 1
  :L14
    shl-int/lit8 v0, v2, 16
    const/high16 v1, -1
    and-int/2addr v0, v1
    const v1, 65535
    and-int/2addr v1, v3
    or-int/2addr v0, v1
    return v0
  :L15
  .sparse-switch
    -1559849941 -> :L7
    -1468750011 -> :L6
    -1303637141 -> :L5
    -605983119 -> :L4
    -115440314 -> :L3
    934038996 -> :L2
    1135108203 -> :L1
    1541492381 -> :L0
  .end sparse-switch
  :L16
  .packed-switch 0
    :L12
    :L12
    :L11
    :L13
    :L13
    :L13
    :L13
    :L10
  .end packed-switch
.end method

.method public h0()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/u;->n0(Landroid/content/Context;)V
  :L0
    return-void
.end method

.method public i()Z
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const v2, -1559849941
    const/4 v3, 0
    const/4 v4, 1
    if-eq v1, v2, :L1
    const v2, 1135108203
    if-eq v1, v2, :L0
    goto :L2
  :L0
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c001-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 0
    goto :L3
  :L1
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, -1
  :L3
    if-eqz v0, :L4
    if-eq v0, v4, :L4
    return v3
  :L4
    return v4
.end method

.method public i0()V
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/u;->n0(Landroid/content/Context;)V
  :L0
    return-void
.end method

.method public j()I
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L0
    const/4 v1, 4
    const/16 v0, 33
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v3, "ADAYO-AC822X-generic_ac8317-4.2.2(17)"
    invoke-virtual { v3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L2
    const/16 v0, 19
  :L2
    shl-int/lit8 v1, v1, 16
    const v2, 65535
    and-int/2addr v0, v2
    or-int/2addr v0, v1
    return v0
.end method

.method public j0()I
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "intel-HONG QI-t1c_acrn-9(28)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 0
    const/16 v2, 640
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->f:Ljava/lang/String;
    const-string v3, "hs5y21_11_080005"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
    return v1
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->f:Ljava/lang/String;
    const-string v3, "hs5y22_11_351004"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
    return v2
  :L1
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v3, "Parrot-ivic229vmcid-ivic229vmcid-9(28)"
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    return v2
  :L2
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v2, "ecarx-IHU3Q122-IHU3Q122-9(28)"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    const/16 v0, 156
    return v0
  :L3
    return v1
.end method

.method public k()I
  .registers 2
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u0/c;->g()I
    move-result v0
    return v0
.end method

.method public k0()I
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "alps-DongfengAeolus-vnd_spm8675p1_64_raite-11(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "hozon-oversea-vnd_mars-11(30)"
  .line 2
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L2
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "hozon-EP36-vnd_mars-11(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const/16 v0, 736
    return v0
  :L1
    const/16 v0, 40
    return v0
  :L2
    const/16 v0, 240
    return v0
.end method

.method public l(I)I
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;
    const-string v1, "Freescale-SABRESD-MX6DQ-4.4.2(19)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)"
  .line 2
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    return p1
  :L1
    const/16 p1, 60
    return p1
.end method

.method public l0(Landroid/content/Context;)V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public m(I)I
  .registers 2
    return p1
.end method

.method public m0(III)V
  .registers 4
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/u;->l:I
  .line 2
    iput p2, p0, Lcn/manstep/phonemirrorBox/u;->m:I
    mul-int p1, p1, p2
    const p2, 384000
    sub-int/2addr p1, p2
    mul-int/lit8 p1, p1, 23
    const p2, 998400
  .line 3
    div-int/2addr p1, p2
    return-void
.end method

.method public n()I
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c101-9(28)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 2
    return v0
  :L0
    const/4 v0, 0
    return v0
.end method

.method public o()I
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "Parrot-ivic229vmcid-ivic229vmcid-9(28)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/16 v1, 12
    const/4 v2, 2
    const/4 v3, 0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"
  .line 2
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "hozon-EP37-vnd_mars-11(30)"
  .line 3
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "hozon-EP36-vnd_mars-11(30)"
  .line 4
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "hozon-EP32E01-vnd_mars-11(30)"
  .line 5
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)"
  .line 6
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "HUAWEI-ICHU3200F2-ADV-ICHU3200F2-ADV-12(31)"
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)"
  .line 8
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    goto :L2
  :L1
  .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 26
    if-lt v0, v4, :L3
  :L2
    const/4 v0, 2
    goto :L4
  :L3
    const/4 v0, 0
    const/4 v1, 0
  :L4
  .line 10
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    const-string v5, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1"
    invoke-virtual { v5, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    const/16 v5, 16
    if-eqz v4, :L5
    const/16 v1, 16
    goto :L6
  :L5
    move v3, v0
  :L6
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "alps-ac8257_G01-G01-9(28)"
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
    const/4 v1, 5
    const/4 v3, 4
  :L7
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
    const/16 v1, 11
    goto :L9
  :L8
    move v2, v3
  :L9
    shl-int/lit8 v0, v2, 16
    const/high16 v2, -1
    and-int/2addr v0, v2
    const v2, 65535
    and-int/2addr v1, v2
    or-int/2addr v0, v1
    return v0
.end method

.method public p()I
  .registers 8
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 3
    const/4 v3, 4
    const/4 v4, 1
    const/4 v5, 0
    const/4 v6, 2
    sparse-switch v1, :L13
    goto :L5
  :L0
    const-string v1, "alps-ac8257_G01-G01-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 1
    goto :L6
  :L1
    const-string v1, "alps-E01-MEABGRD-5.1(22)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 0
    goto :L6
  :L2
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 3
    goto :L6
  :L3
    const-string v1, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 2
    goto :L6
  :L4
    const-string v1, "CAIC-x9hp for arm64-x9hp_bestune_d511_overseas_none_linux_di_baseline-10(29)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
    const/4 v0, 4
    goto :L6
  :L5
    const/4 v0, -1
  :L6
    const/4 v1, 6
    if-eqz v0, :L11
    if-eq v0, v4, :L12
    if-eq v0, v6, :L9
    if-eq v0, v2, :L9
    if-eq v0, v3, :L8
    const/4 v3, 0
  :L7
    const/4 v4, 0
    goto :L12
  :L8
    const/16 v3, 13
    goto :L10
  :L9
    const/4 v3, 6
  :L10
    const/4 v4, 2
    goto :L12
  :L11
    const/4 v3, 6
    goto :L7
  :L12
    shl-int/lit8 v0, v4, 16
    const/high16 v1, -1
    and-int/2addr v0, v1
    const v1, 65535
    and-int/2addr v1, v3
    or-int/2addr v0, v1
    return v0
  :L13
  .sparse-switch
    -887483713 -> :L4
    -605983119 -> :L3
    1138880147 -> :L2
    1293486950 -> :L1
    1948885352 -> :L0
  .end sparse-switch
.end method

.method public q()I
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "alps-E01-MEABGRD-5.1(22)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const v0, 393240
    return v0
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const v0, 131105
    return v0
  :L1
    const/4 v0, 0
    return v0
.end method

.method public r()Lcn/manstep/phonemirrorBox/util/x;
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const v2, -1559849941
    if-eq v1, v2, :L0
    goto :L1
  :L0
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, -1
  :L2
    const/4 v1, 0
    if-eqz v0, :L3
    return-object v1
  :L3
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/u;->n:I
    iget v2, p0, Lcn/manstep/phonemirrorBox/u;->o:I
    if-le v0, v2, :L4
    return-object v1
  :L4
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;
    const/16 v1, 1408
    const/16 v2, 1506
    invoke-direct { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/util/x;-><init>(II)V
    return-object v0
.end method

.method public s()I
  .registers 11
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "alps-E01-MEABGRD-5.1(22)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 2
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v2, "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v2, 3
    if-eqz v0, :L1
    return v2
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const/4 v3, -1
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v4
    const/4 v5, 4
    const/4 v6, 7
    const/4 v7, 5
    const/4 v8, 1
    const/4 v9, 0
    sparse-switch v4, :L25
    goto/16 :L13
  :L2
    const-string v2, "Parrot-ivic229vmcid-ivic229vmcid-9(28)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    const/4 v2, 2
    goto/16 :L14
  :L3
    const-string v2, "HUAWEI-ICHU3200X2-ADV-ICHU3200X2-ADV-12(31)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    const/4 v2, 7
    goto :L14
  :L4
    const-string v2, "hozon-EP32E01-vnd_mars-11(30)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    const/4 v2, 5
    goto :L14
  :L5
    const-string v2, "Renesas-G6SH-r8a7796-g6sa_c001-9(28)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    const/4 v2, 0
    goto :L14
  :L6
    const-string v4, "hozon-EP37-vnd_mars-11(30)"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    goto :L14
  :L7
    const-string v2, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    const/16 v2, 9
    goto :L14
  :L8
    const-string v2, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    const/16 v2, 10
    goto :L14
  :L9
    const-string v2, "HUAWEI-ICHU3200F2-ADV-ICHU3200F2-ADV-12(31)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    const/16 v2, 8
    goto :L14
  :L10
    const-string v2, "hozon-EP36-vnd_mars-11(30)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    const/4 v2, 4
    goto :L14
  :L11
    const-string v2, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    const/4 v2, 1
    goto :L14
  :L12
    const-string v2, "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
    const/4 v2, 6
    goto :L14
  :L13
    const/4 v2, -1
  :L14
    const/16 v0, 11
    const/16 v3, 16
    packed-switch v2, :L26
    const/4 v1, 0
    const/4 v5, 0
    goto :L22
  :L15
    const/4 v1, 1
    goto :L22
  :L16
    const/4 v1, 0
    goto :L19
  :L17
    const/4 v1, 1
    const/4 v5, 7
    goto :L22
  :L18
    const/4 v1, 1
    goto :L21
  :L19
    const/16 v5, 11
    goto :L22
  :L20
    const/4 v1, 5
  :L21
    const/16 v5, 16
  :L22
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    const-string v2, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L23
    const/16 v5, 16
    goto :L24
  :L23
    move v9, v1
  :L24
    shl-int/lit8 v0, v9, 16
    const/high16 v1, -1
    and-int/2addr v0, v1
    const v1, 65535
    and-int/2addr v1, v5
    or-int/2addr v0, v1
    return v0
  :L25
  .sparse-switch
    -1962649110 -> :L12
    -1559849941 -> :L11
    -1468750011 -> :L10
    -1351377526 -> :L9
    -605983119 -> :L8
    -374617043 -> :L7
    -115440314 -> :L6
    1135108203 -> :L5
    1541492381 -> :L4
    1667012426 -> :L3
    1979208221 -> :L2
  .end sparse-switch
  :L26
  .packed-switch 0
    :L20
    :L20
    :L19
    :L18
    :L18
    :L18
    :L18
    :L17
    :L17
    :L16
    :L15
  .end packed-switch
.end method

.method public t()I
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "alps-E01-MEABGRD-5.1(22)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    const v0, 393228
    return v0
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
    const v0, 131105
    return v0
  :L1
    const/4 v0, 0
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "DeviceConfig{info1='"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v1, 39
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", info2='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", info3='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", huid='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->e:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", defLocal='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->g:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", uuid='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->k:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v1, ", width="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->l:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", height="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->m:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", sysWidth="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->n:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", sysHeight="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->o:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public u()Landroid/view/WindowManager$LayoutParams;
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "hozon-EP37-vnd_mars-11(30)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, -1
    const/4 v2, 0
    const/4 v3, 1
    if-nez v0, :L6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "hozon-EP32E01-vnd_mars-11(30)"
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto/16 :L6
  :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "hozon-oversea-vnd_mars-11(30)"
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/16 v4, 17
    if-eqz v0, :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/b0;->E(Z)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/b0;->A(Z)V
  .line 5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;
    invoke-direct { v0 }, Landroid/view/WindowManager$LayoutParams;-><init>()V
  .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I
    const/16 v1, 1750
  .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I
  .line 8
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I
    return-object v0
  :L1
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v5, "hozon-EP36-vnd_mars-11(30)"
    invoke-virtual { v5, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/b0;->E(Z)V
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/b0;->A(Z)V
  .line 12
    new-instance v0, Landroid/view/WindowManager$LayoutParams;
    invoke-direct { v0 }, Landroid/view/WindowManager$LayoutParams;-><init>()V
  .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I
    const/16 v1, 2200
  .line 14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I
  .line 15
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I
    return-object v0
  :L2
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "QTI-f6801f for arm64-f6801f-9(28)"
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "QTI-f6803f for arm64-f6803f-9(28)"
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "QTI-msmnile_gvmq for arm64-f6805h-11(30)"
  .line 17
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "QTI-msmnile_gvmq for arm64-f6810-11(30)"
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "QTI-msmnile_gvmq for arm64-f6811-11(30)"
  .line 18
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v4, "QTI-msmnile_gvmq for arm64-f6802h-11(30)"
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
    goto :L5
  :L3
  .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    const-string v1, "BYD AUTO-DiLink5.0 For BYD AUTO-DiLink5.0-12(32)"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
  .line 20
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/b0;->E(Z)V
  .line 21
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/b0;->A(Z)V
  :L4
    const/4 v0, 0
    return-object v0
  :L5
  .line 22
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/b0;->E(Z)V
  .line 23
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/b0;->A(Z)V
  .line 24
    new-instance v0, Landroid/view/WindowManager$LayoutParams;
    invoke-direct { v0 }, Landroid/view/WindowManager$LayoutParams;-><init>()V
    const/16 v2, 1780
  .line 25
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I
  .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I
    const v1, 8388613
  .line 27
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I
    return-object v0
  :L6
  .line 28
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v3 }, Lcn/manstep/phonemirrorBox/b0;->E(Z)V
  .line 29
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcn/manstep/phonemirrorBox/b0;->A(Z)V
  .line 30
    new-instance v0, Landroid/view/WindowManager$LayoutParams;
    invoke-direct { v0 }, Landroid/view/WindowManager$LayoutParams;-><init>()V
    const/16 v2, 1230
  .line 31
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I
  .line 32
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I
    const v1, 8388661
  .line 33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I
    return-object v0
.end method

.method public v()I
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 4
    const/4 v4, 2
    const/4 v5, 1
    sparse-switch v1, :L15
    goto :L9
  :L0
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/4 v0, 4
    goto :L10
  :L1
    const-string v1, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/4 v0, 7
    goto :L10
  :L2
    const-string v1, "JIDU-ROBOCAR-msmnile_gvmq-12(32)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/4 v0, 6
    goto :L10
  :L3
    const-string v1, "BYD AUTO-DiLink5.0 For BYD AUTO-DiLink5.0-12(32)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/4 v0, 1
    goto :L10
  :L4
    const-string v1, "Freescale-CS11-cs11_19a_h-4.4.3(19)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/4 v0, 0
    goto :L10
  :L5
    const-string v1, "NIO-ET5-luke-9(28)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/4 v0, 3
    goto :L10
  :L6
    const-string v1, "QTI-FAW-msmnile_faw_e001_fl-2010(30)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/16 v0, 8
    goto :L10
  :L7
    const-string v1, "NIO-ET7-vader-12(32)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/4 v0, 2
    goto :L10
  :L8
    const-string v1, "Great_Wall-F7-22-SERIALS-g6sa_a12-8.1.0(27)"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/4 v0, 5
    goto :L10
  :L9
    const/4 v0, -1
  :L10
    packed-switch v0, :L16
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/u;->o:I
    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->n:I
    if-le v0, v1, :L14
    return v5
  :L11
    return v3
  :L12
    return v4
  :L13
    return v5
  :L14
    return v2
  :L15
  .sparse-switch
    -1825773316 -> :L8
    -1825736888 -> :L7
    -1649237164 -> :L6
    -1603382454 -> :L5
    -1046299636 -> :L4
    -806248871 -> :L3
    106973241 -> :L2
    1072463447 -> :L1
    1138880147 -> :L0
  .end sparse-switch
  :L16
  .packed-switch 0
    :L13
    :L13
    :L13
    :L13
    :L12
    :L12
    :L12
    :L11
    :L11
  .end packed-switch
.end method

.method public w()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->e:Ljava/lang/String;
    return-object v0
.end method

.method public x()Ljava/lang/String;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/u;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public y()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;
    return-object v0
.end method
