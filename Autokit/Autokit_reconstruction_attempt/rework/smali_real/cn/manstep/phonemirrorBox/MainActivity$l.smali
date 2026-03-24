.class Lcn/manstep/phonemirrorBox/MainActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->g1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$l;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$l;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    const-string v0, "com.huawei.security.privilegemanager"

    const-string v1, "com.huawei.security.enhanced.permission.ui.activity.MainActivity"

    invoke-static {p1, v0, v1}, Lcn/manstep/phonemirrorBox/util/f;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_f

    .line 2
    :catch_a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$l;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/MainActivity;->w0(Lcn/manstep/phonemirrorBox/MainActivity;)V

    :goto_f
    return-void
.end method
