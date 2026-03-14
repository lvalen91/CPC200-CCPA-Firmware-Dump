.class final enum Landroidx/fragment/app/c0$e$c;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/c0$e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 16408
  name = "c"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum<",
    "Landroidx/fragment/app/c0$e$c;",
    ">;"
  }
.end annotation

.field public final static enum b:Landroidx/fragment/app/c0$e$c;

.field public final static enum c:Landroidx/fragment/app/c0$e$c;

.field public final static enum d:Landroidx/fragment/app/c0$e$c;

.field public final static enum e:Landroidx/fragment/app/c0$e$c;

.field private final static synthetic f:[Landroidx/fragment/app/c0$e$c;

.method static constructor <clinit>()V
  .registers 7
  .line 1
    new-instance v0, Landroidx/fragment/app/c0$e$c;
    const-string v1, "REMOVED"
    const/4 v2, 0
    invoke-direct { v0, v1, v2 }, Landroidx/fragment/app/c0$e$c;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/fragment/app/c0$e$c;->b:Landroidx/fragment/app/c0$e$c;
  .line 2
    new-instance v0, Landroidx/fragment/app/c0$e$c;
    const-string v1, "VISIBLE"
    const/4 v3, 1
    invoke-direct { v0, v1, v3 }, Landroidx/fragment/app/c0$e$c;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
  .line 3
    new-instance v0, Landroidx/fragment/app/c0$e$c;
    const-string v1, "GONE"
    const/4 v4, 2
    invoke-direct { v0, v1, v4 }, Landroidx/fragment/app/c0$e$c;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/fragment/app/c0$e$c;->d:Landroidx/fragment/app/c0$e$c;
  .line 4
    new-instance v0, Landroidx/fragment/app/c0$e$c;
    const-string v1, "INVISIBLE"
    const/4 v5, 3
    invoke-direct { v0, v1, v5 }, Landroidx/fragment/app/c0$e$c;-><init>(Ljava/lang/String;I)V
    sput-object v0, Landroidx/fragment/app/c0$e$c;->e:Landroidx/fragment/app/c0$e$c;
    const/4 v1, 4
    new-array v1, v1, [Landroidx/fragment/app/c0$e$c;
  .line 5
    sget-object v6, Landroidx/fragment/app/c0$e$c;->b:Landroidx/fragment/app/c0$e$c;
    aput-object v6, v1, v2
    sget-object v2, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    aput-object v2, v1, v3
    sget-object v2, Landroidx/fragment/app/c0$e$c;->d:Landroidx/fragment/app/c0$e$c;
    aput-object v2, v1, v4
    aput-object v0, v1, v5
    sput-object v1, Landroidx/fragment/app/c0$e$c;->f:[Landroidx/fragment/app/c0$e$c;
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

.method static b(I)Landroidx/fragment/app/c0$e$c;
  .registers 4
    if-eqz p0, :L2
    const/4 v0, 4
    if-eq p0, v0, :L1
    const/16 v0, 8
    if-ne p0, v0, :L0
  .line 1
    sget-object p0, Landroidx/fragment/app/c0$e$c;->d:Landroidx/fragment/app/c0$e$c;
    return-object p0
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unknown visibility "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 3
    sget-object p0, Landroidx/fragment/app/c0$e$c;->e:Landroidx/fragment/app/c0$e$c;
    return-object p0
  :L2
  .line 4
    sget-object p0, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    return-object p0
.end method

.method static c(Landroid/view/View;)Landroidx/fragment/app/c0$e$c;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getAlpha()F
    move-result v0
    const/4 v1, 0
    cmpl-float v0, v0, v1
    if-nez v0, :L0
    invoke-virtual { p0 }, Landroid/view/View;->getVisibility()I
    move-result v0
    if-nez v0, :L0
  .line 2
    sget-object p0, Landroidx/fragment/app/c0$e$c;->e:Landroidx/fragment/app/c0$e$c;
    return-object p0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getVisibility()I
    move-result p0
    invoke-static { p0 }, Landroidx/fragment/app/c0$e$c;->b(I)Landroidx/fragment/app/c0$e$c;
    move-result-object p0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/c0$e$c;
  .registers 2
  .line 1
    const-class v0, Landroidx/fragment/app/c0$e$c;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object p0
    check-cast p0, Landroidx/fragment/app/c0$e$c;
    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/c0$e$c;
  .registers 1
  .line 1
    sget-object v0, Landroidx/fragment/app/c0$e$c;->f:[Landroidx/fragment/app/c0$e$c;
    invoke-virtual { v0 }, [Landroidx/fragment/app/c0$e$c;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroidx/fragment/app/c0$e$c;
    return-object v0
.end method

.method a(Landroid/view/View;)V
  .registers 6
  .line 1
    sget-object v0, Landroidx/fragment/app/c0$c;->a:[I
    invoke-virtual { p0 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    aget v0, v0, v1
    const/4 v1, 1
    const/4 v2, 2
    if-eq v0, v1, :L6
    const-string v1, "SpecialEffectsController: Setting view "
    if-eq v0, v2, :L4
    const/4 v3, 3
    if-eq v0, v3, :L2
    const/4 v3, 4
    if-eq v0, v3, :L0
    goto/16 :L8
  :L0
  .line 2
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " to INVISIBLE"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L1
  .line 4
    invoke-virtual { p1, v3 }, Landroid/view/View;->setVisibility(I)V
    goto :L8
  :L2
  .line 5
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L3
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " to GONE"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
    const/16 v0, 8
  .line 7
    invoke-virtual { p1, v0 }, Landroid/view/View;->setVisibility(I)V
    goto :L8
  :L4
  .line 8
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L5
  .line 9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " to VISIBLE"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L5
    const/4 v0, 0
  .line 10
    invoke-virtual { p1, v0 }, Landroid/view/View;->setVisibility(I)V
    goto :L8
  :L6
  .line 11
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
    if-eqz v0, :L8
  .line 12
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v1
    if-eqz v1, :L7
  .line 13
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "SpecialEffectsController: Removing view "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " from container "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L7
  .line 14
    invoke-virtual { v0, p1 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L8
    return-void
.end method
