.class final enum Landroidx/fragment/app/c0$e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/c0$e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Landroidx/fragment/app/c0$e$b;

.field public static final enum c:Landroidx/fragment/app/c0$e$b;

.field public static final enum d:Landroidx/fragment/app/c0$e$b;

.field private static final synthetic e:[Landroidx/fragment/app/c0$e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Landroidx/fragment/app/c0$e$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/c0$e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/c0$e$b;->b:Landroidx/fragment/app/c0$e$b;

    .line 2
    new-instance v0, Landroidx/fragment/app/c0$e$b;

    const-string v1, "ADDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/fragment/app/c0$e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/c0$e$b;->c:Landroidx/fragment/app/c0$e$b;

    .line 3
    new-instance v0, Landroidx/fragment/app/c0$e$b;

    const-string v1, "REMOVING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/fragment/app/c0$e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/c0$e$b;->d:Landroidx/fragment/app/c0$e$b;

    const/4 v1, 0x3

    new-array v1, v1, [Landroidx/fragment/app/c0$e$b;

    .line 4
    sget-object v5, Landroidx/fragment/app/c0$e$b;->b:Landroidx/fragment/app/c0$e$b;

    aput-object v5, v1, v2

    sget-object v2, Landroidx/fragment/app/c0$e$b;->c:Landroidx/fragment/app/c0$e$b;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Landroidx/fragment/app/c0$e$b;->e:[Landroidx/fragment/app/c0$e$b;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/c0$e$b;
    .registers 2

    .line 1
    const-class v0, Landroidx/fragment/app/c0$e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/c0$e$b;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/c0$e$b;
    .registers 1

    .line 1
    sget-object v0, Landroidx/fragment/app/c0$e$b;->e:[Landroidx/fragment/app/c0$e$b;

    invoke-virtual {v0}, [Landroidx/fragment/app/c0$e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/c0$e$b;

    return-object v0
.end method
