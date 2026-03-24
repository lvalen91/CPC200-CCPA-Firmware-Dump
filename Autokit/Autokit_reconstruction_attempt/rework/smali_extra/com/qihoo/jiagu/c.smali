.class public Lcom/qihoo/jiagu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 8

    .prologue
    .line 3022
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3023
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3024
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 3033
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3034
    array-length v3, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_32

    aget-byte v4, v1, v0

    .line 3035
    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x10

    if-ge v5, v6, :cond_26

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    :cond_26
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 3038
    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_35} :catch_37

    move-result-object v0

    .line 3028
    :goto_36
    return-object v0

    :catch_37
    move-exception v0

    const/4 v0, 0x0

    goto :goto_36
.end method

.method static a()Lorg/json/JSONArray;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2100
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2103
    :try_start_7
    const-string v0, "com.qihoo.jiagutracker.TrackDataManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2104
    const-string v4, "getTrackData"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2105
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2107
    array-length v4, v0

    :goto_21
    if-ge v3, v4, :cond_7d

    aget-object v5, v0, v3

    .line 2108
    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2110
    invoke-static {}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->values()[Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    move-result-object v6

    array-length v6, v6

    array-length v7, v5

    if-eq v6, v7, :cond_35

    move-object v0, v1

    .line 2127
    :goto_34
    return-object v0

    .line 2114
    :cond_35
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2115
    sget-object v7, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->cn:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    invoke-virtual {v7}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2116
    sget-object v7, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->mn:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    invoke-virtual {v7}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2117
    sget-object v7, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->vi:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    invoke-virtual {v7}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2118
    sget-object v7, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->vt:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    invoke-virtual {v7}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2119
    sget-object v7, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->st:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    invoke-virtual {v7}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v5, v5, v8

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2120
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_79} :catch_7c

    .line 2107
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :catch_7c
    move-exception v0

    :cond_7d
    move-object v0, v2

    .line 2127
    goto :goto_34
.end method

.method public static a(Ljava/util/EnumMap;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/qihoo/bugreport/javacrash/ReportField;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1025
    if-nez p1, :cond_5

    .line 1083
    :goto_4
    return-object v0

    .line 1032
    :cond_5
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_ae

    .line 1039
    const-string v0, "mpv"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1041
    :try_start_12
    const-string v0, "mpv"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1c} :catch_ab

    .line 1048
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qihoo/bugreport/javacrash/ReportField;

    .line 1050
    :try_start_30
    invoke-virtual {v0}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/qihoo/bugreport/javacrash/ReportField;->t:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v4}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 1051
    invoke-virtual {v0}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/qihoo/bugreport/javacrash/ReportField;->cpv:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v4}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 1052
    invoke-virtual {v0}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/qihoo/bugreport/javacrash/ReportField;->jc:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v4}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1053
    :cond_60
    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1054
    invoke-virtual {v0}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v4

    .line 1131
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1132
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 1054
    if-ne v0, v5, :cond_88

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_82
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_24

    :catch_86
    move-exception v0

    goto :goto_24

    :cond_88
    const-string v0, ""

    goto :goto_82

    .line 1056
    :cond_8b
    invoke-virtual {v0}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_96} :catch_86

    goto :goto_24

    .line 1064
    :cond_97
    invoke-static {}, Lcom/qihoo/jiagu/c;->a()Lorg/json/JSONArray;

    move-result-object v0

    .line 1065
    if-eqz v0, :cond_a6

    .line 1067
    :try_start_9d
    sget-object v1, Lcom/qihoo/bugreport/javacrash/ReportField;->rt:Lcom/qihoo/bugreport/javacrash/ReportField;

    invoke-virtual {v1}, Lcom/qihoo/bugreport/javacrash/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_9d .. :try_end_a6} :catch_a9

    :cond_a6
    :goto_a6
    move-object v0, v2

    .line 1083
    goto/16 :goto_4

    :catch_a9
    move-exception v0

    goto :goto_a6

    :catch_ab
    move-exception v0

    goto/16 :goto_1c

    .line 1035
    :catch_ae
    move-exception v1

    goto/16 :goto_4
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3044
    if-eqz p0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3063
    :cond_9
    :goto_9
    return v0

    .line 3048
    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_15

    .line 3049
    invoke-static {p0, p1}, Lcom/qihoo/jiagu/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_9

    .line 3052
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3053
    if-eqz v1, :cond_9

    .line 3058
    :try_start_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_22} :catch_27

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    .line 3063
    :catch_27
    move-exception v1

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3067
    if-eqz p0, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    move v0, v1

    .line 3093
    :goto_b
    return v0

    .line 3073
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3074
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3075
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3078
    const/16 v3, 0x17

    if-lt v2, v3, :cond_37

    .line 3079
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_35

    .line 3081
    :goto_27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "targetSdkVersion01:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 3090
    :catch_32
    move-exception v0

    move v0, v1

    goto :goto_b

    :cond_35
    move v0, v1

    .line 3079
    goto :goto_27

    .line 3084
    :cond_37
    invoke-static {p0, p1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_48

    .line 3086
    :goto_3d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "targetSdkVersion02:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_47} :catch_32

    goto :goto_b

    :cond_48
    move v0, v1

    .line 3084
    goto :goto_3d
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 3108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3109
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3112
    :try_start_7
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 3113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "META-INF/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 3114
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_2c

    .line 3115
    const/4 v0, 0x1

    .line 3127
    :goto_25
    return v0

    .line 3123
    :cond_26
    :try_start_26
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_25

    :catch_2a
    move-exception v1

    goto :goto_25

    .line 3118
    :catch_2c
    move-exception v1

    goto :goto_25
.end method
