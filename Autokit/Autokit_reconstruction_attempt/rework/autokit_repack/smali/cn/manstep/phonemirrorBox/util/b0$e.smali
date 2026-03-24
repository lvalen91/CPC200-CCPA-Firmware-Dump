.class Lcn/manstep/phonemirrorBox/util/b0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/util/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static final a:Lcn/manstep/phonemirrorBox/util/b0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/manstep/phonemirrorBox/util/b0;-><init>(Lcn/manstep/phonemirrorBox/util/b0$a;)V

    sput-object v0, Lcn/manstep/phonemirrorBox/util/b0$e;->a:Lcn/manstep/phonemirrorBox/util/b0;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcn/manstep/phonemirrorBox/util/b0;
    .registers 1

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/util/b0$e;->a:Lcn/manstep/phonemirrorBox/util/b0;

    return-object v0
.end method
