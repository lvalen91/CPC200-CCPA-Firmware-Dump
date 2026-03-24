.class public Lcn/manstep/phonemirrorBox/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Lcn/manstep/phonemirrorBox/u;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "rockchip/rkpx3/rkpx3:4.4.4/KTU84Q/eng.kityzhou.20170427.141957:eng/test-keys"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Dolphin_D3/e03_high_arm64/e03_high_arm64:10/20.01.01.000000.211951/186:eng/test-keys"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "kia/wp_bdc_cn/wp_bdc_cn:4.4.2/KVT49L/eng.vmadmin.20190403.090300:user/dev-keys"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "alps/full_ac8257_demo/ac8257_demo:9/PPR1.180610.011/bean01112215:user/test-keys"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/manstep/phonemirrorBox/u;->q:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z

    .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->j:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->k:Ljava/lang/String;

    .line 6
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->a:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->g:Ljava/lang/String;

    .line 21
    sget-object v0, Lcn/manstep/phonemirrorBox/u;->q:Ljava/util/List;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/u;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_99

    .line 22
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/u;->i:Z

    .line 23
    :cond_99
    sget-object v0, Lcn/manstep/phonemirrorBox/u;->p:Ljava/util/List;

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 24
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/u;->j:Z

    .line 25
    :cond_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceConfig: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v2

    iget-object v2, v2, Lcn/manstep/phonemirrorBox/MyApplication;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceConfig"

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v0

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/MyApplication;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/manstep/phonemirrorBox/u;->n:I

    .line 52
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v0

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/MyApplication;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/manstep/phonemirrorBox/u;->o:I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceConfig: 1\u3001"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceConfig: 2\u3001"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceConfig: 3\u3001"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceConfig: HUID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/c0;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->e:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/c0;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/c0;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n0(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcn/manstep/phonemirrorBox/Main1Activity;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/manstep/phonemirrorBox/Main1Activity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    :try_start_1e
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    :goto_26
    return-void
.end method

.method public static z()Lcn/manstep/phonemirrorBox/u;
    .registers 3

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/u;->r:Lcn/manstep/phonemirrorBox/u;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/u;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/u;->r:Lcn/manstep/phonemirrorBox/u;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/u;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/u;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/u;->r:Lcn/manstep/phonemirrorBox/u;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcn/manstep/phonemirrorBox/u;->r:Lcn/manstep/phonemirrorBox/u;

    return-object v0
.end method


