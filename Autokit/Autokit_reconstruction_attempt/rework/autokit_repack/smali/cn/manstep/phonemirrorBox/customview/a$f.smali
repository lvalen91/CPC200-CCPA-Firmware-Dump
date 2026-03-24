.class Lcn/manstep/phonemirrorBox/customview/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/customview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lcn/manstep/phonemirrorBox/customview/a$f;->a:I

    .line 3
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/customview/a$f;->b:Ljava/lang/String;

    return-void
.end method
