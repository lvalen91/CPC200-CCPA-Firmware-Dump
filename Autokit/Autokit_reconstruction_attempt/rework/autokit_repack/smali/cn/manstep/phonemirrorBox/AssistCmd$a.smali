.class Lcn/manstep/phonemirrorBox/AssistCmd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AssistCmd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/AssistCmd;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AssistCmd;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AssistCmd$a;->b:Lcn/manstep/phonemirrorBox/AssistCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AssistCmd$a;->b:Lcn/manstep/phonemirrorBox/AssistCmd;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AssistCmd;->b(Lcn/manstep/phonemirrorBox/AssistCmd;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AssistCmd$a;->b:Lcn/manstep/phonemirrorBox/AssistCmd;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_3c

    :pswitch_11
    goto :goto_3a

    :pswitch_12
    const/4 p1, 0x2

    .line 3
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->J(I)V

    const-string p1, "KEY_ROTATE"

    .line 4
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto :goto_3a

    :pswitch_1c
    const/16 p1, 0xa

    .line 5
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->J(I)V

    const-string p1, "KEY_QUIT"

    .line 6
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto :goto_3a

    :pswitch_27
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->J(I)V

    const-string p1, "KEY_HOME"

    .line 8
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    goto :goto_3a

    :pswitch_31
    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->J(I)V

    const-string p1, "KEY_BACK"

    .line 10
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x7f090050
        :pswitch_31
        :pswitch_11
        :pswitch_27
        :pswitch_11
        :pswitch_1c
        :pswitch_12
    .end packed-switch
.end method
