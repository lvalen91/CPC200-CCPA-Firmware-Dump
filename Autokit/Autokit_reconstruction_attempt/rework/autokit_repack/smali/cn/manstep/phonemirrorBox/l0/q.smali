.class public Lcn/manstep/phonemirrorBox/l0/q;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a0:Landroid/widget/EditText;

.field private b0:Landroid/widget/Button;

.field private c0:Ljava/lang/String;

.field private d0:Landroid/widget/RadioButton;

.field private e0:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "\u5f55\u97f3\u6587\u4ef6"

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/q;->c0:Ljava/lang/String;

    return-void
.end method

.method static synthetic g2(Lcn/manstep/phonemirrorBox/l0/q;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/l0/q;->l2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h2(Lcn/manstep/phonemirrorBox/l0/q;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/q;->k2()V

    return-void
.end method

.method private i2(Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "notes"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ro.product.manufacturer"

    const-string v1, ""

    .line 3
    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ro.board.platform"

    .line 4
    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcn/manstep/phonemirrorBox/p;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resolution"

    .line 6
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "manufacturer"

    .line 7
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    .line 8
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android"

    .line 10
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "version"

    const-string v1, "2025.03.19.1126"

    .line 11
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "model"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private j2()V
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "input_src.pcm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    :cond_16
    new-instance v0, Ljava/io/File;

    const-string v1, "output.pcm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    :cond_2c
    new-instance v0, Ljava/io/File;

    const-string v1, "input_aec.pcm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_42
    return-void
.end method

.method private k2()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f020c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/l0/q;->e0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 3
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/q;->j2()V

    .line 4
    :cond_17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/q;->b0:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/q;->b0:Landroid/widget/Button;

    const v1, 0x7f0f020d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private l2(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget p1, p0, Lcn/manstep/phonemirrorBox/l0/q;->e0:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/l0/q;->e0:I

    const-string p1, "output.pcm"

    .line 3
    invoke-direct {p0, p1, p1}, Lcn/manstep/phonemirrorBox/l0/q;->p2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_e
    const/4 v2, 0x3

    if-ne p1, v0, :cond_19

    .line 4
    iput v2, p0, Lcn/manstep/phonemirrorBox/l0/q;->e0:I

    const-string p1, "input_aec.pcm"

    .line 5
    invoke-direct {p0, p1, p1}, Lcn/manstep/phonemirrorBox/l0/q;->p2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_19
    if-ne p1, v2, :cond_3a

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/q;->b0:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/q;->b0:Landroid/widget/Button;

    const v0, 0x7f0f020d

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f020e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/q;->j2()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private m2(ZI)V
    .registers 5

    if-eqz p1, :cond_e

    .line 1
    sget p1, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    add-int/2addr p1, p2

    sput p1, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    const/16 p2, 0x2710

    if-lt p1, p2, :cond_18

    .line 2
    sput p2, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    goto :goto_18

    .line 3
    :cond_e
    sget p1, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    sub-int/2addr p1, p2

    sput p1, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    if-gtz p1, :cond_18

    const/4 p1, 0x0

    .line 4
    sput p1, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    .line 5
    :cond_18
    :goto_18
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    sget p2, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "RecordDelay"

    invoke-virtual {p1, v0, p2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/q;->a0:Landroid/widget/EditText;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/q;->a0:Landroid/widget/EditText;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private n2(Z)V
    .registers 2

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->w:Z

    .line 2
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->x:Z

    .line 3
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->y:Z

    .line 4
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/q;->j2()V

    goto :goto_14

    :cond_d
    const/4 p1, 0x0

    .line 5
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->w:Z

    .line 6
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->x:Z

    .line 7
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->y:Z

    :goto_14
    return-void
.end method

.method private p2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/q;->c0:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/l0/q;->i2(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 3
    new-instance v2, Lcn/manstep/phonemirrorBox/util/p;

    const/16 p1, 0xa

    invoke-direct {v2, p1}, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V

    .line 4
    new-instance v7, Lcn/manstep/phonemirrorBox/l0/q$b;

    invoke-direct {v7, p0}, Lcn/manstep/phonemirrorBox/l0/q$b;-><init>(Lcn/manstep/phonemirrorBox/l0/q;)V

    const-string v3, "/a/upload/log"

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcn/manstep/phonemirrorBox/util/p;->o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V

    return-void
.end method

.method private q2()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/q;->d0:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/q;->d0:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3
    :cond_e
    new-instance v0, Ljava/io/File;

    const-string v2, "input_src.pcm"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    const v4, 0x7f0f0106

    const/4 v5, 0x0

    if-eqz v3, :cond_c4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_c4

    .line 5
    :cond_27
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x3200000

    cmp-long v0, v6, v8

    if-lez v0, :cond_41

    .line 6
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/q;->j2()V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 8
    :cond_41
    new-instance v0, Ljava/io/File;

    const-string v3, "output.pcm"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_55

    goto :goto_b8

    .line 10
    :cond_55
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-lez v0, :cond_6c

    .line 11
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/q;->j2()V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 13
    :cond_6c
    new-instance v0, Ljava/io/File;

    const-string v3, "input_aec.pcm"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_80

    goto :goto_ac

    .line 15
    :cond_80
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-lez v0, :cond_97

    .line 16
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/q;->j2()V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 18
    :cond_97
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/q;->b0:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/q;->b0:Landroid/widget/Button;

    const v3, 0x7f0f020f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 20
    iput v1, p0, Lcn/manstep/phonemirrorBox/l0/q;->e0:I

    const-string v0, "input.pcm"

    .line 21
    invoke-direct {p0, v0, v2}, Lcn/manstep/phonemirrorBox/l0/q;->p2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_ac
    :goto_ac
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 23
    :cond_b8
    :goto_b8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 24
    :cond_c4
    :goto_c4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public H0(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->H0(Landroid/os/Bundle;)V

    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0c004b

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public M0()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->M0()V

    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090072

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 3
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09012d

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090084

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/q;->b0:Landroid/widget/Button;

    .line 7
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090070

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p2, 0x7f090081

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p2, 0x7f0900e5

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/q;->a0:Landroid/widget/EditText;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/q;->a0:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lnet/iwebrtc/audioprocess/sdk/AudioProcess;->RecordDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 17
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/l0/q;->a0:Landroid/widget/EditText;

    new-instance v0, Lcn/manstep/phonemirrorBox/l0/q$a;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/l0/q$a;-><init>(Lcn/manstep/phonemirrorBox/l0/q;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0901dc

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const v0, 0x7f0901db

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/q;->d0:Landroid/widget/RadioButton;

    .line 20
    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->w:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_ad

    sget-boolean p1, Lcn/manstep/phonemirrorBox/p;->x:Z

    if-eqz p1, :cond_ad

    .line 21
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b2

    .line 22
    :cond_ad
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/q;->d0:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 23
    :goto_b2
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/q;->d0:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "37_("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/q;->c0:Ljava/lang/String;

    return-void
.end method

.method public o2(Landroidx/fragment/app/n;I)V
    .registers 5

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/l0/q$c;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/l0/q$c;-><init>(Lcn/manstep/phonemirrorBox/l0/q;)V

    new-instance v1, Lcn/manstep/phonemirrorBox/l0/q$d;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/l0/q$d;-><init>(Lcn/manstep/phonemirrorBox/l0/q;)V

    invoke-static {p1, p2, v0, v1}, Lcn/manstep/phonemirrorBox/k0/a;->I2(Landroidx/fragment/app/n;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_3c

    goto :goto_3b

    .line 2
    :sswitch_b
    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/l0/q;->n2(Z)V

    goto :goto_3b

    .line 3
    :sswitch_f
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/l0/q;->n2(Z)V

    goto :goto_3b

    .line 4
    :sswitch_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;

    move-result-object p1

    const v0, 0x7f0f00f8

    invoke-virtual {p0, p1, v0}, Lcn/manstep/phonemirrorBox/l0/q;->o2(Landroidx/fragment/app/n;I)V

    goto :goto_3b

    .line 5
    :sswitch_1e
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/l0/q;->q2()V

    goto :goto_3b

    .line 6
    :sswitch_22
    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/l0/q;->m2(ZI)V

    goto :goto_3b

    .line 7
    :sswitch_26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcn/manstep/phonemirrorBox/l0/s;

    if-eqz p1, :cond_3b

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/l0/s;

    invoke-interface {p1, p0}, Lcn/manstep/phonemirrorBox/l0/s;->f(Landroidx/fragment/app/Fragment;)V

    goto :goto_3b

    .line 9
    :sswitch_38
    invoke-direct {p0, v2, v1}, Lcn/manstep/phonemirrorBox/l0/q;->m2(ZI)V

    :cond_3b
    :goto_3b
    return-void

    :sswitch_data_3c
    .sparse-switch
        0x7f090070 -> :sswitch_38
        0x7f090072 -> :sswitch_26
        0x7f090081 -> :sswitch_22
        0x7f090084 -> :sswitch_1e
        0x7f09012d -> :sswitch_13
        0x7f0901db -> :sswitch_f
        0x7f0901dc -> :sswitch_b
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x32

    const/4 v1, 0x1

    const v2, 0x7f090070

    if-ne p1, v2, :cond_10

    .line 2
    invoke-direct {p0, v1, v0}, Lcn/manstep/phonemirrorBox/l0/q;->m2(ZI)V

    return v1

    :cond_10
    const v2, 0x7f090081

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1a

    .line 3
    invoke-direct {p0, v3, v0}, Lcn/manstep/phonemirrorBox/l0/q;->m2(ZI)V

    return v1

    :cond_1a
    return v3
.end method
