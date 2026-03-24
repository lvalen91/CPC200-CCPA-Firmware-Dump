.class public final Lcom/qihoo/jiagu/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/lang/CharSequence;

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x1388

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    sput-object v0, Lcom/qihoo/jiagu/b;->a:[Ljava/lang/String;

    .line 42
    const-string v0, "com.qihoo.jiagutracker"

    sput-object v0, Lcom/qihoo/jiagu/b;->b:Ljava/lang/CharSequence;

    .line 44
    const-string v0, "http://c.appjiagu.com/apk/cr.html"

    sput-object v0, Lcom/qihoo/jiagu/b;->c:Ljava/lang/String;

    .line 45
    sput v3, Lcom/qihoo/jiagu/b;->d:I

    .line 46
    sput v3, Lcom/qihoo/jiagu/b;->e:I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcom/qihoo/jiagu/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b()I
    .registers 2

    .prologue
    .line 54
    sget v0, Lcom/qihoo/jiagu/b;->d:I

    return v0
.end method

.method public static c()I
    .registers 3

    .prologue
    .line 58
    sget v0, Lcom/qihoo/jiagu/b;->e:I

    return v0
.end method
