.class public final enum Landroidx/constraintlayout/widget/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/constraintlayout/widget/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16409
  name = "b"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum<",
    "Landroidx/constraintlayout/widget/a$b;",
    ">;"
  }
.end annotation

.field public final static enum b:Landroidx/constraintlayout/widget/a$b;

.field public final static enum c:Landroidx/constraintlayout/widget/a$b;

.field public final static enum d:Landroidx/constraintlayout/widget/a$b;

.field public final static enum e:Landroidx/constraintlayout/widget/a$b;

.field public final static enum f:Landroidx/constraintlayout/widget/a$b;

.field public final static enum g:Landroidx/constraintlayout/widget/a$b;

.field public final static enum h:Landroidx/constraintlayout/widget/a$b;

.field private final static synthetic i:[Landroidx/constraintlayout/widget/a$b;

.method static constructor <clinit>()V
  .registers 10
  .line 1
    new-instance v0, Landroidx/constraintlayout/widget/a$b;
    const-string v1, "INT_TYPE"
    const/4 v2, 0
    invoke-direct { v0, v1, v2 }, Landroidx/constraintlayout/widget/a$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/constraintlayout/widget/a$b;->b:Landroidx/constraintlayout/widget/a$b;
  .line 2
    new-instance v0, Landroidx/constraintlayout/widget/a$b;
    const-string v1, "FLOAT_TYPE"
    const/4 v3, 1
    invoke-direct { v0, v1, v3 }, Landroidx/constraintlayout/widget/a$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/constraintlayout/widget/a$b;->c:Landroidx/constraintlayout/widget/a$b;
  .line 3
    new-instance v0, Landroidx/constraintlayout/widget/a$b;
    const-string v1, "COLOR_TYPE"
    const/4 v4, 2
    invoke-direct { v0, v1, v4 }, Landroidx/constraintlayout/widget/a$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/constraintlayout/widget/a$b;->d:Landroidx/constraintlayout/widget/a$b;
  .line 4
    new-instance v0, Landroidx/constraintlayout/widget/a$b;
    const-string v1, "COLOR_DRAWABLE_TYPE"
    const/4 v5, 3
    invoke-direct { v0, v1, v5 }, Landroidx/constraintlayout/widget/a$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/constraintlayout/widget/a$b;->e:Landroidx/constraintlayout/widget/a$b;
  .line 5
    new-instance v0, Landroidx/constraintlayout/widget/a$b;
    const-string v1, "STRING_TYPE"
    const/4 v6, 4
    invoke-direct { v0, v1, v6 }, Landroidx/constraintlayout/widget/a$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/constraintlayout/widget/a$b;->f:Landroidx/constraintlayout/widget/a$b;
  .line 6
    new-instance v0, Landroidx/constraintlayout/widget/a$b;
    const-string v1, "BOOLEAN_TYPE"
    const/4 v7, 5
    invoke-direct { v0, v1, v7 }, Landroidx/constraintlayout/widget/a$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/constraintlayout/widget/a$b;->g:Landroidx/constraintlayout/widget/a$b;
  .line 7
    new-instance v0, Landroidx/constraintlayout/widget/a$b;
    const-string v1, "DIMENSION_TYPE"
    const/4 v8, 6
    invoke-direct { v0, v1, v8 }, Landroidx/constraintlayout/widget/a$b;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/constraintlayout/widget/a$b;->h:Landroidx/constraintlayout/widget/a$b;
    const/4 v1, 7
    new-array v1, v1, [Landroidx/constraintlayout/widget/a$b;
  .line 8
    sget-object v9, Landroidx/constraintlayout/widget/a$b;->b:Landroidx/constraintlayout/widget/a$b;
    aput-object v9, v1, v2
    sget-object v2, Landroidx/constraintlayout/widget/a$b;->c:Landroidx/constraintlayout/widget/a$b;
    aput-object v2, v1, v3
    sget-object v2, Landroidx/constraintlayout/widget/a$b;->d:Landroidx/constraintlayout/widget/a$b;
    aput-object v2, v1, v4
    sget-object v2, Landroidx/constraintlayout/widget/a$b;->e:Landroidx/constraintlayout/widget/a$b;
    aput-object v2, v1, v5
    sget-object v2, Landroidx/constraintlayout/widget/a$b;->f:Landroidx/constraintlayout/widget/a$b;
    aput-object v2, v1, v6
    sget-object v2, Landroidx/constraintlayout/widget/a$b;->g:Landroidx/constraintlayout/widget/a$b;
    aput-object v2, v1, v7
    aput-object v0, v1, v8
    sput-object v1, Landroidx/constraintlayout/widget/a$b;->i:[Landroidx/constraintlayout/widget/a$b;
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/widget/a$b;
  .registers 2
  .line 1
    const-class v0, Landroidx/constraintlayout/widget/a$b;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object p0
    check-cast p0, Landroidx/constraintlayout/widget/a$b;
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/widget/a$b;
  .registers 1
  .line 1
    sget-object v0, Landroidx/constraintlayout/widget/a$b;->i:[Landroidx/constraintlayout/widget/a$b;
    invoke-virtual { v0 }, [Landroidx/constraintlayout/widget/a$b;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroidx/constraintlayout/widget/a$b;
    return-object v0
.end method
