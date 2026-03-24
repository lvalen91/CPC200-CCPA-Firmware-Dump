.class Lcn/manstep/phonemirrorBox/a0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/a0;[I)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/a0$c;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/a0$c;->b:[I

    const/4 v0, 0x0

    aput p2, p1, v0

    return-void
.end method
