.class public final Lc/j/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ColorStateListItem:[I

.field public static final ColorStateListItem_alpha:I = 0x2

.field public static final ColorStateListItem_android_alpha:I = 0x1

.field public static final ColorStateListItem_android_color:I = 0x0

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontVariationSettings:I = 0x4

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_android_ttcIndex:I = 0x3

.field public static final FontFamilyFont_font:I = 0x5

.field public static final FontFamilyFont_fontStyle:I = 0x6

.field public static final FontFamilyFont_fontVariationSettings:I = 0x7

.field public static final FontFamilyFont_fontWeight:I = 0x8

.field public static final FontFamilyFont_ttcIndex:I = 0x9

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final FontFamily_fontProviderSystemFontFamily:I = 0x6

.field public static final Fragment:[I

.field public static final FragmentContainerView:[I

.field public static final FragmentContainerView_android_name:I = 0x0

.field public static final FragmentContainerView_android_tag:I = 0x1

.field public static final Fragment_android_id:I = 0x1

.field public static final Fragment_android_name:I = 0x0

.field public static final Fragment_android_tag:I = 0x2

.field public static final GradientColor:[I

.field public static final GradientColorItem:[I

.field public static final GradientColorItem_android_color:I = 0x0

.field public static final GradientColorItem_android_offset:I = 0x1

.field public static final GradientColor_android_centerColor:I = 0x7

.field public static final GradientColor_android_centerX:I = 0x3

.field public static final GradientColor_android_centerY:I = 0x4

.field public static final GradientColor_android_endColor:I = 0x1

.field public static final GradientColor_android_endX:I = 0xa

.field public static final GradientColor_android_endY:I = 0xb

.field public static final GradientColor_android_gradientRadius:I = 0x5

.field public static final GradientColor_android_startColor:I = 0x0

.field public static final GradientColor_android_startX:I = 0x8

.field public static final GradientColor_android_startY:I = 0x9

.field public static final GradientColor_android_tileMode:I = 0x6

.field public static final GradientColor_android_type:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_3a

    sput-object v1, Lc/j/c;->ColorStateListItem:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_44

    sput-object v1, Lc/j/c;->FontFamily:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_56

    sput-object v1, Lc/j/c;->FontFamilyFont:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lc/j/c;->Fragment:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_78

    sput-object v1, Lc/j/c;->FragmentContainerView:[I

    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_80

    sput-object v1, Lc/j/c;->GradientColor:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_9c

    sput-object v0, Lc/j/c;->GradientColorItem:[I

    return-void

    nop

    :array_3a
    .array-data 4
        0x10101a5
        0x101031f
        0x7f04002a
    .end array-data

    :array_44
    .array-data 4
        0x7f040177
        0x7f040178
        0x7f040179
        0x7f04017a
        0x7f04017b
        0x7f04017c
        0x7f04017d
    .end array-data

    :array_56
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x101056f
        0x1010570
        0x7f040175
        0x7f04017e
        0x7f04017f
        0x7f040180
        0x7f040382
    .end array-data

    :array_6e
    .array-data 4
        0x1010003
        0x10100d0
        0x10100d1
    .end array-data

    :array_78
    .array-data 4
        0x1010003
        0x10100d1
    .end array-data

    :array_80
    .array-data 4
        0x101019d
        0x101019e
        0x10101a1
        0x10101a2
        0x10101a3
        0x10101a4
        0x1010201
        0x101020b
        0x1010510
        0x1010511
        0x1010512
        0x1010513
    .end array-data

    :array_9c
    .array-data 4
        0x10101a5
        0x1010514
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
