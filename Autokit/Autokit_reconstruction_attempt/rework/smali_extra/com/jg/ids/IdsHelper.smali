.class public Lcom/jg/ids/IdsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CONTEXT:Landroid/content/Context;

.field private static final ourInstance:Lcom/jg/ids/IdsHelper;


# instance fields
.field private provider:Lcom/jg/ids/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/jg/ids/IdsHelper;->CONTEXT:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/jg/ids/IdsHelper;

    invoke-direct {v0}, Lcom/jg/ids/IdsHelper;-><init>()V

    sput-object v0, Lcom/jg/ids/IdsHelper;->ourInstance:Lcom/jg/ids/IdsHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/jg/ids/IdsHelper;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/jg/ids/IdsHelper;->ourInstance:Lcom/jg/ids/IdsHelper;

    return-object v0
.end method


# virtual methods
.method public getAAID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    if-eqz v0, :cond_d

    .line 150
    iget-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    sget-object v1, Lcom/jg/ids/IdsHelper;->CONTEXT:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/jg/ids/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public getOAID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 132
    const-string v0, ""

    .line 133
    iget-object v1, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    if-eqz v1, :cond_e

    .line 134
    iget-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    sget-object v1, Lcom/jg/ids/IdsHelper;->CONTEXT:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/jg/ids/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_e
    return-object v0
.end method

