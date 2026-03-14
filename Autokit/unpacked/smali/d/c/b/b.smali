.class public final enum Ld/c/b/b;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum<",
    "Ld/c/b/b;",
    ">;"
  }
.end annotation

.field public final static enum b:Ld/c/b/b;

.field public final static enum c:Ld/c/b/b;

.field public final static enum d:Ld/c/b/b;

.field public final static enum e:Ld/c/b/b;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end field

.field public final static enum f:Ld/c/b/b;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
.end field

.field public final static enum g:Ld/c/b/b;

.field public final static enum h:Ld/c/b/b;

.field public final static enum i:Ld/c/b/b;

.field public final static enum j:Ld/c/b/b;

.field public final static enum k:Ld/c/b/b;

.field public final static enum l:Ld/c/b/b;

.field private final static synthetic m:[Ld/c/b/b;

.method static constructor <clinit>()V
  .registers 14
  .line 1
    new-instance v0, Ld/c/b/b;
    const-string v1, "ERROR_CORRECTION"
    const/4 v2, 0
    invoke-direct { v0, v1, v2 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->b:Ld/c/b/b;
  .line 2
    new-instance v0, Ld/c/b/b;
    const-string v1, "CHARACTER_SET"
    const/4 v3, 1
    invoke-direct { v0, v1, v3 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->c:Ld/c/b/b;
  .line 3
    new-instance v0, Ld/c/b/b;
    const-string v1, "DATA_MATRIX_SHAPE"
    const/4 v4, 2
    invoke-direct { v0, v1, v4 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->d:Ld/c/b/b;
  .line 4
    new-instance v0, Ld/c/b/b;
    const-string v1, "MIN_SIZE"
    const/4 v5, 3
    invoke-direct { v0, v1, v5 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->e:Ld/c/b/b;
  .line 5
    new-instance v0, Ld/c/b/b;
    const-string v1, "MAX_SIZE"
    const/4 v6, 4
    invoke-direct { v0, v1, v6 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->f:Ld/c/b/b;
  .line 6
    new-instance v0, Ld/c/b/b;
    const-string v1, "MARGIN"
    const/4 v7, 5
    invoke-direct { v0, v1, v7 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->g:Ld/c/b/b;
  .line 7
    new-instance v0, Ld/c/b/b;
    const-string v1, "PDF417_COMPACT"
    const/4 v8, 6
    invoke-direct { v0, v1, v8 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->h:Ld/c/b/b;
  .line 8
    new-instance v0, Ld/c/b/b;
    const-string v1, "PDF417_COMPACTION"
    const/4 v9, 7
    invoke-direct { v0, v1, v9 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->i:Ld/c/b/b;
  .line 9
    new-instance v0, Ld/c/b/b;
    const-string v1, "PDF417_DIMENSIONS"
    const/16 v10, 8
    invoke-direct { v0, v1, v10 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->j:Ld/c/b/b;
  .line 10
    new-instance v0, Ld/c/b/b;
    const-string v1, "AZTEC_LAYERS"
    const/16 v11, 9
    invoke-direct { v0, v1, v11 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->k:Ld/c/b/b;
  .line 11
    new-instance v0, Ld/c/b/b;
    const-string v1, "QR_VERSION"
    const/16 v12, 10
    invoke-direct { v0, v1, v12 }, Ld/c/b/b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Ld/c/b/b;->l:Ld/c/b/b;
    const/16 v1, 11
    new-array v1, v1, [Ld/c/b/b;
  .line 12
    sget-object v13, Ld/c/b/b;->b:Ld/c/b/b;
    aput-object v13, v1, v2
    sget-object v2, Ld/c/b/b;->c:Ld/c/b/b;
    aput-object v2, v1, v3
    sget-object v2, Ld/c/b/b;->d:Ld/c/b/b;
    aput-object v2, v1, v4
    sget-object v2, Ld/c/b/b;->e:Ld/c/b/b;
    aput-object v2, v1, v5
    sget-object v2, Ld/c/b/b;->f:Ld/c/b/b;
    aput-object v2, v1, v6
    sget-object v2, Ld/c/b/b;->g:Ld/c/b/b;
    aput-object v2, v1, v7
    sget-object v2, Ld/c/b/b;->h:Ld/c/b/b;
    aput-object v2, v1, v8
    sget-object v2, Ld/c/b/b;->i:Ld/c/b/b;
    aput-object v2, v1, v9
    sget-object v2, Ld/c/b/b;->j:Ld/c/b/b;
    aput-object v2, v1, v10
    sget-object v2, Ld/c/b/b;->k:Ld/c/b/b;
    aput-object v2, v1, v11
    aput-object v0, v1, v12
    sput-object v1, Ld/c/b/b;->m:[Ld/c/b/b;
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

.method public static valueOf(Ljava/lang/String;)Ld/c/b/b;
  .registers 2
  .line 1
    const-class v0, Ld/c/b/b;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object p0
    check-cast p0, Ld/c/b/b;
    return-object p0
.end method

.method public static values()[Ld/c/b/b;
  .registers 2
  .line 1
    sget-object v0, Ld/c/b/b;->m:[Ld/c/b/b;
    invoke-virtual { v0 }, [Ld/c/b/b;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Ld/c/b/b;
    return-object v0
.end method
