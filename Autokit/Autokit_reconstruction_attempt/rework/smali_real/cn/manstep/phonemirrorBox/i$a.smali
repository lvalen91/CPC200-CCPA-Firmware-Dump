.class Lcn/manstep/phonemirrorBox/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/i;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/i;II)V
    .registers 4

    .line 1
    iput p2, p0, Lcn/manstep/phonemirrorBox/i$a;->b:I

    iput p3, p0, Lcn/manstep/phonemirrorBox/i$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/i$a;->b:I

    iget v1, p0, Lcn/manstep/phonemirrorBox/i$a;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcn/manstep/phonemirrorBox/v0/e;->L(IIII)V

    return-void
.end method
