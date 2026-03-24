.class public final Lcn/manstep/phonemirrorBox/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lcn/manstep/phonemirrorBox/m;->a:[I

    new-array v0, v0, [I

    .line 2
    sput-object v0, Lcn/manstep/phonemirrorBox/m;->b:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
