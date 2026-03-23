.class public final Lc/g/i/f;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static a:Ljava/util/Locale;

.method static constructor <clinit>()V
  .registers 4
  .line 1
    new-instance v0, Ljava/util/Locale;
    const-string v1, ""
    invoke-direct { v0, v1, v1 }, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    sput-object v0, Lc/g/i/f;->a:Ljava/util/Locale;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Ljava/util/Locale;)I
  .registers 4
  .line 1
    invoke-virtual { p0, p0 }, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object p0
    const/4 v0, 0
    invoke-virtual { p0, v0 }, Ljava/lang/String;->charAt(I)C
    move-result p0
    invoke-static { p0 }, Ljava/lang/Character;->getDirectionality(C)B
    move-result p0
    const/4 v1, 1
    if-eq p0, v1, :L0
    const/4 v2, 2
    if-eq p0, v2, :L0
    return v0
  :L0
    return v1
.end method

.method public static b(Ljava/util/Locale;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0 }, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    move-result p0
    return p0
  :L0
    if-eqz p0, :L3
  .line 3
    sget-object v0, Lc/g/i/f;->a:Ljava/util/Locale;
    invoke-virtual { p0, v0 }, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L3
  .line 4
    invoke-static { p0 }, Lc/g/i/b;->c(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L1
  .line 5
    invoke-static { p0 }, Lc/g/i/f;->a(Ljava/util/Locale;)I
    move-result p0
    return p0
  :L1
    const-string p0, "Arab"
  .line 6
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p0
    if-nez p0, :L2
    const-string p0, "Hebr"
  .line 7
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result p0
    if-eqz p0, :L3
  :L2
    const/4 p0, 1
    return p0
  :L3
    const/4 p0, 0
    return p0
.end method
