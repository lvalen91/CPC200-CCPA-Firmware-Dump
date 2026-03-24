.class public final Lcom/tianyu/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 236
    const-string v0, ""

    .line 242
    :goto_8
    return-object v0

    .line 238
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 239
    const/4 v0, 0x0

    :goto_e
    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 240
    aget-char v2, v1, v0

    xor-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 242
    :cond_1b
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 200
    if-eqz p0, :cond_5

    .line 202
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 207
    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a()Z
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 35
    :try_start_4
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_8
    if-ge v2, v5, :cond_18

    aget-object v6, v4, v2

    .line 36
    const-string v7, "x86"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 112
    :cond_14
    :goto_14
    return v0

    .line 35
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 40
    :cond_18
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v4, "x86"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v4, "x86"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_29} :catch_bd

    move-result v2

    if-nez v2, :cond_14

    .line 46
    :try_start_2c
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "/system/build.prop"

    const-string v5, "r"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_35} :catch_a0
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_35} :catch_aa
    .catchall {:try_start_2c .. :try_end_35} :catchall_b4

    .line 47
    :try_start_35
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 48
    :goto_39
    if-eqz v4, :cond_56

    .line 49
    const-string v5, "ro.product.cpu.abi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    const-string v5, "x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_48} :catch_15d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_48} :catch_15a
    .catchall {:try_start_35 .. :try_end_48} :catchall_156

    move-result v4

    if-eqz v4, :cond_51

    .line 62
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4e} :catch_bd

    goto :goto_14

    :catch_4f
    move-exception v1

    goto :goto_14

    .line 51
    :cond_51
    :try_start_51
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_54} :catch_15d
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_15a
    .catchall {:try_start_51 .. :try_end_54} :catchall_156

    move-result-object v4

    goto :goto_39

    .line 62
    :cond_56
    :try_start_56
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_13f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_59} :catch_bd

    .line 97
    :cond_59
    :goto_59
    :try_start_59
    new-instance v2, Ljava/io/FileInputStream;

    const-string v4, "/system/bin/ls"

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_60} :catch_12e
    .catchall {:try_start_59 .. :try_end_60} :catchall_137

    .line 98
    const/16 v3, 0x14

    :try_start_62
    new-array v3, v3, [B

    .line 99
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 100
    const/16 v5, 0x14

    if-ne v4, v5, :cond_126

    const/4 v4, 0x0

    aget-byte v4, v3, v4

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_126

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_126

    const/4 v4, 0x2

    aget-byte v4, v3, v4

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_126

    const/4 v4, 0x3

    aget-byte v4, v3, v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_126

    const/16 v4, 0x12

    aget-byte v4, v3, v4

    if-eq v4, v8, :cond_96

    const/16 v4, 0x12

    aget-byte v3, v3, v4
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_92} :catch_14d
    .catchall {:try_start_62 .. :try_end_92} :catchall_14b

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_126

    .line 105
    :cond_96
    if-eqz v2, :cond_14

    .line 107
    :try_start_98
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9d

    goto/16 :goto_14

    :catch_9d
    move-exception v1

    goto/16 :goto_14

    :catch_a0
    move-exception v2

    move-object v2, v3

    .line 61
    :goto_a2
    if-eqz v2, :cond_59

    .line 62
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_a7} :catch_bd

    goto :goto_59

    .line 65
    :catch_a8
    move-exception v2

    goto :goto_59

    :catch_aa
    move-exception v2

    move-object v2, v3

    .line 61
    :goto_ac
    if-eqz v2, :cond_59

    .line 62
    :try_start_ae
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_b1} :catch_bd

    goto :goto_59

    .line 65
    :catch_b2
    move-exception v2

    goto :goto_59

    .line 60
    :catchall_b4
    move-exception v2

    move-object v4, v2

    move-object v5, v3

    .line 61
    :goto_b7
    if-eqz v5, :cond_bc

    .line 62
    :try_start_b9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_142
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_bc} :catch_bd

    .line 64
    :cond_bc
    :goto_bc
    :try_start_bc
    throw v4
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_bd} :catch_bd

    .line 69
    :catch_bd
    move-exception v2

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v4, "x86"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v4, "x86"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 74
    :try_start_d2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "/system/build.prop"

    const-string v5, "r"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/io/FileNotFoundException; {:try_start_d2 .. :try_end_db} :catch_106
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_db} :catch_112
    .catchall {:try_start_d2 .. :try_end_db} :catchall_11e

    .line 75
    :try_start_db
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 76
    :goto_df
    if-eqz v4, :cond_fe

    .line 77
    const-string v5, "ro.product.cpu.abi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f9

    const-string v5, "x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_db .. :try_end_ee} :catch_154
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_ee} :catch_152
    .catchall {:try_start_db .. :try_end_ee} :catchall_150

    move-result v4

    if-eqz v4, :cond_f9

    .line 90
    :try_start_f1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_f6

    goto/16 :goto_14

    :catch_f6
    move-exception v1

    goto/16 :goto_14

    .line 79
    :cond_f9
    :try_start_f9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_fc
    .catch Ljava/io/FileNotFoundException; {:try_start_f9 .. :try_end_fc} :catch_154
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_152
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_150

    move-result-object v4

    goto :goto_df

    .line 90
    :cond_fe
    :try_start_fe
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_101} :catch_103

    goto/16 :goto_59

    .line 93
    :catch_103
    move-exception v2

    goto/16 :goto_59

    :catch_106
    move-exception v2

    move-object v2, v3

    .line 89
    :goto_108
    if-eqz v2, :cond_59

    .line 90
    :try_start_10a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_10f

    goto/16 :goto_59

    .line 93
    :catch_10f
    move-exception v2

    goto/16 :goto_59

    :catch_112
    move-exception v2

    move-object v2, v3

    .line 89
    :goto_114
    if-eqz v2, :cond_59

    .line 90
    :try_start_116
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_11b

    goto/16 :goto_59

    .line 93
    :catch_11b
    move-exception v2

    goto/16 :goto_59

    .line 88
    :catchall_11e
    move-exception v0

    move-object v2, v3

    .line 89
    :goto_120
    if-eqz v2, :cond_125

    .line 90
    :try_start_122
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_125} :catch_145

    .line 92
    :cond_125
    :goto_125
    throw v0

    .line 105
    :cond_126
    if-eqz v2, :cond_12b

    .line 107
    :try_start_128
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_147

    :cond_12b
    :goto_12b
    move v0, v1

    .line 112
    goto/16 :goto_14

    .line 105
    :catch_12e
    move-exception v0

    :goto_12f
    if-eqz v3, :cond_12b

    .line 107
    :try_start_131
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_135

    goto :goto_12b

    .line 109
    :catch_135
    move-exception v0

    goto :goto_12b

    .line 105
    :catchall_137
    move-exception v0

    move-object v2, v3

    :goto_139
    if-eqz v2, :cond_13e

    .line 107
    :try_start_13b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_13e} :catch_149

    .line 109
    :cond_13e
    :goto_13e
    throw v0

    .line 65
    :catch_13f
    move-exception v2

    goto/16 :goto_59

    :catch_142
    move-exception v2

    goto/16 :goto_bc

    :catch_145
    move-exception v1

    goto :goto_125

    .line 109
    :catch_147
    move-exception v0

    goto :goto_12b

    :catch_149
    move-exception v1

    goto :goto_13e

    .line 105
    :catchall_14b
    move-exception v0

    goto :goto_139

    :catch_14d
    move-exception v0

    move-object v3, v2

    goto :goto_12f

    .line 88
    :catchall_150
    move-exception v0

    goto :goto_120

    :catch_152
    move-exception v4

    goto :goto_114

    :catch_154
    move-exception v4

    goto :goto_108

    .line 60
    :catchall_156
    move-exception v4

    move-object v5, v2

    goto/16 :goto_b7

    :catch_15a
    move-exception v4

    goto/16 :goto_ac

    :catch_15d
    move-exception v4

    goto/16 :goto_a2
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 261
    :try_start_1
    const-string v0, "q~tb\u007fyt>q``>QsdyfydiDxbuqt"

    invoke-static {v0}, Lcom/tianyu/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 262
    const-string v2, "sebbu~dQsdyfydiDxbuqt"

    invoke-static {v2}, Lcom/tianyu/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 263
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 264
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 266
    const-string v3, "wud@b\u007fsucc^q}u"

    invoke-static {v3}, Lcom/tianyu/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 267
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 268
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_45} :catch_47

    move-result v0

    .line 271
    :goto_46
    return v0

    :catch_47
    move-exception v0

    move v0, v1

    goto :goto_46
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    .line 127
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 129
    :cond_28
    :try_start_28
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 133
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 134
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 135
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    invoke-static {v7, v8}, Lcom/tianyu/util/a;->a(Ljava/io/BufferedInputStream;Ljava/io/BufferedInputStream;)Z

    move-result v3

    if-eqz v3, :cond_b4

    move v3, v0

    .line 141
    :goto_55
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 142
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 143
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 144
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_61} :catch_ad
    .catchall {:try_start_28 .. :try_end_61} :catchall_9e

    .line 145
    if-eqz v3, :cond_6a

    .line 162
    invoke-static {v2}, Lcom/tianyu/util/a;->a(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v2}, Lcom/tianyu/util/a;->a(Ljava/io/Closeable;)V

    .line 166
    :goto_69
    return v0

    .line 149
    :cond_6a
    :try_start_6a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_75} :catch_ad
    .catchall {:try_start_6a .. :try_end_75} :catchall_9e

    move-result-object v4

    .line 150
    :try_start_76
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7b} :catch_b1
    .catchall {:try_start_76 .. :try_end_7b} :catchall_a8

    .line 152
    const/16 v2, 0x1c00

    :try_start_7d
    new-array v2, v2, [B

    .line 154
    :goto_7f
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_94

    .line 155
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_89} :catch_8a
    .catchall {:try_start_7d .. :try_end_89} :catchall_ab

    goto :goto_7f

    .line 162
    :catch_8a
    move-exception v0

    move-object v0, v3

    :goto_8c
    invoke-static {v0}, Lcom/tianyu/util/a;->a(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v4}, Lcom/tianyu/util/a;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 160
    goto :goto_69

    .line 157
    :cond_94
    :try_start_94
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_8a
    .catchall {:try_start_94 .. :try_end_97} :catchall_ab

    .line 162
    invoke-static {v3}, Lcom/tianyu/util/a;->a(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v4}, Lcom/tianyu/util/a;->a(Ljava/io/Closeable;)V

    goto :goto_69

    .line 162
    :catchall_9e
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_a1
    invoke-static {v3}, Lcom/tianyu/util/a;->a(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v4}, Lcom/tianyu/util/a;->a(Ljava/io/Closeable;)V

    throw v0

    .line 162
    :catchall_a8
    move-exception v0

    move-object v3, v2

    goto :goto_a1

    :catchall_ab
    move-exception v0

    goto :goto_a1

    :catch_ad
    move-exception v0

    move-object v0, v2

    move-object v4, v2

    goto :goto_8c

    :catch_b1
    move-exception v0

    move-object v0, v2

    goto :goto_8c

    :cond_b4
    move v3, v1

    goto :goto_55
