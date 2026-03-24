.class public Lcn/manstep/phonemirrorBox/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_a

    sput-object v0, Lcn/manstep/phonemirrorBox/util/e;->a:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x3c
        0x1e
        0x19
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
