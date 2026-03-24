.class Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->Q0(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3c

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->t0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_33

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->t0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x12c

    cmp-long p1, v1, v5

    if-gez p1, :cond_33

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    iget-object p2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;->c:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->w0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {p1, v3, v4}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;J)J

    return v0

    .line 6
    :cond_33
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;->d:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;J)J

    :cond_3c
    return v0
.end method