.end method

.method private static a(Ljava/io/BufferedInputStream;Ljava/io/BufferedInputStream;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 172
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    .line 173
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    .line 175
    if-ne v2, v1, :cond_1e

    .line 176
    new-array v3, v2, [B

    .line 177
    new-array v4, v1, [B

    .line 179
    invoke-virtual {p0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    .line 180
    invoke-virtual {p1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move v1, v0

    .line 182
    :goto_16
    if-ge v1, v2, :cond_22

    .line 183
    aget-byte v5, v3, v1

    aget-byte v6, v4, v1
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1c} :catch_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_24

    if-eq v5, v6, :cond_1f

    .line 196
    :cond_1e
    :goto_1e
    return v0

    .line 182
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 187
    :cond_22
    const/4 v0, 0x1

    goto :goto_1e

    :catch_24
    move-exception v1

    goto :goto_1e

    .line 195
    :catch_26
    move-exception v1

    goto :goto_1e
.end method

.method public static b()V
    .registers 4

    .prologue
    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_7

    .line 231
    :goto_6
    return-void

    .line 214
    :cond_7
    :try_start_7
    const-string v0, "q~tb\u007fyt>s\u007f~du~d>`}>@qs{qwu@qbcub4@qs{qwu"

    invoke-static {v0}, Lcom/tianyu/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 215
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 216
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_21} :catch_59

    .line 221
    :goto_21
    :try_start_21
    const-string v0, "q~tb\u007fyt>q``>QsdyfydiDxbuqt"

    invoke-static {v0}, Lcom/tianyu/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    const-string v1, "sebbu~dQsdyfydiDxbuqt"

    invoke-static {v1}, Lcom/tianyu/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 223
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 224
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 225
    const-string v2, "}Xyttu~Q`yGqb~y~wCx\u007fg~"

    invoke-static {v2}, Lcom/tianyu/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 227
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_56} :catch_57

    goto :goto_6

    .line 231
    :catch_57
    move-exception v0

    goto :goto_6

    :catch_59
    move-exception v0

    goto :goto_21
.end method
