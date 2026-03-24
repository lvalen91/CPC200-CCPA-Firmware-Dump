.class final Lc/m/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/m/a$a$d;,
        Lc/m/a$a$c;,
        Lc/m/a$a$b;,
        Lc/m/a$a$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x4


# instance fields
.field private final a:Lc/m/a$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dalvik.system.DexPathList$Element"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    :try_start_9
    new-instance v1, Lc/m/a$a$b;

    invoke-direct {v1, v0}, Lc/m/a$a$b;-><init>(Ljava/lang/Class;)V
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_1a

    .line 4
    :catch_f
    :try_start_f
    new-instance v1, Lc/m/a$a$c;

    invoke-direct {v1, v0}, Lc/m/a$a$c;-><init>(Ljava/lang/Class;)V
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_1a

    .line 5
    :catch_15
    new-instance v1, Lc/m/a$a$d;

    invoke-direct {v1, v0}, Lc/m/a$a$d;-><init>(Ljava/lang/Class;)V

    .line 6
    :goto_1a
    iput-object v1, p0, Lc/m/a$a;->a:Lc/m/a$a$a;

    return-void
.end method

.method static a(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pathList"

    .line 1
    invoke-static {p0, v0}, Lc/m/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    new-instance v0, Lc/m/a$a;

    invoke-direct {v0}, Lc/m/a$a;-><init>()V

    invoke-direct {v0, p1}, Lc/m/a$a;->b(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p1

    :try_start_13
    const-string v0, "dexElements"

    .line 4
    invoke-static {p0, v0, p1}, Lc/m/a;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_1e

    :catch_19
    const-string v0, "pathElements"

    .line 5
    invoke-static {p0, v0, p1}, Lc/m/a;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1e
    return-void
.end method

.method private b(Ljava/util/List;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_27

    .line 2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 3
    iget-object v5, p0, Lc/m/a$a;->a:Lc/m/a$a$a;

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lc/m/a$a;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v6

    .line 5
    invoke-interface {v5, v4, v6}, Lc/m/a$a$a;->a(Ljava/io/File;Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_27
    return-object v1
.end method

.method private static c(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lc/m/a$a;->b:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dex"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
