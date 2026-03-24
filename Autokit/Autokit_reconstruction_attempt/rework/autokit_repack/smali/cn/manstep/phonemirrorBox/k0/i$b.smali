.class Lcn/manstep/phonemirrorBox/k0/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/k0/i;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/i;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/k0/i;->v2(Lcn/manstep/phonemirrorBox/k0/i;)Lcn/manstep/phonemirrorBox/k0/i$e;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v1, "HH:mm"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/k0/i;->w2(Lcn/manstep/phonemirrorBox/k0/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/k0/i;->x2(Lcn/manstep/phonemirrorBox/k0/i;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    :cond_2b
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/k0/i;->y2(Lcn/manstep/phonemirrorBox/k0/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/k0/i;->z2(Lcn/manstep/phonemirrorBox/k0/i;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    :cond_3c
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/k0/i;->v2(Lcn/manstep/phonemirrorBox/k0/i;)Lcn/manstep/phonemirrorBox/k0/i$e;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/k0/i;->w2(Lcn/manstep/phonemirrorBox/k0/i;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/k0/i;->y2(Lcn/manstep/phonemirrorBox/k0/i;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcn/manstep/phonemirrorBox/k0/i$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/i$b;->b:Lcn/manstep/phonemirrorBox/k0/i;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->k2()V

    :cond_56
    return-void
.end method
