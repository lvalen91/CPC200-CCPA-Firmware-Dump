.class final enum Lcom/google/android/material/datepicker/h$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/datepicker/h$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/google/android/material/datepicker/h$k;

.field public static final enum c:Lcom/google/android/material/datepicker/h$k;

.field private static final synthetic d:[Lcom/google/android/material/datepicker/h$k;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/h$k;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/h$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/datepicker/h$k;->b:Lcom/google/android/material/datepicker/h$k;

    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/h$k;

    const-string v1, "YEAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/material/datepicker/h$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/datepicker/h$k;->c:Lcom/google/android/material/datepicker/h$k;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/material/datepicker/h$k;

    .line 3
    sget-object v4, Lcom/google/android/material/datepicker/h$k;->b:Lcom/google/android/material/datepicker/h$k;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/android/material/datepicker/h$k;->d:[Lcom/google/android/material/datepicker/h$k;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/datepicker/h$k;
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/material/datepicker/h$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/datepicker/h$k;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/datepicker/h$k;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/material/datepicker/h$k;->d:[Lcom/google/android/material/datepicker/h$k;

    invoke-virtual {v0}, [Lcom/google/android/material/datepicker/h$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/datepicker/h$k;

    return-object v0
.end method
