.class public Lc/e/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static a:[Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 4
    const/4 v0, 4
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0
    const-string v2, "standard"
    aput-object v2, v0, v1
    const/4 v1, 1
    const-string v2, "accelerate"
    aput-object v2, v0, v1
    const/4 v1, 2
    const-string v2, "decelerate"
    aput-object v2, v0, v1
    const/4 v1, 3
    const-string v2, "linear"
    aput-object v2, v0, v1
  .line 1
    sput-object v0, Lc/e/a/a/a;->a:[Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method
