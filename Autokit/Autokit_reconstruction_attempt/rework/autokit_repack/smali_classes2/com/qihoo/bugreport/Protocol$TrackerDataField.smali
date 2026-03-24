.class public final enum Lcom/qihoo/bugreport/Protocol$TrackerDataField;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qihoo/bugreport/Protocol$TrackerDataField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qihoo/bugreport/Protocol$TrackerDataField;

.field public static final enum cn:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

.field public static final enum mn:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

.field public static final enum st:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

.field public static final enum vi:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

.field public static final enum vt:Lcom/qihoo/bugreport/Protocol$TrackerDataField;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    const-string v1, "cn"

    invoke-direct {v0, v1, v2}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->cn:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    .line 14
    new-instance v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    const-string v1, "mn"

    invoke-direct {v0, v1, v3}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->mn:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    .line 15
    new-instance v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    const-string v1, "vi"

    invoke-direct {v0, v1, v4}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->vi:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    .line 16
    new-instance v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    const-string v1, "vt"

    invoke-direct {v0, v1, v5}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->vt:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    .line 17
    new-instance v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    const-string v1, "st"

    invoke-direct {v0, v1, v6}, Lcom/qihoo/bugreport/Protocol$TrackerDataField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->st:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    sget-object v1, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->cn:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->mn:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->vi:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->vt:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->st:Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->$VALUES:[Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qihoo/bugreport/Protocol$TrackerDataField;
    .registers 2

    .prologue
    .line 12
    const-class v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    return-object v0
.end method

.method public static values()[Lcom/qihoo/bugreport/Protocol$TrackerDataField;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/qihoo/bugreport/Protocol$TrackerDataField;->$VALUES:[Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    invoke-virtual {v0}, [Lcom/qihoo/bugreport/Protocol$TrackerDataField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qihoo/bugreport/Protocol$TrackerDataField;

    return-object v0
.end method
