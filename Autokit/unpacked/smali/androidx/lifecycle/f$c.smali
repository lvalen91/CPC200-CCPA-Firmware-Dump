.class public final enum Landroidx/lifecycle/f$c;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16409
  name = "c"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum<",
    "Landroidx/lifecycle/f$c;",
    ">;"
  }
.end annotation

.field public final static enum b:Landroidx/lifecycle/f$c;

.field public final static enum c:Landroidx/lifecycle/f$c;

.field public final static enum d:Landroidx/lifecycle/f$c;

.field public final static enum e:Landroidx/lifecycle/f$c;

.field public final static enum f:Landroidx/lifecycle/f$c;

.field private final static synthetic g:[Landroidx/lifecycle/f$c;

.method static constructor <clinit>()V
  .registers 8
  .line 1
    new-instance v0, Landroidx/lifecycle/f$c;
    const-string v1, "DESTROYED"
    const/4 v2, 0
    invoke-direct { v0, v1, v2 }, Landroidx/lifecycle/f$c;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$c;->b:Landroidx/lifecycle/f$c;
  .line 2
    new-instance v0, Landroidx/lifecycle/f$c;
    const-string v1, "INITIALIZED"
    const/4 v3, 1
    invoke-direct { v0, v1, v3 }, Landroidx/lifecycle/f$c;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;
  .line 3
    new-instance v0, Landroidx/lifecycle/f$c;
    const-string v1, "CREATED"
    const/4 v4, 2
    invoke-direct { v0, v1, v4 }, Landroidx/lifecycle/f$c;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;
  .line 4
    new-instance v0, Landroidx/lifecycle/f$c;
    const-string v1, "STARTED"
    const/4 v5, 3
    invoke-direct { v0, v1, v5 }, Landroidx/lifecycle/f$c;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;
  .line 5
    new-instance v0, Landroidx/lifecycle/f$c;
    const-string v1, "RESUMED"
    const/4 v6, 4
    invoke-direct { v0, v1, v6 }, Landroidx/lifecycle/f$c;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;
    const/4 v1, 5
    new-array v1, v1, [Landroidx/lifecycle/f$c;
  .line 6
    sget-object v7, Landroidx/lifecycle/f$c;->b:Landroidx/lifecycle/f$c;
    aput-object v7, v1, v2
    sget-object v2, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;
    aput-object v2, v1, v3
    sget-object v2, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;
    aput-object v2, v1, v4
    sget-object v2, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;
    aput-object v2, v1, v5
    aput-object v0, v1, v6
    sput-object v1, Landroidx/lifecycle/f$c;->g:[Landroidx/lifecycle/f$c;
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/f$c;
  .registers 2
  .line 1
    const-class v0, Landroidx/lifecycle/f$c;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object p0
    check-cast p0, Landroidx/lifecycle/f$c;
    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/f$c;
  .registers 1
  .line 1
    sget-object v0, Landroidx/lifecycle/f$c;->g:[Landroidx/lifecycle/f$c;
    invoke-virtual { v0 }, [Landroidx/lifecycle/f$c;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroidx/lifecycle/f$c;
    return-object v0
.end method

.method public a(Landroidx/lifecycle/f$c;)Z
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I
    move-result p1
    if-ltz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    return p1
.end method
