.class Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->Q0(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->b:Ljava/lang/String;

    const-string v0, "AutoKit_add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_17

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {p1, v0, v1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;J)J

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)V

    return-void

    .line 4
    :cond_17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->b:Ljava/lang/String;

    const-string v2, "Carlinkit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {p1, v0, v1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;J)J

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->w0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method
