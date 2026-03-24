.class Lcn/manstep/phonemirrorBox/MainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/util/b0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$a;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
    .registers 16

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$a;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    const/4 v8, 0x0

    move v2, p6

    move-object v3, p1

    move-object v4, p5

    move-wide v5, p3

    move-object v7, p2

    invoke-virtual/range {v1 .. v8}, Lcn/manstep/phonemirrorBox/MainActivity;->l1(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V

    :cond_17
    return-void
.end method
