.class Lcn/manstep/phonemirrorBox/a0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/a0;->j(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:[I

.field final synthetic c:Landroid/app/AlertDialog;

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/a0;[ILandroid/app/AlertDialog;Landroid/app/Activity;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/a0$d;->b:[I

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/a0$d;->c:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcn/manstep/phonemirrorBox/a0$d;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/a0$d;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "LanguageID"

    invoke-virtual {p1, v2, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0$d;->c:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0$d;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/a0$d;->b:[I

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/x;->a(Landroid/content/Context;I)V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0$d;->d:Landroid/app/Activity;

    invoke-virtual {p1, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0$d;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0$d;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x14010000

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/a0$d;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const-wide/16 v0, 0x5dc

    .line 9
    :try_start_3c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 11
    :goto_44
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/a0$d;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
