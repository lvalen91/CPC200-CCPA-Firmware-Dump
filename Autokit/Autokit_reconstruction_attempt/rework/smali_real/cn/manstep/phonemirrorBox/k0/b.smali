.class public Lcn/manstep/phonemirrorBox/k0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcn/manstep/phonemirrorBox/k0/b;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/AlertDialog;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/k0/b;)Landroid/app/AlertDialog;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private b(Landroid/content/Context;I)Landroid/widget/ImageView;
    .registers 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    add-int/2addr p2, p1

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 4
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    const-string p1, "#FFFFFF"

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-object v0
.end method

.method public static c()Lcn/manstep/phonemirrorBox/k0/b;
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/k0/b;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/k0/b;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/k0/b;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;

    return-object v0
.end method

.method private f(Ljava/lang/String;II)I
    .registers 8

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 3
    :cond_c
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/b;->c:Ljava/lang/String;

    const-wide v2, 0x3fd6666666666666L    # 0.35

    if-le p2, p3, :cond_1a

    int-to-double p1, p3

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1e

    :cond_1a
    int-to-double p1, p2

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1e
    mul-double p1, p1, v2

    double-to-int p1, p1

    .line 6
    iget p2, p0, Lcn/manstep/phonemirrorBox/k0/b;->d:I

    if-eq p2, p1, :cond_28

    .line 7
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/b;->d:I

    return p1

    :cond_28
    return v1
.end method


# virtual methods
.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public e(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/k0/b;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 1
    :cond_3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_31

    .line 2
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->a:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f10010b

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_31
    return-object p0
.end method

.method public g()V
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;

    .line 3
    sput-object v0, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;

    :cond_9
    return-void
.end method

.method public h(Ljava/lang/String;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    if-nez p1, :cond_b

    goto :goto_35

    .line 2
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/k0/b;->f(Ljava/lang/String;II)I

    move-result p2

    if-gtz p2, :cond_12

    return-void

    .line 3
    :cond_12
    invoke-static {p1, p2, p2}, Lcn/manstep/phonemirrorBox/util/v;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_19

    return-void

    .line 4
    :cond_19
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/k0/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-direct {p0, p3, p2}, Lcn/manstep/phonemirrorBox/k0/b;->b(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    new-instance p1, Lcn/manstep/phonemirrorBox/k0/b$a;

    invoke-direct {p1, p0}, Lcn/manstep/phonemirrorBox/k0/b$a;-><init>(Lcn/manstep/phonemirrorBox/k0/b;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public i()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_7
    return-void
.end method

.method public j(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/k0/b;->h(Ljava/lang/String;II)V

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k0/b;->i()V

    return-void
.end method
