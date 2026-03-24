.class public final enum Ld/a/a/b/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/a/a/b/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ld/a/a/b/a$b;

.field public static final enum c:Ld/a/a/b/a$b;

.field public static final enum d:Ld/a/a/b/a$b;

.field private static final synthetic e:[Ld/a/a/b/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Ld/a/a/b/a$b;

    const-string v1, "TRIANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/a/a/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/a/a/b/a$b;->b:Ld/a/a/b/a$b;

    new-instance v0, Ld/a/a/b/a$b;

    const-string v1, "RECTANGLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ld/a/a/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/a/a/b/a$b;->c:Ld/a/a/b/a$b;

    new-instance v0, Ld/a/a/b/a$b;

    const-string v1, "FULL_RECTANGLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ld/a/a/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/a/a/b/a$b;->d:Ld/a/a/b/a$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ld/a/a/b/a$b;

    .line 2
    sget-object v5, Ld/a/a/b/a$b;->b:Ld/a/a/b/a$b;

    aput-object v5, v1, v2

    sget-object v2, Ld/a/a/b/a$b;->c:Ld/a/a/b/a$b;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ld/a/a/b/a$b;->e:[Ld/a/a/b/a$b;

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

.method public static valueOf(Ljava/lang/String;)Ld/a/a/b/a$b;
    .registers 2

    .line 1
    const-class v0, Ld/a/a/b/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/a/a/b/a$b;

    return-object p0
.end method

.method public static values()[Ld/a/a/b/a$b;
    .registers 1

    .line 1
    sget-object v0, Ld/a/a/b/a$b;->e:[Ld/a/a/b/a$b;

    invoke-virtual {v0}, [Ld/a/a/b/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/a/a/b/a$b;

    return-object v0
.end method
