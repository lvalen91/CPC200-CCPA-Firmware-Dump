.class Lcn/manstep/phonemirrorBox/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/z;->U2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/AlertDialog;

.field final synthetic e:Lcn/manstep/phonemirrorBox/z;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/z;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z$b;->e:Lcn/manstep/phonemirrorBox/z;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z$b;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/z$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/manstep/phonemirrorBox/z$b;->d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$b;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "CarPlayOEMIconName"

    invoke-virtual {v0, v1, p1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$b;->e:Lcn/manstep/phonemirrorBox/z;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/z;->m2(Lcn/manstep/phonemirrorBox/z;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcn/manstep/phonemirrorBox/util/c;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z$b;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$b;->e:Lcn/manstep/phonemirrorBox/z;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/z;->l2(Lcn/manstep/phonemirrorBox/z;)Lcn/manstep/phonemirrorBox/util/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 7
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_46

    .line 8
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V

    .line 9
    :cond_46
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$b;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
