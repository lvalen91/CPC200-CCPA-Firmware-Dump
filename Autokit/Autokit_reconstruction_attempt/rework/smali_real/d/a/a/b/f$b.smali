.class public final enum Ld/a/a/b/f$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/a/a/b/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ld/a/a/b/f$b;

.field public static final enum c:Ld/a/a/b/f$b;

.field public static final enum d:Ld/a/a/b/f$b;

.field public static final enum e:Ld/a/a/b/f$b;

.field private static final synthetic f:[Ld/a/a/b/f$b;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Ld/a/a/b/f$b;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/a/a/b/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/a/a/b/f$b;->b:Ld/a/a/b/f$b;

    new-instance v0, Ld/a/a/b/f$b;

    const-string v1, "TEXTURE_EXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ld/a/a/b/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/a/a/b/f$b;->c:Ld/a/a/b/f$b;

    new-instance v0, Ld/a/a/b/f$b;

    const-string v1, "TEXTURE_EXT_BW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ld/a/a/b/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/a/a/b/f$b;->d:Ld/a/a/b/f$b;

    new-instance v0, Ld/a/a/b/f$b;

    const-string v1, "TEXTURE_EXT_FILT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ld/a/a/b/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/a/a/b/f$b;->e:Ld/a/a/b/f$b;

    const/4 v1, 0x4

    new-array v1, v1, [Ld/a/a/b/f$b;

    .line 2
    sget-object v6, Ld/a/a/b/f$b;->b:Ld/a/a/b/f$b;

    aput-object v6, v1, v2

    sget-object v2, Ld/a/a/b/f$b;->c:Ld/a/a/b/f$b;

    aput-object v2, v1, v3

    sget-object v2, Ld/a/a/b/f$b;->d:Ld/a/a/b/f$b;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Ld/a/a/b/f$b;->f:[Ld/a/a/b/f$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld/a/a/b/f$b;
    .registers 2

    .line 1
    const-class v0, Ld/a/a/b/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/a/a/b/f$b;

    return-object p0
.end method

.method public static values()[Ld/a/a/b/f$b;
    .registers 1

    .line 1
    sget-object v0, Ld/a/a/b/f$b;->f:[Ld/a/a/b/f$b;

    invoke-virtual {v0}, [Ld/a/a/b/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/a/a/b/f$b;

    return-object v0
.end method