.method public getVAID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    if-eqz v0, :cond_d

    .line 143
    iget-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    sget-object v1, Lcom/jg/ids/IdsHelper;->CONTEXT:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/jg/ids/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public init(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    if-eqz v2, :cond_9

    .line 129
    :cond_8
    :goto_8
    return-void

    .line 44
    :cond_9
    invoke-static {}, Lcom/jg/ids/k;->a()Lcom/jg/ids/k;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jg/ids/k;->a(Landroid/content/Context;)V

    .line 45
    sput-object p1, Lcom/jg/ids/IdsHelper;->CONTEXT:Landroid/content/Context;

    .line 1057
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "XIAOMI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "XIAOMI"

    .line 1058
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "REDMI"

    .line 1059
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    :cond_30
    move v2, v1

    .line 47
    :goto_31
    if-nez v2, :cond_5b

    .line 1064
    const-string v2, "ro.miui.ui.version.name"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/jg/ids/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_78

    move v2, v1

    .line 47
    :goto_42
    if-nez v2, :cond_5b

    .line 1069
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "BLACKSHARK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "BLACKSHARK"

    .line 1070
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    :cond_58
    move v2, v1

    .line 47
    :goto_59
    if-eqz v2, :cond_7c

    .line 48
    :cond_5b
    new-instance v0, Lcom/jg/ids/l/a;

    invoke-direct {v0}, Lcom/jg/ids/l/a;-><init>()V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    .line 80
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    invoke-interface {v0}, Lcom/jg/ids/i;->d()Z

    move-result v0

    if-nez v0, :cond_8

    .line 81
    :cond_6e
    new-instance v0, Lcom/jg/ids/e/a;

    invoke-direct {v0, p1}, Lcom/jg/ids/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto :goto_8

    :cond_76
    move v2, v0

    .line 1059
    goto :goto_31

    :cond_78
    move v2, v0

    .line 1064
    goto :goto_42

    :cond_7a
    move v2, v0

    .line 1070
    goto :goto_59

    .line 2050
    :cond_7c
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "VIVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9e

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "VIVO"

    .line 2051
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9e

    const-string v2, "ro.vivo.os.version"

    const-string v3, ""

    .line 2052
    invoke-static {v2, v3}, Lcom/jg/ids/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ab

    :cond_9e
    move v2, v1

    .line 49
    :goto_9f
    if-eqz v2, :cond_ad

    .line 50
    new-instance v0, Lcom/jg/ids/k/a;

    const-string v1, "100215079"

    invoke-direct {v0, p1, v1}, Lcom/jg/ids/k/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto :goto_62

    :cond_ab
    move v2, v0

    .line 2052
    goto :goto_9f

    .line 3030
    :cond_ad
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "HUAWEI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cb

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "HUAWEI"

    .line 3031
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cb

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "HONOR"

    .line 3032
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e8

    :cond_cb
    move v2, v1

    .line 51
    :goto_cc
    if-nez v2, :cond_df

    .line 3037
    const-string v2, "ro.build.version.emui"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/jg/ids/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ea

    move v2, v1

    .line 51
    :goto_dd
    if-eqz v2, :cond_ec

    .line 52
    :cond_df
    new-instance v0, Lcom/jg/ids/f/a;

    invoke-direct {v0, p1}, Lcom/jg/ids/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62

    :cond_e8
    move v2, v0

    .line 3032
    goto :goto_cc

    :cond_ea
    move v2, v0

    .line 3037
    goto :goto_dd

    .line 3042
    :cond_ec
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "OPPO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_118

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "OPPO"

    .line 3043
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_118

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "REALME"

    .line 3044
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_118

    const-string v2, "ro.build.version.opporom"

    const-string v3, ""

    .line 3045
    invoke-static {v2, v3}, Lcom/jg/ids/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13b

    :cond_118
    move v2, v1

    .line 53
    :goto_119
    if-nez v2, :cond_132

    .line 3075
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "ONEPLUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12f

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "ONEPLUS"

    .line 3076
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13d

    :cond_12f
    move v2, v1

    .line 53
    :goto_130
    if-eqz v2, :cond_13f

    .line 54
    :cond_132
    new-instance v0, Lcom/jg/ids/i/i;

    invoke-direct {v0, p1}, Lcom/jg/ids/i/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62

    :cond_13b
    move v2, v0

    .line 3045
    goto :goto_119

    :cond_13d
    move v2, v0

    .line 3076
    goto :goto_130

    .line 3094
    :cond_13f
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "LENOVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15d

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "LENOVO"

    .line 3095
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15d

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "ZUK"

    .line 3096
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_180

    :cond_15d
    move v2, v1

    .line 55
    :goto_15e
    if-nez v2, :cond_177

    .line 3119
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "MOTOLORA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_174

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "MOTOLORA"

    .line 3120
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_182

    :cond_174
    move v2, v1

    .line 55
    :goto_175
    if-eqz v2, :cond_184

    .line 56
    :cond_177
    new-instance v0, Lcom/jg/ids/g/d;

    invoke-direct {v0, p1}, Lcom/jg/ids/g/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62

    :cond_180
    move v2, v0

    .line 3096
    goto :goto_15e

    :cond_182
    move v2, v0

    .line 3120
    goto :goto_175

    .line 4107
    :cond_184
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "ASUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_198

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "ASUS"

    .line 4108
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    :cond_198
    move v2, v1

    .line 57
    :goto_199
    if-eqz v2, :cond_1a6

    .line 58
    new-instance v0, Lcom/jg/ids/a/a;

    invoke-direct {v0, p1}, Lcom/jg/ids/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62

    :cond_1a4
    move v2, v0

    .line 4108
    goto :goto_199

    .line 5081
    :cond_1a6
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "SAMSUNG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ba

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "SAMSUNG"

    .line 5082
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    :cond_1ba
    move v2, v1

    .line 59
    :goto_1bb
    if-eqz v2, :cond_1c8

    .line 60
    new-instance v0, Lcom/jg/ids/j/d;

    invoke-direct {v0, p1}, Lcom/jg/ids/j/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62

    :cond_1c6
    move v2, v0

    .line 5082
    goto :goto_1bb

    .line 5087
    :cond_1c8
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "MEIZU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ea

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "MEIZU"

    .line 5088
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ea

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 5089
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FLYME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_200

    :cond_1ea
    move v2, v1

    .line 61
    :goto_1eb
    if-nez v2, :cond_1f7

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "alps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_202

    .line 62
    :cond_1f7
    new-instance v0, Lcom/jg/ids/meizu/c;

    invoke-direct {v0, p1}, Lcom/jg/ids/meizu/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62

    :cond_200
    move v2, v0

    .line 5089
    goto :goto_1eb

    .line 5101
    :cond_202
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "NUBIA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_216

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "NUBIA"

    .line 5102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_222

    :cond_216
    move v2, v1

    .line 63
    :goto_217
    if-eqz v2, :cond_224

    .line 64
    new-instance v0, Lcom/jg/ids/h/a;

    invoke-direct {v0, p1}, Lcom/jg/ids/h/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62

    :cond_222
    move v2, v0

    .line 5102
    goto :goto_217

    .line 66
    :cond_224
    invoke-static {p1}, Lcom/jg/ids/j;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_233

    .line 67
    new-instance v0, Lcom/jg/ids/b/a;

    invoke-direct {v0, p1}, Lcom/jg/ids/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62

    .line 5140
    :cond_233
    const-string v2, "ro.odm.manufacturer"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/jg/ids/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PRIZE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 69
    if-eqz v2, :cond_24c

    .line 70
    new-instance v0, Lcom/jg/ids/c/a;

    invoke-direct {v0, p1}, Lcom/jg/ids/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62

    .line 6125
    :cond_24c
    const-string v2, "ro.build.freeme.label"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/jg/ids/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_266

    move v2, v1

    .line 72
    :goto_25b
    if-eqz v2, :cond_268

    .line 73
    new-instance v0, Lcom/jg/ids/d/a;

    invoke-direct {v0, p1}, Lcom/jg/ids/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62

    :cond_266
    move v2, v0

    .line 6125
    goto :goto_25b

    .line 7113
    :cond_268
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "ZTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27c

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "ZTE"

    .line 7114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27d

    :cond_27c
    move v0, v1

    .line 75
    :cond_27d
    if-eqz v0, :cond_62

    .line 76
    new-instance v0, Lcom/jg/ids/i/j;

    invoke-direct {v0, p1}, Lcom/jg/ids/i/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jg/ids/IdsHelper;->provider:Lcom/jg/ids/i;

    goto/16 :goto_62
.end method