# virtual methods
.method public A()Landroid/graphics/Rect;
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6cd31704

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2d

    const v2, 0x6604839

    if-eq v1, v2, :cond_23

    const v2, 0x43e1ee93

    if-eq v1, v2, :cond_19

    goto :goto_37

    :cond_19
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    goto :goto_38

    :cond_23
    const-string v1, "JIDU-ROBOCAR-msmnile_gvmq-12(32)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x2

    goto :goto_38

    :cond_2d
    const-string v1, "Great_Wall-F7-22-SERIALS-g6sa_a12-8.1.0(27)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, -0x1

    :goto_38
    if-eqz v0, :cond_52

    if-eq v0, v4, :cond_4a

    if-eq v0, v3, :cond_40

    const/4 v0, 0x0

    goto :goto_59

    .line 2
    :cond_40
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x60

    const/16 v2, 0x80

    invoke-direct {v0, v5, v1, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_59

    .line 3
    :cond_4a
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x82

    invoke-direct {v0, v1, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_59

    .line 4
    :cond_52
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x48

    invoke-direct {v0, v5, v5, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_59
    return-object v0
.end method

.method public B()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    const/4 v0, 0x3

    return v0
.end method

.method public C()Landroid/graphics/Rect;
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x624d5cac

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1d

    const v2, 0x3fec7e57

    if-eq v1, v2, :cond_13

    goto :goto_27

    :cond_13
    const-string v1, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_28

    :cond_1d
    const-string v1, "QTI-FAW-msmnile_faw_e001_fl-2010(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, -0x1

    :goto_28
    if-eqz v0, :cond_2e

    if-eq v0, v3, :cond_2e

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_2e
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x60

    const/16 v2, 0x2d0

    invoke-direct {v0, v4, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public D()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "Parrot-ivic229vmcid-ivic229vmcid-9(28)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xff

    return v0

    .line 2
    :cond_d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "intel-HONG QI-t1c_acrn-9(28)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xf

    if-eqz v0, :cond_1a

    return v1

    .line 3
    :cond_1a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v2, "alps-spm8666p1_64_car-changan_car-9(28)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    .line 4
    :cond_25
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "ecarx-IHU3Q122-IHU3Q122-9(28)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x3

    return v0

    .line 5
    :cond_31
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    const-string v1, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.211001.001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 v0, 0xc

    return v0

    :cond_3e
    const/4 v0, 0x0

    return v0
.end method

.method public E()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x43e1ee93

    if-eq v1, v3, :cond_d

    goto :goto_17

    :cond_d
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, -0x1

    :goto_18
    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    return v0

    :cond_1c
    return v2
.end method

.method public F()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    const-string v1, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.211001.001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    const-string v1, "QTI-Leapmotor C10-msmnile_gvmq-11(30)-RQ3A.211001.001"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    const-string v1, "Qualcomm-msmnile_gvmq for arm64-msmnile_gvmq-12(32)-SQ3A.220705.003.A1"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_3c

    .line 4
    :cond_1f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x241e918f

    if-eq v2, v3, :cond_2c

    goto :goto_35

    :cond_2c
    const-string v2, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v1, 0x0

    :cond_35
    :goto_35
    if-eqz v1, :cond_39

    const/4 v0, 0x1

    return v0

    :cond_39
    const/16 v0, 0xa

    return v0

    :cond_3c
    :goto_3c
    const/4 v0, 0x7

    return v0
.end method

.method public G(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0x26c

    :cond_c
    return p1
.end method

.method public H()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;

    const-string v2, ","

    const-string v3, "x"

    if-eqz v1, :cond_b5

    if-eqz v0, :cond_b5

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4
    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 5
    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "window"

    .line 7
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 8
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 9
    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 10
    iget v4, v5, Landroid/graphics/Point;->x:I

    .line 11
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_78

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 16
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b7

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b7

    :cond_b5
    const-string v1, ""

    .line 20
    :cond_b7
    :goto_b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/u;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u;->k:Ljava/lang/String;

    .line 3
    :cond_e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->k:Ljava/lang/String;

    return-object v0
.end method

.method public J()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    const/4 v0, 0x3

    return v0
.end method

.method public K()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x3

    return v0
.end method

.method public L()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public M()Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_5c

    goto :goto_4c

    :sswitch_10
    const-string v1, "hozon-EP32E01-vnd_mars-11(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x3

    goto :goto_4d

    :sswitch_1a
    const-string v1, "hozon-EP37-vnd_mars-11(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x2

    goto :goto_4d

    :sswitch_24
    const-string v1, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :sswitch_2e
    const-string v1, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    goto :goto_4d

    :sswitch_38
    const-string v1, "hozon-EP36-vnd_mars-11(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x4

    goto :goto_4d

    :sswitch_42
    const-string v1, "hozon-oversea-vnd_mars-11(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x5

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v0, -0x1

    :goto_4d
    if-eqz v0, :cond_5a

    if-eq v0, v7, :cond_5a

    if-eq v0, v6, :cond_5a

    if-eq v0, v5, :cond_5a

    if-eq v0, v4, :cond_5a

    if-eq v0, v3, :cond_5a

    return v2

    :cond_5a
    return v7

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x5b214ce4 -> :sswitch_42
        -0x578b58bb -> :sswitch_38
        -0x241e918f -> :sswitch_2e
        -0x165433d3 -> :sswitch_24
        -0x6e17aba -> :sswitch_1a
        0x5be14e9d -> :sswitch_10
    .end sparse-switch
.end method

.method public N()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "QTI-Leapmotor C10-msmnile_gvmq-11(30)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public O()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;

    const-string v1, "alps-E01-5.1(22)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 2
    :cond_c
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;

    const-string v2, "Freescale-SABRESD-MX6DQ-4.4.2(19)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v2, "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_50

    .line 3
    :cond_21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;

    const-string v2, "QUALCOMM-msm8953_32-8.1.0(27)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2d

    return v2

    .line 4
    :cond_2d
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "HUAWEI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    return v2

    .line 5
    :cond_38
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v3, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    return v1

    .line 6
    :cond_43
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    return v2

    :cond_4e
    const/4 v0, 0x0

    return v0

    :cond_50
    :goto_50
    return v1
.end method

.method public P()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c101-9(28)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public Q()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;

    const-string v1, "QUALCOMM-msm8953_32-8.1.0(27)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public R()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public S()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x43e1ee93

    if-eq v1, v3, :cond_d

    goto :goto_17

    :cond_d
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, -0x1

    :goto_18
    if-eqz v0, :cond_1b

    return v2

    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public T()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    const-string v1, "ATC-Generic Android on ac8317-generic_ac8317-4.2.2(17)-JDQ39E"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    const-string v1, "ADAYO-AC822X-generic_ac8317-4.2.2(17)-JDQ39E"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public U()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x43e1ee93

    if-eq v1, v3, :cond_d

    goto :goto_17

    :cond_d
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, -0x1

    :goto_18
    if-eqz v0, :cond_1b

    return v2

    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public V()Z
    .registers 3

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public W()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x624d5cac

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1d

    const v2, 0x3fec7e57

    if-eq v1, v2, :cond_13

    goto :goto_27

    :cond_13
    const-string v1, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_28

    :cond_1d
    const-string v1, "QTI-FAW-msmnile_faw_e001_fl-2010(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, -0x1

    :goto_28
    if-eqz v0, :cond_2d

    if-eq v0, v4, :cond_2d

    return v3

    :cond_2d
    return v4
.end method

.method public X()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/u;->v()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_9
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->j:Z

    return v0
.end method

.method public Y()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_48

    goto :goto_36

    :sswitch_e
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c001-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x3

    goto :goto_37

    :sswitch_18
    const-string v1, "hozon-EP36-vnd_mars-11(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    goto :goto_37

    :sswitch_22
    const-string v1, "NIO-ET5-luke-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x2

    goto :goto_37

    :sswitch_2c
    const-string v1, "NIO-ET7-vader-12(32)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v0, -0x1

    :goto_37
    if-eqz v0, :cond_47

    if-eq v0, v5, :cond_47

    if-eq v0, v4, :cond_47

    if-eq v0, v3, :cond_47

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/u;->v()I

    move-result v0

    if-ne v0, v5, :cond_46

    const/4 v2, 0x1

    :cond_46
    return v2

    :cond_47
    return v5

    :sswitch_data_48
    .sparse-switch
        -0x6cd288b8 -> :sswitch_2c
        -0x5f91acb6 -> :sswitch_22
        -0x578b58bb -> :sswitch_18
        0x43a8606b -> :sswitch_e
    .end sparse-switch
.end method

.method public Z()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public a0()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "hozon-EP37-vnd_mars-11(30)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "hozon-oversea-vnd_mars-11(30)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "hozon-EP36-vnd_mars-11(30)"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "hozon-EP32E01-vnd_mars-11(30)"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_36

    .line 5
    :cond_33
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->t:Z

    return v0

    :cond_36
    :goto_36
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecarx-IHU3Q122-IHU3Q122-9(28)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "hozon-oversea-vnd_mars-11(30)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, -0x1

    return v0

    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0
.end method

.method public b0()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1d2a8fa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1d

    const v2, 0x4216edcd

    if-eq v1, v2, :cond_13

    goto :goto_27

    :cond_13
    const-string v1, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_28

    :cond_1d
    const-string v1, "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)-ICHU3100F123-ADV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, -0x1

    :goto_28
    if-eqz v0, :cond_4a

    if-eq v0, v4, :cond_4a

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_49
    return v3

    :cond_4a
    return v4
.end method

.method public c()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x624d5cac

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1d

    const v2, 0x3fec7e57

    if-eq v1, v2, :cond_13

    goto :goto_27

    :cond_13
    const-string v1, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_28

    :cond_1d
    const-string v1, "QTI-FAW-msmnile_faw_e001_fl-2010(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, -0x1

    :goto_28
    if-eqz v0, :cond_30

    if-eq v0, v4, :cond_2d

    return v3

    :cond_2d
    const/16 v0, 0x20

    return v0

    :cond_30
    const/16 v0, 0x24

    return v0
.end method

.method public c0()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x5cf96bd5

    if-eq v1, v3, :cond_d

    goto :goto_17

    :cond_d
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, -0x1

    :goto_18
    if-eqz v0, :cond_1b

    return v2

    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;

    const-string v1, "QUALCOMM-msm8953_32-8.1.0(27)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public d0()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e0()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 2
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public f(I)I
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6cd288b8

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2c

    const v2, -0x5f91acb6

    if-eq v1, v2, :cond_22

    const v2, -0x7104ae7

    if-eq v1, v2, :cond_18

    goto :goto_36

    :cond_18
    const-string v1, "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x2

    goto :goto_37

    :cond_22
    const-string v1, "NIO-ET5-luke-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_2c
    const-string v1, "NIO-ET7-vader-12(32)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v0, -0x1

    :goto_37
    if-eqz v0, :cond_3e

    if-eq v0, v4, :cond_3e

    if-eq v0, v3, :cond_3e

    return p1

    :cond_3e
    const/16 p1, 0x438

    return p1
.end method

.method public f0()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    const-string v1, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5cf96bd5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1d

    const v2, -0x465d0356

    if-eq v1, v2, :cond_13

    goto :goto_27

    :cond_13
    const-string v1, "intel-HONG QI-t1c_acrn-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_1d
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, -0x1

    :goto_28
    if-eqz v0, :cond_30

    if-eq v0, v4, :cond_2d

    return v3

    :cond_2d
    const/16 v0, 0x5a

    return v0

    :cond_30
    const/16 v0, 0xa

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

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_7a

    goto :goto_5f

    :sswitch_f
    const-string v1, "hozon-EP32E01-vnd_mars-11(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x6

    goto :goto_60

    :sswitch_19
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c001-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x0

    goto :goto_60

    :sswitch_23
    const-string v1, "QUALCOMM-trinket for arm64-trinket-10(29)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x7

    goto :goto_60

    :sswitch_2d
    const-string v1, "hozon-EP37-vnd_mars-11(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x4

    goto :goto_60

    :sswitch_37
    const-string v1, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x3

    goto :goto_60

    :sswitch_41
    const-string v1, "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x2

    goto :goto_60

    :sswitch_4b
    const-string v1, "hozon-EP36-vnd_mars-11(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x5

    goto :goto_60

    :sswitch_55
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x1

    goto :goto_60

    :cond_5f
    :goto_5f
    const/4 v0, -0x1

    :goto_60
    packed-switch v0, :pswitch_data_9c

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_6f

    :pswitch_66
    const/16 v3, 0xe

    goto :goto_6f

    :pswitch_69
    const/4 v2, 0x1

    const/4 v3, 0x4

    goto :goto_6f

    :pswitch_6c
    const/16 v3, 0x19

    :pswitch_6e
    const/4 v2, 0x1

    :goto_6f
    shl-int/lit8 v0, v2, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    return v0

    :sswitch_data_7a
    .sparse-switch
        -0x5cf96bd5 -> :sswitch_55
        -0x578b58bb -> :sswitch_4b
        -0x4db3ec95 -> :sswitch_41
        -0x241e918f -> :sswitch_37
        -0x6e17aba -> :sswitch_2d
        0x37ac4dd4 -> :sswitch_23
        0x43a8606b -> :sswitch_19
        0x5be14e9d -> :sswitch_f
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6c
        :pswitch_69
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_66
    .end packed-switch
.end method

.method public h0()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/u;->n0(Landroid/content/Context;)V

    :cond_17
    return-void
.end method

.method public i()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5cf96bd5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1d

    const v2, 0x43a8606b

    if-eq v1, v2, :cond_13

    goto :goto_27

    :cond_13
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c001-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_28

    :cond_1d
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, -0x1

    :goto_28
    if-eqz v0, :cond_2d

    if-eq v0, v4, :cond_2d

    return v3

    :cond_2d
    return v4
.end method

.method public i0()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/u;->i:Z

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/u;->n0(Landroid/content/Context;)V

    :cond_17
    return-void
.end method

.method public j()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v1, 0x4

    const/16 v0, 0x21

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2
    :goto_10
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v3, "ADAYO-AC822X-generic_ac8317-4.2.2(17)"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 v0, 0x13

    :cond_1c
    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public j0()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "intel-HONG QI-t1c_acrn-9(28)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x280

    if-eqz v0, :cond_23

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->f:Ljava/lang/String;

    const-string v3, "hs5y21_11_080005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    .line 3
    :cond_18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->f:Ljava/lang/String;

    const-string v3, "hs5y22_11_351004"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v2

    .line 4
    :cond_23
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v3, "Parrot-ivic229vmcid-ivic229vmcid-9(28)"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v2

    .line 5
    :cond_2e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v2, "ecarx-IHU3Q122-IHU3Q122-9(28)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0x9c

    return v0

    :cond_3b
    return v1
.end method

.method public k()I
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u0/c;->g()I

    move-result v0

    return v0
.end method

.method public k0()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "alps-DongfengAeolus-vnd_spm8675p1_64_raite-11(30)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "hozon-oversea-vnd_mars-11(30)"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_25

    .line 3
    :cond_15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "hozon-EP36-vnd_mars-11(30)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x2e0

    return v0

    :cond_22
    const/16 v0, 0x28

    return v0

    :cond_25
    :goto_25
    const/16 v0, 0xf0

    return v0
.end method

.method public l(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;

    const-string v1, "Freescale-SABRESD-MX6DQ-4.4.2(19)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    return p1

    :cond_16
    :goto_16
    const/16 p1, 0x3c

    return p1
.end method

.method public l0(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

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

    const p2, 0x5dc00

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x17

    const p2, 0xf3c00

    .line 3
    div-int/2addr p1, p2

    return-void
.end method

.method public n()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c101-9(28)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public o()I
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "Parrot-ivic229vmcid-ivic229vmcid-9(28)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"

    .line 2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "hozon-EP37-vnd_mars-11(30)"

    .line 3
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "hozon-EP36-vnd_mars-11(30)"

    .line 4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "hozon-EP32E01-vnd_mars-11(30)"

    .line 5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)"

    .line 6
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_56

    .line 7
    :cond_41
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "HUAWEI-ICHU3200F2-ADV-ICHU3200F2-ADV-12(31)"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)"

    .line 8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_5c

    .line 9
    :cond_56
    :goto_56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_5e

    :cond_5c
    :goto_5c
    const/4 v0, 0x2

    goto :goto_60

    :cond_5e
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10
    :goto_60
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    const-string v5, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x10

    if-eqz v4, :cond_6f

    const/16 v1, 0x10

    goto :goto_70

    :cond_6f
    move v3, v0

    .line 11
    :goto_70
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "alps-ac8257_G01-G01-9(28)"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const/4 v1, 0x5

    const/4 v3, 0x4

    .line 12
    :cond_7c
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const/16 v1, 0xb

    goto :goto_8a

    :cond_89
    move v2, v3

    :goto_8a
    shl-int/lit8 v0, v2, 0x10

    const/high16 v2, -0x10000

    and-int/2addr v0, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public p()I
    .registers 8

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_64

    goto :goto_41

    :sswitch_f
    const-string v1, "alps-ac8257_G01-G01-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :sswitch_19
    const-string v1, "alps-E01-MEABGRD-5.1(22)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    goto :goto_42

    :sswitch_23
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x3

    goto :goto_42

    :sswitch_2d
    const-string v1, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x2

    goto :goto_42

    :sswitch_37
    const-string v1, "CAIC-x9hp for arm64-x9hp_bestune_d511_overseas_none_linux_di_baseline-10(29)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x4

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v0, -0x1

    :goto_42
    const/4 v1, 0x6

    if-eqz v0, :cond_56

    if-eq v0, v4, :cond_58

    if-eq v0, v6, :cond_53

    if-eq v0, v2, :cond_53

    if-eq v0, v3, :cond_50

    const/4 v3, 0x0

    :goto_4e
    const/4 v4, 0x0

    goto :goto_58

    :cond_50
    const/16 v3, 0xd

    goto :goto_54

    :cond_53
    const/4 v3, 0x6

    :goto_54
    const/4 v4, 0x2

    goto :goto_58

    :cond_56
    const/4 v3, 0x6

    goto :goto_4e

    :cond_58
    :goto_58
    shl-int/lit8 v0, v4, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_64
    .sparse-switch
        -0x34e5ed41 -> :sswitch_37
        -0x241e918f -> :sswitch_2d
        0x43e1ee93 -> :sswitch_23
        0x4d190b66 -> :sswitch_19
        0x7429a168 -> :sswitch_f
    .end sparse-switch
.end method

.method public q()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "alps-E01-MEABGRD-5.1(22)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x60018

    return v0

    .line 2
    :cond_e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const v0, 0x20021

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public r()Lcn/manstep/phonemirrorBox/util/x;
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5cf96bd5

    if-eq v1, v2, :cond_c

    goto :goto_16

    :cond_c
    const-string v1, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, -0x1

    :goto_17
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    return-object v1

    .line 2
    :cond_1b
    iget v0, p0, Lcn/manstep/phonemirrorBox/u;->n:I

    iget v2, p0, Lcn/manstep/phonemirrorBox/u;->o:I

    if-le v0, v2, :cond_22

    return-object v1

    .line 3
    :cond_22
    new-instance v0, Lcn/manstep/phonemirrorBox/util/x;

    const/16 v1, 0x580

    const/16 v2, 0x5e2

    invoke-direct {v0, v1, v2}, Lcn/manstep/phonemirrorBox/util/x;-><init>(II)V

    return-object v0
.end method

.method public s()I
    .registers 11

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "alps-E01-MEABGRD-5.1(22)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_c

    return v1

    .line 2
    :cond_c
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v2, "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_18

    return v2

    .line 3
    :cond_18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v4, :sswitch_data_ce

    goto/16 :goto_9a

    :sswitch_29
    const-string v2, "Parrot-ivic229vmcid-ivic229vmcid-9(28)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v2, 0x2

    goto/16 :goto_9b

    :sswitch_34
    const-string v2, "HUAWEI-ICHU3200X2-ADV-ICHU3200X2-ADV-12(31)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v2, 0x7

    goto :goto_9b

    :sswitch_3e
    const-string v2, "hozon-EP32E01-vnd_mars-11(30)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v2, 0x5

    goto :goto_9b

    :sswitch_48
    const-string v2, "Renesas-G6SH-r8a7796-g6sa_c001-9(28)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v2, 0x0

    goto :goto_9b

    :sswitch_52
    const-string v4, "hozon-EP37-vnd_mars-11(30)"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    goto :goto_9b

    :sswitch_5b
    const-string v2, "QTI-msmnile_gvmq for arm64-k6801_a-11(30)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/16 v2, 0x9

    goto :goto_9b

    :sswitch_66
    const-string v2, "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/16 v2, 0xa

    goto :goto_9b

    :sswitch_71
    const-string v2, "HUAWEI-ICHU3200F2-ADV-ICHU3200F2-ADV-12(31)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/16 v2, 0x8

    goto :goto_9b

    :sswitch_7c
    const-string v2, "hozon-EP36-vnd_mars-11(30)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v2, 0x4

    goto :goto_9b

    :sswitch_86
    const-string v2, "Renesas-G6SH-r8a7796-g6sa_c100-9(28)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v2, 0x1

    goto :goto_9b

    :sswitch_90
    const-string v2, "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v2, 0x6

    goto :goto_9b

    :cond_9a
    :goto_9a
    const/4 v2, -0x1

    :goto_9b
    const/16 v0, 0xb

    const/16 v3, 0x10

    packed-switch v2, :pswitch_data_fc

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_b4

    :pswitch_a5
    const/4 v1, 0x1

    goto :goto_b4

    :pswitch_a7
    const/4 v1, 0x0

    goto :goto_ae

    :pswitch_a9
    const/4 v1, 0x1

    const/4 v5, 0x7

    goto :goto_b4

    :pswitch_ac
    const/4 v1, 0x1

    goto :goto_b2

    :goto_ae
    :pswitch_ae
    const/16 v5, 0xb

    goto :goto_b4

    :pswitch_b1
    const/4 v1, 0x5

    :goto_b2
    const/16 v5, 0x10

    .line 4
    :goto_b4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    const-string v2, "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    const/16 v5, 0x10

    goto :goto_c2

    :cond_c1
    move v9, v1

    :goto_c2
    shl-int/lit8 v0, v9, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v1, v5

    or-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_ce
    .sparse-switch
        -0x74fba616 -> :sswitch_90
        -0x5cf96bd5 -> :sswitch_86
        -0x578b58bb -> :sswitch_7c
        -0x508c6276 -> :sswitch_71
        -0x241e918f -> :sswitch_66
        -0x165433d3 -> :sswitch_5b
        -0x6e17aba -> :sswitch_52
        0x43a8606b -> :sswitch_48
        0x5be14e9d -> :sswitch_3e
        0x635c974a -> :sswitch_34
        0x75f8521d -> :sswitch_29
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_b1
        :pswitch_ae
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_a9
        :pswitch_a9
        :pswitch_a7
        :pswitch_a5
    .end packed-switch
.end method

.method public t()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "alps-E01-MEABGRD-5.1(22)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x6000c

    return v0

    .line 2
    :cond_e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const v0, 0x20021

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceConfig{info1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", info2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", info3=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", huid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", defLocal=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sysWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sysHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "hozon-EP37-vnd_mars-11(30)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_dd

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "hozon-EP32E01-vnd_mars-11(30)"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_dd

    .line 2
    :cond_19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "hozon-oversea-vnd_mars-11(30)"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x11

    if-eqz v0, :cond_41

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/b0;->E(Z)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/b0;->A(Z)V

    .line 5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x6d6

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0

    .line 9
    :cond_41
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v5, "hozon-EP36-vnd_mars-11(30)"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/b0;->E(Z)V

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/b0;->A(Z)V

    .line 12
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x898

    .line 14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 15
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0

    .line 16
    :cond_67
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "QTI-f6801f for arm64-f6801f-9(28)"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "QTI-f6803f for arm64-f6803f-9(28)"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "QTI-msmnile_gvmq for arm64-f6805h-11(30)"

    .line 17
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "QTI-msmnile_gvmq for arm64-f6810-11(30)"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "QTI-msmnile_gvmq for arm64-f6811-11(30)"

    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v4, "QTI-msmnile_gvmq for arm64-f6802h-11(30)"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    goto :goto_be

    .line 19
    :cond_a4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    const-string v1, "BYD AUTO-DiLink5.0 For BYD AUTO-DiLink5.0-12(32)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 20
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/b0;->E(Z)V

    .line 21
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/b0;->A(Z)V

    :cond_bc
    const/4 v0, 0x0

    return-object v0

    .line 22
    :cond_be
    :goto_be
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/b0;->E(Z)V

    .line 23
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/b0;->A(Z)V

    .line 24
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x6f4

    .line 25
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800005

    .line 27
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0

    .line 28
    :cond_dd
    :goto_dd
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/manstep/phonemirrorBox/b0;->E(Z)V

    .line 29
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/manstep/phonemirrorBox/b0;->A(Z)V

    .line 30
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x4ce

    .line 31
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800035

    .line 33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0
.end method

.method public v()I
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_78

    goto :goto_69

    :sswitch_e
    const-string v1, "alps-spm8666p1_64_car-changan_car-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x4

    goto :goto_6a

    :sswitch_18
    const-string v1, "QTI-FAW-msmnile_faw_e202_fl-2010(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x7

    goto :goto_6a

    :sswitch_22
    const-string v1, "JIDU-ROBOCAR-msmnile_gvmq-12(32)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x6

    goto :goto_6a

    :sswitch_2c
    const-string v1, "BYD AUTO-DiLink5.0 For BYD AUTO-DiLink5.0-12(32)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x1

    goto :goto_6a

    :sswitch_36
    const-string v1, "Freescale-CS11-cs11_19a_h-4.4.3(19)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    goto :goto_6a

    :sswitch_40
    const-string v1, "NIO-ET5-luke-9(28)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x3

    goto :goto_6a

    :sswitch_4a
    const-string v1, "QTI-FAW-msmnile_faw_e001_fl-2010(30)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/16 v0, 0x8

    goto :goto_6a

    :sswitch_55
    const-string v1, "NIO-ET7-vader-12(32)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x2

    goto :goto_6a

    :sswitch_5f
    const-string v1, "Great_Wall-F7-22-SERIALS-g6sa_a12-8.1.0(27)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x5

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 v0, -0x1

    :goto_6a
    packed-switch v0, :pswitch_data_9e

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/u;->o:I

    iget v1, p0, Lcn/manstep/phonemirrorBox/u;->n:I

    if-le v0, v1, :cond_77

    return v5

    :pswitch_74
    return v3

    :pswitch_75
    return v4

    :pswitch_76
    return v5

    :cond_77
    return v2

    :sswitch_data_78
    .sparse-switch
        -0x6cd31704 -> :sswitch_5f
        -0x6cd288b8 -> :sswitch_55
        -0x624d5cac -> :sswitch_4a
        -0x5f91acb6 -> :sswitch_40
        -0x3e5d43f4 -> :sswitch_36
        -0x300e61a7 -> :sswitch_2c
        0x6604839 -> :sswitch_22
        0x3fec7e57 -> :sswitch_18
        0x43e1ee93 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_74
        :pswitch_74
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
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u;->c:Ljava/lang/String;

    return-object v0
.end method
