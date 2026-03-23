.class public final enum Landroidx/lifecycle/f$b;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16409
  name = "b"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum<",
    "Landroidx/lifecycle/f$b;",
    ">;"
  }
.end annotation

.field private final static synthetic $VALUES:[Landroidx/lifecycle/f$b;

.field public final static enum ON_ANY:Landroidx/lifecycle/f$b;

.field public final static enum ON_CREATE:Landroidx/lifecycle/f$b;

.field public final static enum ON_DESTROY:Landroidx/lifecycle/f$b;

.field public final static enum ON_PAUSE:Landroidx/lifecycle/f$b;

.field public final static enum ON_RESUME:Landroidx/lifecycle/f$b;

.field public final static enum ON_START:Landroidx/lifecycle/f$b;

.field public final static enum ON_STOP:Landroidx/lifecycle/f$b;

.method static constructor <clinit>()V
  .registers 10
  .line 1
    new-instance v0, Landroidx/lifecycle/f$b;
    const-string v1, "ON_CREATE"
    const/4 v2, 0
    invoke-direct { v0, v1, v2 }, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
  .line 2
    new-instance v0, Landroidx/lifecycle/f$b;
    const-string v1, "ON_START"
    const/4 v3, 1
    invoke-direct { v0, v1, v3 }, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
  .line 3
    new-instance v0, Landroidx/lifecycle/f$b;
    const-string v1, "ON_RESUME"
    const/4 v4, 2
    invoke-direct { v0, v1, v4 }, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;
  .line 4
    new-instance v0, Landroidx/lifecycle/f$b;
    const-string v1, "ON_PAUSE"
    const/4 v5, 3
    invoke-direct { v0, v1, v5 }, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;
  .line 5
    new-instance v0, Landroidx/lifecycle/f$b;
    const-string v1, "ON_STOP"
    const/4 v6, 4
    invoke-direct { v0, v1, v6 }, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
  .line 6
    new-instance v0, Landroidx/lifecycle/f$b;
    const-string v1, "ON_DESTROY"
    const/4 v7, 5
    invoke-direct { v0, v1, v7 }, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
  .line 7
    new-instance v0, Landroidx/lifecycle/f$b;
    const-string v1, "ON_ANY"
    const/4 v8, 6
    invoke-direct { v0, v1, v8 }, Landroidx/lifecycle/f$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/lifecycle/f$b;->ON_ANY:Landroidx/lifecycle/f$b;
    const/4 v1, 7
    new-array v1, v1, [Landroidx/lifecycle/f$b;
  .line 8
    sget-object v9, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
    aput-object v9, v1, v2
    sget-object v2, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    aput-object v2, v1, v3
    sget-object v2, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;
    aput-object v2, v1, v4
    sget-object v2, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;
    aput-object v2, v1, v5
    sget-object v2, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    aput-object v2, v1, v6
    sget-object v2, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    aput-object v2, v1, v7
    aput-object v0, v1, v8
    sput-object v1, Landroidx/lifecycle/f$b;->$VALUES:[Landroidx/lifecycle/f$b;
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

.method public static a(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;
  .registers 2
  .line 1
    sget-object v0, Landroidx/lifecycle/f$a;->a:[I
    invoke-virtual { p0 }, Ljava/lang/Enum;->ordinal()I
    move-result p0
    aget p0, v0, p0
    const/4 v0, 1
    if-eq p0, v0, :L2
    const/4 v0, 2
    if-eq p0, v0, :L1
    const/4 v0, 3
    if-eq p0, v0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 2
    sget-object p0, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;
    return-object p0
  :L1
  .line 3
    sget-object p0, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    return-object p0
  :L2
  .line 4
    sget-object p0, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    return-object p0
.end method

.method public static c(Landroidx/lifecycle/f$c;)Landroidx/lifecycle/f$b;
  .registers 2
  .line 1
    sget-object v0, Landroidx/lifecycle/f$a;->a:[I
    invoke-virtual { p0 }, Ljava/lang/Enum;->ordinal()I
    move-result p0
    aget p0, v0, p0
    const/4 v0, 1
    if-eq p0, v0, :L2
    const/4 v0, 2
    if-eq p0, v0, :L1
    const/4 v0, 5
    if-eq p0, v0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 2
    sget-object p0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
    return-object p0
  :L1
  .line 3
    sget-object p0, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;
    return-object p0
  :L2
  .line 4
    sget-object p0, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/f$b;
  .registers 2
  .line 1
    const-class v0, Landroidx/lifecycle/f$b;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object p0
    check-cast p0, Landroidx/lifecycle/f$b;
    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/f$b;
  .registers 1
  .line 1
    sget-object v0, Landroidx/lifecycle/f$b;->$VALUES:[Landroidx/lifecycle/f$b;
    invoke-virtual { v0 }, [Landroidx/lifecycle/f$b;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroidx/lifecycle/f$b;
    return-object v0
.end method

.method public b()Landroidx/lifecycle/f$c;
  .registers 4
  .line 1
    sget-object v0, Landroidx/lifecycle/f$a;->b:[I
    invoke-virtual { p0 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aget v0, v0, v1
    packed-switch v0, :L4
  .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " has no target state"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L0
  .line 3
    sget-object v0, Landroidx/lifecycle/f$c;->b:Landroidx/lifecycle/f$c;
    return-object v0
  :L1
  .line 4
    sget-object v0, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;
    return-object v0
  :L2
  .line 5
    sget-object v0, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;
    return-object v0
  :L3
  .line 6
    sget-object v0, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;
    return-object v0
  :L4
  .packed-switch 1
    :L3
    :L3
    :L2
    :L2
    :L1
    :L0
  .end packed-switch
.end method
