.class Lcn/manstep/phonemirrorBox/l0/t$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/t;->e1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/t;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/t;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/t$d;->b:Lcn/manstep/phonemirrorBox/l0/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/t$d;->b:Lcn/manstep/phonemirrorBox/l0/t;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/t;->i2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/i0/w;

    move-result-object v0

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    :try_start_b
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/t$d;->b:Lcn/manstep/phonemirrorBox/l0/t;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/t;->i2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/i0/w;

    move-result-object v0

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/t$d;->b:Lcn/manstep/phonemirrorBox/l0/t;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/l0/t;->i2(Lcn/manstep/phonemirrorBox/l0/t;)Lcn/manstep/phonemirrorBox/i0/w;

    move-result-object v1

    iget-object v1, v1, Lcn/manstep/phonemirrorBox/i0/w;->x:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    return-void
.end method
