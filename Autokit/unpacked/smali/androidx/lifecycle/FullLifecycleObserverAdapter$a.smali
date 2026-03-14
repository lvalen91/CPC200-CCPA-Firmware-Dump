.class synthetic Landroidx/lifecycle/FullLifecycleObserverAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/lifecycle/FullLifecycleObserverAdapter;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 4104
  name = null
.end annotation

.field final static synthetic a:[I

.method static constructor <clinit>()V
  .catch Ljava/lang/NoSuchFieldError; { :L0 .. :L1 } :L1
  .catch Ljava/lang/NoSuchFieldError; { :L1 .. :L2 } :L2
  .catch Ljava/lang/NoSuchFieldError; { :L2 .. :L3 } :L3
  .catch Ljava/lang/NoSuchFieldError; { :L3 .. :L4 } :L4
  .catch Ljava/lang/NoSuchFieldError; { :L4 .. :L5 } :L5
  .catch Ljava/lang/NoSuchFieldError; { :L5 .. :L6 } :L6
  .catch Ljava/lang/NoSuchFieldError; { :L6 .. :L7 } :L7
  .registers 3
  .line 1
    invoke-static { }, Landroidx/lifecycle/f$b;->values()[Landroidx/lifecycle/f$b;
    move-result-object v0
    array-length v0, v0
    new-array v0, v0, [I
    sput-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I
  :L0
    sget-object v1, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 1
    aput v2, v0, v1
  :L1
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I
    sget-object v1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 2
    aput v2, v0, v1
  :L2
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I
    sget-object v1, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 3
    aput v2, v0, v1
  :L3
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I
    sget-object v1, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 4
    aput v2, v0, v1
  :L4
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I
    sget-object v1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 5
    aput v2, v0, v1
  :L5
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I
    sget-object v1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 6
    aput v2, v0, v1
  :L6
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I
    sget-object v1, Landroidx/lifecycle/f$b;->ON_ANY:Landroidx/lifecycle/f$b;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    const/4 v2, 7
    aput v2, v0, v1
  :L7
    return-void
.end method
