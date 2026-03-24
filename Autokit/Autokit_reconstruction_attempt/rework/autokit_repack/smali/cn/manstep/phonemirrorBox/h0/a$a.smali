.class Lcn/manstep/phonemirrorBox/h0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/h0/a;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcn/manstep/phonemirrorBox/h0/a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/h0/a;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->d:Lcn/manstep/phonemirrorBox/h0/a;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->d:Lcn/manstep/phonemirrorBox/h0/a;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/h0/a;->a(Lcn/manstep/phonemirrorBox/h0/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    :try_start_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/h0/a$a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method
